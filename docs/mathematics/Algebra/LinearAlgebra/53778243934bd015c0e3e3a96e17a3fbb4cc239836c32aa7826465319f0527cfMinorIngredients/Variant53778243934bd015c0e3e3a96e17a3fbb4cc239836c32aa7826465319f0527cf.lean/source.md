# Complete source: GRWTSK.Algebra.LinearAlgebra.53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cfMinorIngredients.Variant53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `703deac5f6fb0478b897abb21b9a658e54aa7102` · SHA-256 `53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Rank
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @exists_linearIndependent'
#check @Matrix.linearIndependent_rows_of_det_ne_zero
#check @Matrix.det_eq_zero_of_not_linearIndependent_rows
#check @Matrix.exists_mulVec_eq_zero_iff
```
