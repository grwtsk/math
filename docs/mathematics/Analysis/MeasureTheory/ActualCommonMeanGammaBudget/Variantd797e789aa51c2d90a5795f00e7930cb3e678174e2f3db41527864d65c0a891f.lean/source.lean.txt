-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ActualCorrelationMeasurable.Variant1635fd07b785710e68c5160dad6698390d3dc93bbcf1db407cc0bb6e93361e0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1635fd07b785710e68c5160dad6698390d3dc93bbcf1db407cc0bb6e93361e0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ActualCorrelationMeasurable.Variant1635fd07b785710e68c5160dad6698390d3dc93bbcf1db407cc0bb6e93361e0c","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"1635fd07b785710e68c5160dad6698390d3dc93bbcf1db407cc0bb6e93361e0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass9/gamma_fourier/deps/ActualCommonMeanGammaBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCommonMeanZeroSide
import ArchimedeanKernel

/-! Actual C_A positive-kernel budget for #313.
The Fourier-Gamma to correlation-kernel identity is an explicit premise only.
Direction: grwtsk contributors. Scratch formalization: OpenAI Codex. -/

namespace GRWTSK.Analysis.MeasureTheory.ActualCorrelationMeasurable.Variant1635fd07b785710e68c5160dad6698390d3dc93bbcf1db407cc0bb6e93361e0c

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCommonMeanGammaBudget
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open ContinuousResearch.ActualCommonMeanCalibration
open ContinuousResearch.ActualCommonMeanZeroSide
open ContinuousResearch.ArchimedeanKernel

theorem actualCorrelation_measurable {A : ℝ} (hA : 1 ≤ A) :
    Measurable (sourceCorrelation explicitSecondDerivative A) :=
  (sourceCorrelation_contDiff A (by linarith)).continuous.measurable

theorem sharpConstant_le_coarse : (162826/7623 : ℝ) ≤ 65/3 := by norm_num

theorem actualDeficit_coarse {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    0 ≤ 1-sourceCorrelation explicitSecondDerivative A t ∧
      1-sourceCorrelation explicitSecondDerivative A t ≤ (65/(6*A^2))*t^2 := by
  refine ⟨correlation_deficit_nonneg hA t, (correlation_deficit_le_sharp hA t).trans ?_⟩
  have h := mul_le_mul_of_nonneg_right sharpConstant_le_coarse
    (div_nonneg (sq_nonneg t) (by positivity : (0:ℝ) ≤ 2*A^2))
  calc
    (162826/7623:ℝ)*t^2/(2*A^2) = (162826/7623:ℝ)*(t^2/(2*A^2)) := by ring
    _ ≤ (65/3:ℝ)*(t^2/(2*A^2)) := h
    _ = _ := by ring

theorem actualWeightedDeficit_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (weightedDeficit (sourceCorrelation explicitSecondDerivative A)) (Ioi 0) :=
  weightedDeficit_integrable (actualCorrelation_measurable hA)
    (fun t _ => actualDeficit_coarse hA t)

theorem actualWeightedDeficit_budget {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ 2*(∫ t : ℝ in Ioi 0,
      weightedDeficit (sourceCorrelation explicitSecondDerivative A) t) ∧
    2*(∫ t : ℝ in Ioi 0,
      weightedDeficit (sourceCorrelation explicitSecondDerivative A) t) ≤ 390/A^2 := by
  have h := weightedDeficit_integral_budget (C := sourceCorrelation explicitSecondDerivative A)
    (k := 65/(6*A^2)) (by positivity) (actualCorrelation_measurable hA)
    (fun t _ => actualDeficit_coarse hA t)
  refine ⟨h.1, h.2.trans_eq ?_⟩
  ring

/-- Exact Fourier-side G_A remains unchanged; its missing representation is explicit. -/
theorem actualGamma_budget_from_identity {A a0 : ℝ} (hA : 1 ≤ A)
    (hG : sourceGammaValue A = a0+2*(∫ t : ℝ in Ioi 0,
      weightedDeficit (sourceCorrelation explicitSecondDerivative A) t)) :
    a0 ≤ sourceGammaValue A ∧ sourceGammaValue A ≤ a0+390/A^2 := by
  have h := actualWeightedDeficit_budget hA
  rw [hG]
  constructor <;> linarith

#print axioms actualCorrelation_measurable
#print axioms sharpConstant_le_coarse
#print axioms actualDeficit_coarse
#print axioms actualWeightedDeficit_integrable
#print axioms actualWeightedDeficit_budget
#print axioms actualGamma_budget_from_identity
end ContinuousResearch.ActualCommonMeanGammaBudget
