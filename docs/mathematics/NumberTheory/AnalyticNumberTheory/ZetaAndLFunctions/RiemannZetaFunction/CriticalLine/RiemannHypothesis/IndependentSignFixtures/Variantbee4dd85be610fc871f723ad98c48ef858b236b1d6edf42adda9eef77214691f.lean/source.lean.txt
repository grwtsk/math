import SourceCorrelationSignChange

/-!
Prospective independent source-sign fixtures. UNCOMPILED and zero kernel credit.
No foreign Peano dependency, source change, or quantitative arithmetic witness.
-/

set_option autoImplicit false
noncomputable section
namespace Cycle24IndependentSignFixtures

open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationSignChange SourceMangoldtInteraction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

theorem scale_one_negative :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative 1 t < 0 :=
  sourceCorrelation_exists_neg (by norm_num)

theorem scale_one_half_support :
    ∃ t : ℝ, 0 < t ∧ t < 2 ∧ sourceCorrelation explicitSecondDerivative 1 t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 1) (by norm_num)

theorem scale_half_negative :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative (1 / 2) t < 0 :=
  sourceCorrelation_exists_neg (by norm_num)

theorem scale_half_open_support :
    ∃ t : ℝ, 0 < t ∧ t < 1 ∧
      sourceCorrelation explicitSecondDerivative (1 / 2) t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 1 / 2) (by norm_num)

theorem scale_five_negative :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative 5 t < 0 :=
  sourceCorrelation_exists_neg (by norm_num)

theorem scale_five_open_support :
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧ sourceCorrelation explicitSecondDerivative 5 t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)

theorem pointwise_nonneg_at_one_false :
    ¬(∀ t : ℝ, 0 ≤ sourceCorrelation explicitSecondDerivative 1 t) := by
  intro h
  obtain ⟨t, ht⟩ := scale_one_negative
  exact (not_le.mpr ht) (h t)

theorem half_support_nonneg_at_one_false :
    ¬(∀ t : ℝ, 0 < t → t < 2 →
      0 ≤ sourceCorrelation explicitSecondDerivative 1 t) := by
  intro h
  obtain ⟨t, ht0, ht2, ht⟩ := scale_one_half_support
  exact (not_le.mpr ht) (h t ht0 ht2)

theorem all_positive_scale_nonneg_false :
    ¬(∀ A : ℝ, 0 < A → ∀ t : ℝ,
      0 ≤ sourceCorrelation explicitSecondDerivative A t) := by
  intro h
  exact pointwise_nonneg_at_one_false (h 1 (by norm_num))

theorem actual_center_is_one : sourceCorrelation explicitSecondDerivative 1 0 = 1 :=
  sourceCorrelation_zero (by norm_num)

theorem closed_upper_endpoint_is_zero :
    sourceCorrelation explicitSecondDerivative 1 2 = 0 := by
  simpa using sourceCorrelation_upper_endpoint 1 (by norm_num)

theorem closed_lower_endpoint_is_zero :
    sourceCorrelation explicitSecondDerivative 1 (-2) = 0 := by
  simpa using sourceCorrelation_lower_endpoint 1 (by norm_num)

theorem negative_witness_excludes_center :
    ∃ t : ℝ, t ≠ 0 ∧ sourceCorrelation explicitSecondDerivative 1 t < 0 := by
  obtain ⟨t, ht0, _, ht⟩ := scale_one_half_support
  exact ⟨t, ne_of_gt ht0, ht⟩

theorem critical_weighted_kernel_nonneg_false :
    ¬(∀ t : ℝ, 0 ≤ Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative 1 t) := by
  intro h
  obtain ⟨t, ht⟩ := scale_one_negative
  exact (not_le.mpr (mul_neg_of_pos_of_neg (Real.exp_pos _) ht)) (h t)

end Cycle24IndependentSignFixtures
