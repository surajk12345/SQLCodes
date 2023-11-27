-- Basic Questions 1 to 5

Create Database Brands 
Create Database Products

use Brands

create table ITEMS_Table( 
	item_id int Not Null,
	item_description varchar(50),
	vendor_nos int,
	vendor_name varchar(100),
	bottle_size int,
	bottle_price float,
);

select * from ITEMS_Table

insert into ITEMS_Table values
    (1,'Travis Hasse Apple Pie', 305,  'Mhw Ltd', 750, 9.77),
	(2, 'D aristi Xtabentun', 391, 'Anchor Distilling (preiss Imports)', 750, 14.12),
	(3, 'Hiram Walker Peach Brandy', 370, 'Pernod Ricard Usa/austin Nichols', 1000, 6.50 ),
	(4, 'Oak Cross Whisky' , 305, 'mhw Ltd', 750, 25.33),
	(5, 'Uv Red(cherry) Vodka', 380, 'Phillips Beverage Company', 200, 1.97),
	(6, 'Heaven Hill Old Style White Label', 259, 'Heaven Hill Distilleries Inc.', 750, 6.37),
	(7, 'Hyde Herbal Liqueur', 194, 'Fire Tail Brands Llc', 750, 5.06),
	(8, 'Dupont Calvados Fine Reserve', 403, 'Robert Kacher Selections', 750, 23.61);

use Products

create table PRODUCT_Table (
	Product_Id int,
	Country	varchar(30),
	Product varchar(70),
	Units_Sold float,
	Manufacturing_Price float,
	Sale_Price float,
	Gross_Sales float,
	Sales float,
	COGS float,
	Profit float,
	Date date,
	Month_Number int,
	Month_Name varchar(12),
	Year int);

select * from PRODUCT_Table

INSERT INTO PRODUCT_Table VALUES
(1, 'Canada', 'Carretera', 1618.5, 3.00, 20.00, 32370.00, 32370.00, 16185.00, 16185.00, '01-01-2014', 1, 'January', 2014),
(2, 'Germany', 'Carretera', 1321, 3.00, 20.00, 26420.00, 26420.00, 13210.00, 13210.00, '01-01-2014', 1, 'January', 2015),
(3, 'France', 'Carretera', 2178, 3.00, 15.00, 32670.00, 32670.00, 21780.00, 10890.00, '01-06-2014', 6, 'June', 2016),
(4, 'Germany', 'Carretera', 888, 3.00, 15.00, 13320.00, 13320.00, 8880.00, 4440.00, '01-06-2014', 6, 'June', 2017),
(5, 'Mexico', 'Carretera', 2470, 3.00, 15.00, 37050.00, 37050.00, 24700.00, 12350.00, '01-06-2014', 6, 'June', 2018),
(6, 'Germany', 'Carretera', 1513, 3.00, 350.00, 529550.00, 529550.00, 393380.00, 136170.00, '01-12-2014', 12, 'December', 2019),
(7, 'Germany', 'Montana', 921, 5.00, 15.00, 13815.00, 13815.00, 9210.00, 4605.00, '01-03-2014', 3, 'March', 2020),
(8, 'Canada', 'Montana', 2518, 5.00, 12.00, 30216.00, 30216.00, 7554.00, 22662.00, '01-06-2014', 6, 'June', 2021);


begin tran 

delete from PRODUCT_Table where Units_Sold = 1618.5
delete from PRODUCT_Table where Units_Sold = 888
delete from PRODUCT_Table where Units_Sold = 2470

commit / rollback;

drop table PRODUCT_Table

create table PRODUCT_Table (
	Product_Id int,
	Country	varchar(30),
	Product varchar(70),
	Units_Sold float,
	Manufacturing_Price float,
	Sale_Price float,
	Gross_Sales float,
	Sales float,
	COGS float,
	Profit float,
	Date date,
	Month_Number int,
	Month_Name varchar(12),
	Year int);

