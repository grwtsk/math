# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.QuadratureCheck.Variant3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `648bb5d11070db491011703067a187d22f9b7ec3` · SHA-256 `3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
#check Finset.sum_Icc_succ_top
#check Nat.le_induction
#check Nat.floor_le
#check Nat.lt_floor_add_one
#check Nat.le_floor
#check Nat.one_le_floor
#check intervalIntegral.integral_const
#check intervalIntegral.integral_mono_on
#check intervalIntegral.integral_nonneg
#check ContinuousOn.intervalIntegrable
#check Real.continuousOn_log
#check Finset.sum_Ico_add
```
