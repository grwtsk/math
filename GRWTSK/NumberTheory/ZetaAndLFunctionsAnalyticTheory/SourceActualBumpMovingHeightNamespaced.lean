-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBumpMovingHeight.Variantc40da836b503c82ff40b136d2d24fb5628f42d361893649bad65d32c7b101ba6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c40da836b503c82ff40b136d2d24fb5628f42d361893649bad65d32c7b101ba6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualBumpMovingHeight.Variantc40da836b503c82ff40b136d2d24fb5628f42d361893649bad65d32c7b101ba6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c40da836b503c82ff40b136d2d24fb5628f42d361893649bad65d32c7b101ba6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/SourceActualBumpMovingHeight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualBumpTwoTailBudget

/-!
The actual two initial-right-line tails at the genuine exponentially growing height.
The explicit uniform tail cost is O(A^-9); the full signed finite head is untouched.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBumpMovingHeight.Variantc40da836b503c82ff40b136d2d24fb5628f42d361893649bad65d32c7b101ba6

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualBumpMovingHeight
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceActualRightBumpTail
open FormalResearch.RiemannHypothesis.SourceActualBumpTwoTailBudget
noncomputable section

/-- The actual prescribed height retains its c-dependent exponential scale. -/
def actualBumpMovingHeight (A c : ℝ) : ℝ := Real.exp ((2 * c - 1) * A / 5)

/-- The literal source normalization has the genuine fixed rational lower bound. -/
theorem actualBumpNormalization_lower (A : ℝ) (hA : 1 ≤ A) :
    (4096 / 109395 : ℝ) ≤ sourceNormalization A := by
  have hp : 0 < A := by linarith
  have h1 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have h2 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  unfold sourceNormalization
  norm_num
  linarith

/-- The independently stated tail constant uses the full actual Mangoldt Dirichlet mass. -/
def actualBumpMovingTailConstant (c : ℝ) : ℝ :=
  actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
    (1 + (c - 1) ^ 2) * 109395 / (5 * Real.pi * 4096)

/-- The true source height lies above the high-frequency split for every real A≥1. -/
theorem actualBumpMovingHeight_ge_one (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    1 ≤ actualBumpMovingHeight A c := by
  unfold actualBumpMovingHeight
  apply Real.one_le_exp_iff.mpr
  have hcp : 0 < 2 * c - 1 := by linarith
  have hp : 0 < A := by linarith
  positivity

/-- Both true tails at the growing height have the fixed actual arithmetic cost K(c)/A⁹. -/
theorem actualBumpTwoTail_movingHeight_norm_le (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualBumpTwoTail A c (actualBumpMovingHeight A c)‖ ≤
      actualBumpMovingTailConstant c / A ^ 9 := by
  have hb := actualBumpTwoTail_norm_le A c (actualBumpMovingHeight A c) hA hc
    (actualBumpMovingHeight_ge_one A c hA hc)
  have hp : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hD := actualRightLineMass_nonneg c
  have ht : actualBumpMovingHeight A c ^ 5 = Real.exp ((2 * c - 1) * A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : actualRightBumpTailNumerator A c /
      (5 * Real.pi * actualBumpMovingHeight A c ^ 5) =
      (actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2)) / (5 * Real.pi * sourceNormalization A * A ^ 9) := by
    rw [ht]
    unfold actualRightBumpTailNumerator
    field_simp
  rw [he] at hb
  apply hb.trans
  have hden : 5 * Real.pi * (4096 / 109395 : ℝ) * A ^ 9 ≤
      5 * Real.pi * sourceNormalization A * A ^ 9 := by
    gcongr
    exact actualBumpNormalization_lower A hA
  calc
    _ ≤ (actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2)) / (5 * Real.pi * (4096 / 109395) * A ^ 9) :=
      div_le_div_of_nonneg_left (by positivity) (by positivity) hden
    _ = _ := by unfold actualBumpMovingTailConstant; ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpMovingHeight
