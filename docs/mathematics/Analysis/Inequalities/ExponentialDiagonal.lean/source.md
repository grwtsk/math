# Complete source: GRWTSK.Analysis.Inequalities.ExponentialDiagonal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3ca8509f335a38e18f771990f8d51e265c7c334` · SHA-256 `f66230be0e73e9131682ccc031b09f1c72354a628dbfe3d3875bc1a6e4692b99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic.Linarith

namespace GRWTSK.RiemannHypothesis.CCC.DiagonalAffineAlgebra

/-- The explicit sharp diagonal expression is at most its quadratic allowance. -/
theorem sharp_diagonal_le_quadratic (T : ℝ) :
    2 * T ^ 2 - 8 * T + 16 * (1 - Real.exp (-T / 2)) ≤ 2 * T ^ 2 := by
  have h := Real.add_one_le_exp (-T / 2)
  linarith

end GRWTSK.RiemannHypothesis.CCC.DiagonalAffineAlgebra
```
