# Complete source: GRWTSK.Algebra.GroupTheory.Actions.GaugeState.Checks.Negative.IncorrectCurrentState

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c6cadbb70481313154f52498f25d436a36d3a0c` · SHA-256 `6b35794dc12edcca795671546a3357a8e2942b35d7239a7e821c6a40c713f26d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 1 = gaugeTransfer (fun _ => (1 : ℚˣ)) B 0 • gaugeState B X 1 := by
  apply Units.ext
  norm_num [gaugeState, gaugeTransfer, B, X, smul_eq_mul]
```
