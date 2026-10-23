/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicChebyshevCumulativeBudget
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicChebyshevCumulativeBudgetControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem cumulative_budget_bounds_every_prefix
    (z : ZeroPoint) (N : ℕ) :
    (∑ j ∈ Finset.range N, safeQuarticDyadicPackingValue z j) ≤
      safeQuarticDyadicTotalBudget z :=
  safeQuarticDyadicPartial_le_totalBudget z N

end GRWTSK.RiemannHypothesis.Checks.DyadicChebyshevCumulativeBudgetControls
