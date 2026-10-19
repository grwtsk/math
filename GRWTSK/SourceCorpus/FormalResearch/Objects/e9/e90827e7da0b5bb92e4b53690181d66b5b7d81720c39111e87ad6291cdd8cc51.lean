import SourceMangoldtQuotientEndpoint

/-!
# Endpoint-only hostile controls

UNCOMPILED fixtures. Literal arithmetic prefixes are distinguished from synthetic
integer windows and arbitrary scalar columns. No full signed bound follows from
the single endpoint estimate. These fixtures add no maintained declarations.
-/

namespace FormalResearch.RiemannHypothesis.MangoldtQuotientEndpointFixtures

open ArithmeticFunction
open SourceVaughanHankel SourceMangoldtColumnQuotient SourceMangoldtQuotientEndpoint
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateVaughanIdentity EstimateBetaCentering

noncomputable section

private def B (U k : ℕ) : ℝ := ∑ n ∈ Finset.Ioc U k, centeredBeta U n

private theorem inventory_three : Finset.Icc 1 3 = {1, 2, 3} := by decide

private theorem mobius_two : (moebius 2 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime Nat.prime_two

private theorem mobius_three : (moebius 3 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime (by norm_num : Nat.Prime 3)

/-- The integer double quotient at the A=1 inventory values is exact. -/
theorem natural_double_quotient_control : 7 / (7 / 2 : ℕ) = 2 := by norm_num

/-- The real quotient is not that natural quotient. -/
theorem separately_cast_real_quotient_differs : (7 : ℝ) / 3 ≠ 2 := by norm_num

/-- Without N at least a squared, the final row need not be the first row alone. -/
theorem missing_square_threshold_retains_extra_row :
    (8 / 3 : ℕ) = 2 ∧ (8 / (8 / 3) : ℕ) = 4 ∧ 4 * (8 / 3 : ℕ) ≤ 8 := by
  norm_num

/-- Equality at the square threshold is sufficient for the natural endpoint quotient. -/
theorem square_threshold_equality_control :
    (9 / 3 : ℕ) = 3 ∧ (9 / (9 / 3) : ℕ) = 3 := by norm_num

/-- The actual real touching endpoint has zero weight, without rounding its coordinate. -/
theorem actual_real_upper_touching_zero (A : ℝ) (hA : 1 ≤ A) :
    sourcePlainWeight A (Real.exp (2 * A)) = 0 := sourcePlainWeight_upper_zero A hA

/-- The original centered prefix can be positive. -/
theorem actual_centered_prefix_positive_control : B 3 4 = 1 / 6 := by
  unfold B
  rw [centeredBeta_interval_eq_discrepancy 3 3 4 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, inventory_three, mobius_two, mobius_three]

/-- The same original centered prefix can be negative. -/
theorem actual_centered_prefix_negative_control : B 3 5 = -2 / 3 := by
  unfold B
  rw [centeredBeta_interval_eq_discrepancy 3 3 5 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, inventory_three, mobius_two, mobius_three]

/-- Raw beta and centered beta retain different literal prefix values. -/
theorem raw_beta_is_not_centered_prefix :
    (∑ n ∈ Finset.Ioc 3 4, beta 3 n) = 0 ∧ B 3 4 = 1 / 6 := by
  constructor
  · rw [beta_interval_eq_quotients 3 3 4 (by omega) le_rfl (by omega)]
    norm_num [inventory_three, mobius_two, mobius_three]
  · exact actual_centered_prefix_positive_control

/-- A synthetic endpoint at K=5 is present in the inclusive sum and absent from the strict sum. -/
theorem inclusive_endpoint_is_not_silently_deleted :
    (∑ k ∈ Finset.Ioc 3 5, if k = 5 then (1 : ℝ) else 0) = 1 ∧
      (∑ k ∈ Finset.Ico 4 5, if k = 5 then (1 : ℝ) else 0) = 0 := by
  have hoc : Finset.Ioc 3 5 = {4, 5} := by decide
  have hco : Finset.Ico 4 5 = {4} := by decide
  rw [hoc, hco]
  norm_num

/-- An arbitrary scalar column can have zero endpoint and an arbitrarily large interior. -/
theorem zero_endpoint_does_not_bound_synthetic_interior (V : ℝ) :
    let R : ℕ → ℝ := fun k => if k = 4 then V else 0
    R 5 = 0 ∧ (∑ k ∈ Finset.Ico 4 5, (R k - R (k + 1))) = V := by
  have hco : Finset.Ico 4 5 = {4} := by decide
  dsimp
  rw [hco]
  simp

/-- The proved-on-paper candidate controls exactly one actual endpoint. -/
theorem actual_endpoint_twelve_only (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let R : ℕ → ℝ := fun k =>
      ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
    |B U K * R K| ≤ 12 := actual_centered_column_endpoint_abs_le_twelve A hA

/-- The endpoint uses the literal first Mangoldt coefficient and the actual source weight. -/
theorem actual_endpoint_first_row_only (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let K := sourceKernelCutoff A / (U + 1)
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * K : ℕ) : ℝ)) =
        vonMangoldt (U + 1) * sourcePlainWeight A (((U + 1) * K : ℕ) : ℝ) :=
  actual_mangoldt_column_at_quotient_eq_first_row A hA

/-- The full original compensation accompanies the strict quotient replacement. -/
theorem full_compensation_still_present (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      (∑ k ∈ Finset.Ico (U + 1) K, B U k * (R k - R (k + 1))) + B U K * R K -
        centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A :=
  covariance_sub_main_eq_strict_quotient_increments_with_endpoint A hA

/-- A vanishing first Mangoldt coefficient makes this endpoint row zero, without a sign claim. -/
theorem first_coefficient_zero_endpoint_zero (A : ℝ) (hA : 1 ≤ A)
    (hz : vonMangoldt (vaughanCutoff A + 1) = 0) :
    (∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A
      ((m * (sourceKernelCutoff A / (vaughanCutoff A + 1)) : ℕ) : ℝ)) = 0 := by
  rw [actual_mangoldt_column_at_quotient_eq_first_row A hA, hz, zero_mul]

end
end FormalResearch.RiemannHypothesis.MangoldtQuotientEndpointFixtures
