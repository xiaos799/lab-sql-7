use sakila;

select * from actor;

#In the table actor, which are the actors whose last names are not repeated? 
select last_name, count(last_name) from actor group by last_name having count(last_name)=1; 

#Which last names appear more than once? 
select last_name, count(last_name) from actor group by last_name having count(last_name) > 1; 

#Using the rental table, find out how many rentals were processed by each employee.
select * from rental;
select count(rental_id), staff_id from rental group by staff_id;

#Using the film table, find out how many films were released each year.
select * from film;
select count(film_id), release_year from film group by release_year;

#Using the film table, find out for each rating how many films were there.
select count(film_id), rating from film group by rating;

#What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select round(avg(length),2), rating from film group by rating; 

#Which kind of movies (rating) have a mean duration of more than two hours?
select avg(length), rating from film group by rating having avg(length) > 120;







