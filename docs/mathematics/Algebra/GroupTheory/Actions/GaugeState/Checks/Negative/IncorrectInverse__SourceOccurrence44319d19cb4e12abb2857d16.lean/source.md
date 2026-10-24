# Complete source: GRWTSK.GroupTheory.Actions.GaugeState.Checks.Negative.IncorrectInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93b4406b01188228cca213eb03a48d6c5f218056` · SHA-256 `677aa9a145d4b06d685757edbf7c86fba5565fefbaa561de1bf3300ea38024c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 1 = B 1 • X 1 := by
  apply Units.ext
  norm_num [gaugeState, B, X, smul_eq_mul]
```
