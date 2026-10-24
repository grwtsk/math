# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IndependentSignFixtures.Variantaba8f5c9681e51cf7f193e75aaa8652117601669756cc7b81de59bf66d402ff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `deb3f9badd61928fca6d5dc8be78f8c243a3dae1` · SHA-256 `2312c1d5ceea5ee299b03272f5e6db54977f5f78a473acf5a1ad1430ab24cba3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleOneNegative.Variantc974541cfdad7a1e6d9f5c7d705b40512b8b98130ec613439b3004056b8d62ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c974541cfdad7a1e6d9f5c7d705b40512b8b98130ec613439b3004056b8d62ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ScaleOneNegative.Variantc974541cfdad7a1e6d9f5c7d705b40512b8b98130ec613439b3004056b8d62ed","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c974541cfdad7a1e6d9f5c7d705b40512b8b98130ec613439b3004056b8d62ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/regent-origin/private-sign-fixture-continuation-v3/IndependentSignFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelationSignChange

/-!
Prospective independent source-sign fixtures. UNCOMPILED and zero kernel credit.
No foreign Peano dependency, source change, or quantitative arithmetic witness.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleOneNegative.Variantc974541cfdad7a1e6d9f5c7d705b40512b8b98130ec613439b3004056b8d62ed

set_option autoImplicit false
noncomputable section
namespace Cycle24IndependentSignFixtures

open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationSignChange SourceMangoldtInteraction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

theorem scale_one_negative :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative 1 t < 0 :=
  sourceCorrelation_exists_neg (by norm_num)

theorem scale_one_half_support :
    ∃ t : ℝ, 0 < t ∧ t < 2 ∧ sourceCorrelation explicitSecondDerivative 1 t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 1) (by norm_num)

theorem scale_half_negative :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative (1 / 2) t < 0 :=
  sourceCorrelation_exists_neg (by norm_num)

theorem scale_half_open_support :
    ∃ t : ℝ, 0 < t ∧ t < 1 ∧
      sourceCorrelation explicitSecondDerivative (1 / 2) t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 1 / 2) (by norm_num)

theorem scale_five_negative :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative 5 t < 0 :=
  sourceCorrelation_exists_neg (by norm_num)

theorem scale_five_open_support :
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧ sourceCorrelation explicitSecondDerivative 5 t < 0 := by
  have h := sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)
  norm_num at h
  exact h

theorem pointwise_nonneg_at_one_false :
    ¬(∀ t : ℝ, 0 ≤ sourceCorrelation explicitSecondDerivative 1 t) := by
  intro h
  obtain ⟨t, ht⟩ := scale_one_negative
  exact (not_le.mpr ht) (h t)

theorem half_support_nonneg_at_one_false :
    ¬(∀ t : ℝ, 0 < t → t < 2 →
      0 ≤ sourceCorrelation explicitSecondDerivative 1 t) := by
  intro h
  obtain ⟨t, ht0, ht2, ht⟩ := scale_one_half_support
  exact (not_le.mpr ht) (h t ht0 ht2)

theorem all_positive_scale_nonneg_false :
    ¬(∀ A : ℝ, 0 < A → ∀ t : ℝ,
      0 ≤ sourceCorrelation explicitSecondDerivative A t) := by
  intro h
  exact pointwise_nonneg_at_one_false (h 1 (by norm_num))

theorem actual_center_is_one : sourceCorrelation explicitSecondDerivative 1 0 = 1 :=
  sourceCorrelation_zero (by norm_num)

theorem closed_upper_endpoint_is_zero :
    sourceCorrelation explicitSecondDerivative 1 2 = 0 := by
  simpa using sourceCorrelation_upper_endpoint 1 (by norm_num)

theorem closed_lower_endpoint_is_zero :
    sourceCorrelation explicitSecondDerivative 1 (-2) = 0 := by
  simpa using sourceCorrelation_lower_endpoint 1 (by norm_num)

theorem negative_witness_excludes_center :
    ∃ t : ℝ, t ≠ 0 ∧ sourceCorrelation explicitSecondDerivative 1 t < 0 := by
  obtain ⟨t, ht0, _, ht⟩ := scale_one_half_support
  exact ⟨t, ne_of_gt ht0, ht⟩

theorem critical_weighted_kernel_nonneg_false :
    ¬(∀ t : ℝ, 0 ≤ Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative 1 t) := by
  intro h
  obtain ⟨t, ht⟩ := scale_one_negative
  exact (not_le.mpr (mul_neg_of_pos_of_neg (Real.exp_pos _) ht)) (h t)

end Cycle24IndependentSignFixtures
```
