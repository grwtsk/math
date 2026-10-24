# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJointCountertermLowerTail.Variante26e9d8ba6c4d3f595ea8848e57a95f32b61d549bcfa9a38da3364ba5859b8ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `309dc90585de829cd3b16df70bbf49c6574cf6d2` · SHA-256 `d0f24b2d1686ddf03576084e695d7d076d4c4e9e2e58cd1a97629b4e70aa6324`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorRemaindersEqLowerTailJointWorkAfterMeanCancellation.Variant1a976d372ff9911e9af838863d36aeff2a09275cf3cc983b662e3c247a1a4242","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a976d372ff9911e9af838863d36aeff2a09275cf3cc983b662e3c247a1a4242","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DivisorRemaindersEqLowerTailJointWorkAfterMeanCancellation.Variant1a976d372ff9911e9af838863d36aeff2a09275cf3cc983b662e3c247a1a4242","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1a976d372ff9911e9af838863d36aeff2a09275cf3cc983b662e3c247a1a4242","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-counterterm/source/SourceJointCountertermLowerTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointCountertermAlignment
import SourceJointMangoldtBaseline

/-!
# Actual source counterterm cancellation with retained lower tail

This private additive consumer uses the checked baseline theorem in its proof.
It keeps the signed Möbius divisor counterterms, Mangoldt work, complete centered
diagonal, lower error boundary, and exact quotient endpoint. The independently
defined main term is eliminated only by the preceding counterterm alignment law.
No signed estimate, positivity assertion, or RH conclusion is introduced.

Human direction: grwtsk contributors. AI proof construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorRemaindersEqLowerTailJointWorkAfterMeanCancellation.Variant1a976d372ff9911e9af838863d36aeff2a09275cf3cc983b662e3c247a1a4242

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceJointCountertermLowerTail

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourceJointMangoldtWork SourceStrictColumnInterior SourceVaughanHankel
open SourceMangoldtAbel SourceDivisorCounterterms
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateVaughanSource EstimateSourceMobiusKernel
open EstimatePlainKernel EstimateBetaCentering

noncomputable section

/-- Reuse the checked whole-line baseline while retaining the exact signed lower tail
and all arithmetic compensations. -/
theorem divisor_remainders_eq_lower_tail_joint_work_after_mean_cancellation
    (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorRemainder A d) =
      -(∫ t in Set.Iic (Real.log (vaughanCutoff A : ℝ)),
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
  have hc :=
    SourceJointCountertermAlignment.divisor_remainders_eq_joint_work_after_mean_cancellation A hA
  rw [SourceJointMangoldtBaseline.jointMangoldtTestProfile_window_eq_neg_lower_tail A hA] at hc
  exact hc

end
end FormalResearch.RiemannHypothesis.SourceJointCountertermLowerTail
```
