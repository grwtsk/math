# Complete source: GRWTSK.Analysis.InnerProductSpace.Checks.Positive.CausalFiniteOperatorSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9882bd8f049c07cc923be0e24b1ced0de15eccf9` · SHA-256 `ce68b6fa50e1be10c66f984b87ec331afbae97343f822fb2f9c7b5d3bc0dc978`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation

set_option linter.hashCommand false

namespace GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation

#print axioms window_response_memLp
#print axioms original_window_L2_contact_zero
#print axioms finite_source_L2_combination_ae
#print axioms distinct_source_L2_linearIndependent
#print axioms finite_contact_functions_no_linear_mix
#print axioms finite_contact_L2_no_linear_mix
#print axioms original_inventory_L2_no_linear_mix
#print axioms prescribed_horizon_L2_linear_mix_obstruction

#check window_response_memLp
#check original_window_L2_contact_zero
#check finite_source_L2_combination_ae
#check distinct_source_L2_linearIndependent
#check finite_contact_functions_no_linear_mix
#check finite_contact_L2_no_linear_mix
#check original_inventory_L2_no_linear_mix
#check prescribed_horizon_L2_linear_mix_obstruction

end GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation
```
