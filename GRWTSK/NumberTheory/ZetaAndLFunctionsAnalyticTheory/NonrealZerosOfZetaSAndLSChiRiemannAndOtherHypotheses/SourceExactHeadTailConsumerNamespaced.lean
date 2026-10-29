-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExactHeadAtomBudget.Variant0a84ff595d49e00a1eb5d3e9c04654a7f4b6f8c6f56c9d62d6f6cc367d29f14e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a84ff595d49e00a1eb5d3e9c04654a7f4b6f8c6f56c9d62d6f6cc367d29f14e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ExactHeadAtomBudget.Variant0a84ff595d49e00a1eb5d3e9c04654a7f4b6f8c6f56c9d62d6f6cc367d29f14e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0a84ff595d49e00a1eb5d3e9c04654a7f4b6f8c6f56c9d62d6f6cc367d29f14e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-full-zero-log-affine/source-copies/047-SourceExactHeadTailConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactXiHead
import SourceFiniteGammaReturn
import SourceExactEnergyMeanConsumer

/-!
Apply the actual finite head and favorable gamma trace to every original tail consumer.
The supplied complete signed tail or actual F7 mean remains an explicit arithmetic input.
Direction and conceptual origin: grwtsk contributors.
Native application construction: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExactHeadAtomBudget.Variant0a84ff595d49e00a1eb5d3e9c04654a7f4b6f8c6f56c9d62d6f6cc367d29f14e

set_option autoImplicit false
noncomputable section
namespace RH16ExactHeadTail
open MeasureTheory
open RH16ExactXiHead RH16FiniteGammaReturn RH16ExactEnergyMean RH16ActualF7Mean
open RH16CompleteXiTail RH16CompleteXiComplement RH16CesaroSignedPairing RH16CesaroPrimitive
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- Pay the complete head once and keep the quantified favorable prime-two trace. -/
def exactHeadAtomBudget (K Q : ℝ) : ℝ :=
  max 0 (K + actualXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q)

def exactHeadResidualBudget (K Q : ℝ) : ℝ :=
  exactHeadAtomBudget K Q - 3 / 8 + criticalBaselineCorrection Q

theorem exactHeadAtomBudget_nonneg (K Q : ℝ) : 0 ≤ exactHeadAtomBudget K Q :=
  le_max_left _ _

/-- Complete reconstruction retains all source integrals and the PLUS gamma sign. -/
theorem remainingAtomWork_eq_gamma_head_tail (A : ℝ) (hA : 91 ≤ A) :
    remainingAtomWork A = Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
      actualXiHead A + completeXiTail A := by
  rw [remainingAtomWork_eq_cesaro_integral A (by linarith : 1 ≤ A)]
  change Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
    signedCesaroPairing A = _
  rw [signedCesaroPairing_eq_head_add_tail A hA]
  ring

theorem remaining_lower_of_exact_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A)
    (htail : -K ≤ completeXiTail A) :
    -exactHeadAtomBudget K Q ≤ remainingAtomWork A := by
  have hh := head_lower_at_radius A Q hQ hA
  have hg := gammaTraceFloor_le_actual Q A hQ hA
  have hm : K + actualXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q ≤
      exactHeadAtomBudget K Q := le_max_right _ _
  rw [remainingAtomWork_eq_gamma_head_tail A (hQ.trans hA)]
  linarith

/-- Produce the original fixed nonnegative atom witness at the same real radius. -/
theorem atom_witness_of_exact_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 40 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -D ≤ remainingAtomWork A := by
  exact ⟨exactHeadAtomBudget K Q, exactHeadAtomBudget_nonneg K Q, Q, by linarith,
    fun A hA => remaining_lower_of_exact_head_tail K Q A hQ hA (htail A hA)⟩

/-- The finite prefix is literally through Q; no fixed91 prefix is substituted. -/
theorem all_real_lower_of_exact_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q)
        (archimedeanMultiplier 0 - 2 * exactHeadResidualBudget K Q) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_remaining_signed_tail (exactHeadAtomBudget K Q) Q
    (by linarith : 40 ≤ Q)
  intro A hA
  exact remaining_lower_of_exact_head_tail K Q A hQ hA (htail A hA)

theorem estimate_of_exact_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_exact_head_tail K Q hQ htail⟩

theorem residual_upper_of_exact_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A)
    (htail : -K ≤ completeXiTail A) :
    mertensResidual A ≤ exactHeadResidualBudget K Q := by
  apply residual_upper_of_remaining_signed_lower (exactHeadAtomBudget K Q) Q A
    (by linarith : 40 ≤ Q) hA
  exact remaining_lower_of_exact_head_tail K Q A hQ hA htail

theorem leading_upper_of_exact_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q)
    (hA : max 25600 Q ≤ A) (htail : -K ≤ completeXiTail A) :
    actualLeadingRenormalizedTail A ≤ exactHeadResidualBudget K Q -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact residual_upper_of_exact_head_tail K Q A hQ ((le_max_right _ _).trans hA) htail

/-- Source-level application to the actual F7 mean, with its unchanged arithmetic input. -/
theorem all_real_lower_of_exact_head_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 -
          2 * exactHeadResidualBudget (exactMeanTailBudget M1 R) (calibratedRadius R)) ≤
          sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_exact_head_tail _ _ (le_max_left _ _)
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean)

theorem estimate_of_exact_head_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_exact_head_mean M1 R hM1 hR hmean⟩

theorem residual_upper_of_exact_head_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : calibratedRadius R ≤ A) (hmean : actualF7MeanBound M1 R) :
    mertensResidual A ≤
      exactHeadResidualBudget (exactMeanTailBudget M1 R) (calibratedRadius R) :=
  residual_upper_of_exact_head_tail _ _ A (le_max_left _ _) hA
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean A hA)

theorem leading_upper_of_exact_head_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : max 25600 (calibratedRadius R) ≤ A)
    (hmean : actualF7MeanBound M1 R) :
    actualLeadingRenormalizedTail A ≤
      exactHeadResidualBudget (exactMeanTailBudget M1 R) (calibratedRadius R) -
        (riemannZeta (1 / 2)).re + 3103 / 50 :=
  leading_upper_of_exact_head_tail _ _ A (le_max_left _ _) hA
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean A ((le_max_right _ _).trans hA))
end RH16ExactHeadTail
