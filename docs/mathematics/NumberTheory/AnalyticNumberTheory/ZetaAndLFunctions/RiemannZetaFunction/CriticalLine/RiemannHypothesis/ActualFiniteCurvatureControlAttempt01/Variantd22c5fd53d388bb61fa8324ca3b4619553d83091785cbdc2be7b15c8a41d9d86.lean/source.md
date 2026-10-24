# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFiniteCurvatureControlAttempt01.Variantd22c5fd53d388bb61fa8324ca3b4619553d83091785cbdc2be7b15c8a41d9d86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dad312b296fc9b962e0eea76003e41f27ed352a` · SHA-256 `0b0e092503980672733b9dc91c7a06b25dc7bfeee1ce8984a2697e5def3c6f92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFiniteWorkError.Variantab197d1fb2d2b71368050481a62ad87e9245a5ec05d793a7cbe13cfc189be369","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab197d1fb2d2b71368050481a62ad87e9245a5ec05d793a7cbe13cfc189be369","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFiniteWorkError.Variantab197d1fb2d2b71368050481a62ad87e9245a5ec05d793a7cbe13cfc189be369","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ab197d1fb2d2b71368050481a62ad87e9245a5ec05d793a7cbe13cfc189be369","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass16/finite_curvature_readout/coordinator-replay/ActualFiniteCurvatureControl-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCurvatureFiniteReadout

/-! Assembly for the exact signed finite-cell evaluator.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No eventual arithmetic lower witness is constructed. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFiniteWorkError.Variantab197d1fb2d2b71368050481a62ad87e9245a5ec05d793a7cbe13cfc189be369

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualFiniteCurvatureControl
open ActualCurvatureFiniteReadout ActualCurvatureResolution
open FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork

theorem actual_finite_work_error {A : ℝ} {n : ℕ} (hA : 1 ≤ A) (hn : 0 < n) :
    |finiteCurvatureReadout A n - criticalRemovedPairedWork A| ≤
      (2200 : ℝ) * A^2 * Real.exp A / n := by
  rw [← sampled_grid_eq_finite hA hn]
  exact actual_grid_work_error hA hn

theorem actual_joint_finite_accuracy {A η : ℝ} {n : ℕ} (hA : 1 ≤ A) (hη : 0 < η)
    (hn : curvatureResolutionCount A η ≤ n) :
    |finiteCurvatureReadout A n - criticalRemovedPairedWork A| ≤ η := by
  rw [← sampled_grid_eq_finite hA ((curvatureResolutionCount_pos A η).trans_le hn)]
  exact actual_joint_grid_work_accuracy hA hη hn

def FiniteCurvatureTailLowerBound : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    -B ≤ finiteCurvatureReadout A (curvatureResolutionCount A 1)

/-- This is the original all-real signed obligation with a faithful finite evaluator. -/
theorem actual_tail_iff_finite_tail : CriticalRemovedPairedTailLowerBound ↔
    FiniteCurvatureTailLowerBound := by
  rw [actual_tail_iff_grid_tail]
  unfold CurvatureGridTailLowerBound FiniteCurvatureTailLowerBound
  congr! 5
  rw [sampled_grid_eq_finite (by linarith : 1 ≤ A) (curvatureResolutionCount_pos A 1)]

end ContinuousResearch.ActualFiniteCurvatureControl

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy

#check ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound
#print ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
```
