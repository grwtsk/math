# Complete source: GRWTSK.Algebra.GroupTheory.Actions.GaugeState.Checks.Negative.IncorrectOwnStep

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10fad1625768fabd0079adecf2e23a36a0b8493c` · SHA-256 `58c1b97095d83582cdf7028cff4c0c5928b2f40accfb25565431bd753d01d9c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 0 = (B 1)⁻¹ • X 0 := by
  apply Units.ext
  norm_num [gaugeState, B, X, smul_eq_mul]
```
