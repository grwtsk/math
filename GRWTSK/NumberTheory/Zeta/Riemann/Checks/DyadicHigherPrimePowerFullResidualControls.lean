/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFullResidual
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerFullResidualControls

open GRWTSK.RiemannHypothesis

theorem complete_higher_power_residual_is_inverse_scale :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ X : ℕ, 0 < X →
      higherPrimePowerFullWitnessEnergy X ≤ K / (X : ℝ) :=
  higherPrimePowerFullWitnessEnergy_inv_bound

end GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerFullResidualControls
