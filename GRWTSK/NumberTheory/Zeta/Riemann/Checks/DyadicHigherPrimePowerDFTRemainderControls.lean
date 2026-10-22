/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerDFTRemainder
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerDFTRemainderControls

open GRWTSK.RiemannHypothesis

theorem higher_prime_power_mass_is_sqrt_scale :
    ∃ C : ℝ, ∀ X : ℕ, 0 < X →
      higherPrimePowerWindowMass X ≤
        C * Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ) :=
  higherPrimePowerWindowMass_sqrt_bound

end GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerDFTRemainderControls
