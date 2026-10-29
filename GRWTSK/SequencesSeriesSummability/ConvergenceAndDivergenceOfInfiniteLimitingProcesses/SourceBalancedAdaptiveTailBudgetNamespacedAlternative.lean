-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ActualBalancedAdaptiveTailCost.Variant8849e1e083a2f7029c3f26ab54519b92ef8b67cb5dae3d6703448120636bf9be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8849e1e083a2f7029c3f26ab54519b92ef8b67cb5dae3d6703448120636bf9be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ActualBalancedAdaptiveTailCost.Variant8849e1e083a2f7029c3f26ab54519b92ef8b67cb5dae3d6703448120636bf9be","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"8849e1e083a2f7029c3f26ab54519b92ef8b67cb5dae3d6703448120636bf9be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/balanced-adaptive-tail-budget/attempt01/SourceBalancedAdaptiveTailBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointActualCountTail

/-! Retain the negative logarithmic source term before comparing real scales.
The actual adaptive height and source head are unchanged.
Direction and conceptual origin: grwtsk contributors.
Actual tail-budget refinement and formalization: OpenAI Codex graph analyst.
Existing count, pointwise source and adaptive-height proofs are reused. -/

namespace GRWTSK.Analysis.AsymptoticAnalysis.ActualBalancedAdaptiveTailCost.Variant8849e1e083a2f7029c3f26ab54519b92ef8b67cb5dae3d6703448120636bf9be

set_option autoImplicit false
noncomputable section
namespace RH16BalancedAdaptiveTailBudget
open MeasureTheory Set Zeta23
open FormalResearch.RiemannHypothesis
open SourceActualZeroTailCount SourceActualZeroTailBudget
open RH16ActualAdaptiveSharpHeight RH16JointActualCountTail

def actualBalancedAdaptiveTailCost (A0 η Q : ℝ) : ℝ :=
  9000000 * A0 / η ^ 5 *
    (1 / 5 + max 0 (Real.log η + 2 - (8 / 5 : ℝ) * Real.log Q) / Q)

private theorem logarithmic_ratio_le {b A Q : ℝ} (hQ : 0 < Q) (hQA : Q ≤ A) :
    (b - (8 / 5 : ℝ) * Real.log A) / A ≤
      max 0 (b - (8 / 5 : ℝ) * Real.log Q) / Q := by
  have hA : 0 < A := hQ.trans_le hQA
  have hl : Real.log Q ≤ Real.log A := Real.log_le_log hQ hQA
  have hm : b - (8 / 5 : ℝ) * Real.log A ≤
      max 0 (b - (8 / 5 : ℝ) * Real.log Q) := by
    exact (show b - (8 / 5 : ℝ) * Real.log A ≤
      b - (8 / 5 : ℝ) * Real.log Q by nlinarith).trans (le_max_right _ _)
  have hn : 0 ≤ max 0 (b - (8 / 5 : ℝ) * Real.log Q) := le_max_left _ _
  calc
    _ ≤ max 0 (b - (8 / 5 : ℝ) * Real.log Q) / A :=
      div_le_div_of_nonneg_right hm hA.le
    _ ≤ _ := div_le_div_of_nonneg_left hn hQ hQA

