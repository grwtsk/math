# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Check.Variantc8dcd0cd468a67e1b83e948ebe542cfdfaad50c0fe5c3541d3dd19e197ff021d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35caf099e7c8ee53d8518ad7659f3d5b0bac8b44` · SHA-256 `c8dcd0cd468a67e1b83e948ebe542cfdfaad50c0fe5c3541d3dd19e197ff021d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
open scoped BigOperators
#check Nat.prime_dvd_prime_iff_eq
#check Nat.Prime.dvd_of_dvd_pow
#check Nat.pow_right_strictMono
#check Nat.pow_le_pow_right
#check Nat.pow_right_injective
#check geom_sum_Ico_le_of_lt_one
#check Finset.Ico_succ_right_eq_Icc
#check Finset.sum_filter_add_sum_filter_not
#check Finset.abs_sum_le_sum_abs
#check Finset.sum_bij
#check Real.rpow_neg_one_half
#check Real.rpow_neg
#check Real.sqrt_eq_rpow
#check Nat.le_floor
#check Finset.card_le_one
#check Finset.card_le_one_iff
#check Finset.sum_eq_single
```
