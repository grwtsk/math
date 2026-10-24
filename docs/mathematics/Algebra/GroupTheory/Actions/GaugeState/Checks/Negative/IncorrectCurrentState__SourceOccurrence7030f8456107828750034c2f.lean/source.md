# Complete source: GRWTSK.GroupTheory.Actions.GaugeState.Checks.Negative.IncorrectCurrentState

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ddcbdcbe5added96f07348278be3cb58713aef6` · SHA-256 `a50e57eaa5bdf13f3efcc4cc7ecefdf658332b47d3c258454173d64951158b71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 1 = gaugeTransfer (fun _ => (1 : ℚˣ)) B 0 • gaugeState B X 1 := by
  apply Units.ext
  norm_num [gaugeState, gaugeTransfer, B, X, smul_eq_mul]
```
