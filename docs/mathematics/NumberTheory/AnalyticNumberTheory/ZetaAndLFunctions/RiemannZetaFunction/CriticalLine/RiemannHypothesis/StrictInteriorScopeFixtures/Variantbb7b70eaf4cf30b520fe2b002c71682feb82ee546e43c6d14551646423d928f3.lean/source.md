# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictInteriorScopeFixtures.Variantbb7b70eaf4cf30b520fe2b002c71682feb82ee546e43c6d14551646423d928f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `142813ea1d5936e62691ec01793e254573e416f2` · SHA-256 `bb7b70eaf4cf30b520fe2b002c71682feb82ee546e43c6d14551646423d928f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceStrictColumnInterior

/-!
# Strict interior scope controls

UNCOMPILED fixtures. Scalar controls below are synthetic and assert no fact about
the actual arithmetic witness. Actual-source fixtures retain the precise cutoff,
compensation, radius and hypotheses of the proposed adapter.
-/

namespace FormalResearch.RiemannHypothesis.StrictColumnInteriorFixtures

open SourceStrictColumnInterior SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel EstimateBetaCentering

noncomputable section

/-- A negative endpoint makes the same-constant forward transfer false in a scalar control. -/
theorem negative_endpoint_requires_forward_loss :
    (0 : ℝ) = 12 + (-12) ∧ ¬(12 : ℝ) ≤ 0 := by
  norm_num

/-- A positive endpoint makes the same-constant reverse transfer false in a scalar control. -/
theorem positive_endpoint_requires_reverse_loss :
    (12 : ℝ) = 0 + 12 ∧ ¬(12 : ℝ) ≤ 0 := by
  norm_num

/-- Both endpoint signs meet the same absolute budget. -/
theorem both_endpoint_signs_have_absolute_twelve :
    |(-12 : ℝ)| = 12 ∧ |(12 : ℝ)| = 12 := by
  norm_num

/-- A zero endpoint leaves an arbitrary signed interior unchanged. -/
theorem zero_endpoint_keeps_arbitrary_signed_interior (V : ℝ) : V + 0 = V := by
  ring

/-- The complete two counterterms occur once in a scalar decomposition control. -/
theorem two_counterterms_are_subtracted_once :
    (20 + 3 - 5 - 7 : ℝ) = 11 ∧ (20 - 5 - 7 : ℝ) = 8 ∧ (11 : ℝ) = 8 + 3 := by
  norm_num

/-- Dropping the diagonal changes the scalar value. -/
theorem dropping_diagonal_changes_control : (20 + 3 - 7 : ℝ) ≠ 11 := by
  norm_num

/-- Dropping the independent main term also changes the scalar value. -/
theorem dropping_main_term_changes_control : (20 + 3 - 5 : ℝ) ≠ 11 := by
  norm_num

/-- The synthetic mask deletes equal indices and retains the two unequal pairs. -/
theorem equal_index_mask_retains_unequal_pairs :
    (∑ m ∈ ({1, 2} : Finset ℕ), ∑ n ∈ ({1, 2} : Finset ℕ),
      if m = n then (0 : ℝ) else 1) = 2 := by
  norm_num

/-- The source hypothesis does not include the low-scale value zero. -/
theorem radius_one_excludes_scale_zero : ¬(1 : ℝ) ≤ 0 := by
  norm_num

/-- The witness constant remains nonnegative after the explicit loss. -/
theorem shifted_witness_constant_nonnegative (D : ℝ) (hD : 0 ≤ D) : 0 ≤ D + 12 := by
  linarith

/-- A one-sided upper bound does not force the interior to be nonnegative. -/
theorem negative_interior_is_compatible_with_upper_bound :
    (-5 : ℝ) ≤ 0 ∧ (-5 : ℝ) < 0 := by
  norm_num

/-- Zero endpoint does not supply an eventual budget for an arbitrary growing scalar interior. -/
theorem growing_synthetic_interior_has_no_tail_witness :
    ¬(∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → A ≤ D) := by
  rintro ⟨D, _, R, _, h⟩
  have hs := h (max R (D + 1)) (le_max_left R (D + 1))
  have hl := le_max_right R (D + 1)
  linarith

/-- The actual pointwise maps retain any chosen radius at least one. -/
theorem actual_upper_transfers_preserve_same_radius (D R : ℝ) (hR : 1 ≤ R) :
    ((∀ A : ℝ, R ≤ A → VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A ≤ D) →
      ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D + 12) ∧
    ((∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) →
      ∀ A : ℝ, R ≤ A → VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A ≤ D + 12) := by
  constructor
  · intro h A hRA
    exact (strictColumnInterior_pointwise_upper_transfers A D (hR.trans hRA)).1 (h A hRA)
  · intro h A hRA
    exact (strictColumnInterior_pointwise_upper_transfers A D (hR.trans hRA)).2 (h A hRA)

/-- The actual iff transports missing witnesses without constructing either witness. -/
theorem actual_joint_tail_iff_raw_strict_tail :
    VaughanOperatorReview.JointMainTermTailUpperBound SourceSamplingLedger.independentMainTerm ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D := by
  exact jointMainTermTail_iff_strictColumnInteriorTail

end
end FormalResearch.RiemannHypothesis.StrictColumnInteriorFixtures
```
