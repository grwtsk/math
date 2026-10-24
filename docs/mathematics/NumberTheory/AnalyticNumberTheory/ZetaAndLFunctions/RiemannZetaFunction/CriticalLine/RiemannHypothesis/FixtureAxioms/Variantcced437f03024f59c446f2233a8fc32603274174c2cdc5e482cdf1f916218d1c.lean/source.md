# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FixtureAxioms.Variantcced437f03024f59c446f2233a8fc32603274174c2cdc5e482cdf1f916218d1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4343651cddecbbc6c843249b0d6f376ba3952091` · SHA-256 `7995d7649ee31ae1d1204fa78e4fbba7b2e0893d677fb6e704030e68fe8ade7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignPositiveOne.Variant415dd05a722f1d2cb143d250371784deaaed9f9b890e97046b0b8f02c9d9aaa1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"415dd05a722f1d2cb143d250371784deaaed9f9b890e97046b0b8f02c9d9aaa1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SignPositiveOne.Variant415dd05a722f1d2cb143d250371784deaaed9f9b890e97046b0b8f02c9d9aaa1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"415dd05a722f1d2cb143d250371784deaaed9f9b890e97046b0b8f02c9d9aaa1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/root/canonical-sign-v4/fixture-axioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignPositiveOne.Variant415dd05a722f1d2cb143d250371784deaaed9f9b890e97046b0b8f02c9d9aaa1

set_option autoImplicit false
noncomputable section
open FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.RiemannHypothesis.SourcePairing
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
  simpa only [show (2 : ℝ) * 7 = 14 by norm_num] using
    sourceCorrelation_exists_neg_in_half_support (A := 7) (by norm_num)
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

#print axioms sign_positive_one
#print axioms sign_positive_half
#print axioms sign_positive_seven
#print axioms sign_zero_excluded
#print axioms sign_endpoint_excluded
#print axioms sign_even_partner
```
