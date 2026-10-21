/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.GoldbachMinorEnergyBarrier
import GRWTSK.NumberTheory.Primes.GoldbachMinorPhaseBalance

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorEnergyControls

open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy

noncomputable section

/-- Positive absolute mass need not give a lower bound for a signed sum. -/
theorem absolute_mass_can_hide_signed_cancellation :
    |(1 : ℝ)| + |(-1 : ℝ)| = 2 ∧ |(1 : ℝ) + (-1)| = 0 := by
  norm_num

/-- These are scalar control values, not asserted actual phase integrals.
Discarding the positive component would reject a valid one-sided balance. -/
theorem phase_balance_does_not_require_small_imaginary_energy :
    -(129 : ℝ) ≤ 100 - 200 ∧ ¬ (200 : ℝ) ≤ 129 := by
  norm_num

theorem square_total_at_two :
    goldbachPrimeLogSquareTotal 2 = Real.log 2 ^ 2 := by
  norm_num [goldbachPrimeLogSquareTotal, primeLogWeight, Finset.sum_range_succ]

/-- Prime powers are not additional diagonal atoms. -/
theorem square_total_no_atom_at_four :
    goldbachPrimeLogSquareTotal 4 = goldbachPrimeLogSquareTotal 3 := by
  norm_num [goldbachPrimeLogSquareTotal, Finset.sum_range_succ, primeLogWeight]

/-- At log n >= 50 the explicit logarithmic test beats C=2. -/
theorem logarithmic_threshold_for_two {ell : ℝ} (hell : 50 ≤ ell) :
    20 + 2 * (2 : ℝ) < 497 * ell / 1000 := by
  linarith

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorEnergyControls
