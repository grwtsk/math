# Complete source: GRWTSK.Algebra.LinearAlgebra.6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9RankConfirmed.Variant6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `149307490b5b1b7e5b45363951b20c8b2acf469d` · SHA-256 `6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Rank
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Matrix.rank
#check @Matrix.rank_eq_finrank_span_row
#check @Matrix.rank_transpose
#check @LinearIndependent.rank_matrix
#check @linearIndependent_iff_card_eq_finrank_span
#check @Matrix.rank_of_det_ne_zero
#check @Matrix.rank_submatrix_le
#check @Matrix.rank_mul_eq_right_of_det_ne_zero
#check @Matrix.rank_mul_eq_right_of_isUnit_det
#check @Submodule.finrank_quotient_add_finrank
```