private theorem balanced_tail_of_sharp (A0 : ℝ) (hA0 : 1 ≤ A0)
    (htail : ∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * A0 * Real.exp A * (Real.log R + 2) / (A ^ 9 * R ^ 5)) :
    ∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualBalancedAdaptiveTailCost A0 η Q := by
  intro η Q A hη hQ hQA
  have hA : 91 ≤ A := hQ.trans hQA
  have hApos : 0 < A := by linarith
  have hQpos : 0 < Q := by linarith
  have hηpos : 0 < η := by linarith
  have ht := htail A (actualAdaptiveSharpHeight η A) hA
    (actualAdaptiveSharpHeight_ge_four hη hA)
  have hp := actualAdaptiveSharpHeight_fifth_power (η := η) hApos
  have hl := actualAdaptiveSharpHeight_log hηpos hApos
  have heq :
      9000000 * A0 * Real.exp A *
          (Real.log (actualAdaptiveSharpHeight η A) + 2) /
          (A ^ 9 * actualAdaptiveSharpHeight η A ^ 5) =
      9000000 * A0 / η ^ 5 *
        (1 / 5 + (Real.log η + 2 - (8 / 5 : ℝ) * Real.log A) / A) := by
    rw [hp, hl]
    field_simp
    ring
  rw [heq] at ht
  apply ht.trans
  unfold actualBalancedAdaptiveTailCost
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  exact add_le_add_left (logarithmic_ratio_le hQpos hQA) _

/-- Comparison on the same height family: no signed-head assumption is improved. -/
theorem actualBalancedAdaptiveTailCost_le_old {A0 η Q : ℝ}
    (hA0 : 1 ≤ A0) (hη : 1 ≤ η) (hQ : 91 ≤ Q) :
    actualBalancedAdaptiveTailCost A0 η Q ≤ actualAdaptiveSharpTailCost A0 η Q := by
  have hQpos : 0 < Q := by linarith
  have hlQ : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  have hlη : 0 ≤ Real.log η := Real.log_nonneg hη
  have hm : max 0 (Real.log η + 2 - (8 / 5 : ℝ) * Real.log Q) ≤
      Real.log η + 2 := by
    apply max_le
    · linarith
    · nlinarith
  unfold actualBalancedAdaptiveTailCost actualAdaptiveSharpTailCost
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  exact add_le_add_left (div_le_div_of_nonneg_right hm hQpos.le) _

/-- The fixed eta=1 tail cost is exactly 1.8 million times the same count witness. -/
theorem actualBalancedAdaptiveTailCost_one (A0 Q : ℝ) (hQ : 91 ≤ Q) :
    actualBalancedAdaptiveTailCost A0 1 Q = 1800000 * A0 := by
  have hlog4 : (5 / 4 : ℝ) ≤ Real.log 4 := by
    have he : Real.log (4 : ℝ) = 2 * Real.log 2 := by
      rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]
      norm_num
    rw [he]
    linarith [Real.log_two_gt_d9]
  have hlogQ : (5 / 4 : ℝ) ≤ Real.log Q := hlog4.trans
    (Real.log_le_log (by norm_num : (0 : ℝ) < 4) (by linarith))
  have hn : Real.log (1 : ℝ) + 2 - (8 / 5 : ℝ) * Real.log Q ≤ 0 := by
    rw [Real.log_one]
    nlinarith
  rw [actualBalancedAdaptiveTailCost, max_eq_left hn]
  norm_num
  ring

/-- One constructed actual witness retains local/sixth contracts and the refined tail. -/
theorem actual_joint_balanced_tail_witness :
    ∃ A0 : ℝ, 1 ≤ A0 ∧
    Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) A0 ∧
    (∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A0 * (Real.log R + 2) / R ^ 5) ∧
    (∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * A0 * Real.exp A * (Real.log R + 2) / (A ^ 9 * R ^ 5)) ∧
    (∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualBalancedAdaptiveTailCost A0 η Q) ∧
    (∀ Q A : ℝ, 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight 1 A)‖ ≤ 1800000 * A0) := by
  obtain ⟨A0, hA0, hlocal, hsix, htail, _⟩ :=
    actual_joint_local_six_sharp_adaptive_witness
  have hbalanced := balanced_tail_of_sharp A0 hA0 htail
  refine ⟨A0, hA0, hlocal, hsix, htail, hbalanced, fun Q A hQ hQA => ?_⟩
  have h := hbalanced 1 Q A (by norm_num) hQ hQA
  rw [actualBalancedAdaptiveTailCost_one A0 Q hQ] at h
  exact h

end RH16BalancedAdaptiveTailBudget
