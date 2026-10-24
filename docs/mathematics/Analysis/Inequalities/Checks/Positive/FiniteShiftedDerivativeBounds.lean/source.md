# Complete source: GRWTSK.Analysis.Inequalities.Checks.Positive.FiniteShiftedDerivativeBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1e1f088d2d64ced689384ad1bd546ed27652248` · SHA-256 `4f58044c84113748f113cfcff9a56a3839104c0f7267cc0cfeea0d26a6ceb114`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds
set_option linter.hashCommand false
namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.KernelDerivativePrice
#check @weightMass
#check @literal_weight_nonneg
#check @weighted_difference_abs_le
#check @finite_shifted_price
#check @correlation_first_abs_le
#check @correlation_second_abs_le
#check @polarity_kernel_hasDerivAt
#check @polarity_kernel_deriv_eq
#check @polarity_kernel_first_hasDerivAt
#check @polarity_kernel_second_deriv_eq
#check @polarity_kernel_abs_price
#check @polarity_kernel_first_abs_price
#check @polarity_kernel_second_abs_price
#print axioms weightMass
#print axioms literal_weight_nonneg
#print axioms weighted_difference_abs_le
#print axioms finite_shifted_price
#print axioms correlation_first_abs_le
#print axioms correlation_second_abs_le
#print axioms polarity_kernel_hasDerivAt
#print axioms polarity_kernel_deriv_eq
#print axioms polarity_kernel_first_hasDerivAt
#print axioms polarity_kernel_second_deriv_eq
#print axioms polarity_kernel_abs_price
#print axioms polarity_kernel_first_abs_price
#print axioms polarity_kernel_second_abs_price
end GRWTSK.ProofHorizon.CorkscrewChamberCap.KernelDerivativePrice
```