INSERT INTO PRODUCT_Table VALUES
(1, 'Canada', 'Carretera', 1618.5, 3.00, 20.00, 32370.00, 32370.00, 16185.00, 16185.00, '01-01-2014', 1, 'January', 2014),
(2, 'Germany', 'Carretera', 1321, 3.00, 20.00, 26420.00, 26420.00, 13210.00, 13210.00, '01-01-2014', 1, 'January', 2015),
(3, 'France', 'Carretera', 2178, 3.00, 15.00, 32670.00, 32670.00, 21780.00, 10890.00, '01-06-2014', 6, 'June', 2016),
(4, 'Germany', 'Carretera', 888, 3.00, 15.00, 13320.00, 13320.00, 8880.00, 4440.00, '01-06-2014', 6, 'June', 2017),
(5, 'Mexico', 'Carretera', 2470, 3.00, 15.00, 37050.00, 37050.00, 24700.00, 12350.00, '01-06-2014', 6, 'June', 2018),
(6, 'Germany', 'Carretera', 1513, 3.00, 350.00, 529550.00, 529550.00, 393380.00, 136170.00, '01-12-2014', 12, 'December', 2019),
(7, 'Germany', 'Montana', 921, 5.00, 15.00, 13815.00, 13815.00, 9210.00, 4605.00, '01-03-2014', 3, 'March', 2020),
(8, 'Canada', 'Montana', 2518, 5.00, 12.00, 30216.00, 30216.00, 7554.00, 22662.00, '01-06-2014', 6, 'June', 2021);

select * from PRODUCT_Table

-- Intermediate Questions 1 to 5

select Sum(sale_price) from PRODUCT_Table
select Sum(Gross_Sales) from PRODUCT_Table


select max(Sales) from PRODUCT_Table;


select Product_Id, Product  from PRODUCT_Table where gross_sales = 37050;


select Country  from PRODUCT_Table where Profit Between 4605 AND 22662;

select Product_Id from PRODUCT_Table where COGS = 24700; -- (as per the question there is no 24700 value in Sales Column, so here I have performed same task on COGS Column)


-- Small tables Questions 1 to 5
Use Brands
Select * from ITEMS_Table


select item_description from ITEMS_Table 
where bottle_size = 750;


select vendor_name from ITEMS_Table
where vendor_nos in (305, 380, 391);


select sum(bottle_price) from ITEMS_Table;


alter table ITEMS_Table 
ADD Constraint PK_ID Primary Key (item_id);


select item_id from ITEMS_Table
where bottle_price = 5.06;


-- Advanced Questions 1 to 5

select * From BRANDS.dbo.ITEMS_Table as IT
Inner Join Products.dbo.PRODUCT_TABLE as PT		--Inner Join 
on IT.item_id = PT.product_id;

select * From BRANDS.dbo.ITEMS_Table as IT
Full Outer Join Products.dbo.PRODUCT_TABLE as PT	--Full Outer Join 
on IT.item_id = PT.product_id;

select * From BRANDS.dbo.ITEMS_Table as IT
Left Outer Join Products.dbo.PRODUCT_TABLE as PT	--Left Outer Join 
on IT.item_id = PT.product_id;

select * From BRANDS.dbo.ITEMS_Table as IT
Right Outer Join Products.dbo.PRODUCT_TABLE as PT		-- Right Outer Join 
on IT.item_id = PT.product_id;

select * From BRANDS.dbo.ITEMS_Table 
Cross Join Products.dbo.PRODUCT_TABLE 	--Cross Join 


Select item_description, Product from Brands.dbo.ITEMS_Table, Products.dbo.PRODUCT_Table
where gross_sales = 13320;


SELECT 
    IT.bottle_price AS Bottle_Price,
    PT.Profit,
    (SELECT SUM(bottle_price) FROM Brands.dbo.ITEMS_Table) AS Total_Bottle_Price,
    (SELECT SUM(Profit) FROM Products.dbo.Product_table) AS Total_Profit
FROM Brands.dbo.ITEMS_Table AS IT
JOIN Products.dbo.Product_table AS PT ON IT.Item_id = PT.Product_Id;


SELECT
    SUBSTRING(Item_description, 1, CHARINDEX(' ', Item_description) - 1) AS Item_desc1,
    SUBSTRING(Item_description, CHARINDEX(' ', Item_description) + 1, LEN(Item_description)) AS Item_desc2
FROM Brands.dbo.ITEMS_Table;
