# Complete source: GRWTSK.Algebra.LinearAlgebra.Da4ca3e4a1b90cf6fc3f235d166088aa40fb7a6ce664c2faa8ca1c390c40527fRank.Variantda4ca3e4a1b90cf6fc3f235d166088aa40fb7a6ce664c2faa8ca1c390c40527f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d99766de0c14d8d8075987dba88645e8768f876` · SHA-256 `da4ca3e4a1b90cf6fc3f235d166088aa40fb7a6ce664c2faa8ca1c390c40527f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Rank
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Matrix.row
#check @Matrix.vecMulLinear
#check @Matrix.range_vecMulLinear
#check @Matrix.rank
#check @Matrix.rank_eq_finrank_span_row
#check @Matrix.rank_transpose
#check @LinearIndependent.rank_matrix
#check @linearIndependent_iff_card_eq_finrank_span
#check @Matrix.rank_of_det_ne_zero
#check @Matrix.rank_submatrix_le
#check @Matrix.rank_mul_eq_right_of_det_ne_zero
#check @Submodule.finrank_quotient_add_finrank
```
