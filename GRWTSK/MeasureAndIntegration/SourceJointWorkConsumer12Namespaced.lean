-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompensatedJointWork.Variant4ee32eab588599c58ba58ec44904e46869a475ef4bd94b4c6c15d8abbeb68716","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ee32eab588599c58ba58ec44904e46869a475ef4bd94b4c6c15d8abbeb68716","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CompensatedJointWork.Variant4ee32eab588599c58ba58ec44904e46869a475ef4bd94b4c6c15d8abbeb68716","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4ee32eab588599c58ba58ec44904e46869a475ef4bd94b4c6c15d8abbeb68716","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/SourceJointWorkConsumer12.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtWork
import SourceSamplingLedger

/-!
Actual-source composition of the reviewed combined Abel identity, endpoint
transfer, independently proved ledger error, and the original tail/prefix consumer.
This supplies conditional consumers only, not a signed bound witness.
Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompensatedJointWork.Variant4ee32eab588599c58ba58ec44904e46869a475ef4bd94b4c6c15d8abbeb68716

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceJointWorkConsumer

open MeasureTheory
open scoped Interval
open SourceJointMangoldtWork SourceStrictColumnInterior SourceVaughanHankel
open SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensResidual

noncomputable section

/-- All original signed compensation terms remain in the combined Abel block. -/
def compensatedJointWork (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  SourceMangoldtAbel.mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
  jointMangoldtErrorWork A - centeredDeletedDiagonal A - independentMainTerm A

theorem compensatedJointWork_eq_strictColumnInterior (A : ℝ) (hA : 1 ≤ A) :
    compensatedJointWork A = strictColumnInterior A :=
  (strictColumnInterior_eq_joint_mangoldt_error_work A hA).symm

/-- The endpoint and ledger error retain separate, scale-independent costs. -/
theorem residual_upper_of_compensatedJointWork_upper
    (A D C_F : ℝ) (hA : 1 ≤ A)
    (hwork : compensatedJointWork A ≤ D)
    (hledger : |EstimateBetaSourceRecombination.betaMainLedger A +
      independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 12 + C_F := by
  have hs : strictColumnInterior A ≤ D := by
    rwa [compensatedJointWork_eq_strictColumnInterior A hA] at hwork
  have ht := (strictColumnInterior_pointwise_upper_transfers A D hA).2 hs
  have hr := actual_residual_decomposition A hA
  have hf := (abs_le.mp hledger).2
  linarith

/-- A future literal signed witness propagates at its original radius. -/
theorem residual_tail_of_compensatedJointWork_tail
    (D R : ℝ) (_hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧
      ∀ A : ℝ, R ≤ A → mertensResidual A ≤ D + 12 + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact residual_upper_of_compensatedJointWork_upper A D C_F
    (hR.trans hRA) (hwork A hRA) (hF A (hR.trans hRA))

/-- The existing finite-prefix theorem covers every remaining real scale. -/
theorem estimate_of_compensatedJointWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, hF0, hF⟩ :=
    residual_tail_of_compensatedJointWork_tail D R hD hR hwork
  apply estimate_of_mertens_residual_tail
  exact ⟨D + 12 + C_F, by linarith, R, hR, hF⟩

end
end FormalResearch.RiemannHypothesis.SourceJointWorkConsumer
