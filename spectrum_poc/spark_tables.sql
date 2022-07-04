create external table poc_dwh.resource_custom_tags_mapping
(
  account_id        string,
  linked_account_id string,
  resource_id       string,
  custom_tags       string,
  last_usage_date   date,
  db_creation_time  timestamp
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/resource_custom_tags_mapping';

create external table poc_dwh.k8s_namespace_names
(
 namespace_id     bigint,
 namespace_name   string,
 db_creation_time timestamp
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/k8s_namespace_names';

create external table poc_dwh.operation_names
(
  operation_id     integer,
  operation_name   string,
  operation_title  string,
  os               string,
  db_creation_time timestamp
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/operation_names';

create external table poc_dwh.service_names
(
  service_id            integer,
  service_name          string,
  service_name_display  string,
  service_name_synonym  string,
  db_creation_time      timestamp,
  is_custom_service     short
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/service_names';

create external table poc_dwh.family_type_names
(
 family_type_id       integer,
 family_type_name     string,
 family_type_service  string,
 db_creation_time     timestamp
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/family_type_names';

create external table poc_dwh.custom_tags_names
(
  custom_tags_id    bigint,
  custom_tags       string,
  db_creation_time  timestamp
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/custom_tags_names';

create external table poc_dwh.tag_mapping
(
  account_id        string,
  linked_account_id string,
  custom_tags_id    long,
  tag_key           string,
  tag_value         string,
  db_creation_time  timestamp
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/tag_mapping';

create external table poc_dwh.linked_account_names
(
  linked_account_id   string,
  linked_account_name string,
  db_creation_time    timestamp
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/linked_account_names';

create external table poc_dwh.service_costs
(
  account_id                  string,
  linked_account_id           string,
  service_id                  integer,
  zone_tag                    string,
  region_tag_id               integer,
  instance_type_model         string,
  instance_type_size          string,
  instance_type               string,
  resource_id                 string,
  resource_name               string,
  db_name                     string,
  db_type                     string,
  operation_id                integer,
  item_description            string,
  usage_type                  string,
  is_ri                       integer,
  usage_date                  date,
  total_cost                  double,
  cost_type_id                integer,
  family_type_id              integer,
  total_usage_quantity        double,
  usage_quantity_type         string,
  ec2_pricing_type_id         integer,
  os                          string,
  charge_type                 string,
  total_cost_amortized        double,
  total_cost_net_amortized    double,
  total_cost_public_on_demand double,
  total_cost_net              double,
  reservation_arn             string,
  custom_tags_id              bigint,
  tenancy                     string,
  db_creation_time            timestamp
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/service_costs/usage_date=202206/';

create external table poc_dwh.k8s_service_costs
(
 id                                         bigint,
 account_id                                 string,
 linked_account_id                          string,
 usage_date                                 date,
 cluster_id                                 bigint,
 node_id                                    bigint,
 instance_type                              string,
 os                                         string,
 region_tag_id                              short,
 pod_id                                     string,
 pod_name                                   string,
 namespace_id                               short,
 total_cost                                 double,
 total_usage_quantity                       double,
 usage_type_id                              short,
 cost_type_id                               short,
 item_description                           string,
 custom_tags                                string,
 db_creation_time                           timestamp,
 total_cost_net                             double,
 total_cost_amortized                       double,
 total_cost_net_amortized                   double,
 node_group_id                              integer,
 deployment_id                              integer,
 total_cost_distributed_waste               double,
 total_cost_distributed_waste_net           double,
 total_cost_distributed_waste_amortized     double,
 total_cost_distributed_waste_net_amortized double
)
stored as parquet
location 's3://for-gabi/warehouse/poc_dwh.db/k8s_service_costs/usage_date=202206/';
