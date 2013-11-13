# DO NOT EDIT THIS FILE, IT IS GENERATED
#
# To change the contents of this file, edit
# phpBB/develop/create_schema_files.php and
# run it.
# Table: 'phpbb_blog_categories'
CREATE TABLE phpbb_blog_categories (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name blob NOT NULL,
	description blob NOT NULL,
	options int(11) UNSIGNED DEFAULT '7' NOT NULL,
	bitfield varbinary(255) DEFAULT '' NOT NULL,
	uid varbinary(8) DEFAULT '' NOT NULL,
	total_posts mediumint(8) UNSIGNED DEFAULT '0' NOT NULL,
	last_post_id mediumint(8) UNSIGNED DEFAULT '0' NOT NULL,
	PRIMARY KEY (id)
);


# Table: 'phpbb_blog_posts'
CREATE TABLE phpbb_blog_posts (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	category mediumint(8) UNSIGNED DEFAULT '0' NOT NULL,
	title blob NOT NULL,
	poster_id mediumint(8) UNSIGNED DEFAULT '0' NOT NULL,
	post blob NOT NULL,
	options int(11) UNSIGNED DEFAULT '7' NOT NULL,
	bitfield varbinary(255) DEFAULT '' NOT NULL,
	uid varbinary(8) DEFAULT '' NOT NULL,
	post_time int(11) UNSIGNED DEFAULT '0' NOT NULL,
	PRIMARY KEY (id),
	KEY category (category)
);

