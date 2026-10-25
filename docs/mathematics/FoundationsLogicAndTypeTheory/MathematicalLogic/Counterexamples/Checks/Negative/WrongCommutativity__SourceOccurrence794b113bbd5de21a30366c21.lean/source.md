# Complete source: GRWTSK.Logic.Counterexamples.Checks.Negative.WrongCommutativity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02072762bc5aee7fd5609e25a197faa1ea034edb` · SHA-256 `5950f4f9fb688f31e1a4b5760ecd53efa575c46ad2c5c4bdfd719e28792c9765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : Commute hostileUpper hostileLower := by
  norm_num [Commute, SemiconjBy, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
```
