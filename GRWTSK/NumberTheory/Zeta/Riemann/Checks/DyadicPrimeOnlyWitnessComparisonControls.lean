/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyWitnessComparison
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyWitnessComparisonControls

open GRWTSK.RiemannHypothesis

theorem full_vs_prime_stage
    (X N : ℕ) :
    fullGreenArithmeticCoordinateStage X N ≤
      2 * fullGreenPrimeOnlyCoordinateStage X N +
        2 * higherPrimePowerFullWitnessEnergy X :=
  fullStage_le_two_primeOnly_add_residual X N

theorem prime_vs_full_stage
    (X N : ℕ) :
    fullGreenPrimeOnlyCoordinateStage X N ≤
      2 * fullGreenArithmeticCoordinateStage X N +
        2 * higherPrimePowerFullWitnessEnergy X :=
  primeOnlyStage_le_two_full_add_residual X N

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyWitnessComparisonControls
