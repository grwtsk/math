/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFourierEnergy
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerFourierEnergyControls

open GRWTSK.RiemannHypothesis

theorem full_higher_power_channel_is_summable (X : ℕ) :
    Summable (higherPrimePowerFourierModeEnergy X) :=
  higherPrimePowerFourierModeEnergy_summable X

end GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerFourierEnergyControls
