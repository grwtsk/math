# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counterexamples.Checks.Negative.WrongProductInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a5c2e2607e61e0d16eb4376fb55888c93166df1` · SHA-256 `4dbc6ad69e13bed5b9558fc3e10289cc0fd97f6a61fa41c692abac7cfb4770e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ = (hostileLower * hostileUpper)⁻¹ := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [hostileSign, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
```
