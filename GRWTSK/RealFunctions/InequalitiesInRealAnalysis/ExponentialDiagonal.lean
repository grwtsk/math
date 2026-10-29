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
