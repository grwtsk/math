# Complete source: GRWTSK.Logic.Counterexamples.Checks.Negative.WrongProductInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0eb62a1f4c8806c2c91648d128ddad33eaf479c7` · SHA-256 `05bcf3305c7b5df3b02dacd03efd4c26a378640f1b9c98227755a628ae6107ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ = (hostileLower * hostileUpper)⁻¹ := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [hostileSign, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
```
