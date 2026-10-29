import SourcePrimitiveInnerKernel
set_option autoImplicit false
set_option linter.style.setOption false
set_option linter.hashCommand false
set_option pp.fullNames true
set_option pp.explicit true
open RH16PrimitiveInnerKernel
#check @timeFirst
#print axioms timeFirst
#print timeFirst
#check @innerPrimitive
#print axioms innerPrimitive
#print innerPrimitive
#check @literalXiWeight_time_hasDerivAt
#print axioms literalXiWeight_time_hasDerivAt
#print literalXiWeight_time_hasDerivAt
#check @timeFirst_hasDerivAt
#print axioms timeFirst_hasDerivAt
#print timeFirst_hasDerivAt
#check @innerPrimitive_hasDerivAt
#print axioms innerPrimitive_hasDerivAt
#print innerPrimitive_hasDerivAt
#check @actual_upper_traces
#print axioms actual_upper_traces
#print actual_upper_traces
#check @literal_lower_traces
#print axioms literal_lower_traces
#print literal_lower_traces
#check @inner_kernel_eq_actual_plain_derivative
#print axioms inner_kernel_eq_actual_plain_derivative
#print inner_kernel_eq_actual_plain_derivative
