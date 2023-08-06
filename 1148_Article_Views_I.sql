# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists Views_23
(
article_id int, 
author_id int, 
viewer_id int, 
view_date date
);

Truncate table Views_23;
insert into Views_23 (article_id, author_id, viewer_id, view_date) values ('1', '3', '5', '2019-08-01');
insert into Views_23 (article_id, author_id, viewer_id, view_date) values ('1', '3', '6', '2019-08-02');
insert into Views_23 (article_id, author_id, viewer_id, view_date) values ('2', '7', '7', '2019-08-01');
insert into Views_23 (article_id, author_id, viewer_id, view_date) values ('2', '7', '6', '2019-08-02');
insert into Views_23 (article_id, author_id, viewer_id, view_date) values ('4', '7', '1', '2019-07-22');
insert into Views_23 (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21');
insert into Views_23 (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21');

/*
Q. Write an SQL query to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.

Input: 
Views table:
+------------+-----------+-----------+------------+
| article_id | author_id | viewer_id | view_date  |
+------------+-----------+-----------+------------+
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |
+------------+-----------+-----------+------------+
Output: 
+------+
| id   |
+------+
| 4    |
| 7    |
+------+
*/

SELECT * FROM Views_23;

# TYPE 1 :- 
SELECT author_id AS id
FROM Views_23
WHERE author_id = viewer_id
GROUP BY author_id
ORDER BY author_id;

# TYPE 2 :- 
SELECT DISTINCT(author_id) AS id
FROM Views_23
WHERE author_id = viewer_id 
ORDER BY id;
