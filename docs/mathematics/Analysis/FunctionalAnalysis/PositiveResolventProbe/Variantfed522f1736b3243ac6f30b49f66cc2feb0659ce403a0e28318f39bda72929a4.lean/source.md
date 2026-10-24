# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventProbe.Variantfed522f1736b3243ac6f30b49f66cc2feb0659ce403a0e28318f39bda72929a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25e341759fe3c58c703b4a87ae70a4e418871231` · SHA-256 `fed522f1736b3243ac6f30b49f66cc2feb0659ce403a0e28318f39bda72929a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Tactic
open ContinuousLinearMap
open scoped InnerProduct ComplexConjugate
#check ContinuousLinearMap.IsPositive.smul_of_nonneg
#check inner_smul_left
#check inner_smul_right
#check inner_self_eq_norm_sq_to_K
#check inner_self_eq_norm_sq
#check inner_self_eq_norm_mul_norm
#check Complex.re_le_norm
#check Complex.abs_re_le_norm
#check norm_inner_le_norm
#check AntilipschitzWith.le_mul_dist
#check AntilipschitzWith.norm_sub_le
#check ContinuousLinearMap.opNorm_le_bound
#check IsUnit.mul_inv_cancel
#check IsUnit.mul_ringInverse_cancel
#check IsUnit.ringInverse_mul_cancel
#check Ring.mul_inverse_cancel
#check Ring.inverse_mul_cancel
#check Ring.inverse_unit
#check Ring.inverse_mul
#check Ring.inverse_sub
#check ContinuousLinearMap.mul_apply
#check ContinuousLinearMap.IsPositive.isSelfAdjoint
#check IsSelfAdjoint.ringInverse
#check ContinuousLinearMap.isPositive_iff_isSelfAdjoint_re_inner_nonneg
#check ContinuousLinearMap.isPositive_iff_complex
#check ContinuousLinearMap.IsPositive.toLinearMap
#check inner_sub_right
#check ContinuousLinearMap.norm_mul_le
#check norm_smul
#check Complex.ofReal_nonneg
#check ContinuousLinearMap.IsPositive.conj_adjoint
```
