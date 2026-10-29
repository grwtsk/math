-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExactMeanTailBudgetLeOriginal.Varianta1918a1b04360de46de9235bf1a48c3055978e68560a9a22a138e1341c886b68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a1918a1b04360de46de9235bf1a48c3055978e68560a9a22a138e1341c886b68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ExactMeanTailBudgetLeOriginal.Varianta1918a1b04360de46de9235bf1a48c3055978e68560a9a22a138e1341c886b68","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a1918a1b04360de46de9235bf1a48c3055978e68560a9a22a138e1341c886b68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-review/SourceExactEnergyComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactEnergyMeanConsumer

/-!
The improved conditional budget is compared with the existing F7 consumer.
The finite prefix and all independently fixed source terms remain literal.
Direction and conceptual origin: grwtsk contributors.
Formal calculation and source comparison: OpenAI Codex assistance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExactMeanTailBudgetLeOriginal.Varianta1918a1b04360de46de9235bf1a48c3055978e68560a9a22a138e1341c886b68

set_option autoImplicit false
noncomputable section
namespace RH16ExactEnergyComparison

open RH16ExactTailEnergy RH16ExactEnergyMean RH16F7TailCalibration
open RH16CompleteXiTail RH16CompleteXiComplement RH16ActualXiFixedFront
open RH16ActualXiPositiveBlock RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem exactMeanTailBudget_le_original (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    exactMeanTailBudget M1 R ≤ meanTailBudget M1 R := by
  have hQ : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have he := tailEnergyCoefficient_le_five hQ
  have hs : Real.sqrt (tailEnergyCoefficient (calibratedRadius R)) ≤ 5 := by
    apply Real.sqrt_le_iff.mpr
    constructor
    · norm_num
    · linarith
  have hd : 2 * tailEnergyCoefficient (calibratedRadius R) / calibratedRadius R ≤
      2 * physicalCurvatureCoefficient / calibratedRadius R := by
    apply div_le_div_of_nonneg_right _ (calibratedRadius_pos R).le
    norm_num [physicalCurvatureCoefficient] at *
    linarith
  exact mul_le_mul_of_nonneg_right (add_le_add hs hd) hM1

theorem exactMeanAtomBudget_le_original (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    exactMeanAtomBudget M1 R ≤ meanAtomBudget M1 R := by
  rw [exactMeanAtomBudget_eq, meanAtomBudget_eq]
  apply max_le_max le_rfl
  linarith only [exactMeanTailBudget_le_original M1 R hM1]

theorem exactMeanResidualBudget_le_original (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    exactMeanResidualBudget M1 R ≤ meanResidualBudget M1 R := by
  unfold exactMeanResidualBudget meanResidualBudget
  linarith only [exactMeanAtomBudget_le_original M1 R hM1]

/-- The gain is conditional on which atom-budget branch is active. -/
theorem atom_budget_gain_when_active (M1 R : ℝ)
    (hactive : 0 ≤ exactMeanTailBudget M1 R + fixedFrontBudget - blockMargin)
    (hM1 : 0 ≤ M1) :
    meanAtomBudget M1 R - exactMeanAtomBudget M1 R =
      meanTailBudget M1 R - exactMeanTailBudget M1 R := by
  have hold : 0 ≤ meanTailBudget M1 R + fixedFrontBudget - blockMargin := by
    linarith only [hactive, exactMeanTailBudget_le_original M1 R hM1]
  rw [exactMeanAtomBudget_eq, meanAtomBudget_eq,
    max_eq_right hactive, max_eq_right hold]
  ring

/-- The actual all-scale min can cap the improvement; the same prefix is retained. -/
theorem original_lower_budget_le_exact (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    min (originalPrefixLower (calibratedRadius R))
      (archimedeanMultiplier 0 - 2 * meanResidualBudget M1 R) ≤
    min (originalPrefixLower (calibratedRadius R))
      (archimedeanMultiplier 0 - 2 * exactMeanResidualBudget M1 R) := by
  apply min_le_min le_rfl
  linarith only [exactMeanResidualBudget_le_original M1 R hM1]

theorem tail_lower_gain_when_active (M1 R : ℝ)
    (hactive : 0 ≤ exactMeanTailBudget M1 R + fixedFrontBudget - blockMargin)
    (hM1 : 0 ≤ M1) :
    (archimedeanMultiplier 0 - 2 * exactMeanResidualBudget M1 R) -
      (archimedeanMultiplier 0 - 2 * meanResidualBudget M1 R) =
        2 * (meanTailBudget M1 R - exactMeanTailBudget M1 R) := by
  have h := atom_budget_gain_when_active M1 R hactive hM1
  unfold exactMeanResidualBudget meanResidualBudget
  linarith only [h]

end RH16ExactEnergyComparison
