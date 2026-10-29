/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupDyadicEndpoint

/-!
# Unconditional coarse bounds for the actual signed dyadic endpoint sum

The complete signed arithmetic sum is preserved. The established positive
energy and quadratic diagonal give its lower bound; the existing finite-count
energy allowance gives an upper bound at every exponent strictly greater than
one, with an explicit rate-dependent constant.

These bounds do not establish `DyadicBirthBound`, whose quantifier includes
every exponent in (0, 1]. No arithmetic growth premise, source substitution,
absolute-value replacement of the signed sum, or unconditional RH is added.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupDyadicCoarseBounds

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-- The endpoint approximation retains the actual signed source's paid lower bound. -/
theorem endpointSum_lower {T : ℝ} (hT : 0 ≤ T) :
    -(2 * T ^ 2) - 1 / 4 ≤ endpointSum T := by
  have hcross := pickupCross_lower hT
  have herror := (abs_le.mp (endpointSum_error hT)).1
  linarith

/-- The available finite-count upper allowance remains exponential in physical time. -/
theorem endpointSum_coarse_upper {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤ 2 * Real.exp T * T ^ 2 + 1 / 4 := by
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  have hdiag := pickupDiagonal_nonneg hT
  have henergy := pickupEnergy_exponential_allowance hT
  have herror := (abs_le.mp (endpointSum_error hT)).2
  linarith

/-- Absorb the existing quadratic factor at a positive excess above exponent one. -/
theorem pickupEnergy_upper_of_rate_gt_one {δ T : ℝ}
    (hδ : 1 < δ) (hT : 0 ≤ T) :
    pickupEnergy T ≤ (4 / (δ - 1) ^ 2) * Real.exp (δ * T) := by
  have hexcess : 0 < δ - 1 := by linarith
  have hpower : T ^ 2 ≤ (2 / (δ - 1) ^ 2) * Real.exp ((δ - 1) * T) := by
    have h := pow_le_factorial_mul_exp hexcess hT 2
    norm_num at h
    exact h
  calc
    pickupEnergy T ≤ 2 * Real.exp T * T ^ 2 :=
      pickupEnergy_exponential_allowance hT
    _ ≤ 2 * Real.exp T *
        ((2 / (δ - 1) ^ 2) * Real.exp ((δ - 1) * T)) :=
      mul_le_mul_of_nonneg_left hpower (by positivity)
    _ = (4 / (δ - 1) ^ 2) * Real.exp (δ * T) := by
      rw [show δ * T = T + (δ - 1) * T by ring, Real.exp_add]
      ring

/-- The quarter-unit endpoint cost is included in the explicit uniform constant. -/
theorem endpointSum_upper_of_rate_gt_one {δ T : ℝ}
    (hδ : 1 < δ) (hT : 0 ≤ T) :
    endpointSum T ≤ (4 / (δ - 1) ^ 2 + 1 / 4) * Real.exp (δ * T) := by
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  have hdiag := pickupDiagonal_nonneg hT
  have henergy := pickupEnergy_upper_of_rate_gt_one hδ hT
  have herror := (abs_le.mp (endpointSum_error hT)).2
  have hone : 1 ≤ Real.exp (δ * T) :=
    Real.one_le_exp_iff.mpr (mul_nonneg (by linarith : 0 ≤ δ) hT)
  nlinarith

/-- All negative signed contributions remain present, including at the empty j=0 sum. -/
theorem dyadicBirthSum_lower (j : ℕ) :
    -(2 * dyadicTime j ^ 2) - 1 / 4 ≤ dyadicBirthSum j := by
  rw [← endpoint_dyadic_eq_birthSum]
  exact endpointSum_lower (dyadicTime_nonnegative j)

/-- A literal coarse bracket at the exact dyadic source cutoff. -/
theorem dyadicBirthSum_coarse_upper (j : ℕ) :
    dyadicBirthSum j ≤
      2 * ((2 ^ j : ℕ) : ℝ) * dyadicTime j ^ 2 + 1 / 4 := by
  rw [← endpoint_dyadic_eq_birthSum, ← exp_dyadicTime]
  exact endpointSum_coarse_upper (dyadicTime_nonnegative j)

/-- Unconditional at every δ>1; the missing all-positive-rate estimate is not inferred. -/
theorem dyadicBirthSum_upper_of_rate_gt_one {δ : ℝ} (hδ : 1 < δ) (j : ℕ) :
    dyadicBirthSum j ≤
      (4 / (δ - 1) ^ 2 + 1 / 4) * (2 : ℝ) ^ (δ * (j : ℝ)) := by
  rw [← endpoint_dyadic_eq_birthSum, ← dyadic_rate]
  exact endpointSum_upper_of_rate_gt_one hδ (dyadicTime_nonnegative j)

end GRWTSK.NumberTheory.Moebius.PickupDyadicCoarseBounds
