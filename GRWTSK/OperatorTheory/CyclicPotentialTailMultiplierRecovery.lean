/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicSecondDifferencePositiveMultiplier

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual coefficient recovery and finite tail with explicit multiplier
conditioning. Zero frequency is not divided by. NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicPotentialTailMultiplierRecovery
open ZMod CyclicPotentialFourierEntry ArithmeticCyclicSecondVariation
open CyclicSecondDifferencePositiveMultiplier
variable (N : ℕ) [NeZero N]

theorem actual_coefficient_norm_recovery (q : ZMod N → ℝ) (r : ZMod N) (hr : r ≠ 0) :
    ‖potentialFourierCoefficient N q r‖ =
      ‖potentialFourierCoefficient N (secondDifference N q) r‖/‖1-stdAddChar r‖^2 := by
  apply (eq_div_iff (ne_of_gt (nonzero_frequency_multiplier_pos N r hr))).mpr
  rw [actual_secondDifference_coefficient_norm]
  ring

theorem actual_coefficient_le_conditioned_difference (q : ZMod N → ℝ) (r : ZMod N)
    (η : ℝ) (hη : 0<η) (hr : η ≤ ‖1-stdAddChar r‖^2) :
    ‖potentialFourierCoefficient N q r‖ ≤
      ‖potentialFourierCoefficient N (secondDifference N q) r‖/η := by
  apply (le_div_iff₀ hη).mpr
  rw [actual_secondDifference_coefficient_norm]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_right hr
    (norm_nonneg (potentialFourierCoefficient N q r))

theorem actual_finite_tail_recovery (q : ZMod N → ℝ) (R : Finset (ZMod N))
    (η : ℝ) (hη : 0<η) (hR : ∀ r ∈ R, η ≤ ‖1-stdAddChar r‖^2) :
    (∑ r ∈ R, ‖potentialFourierCoefficient N q r‖) ≤
      (∑ r ∈ R, ‖potentialFourierCoefficient N (secondDifference N q) r‖)/η := by
  rw [Finset.sum_div]
  apply Finset.sum_le_sum
  intro r hr
  exact actual_coefficient_le_conditioned_difference N q r η hη (hR r hr)

/- A growing-source uniform lower bound η and actual difference-tail bound
are not supplied. Their regulator and volume dependence must be retained. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicPotentialTailMultiplierRecovery
