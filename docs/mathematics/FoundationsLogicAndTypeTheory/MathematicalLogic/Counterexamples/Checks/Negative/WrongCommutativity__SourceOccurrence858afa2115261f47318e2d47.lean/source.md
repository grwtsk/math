# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counterexamples.Checks.Negative.WrongCommutativity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d4e211e753815bef7f64d359dd6608bc4248204` · SHA-256 `64baaaa4a0c0ca94ebd683b99675a530cd0c3a8477204b34c121948aa2634015`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : Commute hostileUpper hostileLower := by
  norm_num [Commute, SemiconjBy, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
```
