import FormalResearch.RiemannHypothesis.Conversation.ActualCorrelationEdgeUpper

/-!
# Absolute correlation cost on the complete literal overlap

The unchanged source product vanishes outside [A-y,A] at translation 2A-y.
Every point in its actual intersection is charged using the fixed-normalization
edge profile. Integrating that complete support gives an explicit polynomial
in y divided by A^9. This is not yet the weighted-tail upper asymptotic or the
sixth-power census. Human exact-source and full-overlap direction: grwtsk contributors. Local absolute-support integration: OpenAI Codex. Source definitions
and Mathlib integral laws retain their qualified identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationOverlapUpper
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualCorrelationEdgeUpper ActualCorrelationEdgeShell CorrelationRegularity MeasureTheory Set
noncomputable section
local notation "v" => normalizedTest Realization.explicitSecondDerivative
local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

/-- The overlap cap in this module, with the following exact parameterization.

def overlapCap (A y : ℝ) : ℝ := 576 * y ^ 4 * (64 + y ^ 2) ^ 2 / A ^ 9
-/
def overlapCap (A y : ℝ) : ℝ := 576 * y ^ 4 * (64 + y ^ 2) ^ 2 / A ^ 9

theorem full_overlap_product_absolute_upper {A y : ℝ} (hA : 1 ≤ A)
    (hy : 0 ≤ y) (x : ℝ) :
    |v A x * v A (x - (2 * A - y))| ≤ overlapCap A y := by
  have hpos : 0 < A := by linarith
  have hcap0 : 0 ≤ overlapCap A y := by unfold overlapCap; positivity
  by_cases hx : x ∈ Icc (-A) A
  · by_cases ht : x - (2 * A - y) ∈ Icc (-A) A
    · have hs0 : 0 ≤ A - x := by linarith [hx.2]
      have hsA : A - x ≤ 2 * A := by linarith [hx.1]
      have hr0 : 0 ≤ y - (A - x) := by linarith [ht.1]
      have hrA : y - (A - x) ≤ 2 * A := by linarith [ht.2]
      have hsy : A - x ≤ y := by linarith
      have hry : y - (A - x) ≤ y := by linarith
      have hl := actual_full_normalized_edge_absolute_upper hA hs0 hsA
      have hr := actual_full_normalized_edge_absolute_upper hA hr0 hrA
      have hs2 : (A - x) ^ 2 ≤ y ^ 2 := by nlinarith
      have hr2 : (y - (A - x)) ^ 2 ≤ y ^ 2 := by nlinarith
      have hpoly (s : ℝ) (hs : s ^ 2 ≤ y ^ 2) :
          24 * s ^ 2 * (64 + s ^ 2) / (A ^ 4 * Real.sqrt A) ≤
            24 * y ^ 2 * (64 + y ^ 2) / (A ^ 4 * Real.sqrt A) := by
        apply div_le_div_of_nonneg_right _ (by positivity)
        nlinarith [mul_nonneg (sub_nonneg.mpr hs) (add_nonneg (sq_nonneg y) (sq_nonneg s))]
      have hl' : |v A x| ≤ 24 * y ^ 2 * (64 + y ^ 2) / (A ^ 4 * Real.sqrt A) := by
        simpa using hl.trans (hpoly (A - x) hs2)
      have heq : x - (2 * A - y) = -(A - (y - (A - x))) := by ring
      rw [abs_mul, heq, actual_normalized_test_even hpos]
      have hr' := hr.trans (hpoly (y - (A - x)) hr2)
      have hm := mul_le_mul hl' hr' (abs_nonneg _) (by positivity)
      have hprice : (24 * y ^ 2 * (64 + y ^ 2) / (A ^ 4 * Real.sqrt A)) *
          (24 * y ^ 2 * (64 + y ^ 2) / (A ^ 4 * Real.sqrt A)) = overlapCap A y := by
        calc
          _ = 576 * y ^ 4 * (64 + y ^ 2) ^ 2 /
              ((A ^ 4) ^ 2 * (Real.sqrt A) ^ 2) := by ring
          _ = _ := by rw [Real.sq_sqrt hpos.le]; unfold overlapCap; congr 1; ring
      rw [hprice] at hm
      exact hm
    · have hz : v A (x - (2 * A - y)) = 0 := by
        rw [normalizedTest_eq_indicator A hpos]
        exact indicator_of_notMem ht _
      simpa [hz] using hcap0
  · have hz : v A x = 0 := by
      rw [normalizedTest_eq_indicator A hpos]
      exact indicator_of_notMem hx _
    simpa [hz] using hcap0

theorem complete_product_zero_outside_overlap {A : ℝ} (hA : 0 < A) (y x : ℝ)
    (hx : x ∉ Icc (A - y) A) : v A x * v A (x - (2 * A - y)) = 0 := by
  by_cases hright : A < x
  · rw [normalizedTest_zero_of_le_abs A x hA
      (hright.le.trans (le_abs_self x)), zero_mul]
  · have hleft : x < A - y := by
      by_contra h
      apply hx
      exact ⟨le_of_not_gt h, le_of_not_gt hright⟩
    rw [normalizedTest_zero_of_le_abs A (x - (2 * A - y)) hA
      ((by linarith : A ≤ -(x - (2 * A - y))).trans (neg_le_abs _)), mul_zero]

theorem actual_complete_correlation_absolute_upper {A y : ℝ} (hA : 1 ≤ A)
    (hy : 0 ≤ y) :
    |C A (2 * A - y)| ≤ 576 * y ^ 5 * (64 + y ^ 2) ^ 2 / A ^ 9 := by
  have hpos : 0 < A := by linarith
  let f := fun x ↦ v A x * v A (x - (2 * A - y))
  let S := Icc (A - y) A
  let g := S.indicator (fun _ : ℝ ↦ overlapCap A y)
  have hf : Integrable f volume := correlation_product_integrable A _ hpos
  have hg : Integrable g volume := (integrable_indicator_iff measurableSet_Icc).mpr
    (continuous_const.integrableOn_Icc : IntegrableOn (fun _ : ℝ ↦ overlapCap A y) S volume)
  have hpoint (x : ℝ) : |f x| ≤ g x := by
    by_cases hx : x ∈ S
    · rw [show g x = overlapCap A y from indicator_of_mem hx _]
      exact full_overlap_product_absolute_upper hA hy x
    · have hz := complete_product_zero_outside_overlap hpos y x hx
      rw [show g x = 0 from indicator_of_notMem hx _, show f x = 0 from hz, abs_zero]
  have hnorm : |C A (2 * A - y)| ≤ ∫ x, |f x| := by
    simpa only [Real.norm_eq_abs, sourceCorrelation, f] using norm_integral_le_integral_norm f
  have hmono : (∫ x, |f x|) ≤ ∫ x, g x :=
    integral_mono hf.abs hg hpoint
  have hvalue : (∫ x, g x) = 576 * y ^ 5 * (64 + y ^ 2) ^ 2 / A ^ 9 := by
    rw [integral_indicator measurableSet_Icc, setIntegral_const]
    rw [Real.volume_real_Icc_of_le (by linarith : A - y ≤ A)]
    simp only [smul_eq_mul]
    unfold overlapCap
    ring
  rw [hvalue] at hmono
  exact hnorm.trans hmono

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationOverlapUpper
