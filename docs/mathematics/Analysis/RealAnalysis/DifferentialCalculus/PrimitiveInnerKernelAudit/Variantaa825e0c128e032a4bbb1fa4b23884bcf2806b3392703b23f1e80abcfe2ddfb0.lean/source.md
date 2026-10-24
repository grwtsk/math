# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimitiveInnerKernelAudit.Variantaa825e0c128e032a4bbb1fa4b23884bcf2806b3392703b23f1e80abcfe2ddfb0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c3022cc739cc37a9594cf578b151b499bb9767c` · SHA-256 `aa825e0c128e032a4bbb1fa4b23884bcf2806b3392703b23f1e80abcfe2ddfb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
