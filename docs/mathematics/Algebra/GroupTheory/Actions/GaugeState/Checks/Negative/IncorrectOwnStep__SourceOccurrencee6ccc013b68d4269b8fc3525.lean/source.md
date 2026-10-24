# Complete source: GRWTSK.GroupTheory.Actions.GaugeState.Checks.Negative.IncorrectOwnStep

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f18c5ec7495d55c5c07aa9488332cc4967097ac` · SHA-256 `24aaf40a45bfaadaabec23ca064217b8e8b1e81cf4d3126e4c1be4eae9767ff1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 0 = (B 1)⁻¹ • X 0 := by
  apply Units.ext
  norm_num [gaugeState, B, X, smul_eq_mul]
```
