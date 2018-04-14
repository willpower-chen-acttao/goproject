create table tbl_app (
	app_id int auto_increment primary key,
	app_name varchar(1024) not null,
	app_type varchar(64) not null,
    log_path varchar(128) not null,
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

create table tbl_app_ip (
	app_id int,
	ip varchar(64),
	Key app_id_ip_index  (app_id, ip) 
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
