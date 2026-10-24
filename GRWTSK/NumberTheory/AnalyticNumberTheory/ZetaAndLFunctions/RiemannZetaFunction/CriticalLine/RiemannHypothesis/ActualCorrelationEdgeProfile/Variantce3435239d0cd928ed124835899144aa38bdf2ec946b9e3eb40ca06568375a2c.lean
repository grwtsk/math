import FormalResearch.RiemannHypothesis.Conversation.ActualWeightedTransformNorm

/-!
# Exact source profile at the support edge

The unchanged source normalization and weak derivative are retained. For A>=8
and edge distance s in [0,2], the displayed pole-annihilated polynomial has
positive quadratic edge growth. This is a local source estimate, not yet the
integrated correlation shell or its weighted-norm growth. Human exact-kernel
and complete-window direction: grwtsk contributors. Local algebraic estimates:
OpenAI Codex. Existing source functions retain their qualified source identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationEdgeProfile
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity Set
noncomputable section

def edgeFactor (A s : ℝ) : ℝ :=
  (2 - s / A) ^ 2 *
    (8 * (7 * ((A - s) / A) ^ 2 - 1) - s ^ 2 * (2 - s / A) ^ 2 / 4)

theorem exact_source_edge_factorization {A : ℝ} (hA : 0 < A) (s : ℝ) :
    secondInterior A (A - s) - bumpInterior A (A - s) / 4 =
      (s ^ 2 / (A ^ 4 * Real.sqrt A)) * edgeFactor A s := by
  unfold secondInterior bumpInterior edgeFactor
  field_simp [ne_of_gt hA, ne_of_gt (Real.sqrt_pos.mpr hA)]
  ; ring

theorem complete_edge_factor_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs0 : 0 ≤ s) (hs2 : s ≤ 2) : 1 ≤ edgeFactor A s := by
  have hpos : 0 < A := by linarith
  have hu0 : 0 ≤ s / A := div_nonneg hs0 hpos.le
  have hu1 : s / A ≤ 1 / 4 := (div_le_iff₀ hpos).mpr (by linarith)
  have hz : (A - s) / A = 1 - s / A := by field_simp
  have hq1 : 1 ≤ (2 - s / A) ^ 2 := by nlinarith
  have hq4 : (2 - s / A) ^ 2 ≤ 4 := by nlinarith
  have hz2 : 9 / 16 ≤ ((A - s) / A) ^ 2 := by rw [hz]; nlinarith
  have hs4 : s ^ 2 ≤ 4 := by nlinarith
  have hprod : s ^ 2 * (2 - s / A) ^ 2 ≤ 16 :=
    (mul_le_mul hs4 hq4 (sq_nonneg _) (by norm_num)).trans (by norm_num)
  have hb : 1 ≤ 8 * (7 * ((A - s) / A) ^ 2 - 1) -
      s ^ 2 * (2 - s / A) ^ 2 / 4 := by nlinarith
  unfold edgeFactor
  nlinarith [mul_nonneg (sub_nonneg.mpr hq1) (sub_nonneg.mpr hb)]

theorem source_normalization_le_one {A : ℝ} (hA : 8 ≤ A) :
    sourceNormalization A ≤ 1 := by
  have h2 : 64 ≤ A ^ 2 := by nlinarith
  have h4 : 4096 ≤ A ^ 4 := by nlinarith [sq_nonneg (A ^ 2 - 64)]
  have hsecond : (131072 / 45045 : ℝ) / (2 * A ^ 2) ≤
      (131072 / 45045 : ℝ) / 128 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
  have hfourth : (196608 / 5005 : ℝ) / A ^ 4 ≤
      (196608 / 5005 : ℝ) / 4096 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) h4
  unfold sourceNormalization
  norm_num at hsecond hfourth ⊢
  linarith

theorem actual_source_edge_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs0 : 0 ≤ s) (hs2 : s ≤ 2) :
    s ^ 2 / (A ^ 4 * Real.sqrt A) ≤
      dilationTest explicitSecondDerivative A (A - s) := by
  have hpos : 0 < A := by linarith
  have hmem : A - s ∈ Icc (-A) A := by constructor <;> linarith
  rw [explicit_dilationTest_eq_indicator A hpos, indicator_of_mem hmem,
    exact_source_edge_factorization hpos]
  exact le_mul_of_one_le_right (by positivity) (complete_edge_factor_lower hA hs0 hs2)

theorem actual_normalized_edge_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs0 : 0 ≤ s) (hs2 : s ≤ 2) :
    s ^ 2 / (A ^ 4 * Real.sqrt A) ≤
      normalizedTest explicitSecondDerivative A (A - s) := by
  have hnorm := source_normalization_pos A (by linarith)
  have hroot : 0 < Real.sqrt (sourceNormalization A) := Real.sqrt_pos.mpr hnorm
  have hroot1 : Real.sqrt (sourceNormalization A) ≤ 1 :=
    (Real.sqrt_le_one).mpr (source_normalization_le_one hA)
  unfold normalizedTest
  calc
    _ = (s ^ 2 / (A ^ 4 * Real.sqrt A)) / 1 := by simp
    _ ≤ (s ^ 2 / (A ^ 4 * Real.sqrt A)) / Real.sqrt (sourceNormalization A) :=
      div_le_div_of_nonneg_left (by positivity) hroot hroot1
    _ ≤ _ := div_le_div_of_nonneg_right (actual_source_edge_lower hA hs0 hs2) hroot.le

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationEdgeProfile
