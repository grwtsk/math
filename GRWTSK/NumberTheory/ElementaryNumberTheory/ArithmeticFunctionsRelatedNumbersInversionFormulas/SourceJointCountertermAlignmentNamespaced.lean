-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorRemaindersEqJointWorkAfterMeanCancellation.Variant63288aaa91a15518b8d6f7502fb5165d4b8d3e4718f0bc82250b30aaed8f4852","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63288aaa91a15518b8d6f7502fb5165d4b8d3e4718f0bc82250b30aaed8f4852","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DivisorRemaindersEqJointWorkAfterMeanCancellation.Variant63288aaa91a15518b8d6f7502fb5165d4b8d3e4718f0bc82250b30aaed8f4852","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"63288aaa91a15518b8d6f7502fb5165d4b8d3e4718f0bc82250b30aaed8f4852","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-counterterm/source/SourceJointCountertermAlignment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtWork
import SourceDivisorCounterterms

/-!
# The actual joint work after the existing divisor mean cancellation

Complete private proof text, UNCOMPILED. This adapter reuses the existing global
baseline, independently defined main term, divisor counterterm and divisor
remainder. It neither defines a replacement main term nor bounds the signed sum.
The lower error boundary, full centered diagonal and actual quotient endpoint
remain explicit. PRIVATE34 and its prerequisites remain private/unmerged.

AI attribution: prepared with OpenAI Codex; no native verification has occurred.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorRemaindersEqJointWorkAfterMeanCancellation.Variant63288aaa91a15518b8d6f7502fb5165d4b8d3e4718f0bc82250b30aaed8f4852

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceJointCountertermAlignment

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourceJointMangoldtWork SourceStrictColumnInterior SourceVaughanHankel
open SourceMangoldtAbel SourceDivisorCounterterms
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateVaughanSource EstimateSourceMobiusKernel
open EstimatePlainKernel EstimateBetaCentering

noncomputable section

/-- Exactly the original reciprocal means cancel; the signed work and all boundaries remain. -/
theorem divisor_remainders_eq_joint_work_after_mean_cancellation
    (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorRemainder A d) =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorCounterterm A d) +
      (let U := vaughanCutoff A
       let N := sourceKernelCutoff A
       let K := N / (U + 1)
       let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
       let R : ℕ → ℝ := fun k =>
         ∑ m ∈ longInventory A,
           vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
       B K * R K) := by
  have hi := strictColumnInterior_eq_joint_mangoldt_error_work A hA
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  have hd := jointSignedRemainder_eq_divisor_remainders A hA
  rw [jointSignedRemainder_eq_covariance A hA] at hd
  have hm := independentMainTerm_eq_baseline_add_divisors A
  dsimp only at he ⊢
  linarith

end
end FormalResearch.RiemannHypothesis.SourceJointCountertermAlignment
