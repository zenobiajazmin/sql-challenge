create table departments (
	dept_no character varying (50) primary key not null,
	dept_name character varying (50) not null
);

create table titles (
	title_id character varying (50) primary key not null,
	title character varying (50) not null
);

create table employees (
	emp_no integer primary key not null,
	emp_title_id character varying (50) not null,
	birth_date date not null,
	first_name character varying (50) not null,
	last_name character varying (50) not null,
	sex character varying (1) not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles (title_id)
);

create table dept_emp (
	emp_no integer not null,
	dept_no character varying (50) not null,
	primary key (emp_no, dept_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table dept_manager (
	dept_no character varying (50) not null,
	emp_no integer not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table salaries (
	emp_no integer primary key not null,
	salary money not null,
	foreign key (emp_no) references employees(emp_no)
);
