# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SamplingInterfaces.Variant7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43affc82a647182b1bd73687602f0ecfcb095b5f` · SHA-256 `7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.AbelSummation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
#check intervalIntegral.integral_mul_deriv_eq_deriv_mul
#check MeasureTheory.IntegrableOn.mul_continuousOn
#check ContinuousOn.mul_integrableOn
#check MeasureTheory.IntegrableOn.mul_continuousOn_of_subset
#check ContinuousOn.integrableOn_Icc
#check intervalIntegrable_iff_integrableOn_Icc_of_le
#check intervalIntegral.integral_sub
#check intervalIntegral.integral_congr
#check Finset.Icc_eq_cons_Ioc
#check Finset.card_Icc
#check Nat.card_Icc
#check ContDiff.continuous_deriv
#check ContDiff.differentiable
#check intervalIntegral.abs_integral_le_integral_abs
```
