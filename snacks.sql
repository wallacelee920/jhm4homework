CREATE DATABASE snacks;
USe snacks;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `snacks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) DEFAULT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `SalesCount` int(11) DEFAULT NULL,
  `HealthyOption` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `snacks` (`Category`, `Brand`, `SalesCount`, `HealthyOption`) VALUES
('Chips', 'Lays', 50, 0),
('Chips', 'Calbee', 42, 0),
('Chips', 'Doritos', 38, 0),
('Chips', 'Pringles', 61, 0),
('Chips', 'Jack''n Jill', 33, 0),
('Chocolate', 'Lindt', 65, 0),
('Chocolate', 'Kinder', 75, 1),
('Chocolate', 'Ferrero Rocher', 58, 0),
('Chocolate', 'Snickers', 49, 0),
('Chocolate', 'M&M''s', 45, 0),
('Cookies', 'Oreo', 33, 0),
('Cookies', 'Glico Pretz', 28, 1),
('Cookies', 'Hello Panda', 39, 0),
('Cookies', 'Koala''s March', 31, 0),
('Cookies', 'Bourbon Alfort', 22, 1),
('Candies', 'Sugus', 40, 0),
('Candies', 'Ricola', 36, 1),
('Candies', 'Mentos', 55, 0),
('Candies', 'Hi-Chew', 33, 0),
('Candies', 'Puccho', 29, 0),
('Fruit Snacks', 'Vita Fruit Bar', 20, 1),
('Fruit Snacks', 'Healthy Garden', 18, 1),
('Fruit Snacks', 'Fruit-tella', 12, 1),
('Fruit Snacks', 'Dried Mango', 17, 1),
('Nuts', 'Blue Diamond Almonds', 26, 1),
('Nuts', 'Tong Garden', 22, 1),
('Nuts', 'Kirkland Cashews', 19, 1),
('Nuts', 'Planters Peanuts', 24, 1),
('Energy Bars', 'Nature Valley', 21, 1),
('Energy Bars', 'Clif Bar', 25, 1),
('Energy Bars', 'KIND Bar', 27, 1),
('Energy Bars', 'Quest Bar', 18, 1);
COMMIT;
-- Restore original character sets
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


SELECT 
    Category AS 'Category',
    SalesCount AS 'SalesCount'
FROM 
    snacks
WHERE 
    Category IN ('Chips', 'Chocolate')
ORDER BY 
    SalesCount DESC;


SELECT 
    CASE HealthyOption
        WHEN 1 THEN 'Healthy Option'
        WHEN 0 THEN 'Regular Option'
        ELSE 'Unknown'
    END AS 'OptionType',
    AVG(SalesCount) AS 'AvgSalesCount',
    COUNT(*) AS 'ProductCount'
FROM 
    snacks
GROUP BY 
    HealthyOption;