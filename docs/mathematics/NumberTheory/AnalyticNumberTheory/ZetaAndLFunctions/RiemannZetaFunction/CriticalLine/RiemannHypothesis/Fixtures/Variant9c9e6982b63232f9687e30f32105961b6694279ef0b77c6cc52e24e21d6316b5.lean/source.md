# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fixtures.Variant9c9e6982b63232f9687e30f32105961b6694279ef0b77c6cc52e24e21d6316b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c47742cc882781356247f2f42427071e7bbd7bd7` · SHA-256 `f8b12f1fb4bfbf2a6202b4731de36e37aca294dfd7eae4d875aaa905a1dcdba1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignPositiveOne.Variant3067de7b5d317fd8d7374bc0320e295d35b9aab6483a1e9728efeb0971c6e8eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3067de7b5d317fd8d7374bc0320e295d35b9aab6483a1e9728efeb0971c6e8eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SignPositiveOne.Variant3067de7b5d317fd8d7374bc0320e295d35b9aab6483a1e9728efeb0971c6e8eb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3067de7b5d317fd8d7374bc0320e295d35b9aab6483a1e9728efeb0971c6e8eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/root/sign-audits-v4/fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelationSignChange


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignPositiveOne.Variant3067de7b5d317fd8d7374bc0320e295d35b9aab6483a1e9728efeb0971c6e8eb

set_option autoImplicit false
noncomputable section
open FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
theorem sign_positive_one : ∃ t : ℝ, 0 < t ∧ t < 2 ∧
    sourceCorrelation explicitSecondDerivative 1 t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 1) (by norm_num)
theorem sign_positive_half : ∃ t : ℝ, 0 < t ∧ t < 1 ∧
    sourceCorrelation explicitSecondDerivative (1 / 2) t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 1 / 2) (by norm_num)
theorem sign_positive_seven : ∃ t : ℝ, 0 < t ∧ t < 14 ∧
    sourceCorrelation explicitSecondDerivative 7 t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 7) (by norm_num)
theorem sign_zero_excluded {A : ℝ} (hA : 0 < A) :
    ¬ sourceCorrelation explicitSecondDerivative A 0 < 0 := by
  rw [sourceCorrelation_zero hA]
  norm_num
theorem sign_endpoint_excluded {A : ℝ} (hA : 0 < A) :
    ¬ sourceCorrelation explicitSecondDerivative A (2 * A) < 0 := by
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) hA
    (by rw [abs_of_pos (mul_pos (by norm_num) hA)])]
  norm_num
theorem sign_even_partner {A t : ℝ}
    (h : sourceCorrelation explicitSecondDerivative A t < 0) :
    sourceCorrelation explicitSecondDerivative A (-t) < 0 := by
  rwa [sourceCorrelation_even]
```
