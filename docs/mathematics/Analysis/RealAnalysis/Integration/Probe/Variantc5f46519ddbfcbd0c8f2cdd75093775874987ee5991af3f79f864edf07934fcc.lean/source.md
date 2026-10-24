# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Probe.Variantc5f46519ddbfcbd0c8f2cdd75093775874987ee5991af3f79f864edf07934fcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ac3a0eeb3d738696809f721055df5d6b4c73a83` · SHA-256 `c5f46519ddbfcbd0c8f2cdd75093775874987ee5991af3f79f864edf07934fcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
#check Real.div_rpow
#check Real.rpow_two
#check intervalIntegral.intervalIntegrable_rpow'
#check intervalIntegral.integral_mono_on_of_le_Ioo
#check intervalIntegral.sum_integral_adjacent_intervals
#check intervalIntegral.sum_integral_adjacent_intervals_Ico
#check Finset.sum_Ico_eq_sum_range
#check Finset.Ico_add_one_right_eq_Icc
#check intervalIntegral.integral_mono_interval
#check Finset.sum_range_add
#check Nat.abs_moebius_le_one
#check ArithmeticFunction.abs_moebius_le_one
```
