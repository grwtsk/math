-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReducedOffAxisAllowance.Variant155052372e4e9256d71b61801bf8d313a321be910865978a60eb40f7f1996798","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"155052372e4e9256d71b61801bf8d313a321be910865978a60eb40f7f1996798","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ReducedOffAxisAllowance.Variant155052372e4e9256d71b61801bf8d313a321be910865978a60eb40f7f1996798","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"155052372e4e9256d71b61801bf8d313a321be910865978a60eb40f7f1996798","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791351822919935000/SourceReducedOffAxisEstimateConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualReducedZeroHeight
import SourceResidualBudget
import SourceLeadingCesaroPropagation

/-!
Complete the original all-real and sharp leading consumers of the genuine
reduced-height off-axis head. The signed arithmetic J witness remains explicit.
Only the actual omitted all-zero tail and archimedean allowance are paid.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReducedOffAxisAllowance.Variant155052372e4e9256d71b61801bf8d313a321be910865978a60eb40f7f1996798

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceReducedOffAxisEstimateConsumer
open SourceActualReducedZeroHeight SourceActualCriticalZeroHead SourceActualZeroTailBudget
open SourceLeadingCesaroPropagation SourceLeadingTailBudget SourcePairing RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

def reducedOffAxisAllowance (A0 A : ℝ) : ℝ :=
  (18 * (162826 / 7623 : ℝ)) / (2 * A^2) + actualReducedZeroEnvelope A0 A / 2

def reducedOffAxisResidualBudget (A0 J S : ℝ) : ℝ :=
  (archimedeanMultiplier 0 + J) / 2 + reducedOffAxisAllowance A0 S

theorem reducedOffAxisAllowance_le_at_radius {A0 S A : ℝ}
    (hA0 : 1 ≤ A0) (hS : 200 ≤ S) (hA : S ≤ A) :
    reducedOffAxisAllowance A0 A ≤ reducedOffAxisAllowance A0 S := by
  have hSp : 0 < S := by linarith
  have hAp : 0 < A := by linarith
  have hc : 0 ≤ actualZeroTailWeightConstant := by
    unfold actualZeroTailWeightConstant
    positivity
  unfold reducedOffAxisAllowance actualReducedZeroEnvelope
  gcongr

theorem residual_tail_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R ≤ A →
      mertensResidual A ≤ reducedOffAxisResidualBudget A0 J (max 200 R) := by
  obtain ⟨A0, hA0, hb⟩ := actualResidual_reducedOffAxisHead_upper
  refine ⟨A0, hA0, fun A hA => ?_⟩
  have h200 : 200 ≤ A := (le_max_left _ _).trans hA
  have hr := hb A h200
  have hh := hhead A ((le_max_right _ _).trans hA)
  have he := reducedOffAxisAllowance_le_at_radius hA0 (le_max_left 200 R) hA
  unfold reducedOffAxisResidualBudget reducedOffAxisAllowance at *
  linarith

theorem all_real_lower_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (max 200 R))
        (archimedeanMultiplier 0 -
          2 * reducedOffAxisResidualBudget A0 J (max 200 R)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨A0, hA0, hb⟩ := residual_tail_of_reduced_offAxis_lower J R hhead
  refine ⟨A0, hA0, ?_⟩
  exact all_real_source_lower_of_residual_tail _ _
    (by linarith [le_max_left (200 : ℝ) R]) hb

theorem estimate_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨A0, _, hb⟩ := all_real_lower_of_reduced_offAxis_lower J R hhead
  exact ⟨min (originalPrefixLower (max 200 R))
    (archimedeanMultiplier 0 - 2 * reducedOffAxisResidualBudget A0 J (max 200 R)), hb⟩

theorem leading_tail_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, max 25600 (max 200 R) ≤ A →
      actualLeadingRenormalizedTail A ≤ reducedOffAxisResidualBudget A0 J (max 200 R) -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  obtain ⟨A0, hA0, hb⟩ := residual_tail_of_reduced_offAxis_lower J R hhead
  refine ⟨A0, hA0, fun A hA => ?_⟩
  exact actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
    (hb A ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceReducedOffAxisEstimateConsumer
