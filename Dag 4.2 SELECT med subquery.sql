SELECT COUNT(*)
FROM city
WHERE Population >=
        (SELECT AVG(Population)
         FROM city);


SELECT Name
FROM city
WHERE CountryCode IN
        (SELECT Code
         FROM country
         WHERE Continent = 'Europe');


SELECT Name,
       SurfaceArea /
    (SELECT MAX (SurfaceArea)
     FROM country) * 100
FROM country
ORDER BY SurfaceArea DESC;

