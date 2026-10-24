# Complete source: GRWTSK.Algebra.Polynomial.Checks.Negative.SignedRootTraceNegativeWeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7db2107ef86c0a4812dd5853f43c84437039fe1e` · SHA-256 `17e40863d0a436709d06f1c57966b630e60243e60301a9e9a9f93f1ce95538fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: real nodes do not permit replacing negative weights
by positive ones. The intended mismatch is the false bound 0 ≤ -1. -/
import GRWTSK.Algebra.Polynomial.SignedRootTrace
import Mathlib.Tactic.NormNum

open Polynomial Complex GRWTSK.Polynomial.SignedRootTrace

example : 0 ≤ (squareTrace {0} (fun _ => -1) (1 : Polynomial ℝ)).re := by
  have hv : squareTrace {0} (fun _ => -1) (1 : Polynomial ℝ) = -1 := by
    simp [squareTrace]
  rw [hv]
  change (0 : ℝ) ≤ -1
  exact (show (0 : ℝ) ≤ 1 by norm_num)
```
