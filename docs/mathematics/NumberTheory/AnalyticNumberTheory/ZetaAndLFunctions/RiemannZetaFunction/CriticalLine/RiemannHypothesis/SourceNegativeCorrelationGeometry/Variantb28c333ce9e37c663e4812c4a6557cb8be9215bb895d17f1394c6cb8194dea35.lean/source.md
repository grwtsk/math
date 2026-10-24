# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceNegativeCorrelationGeometry.Variantb28c333ce9e37c663e4812c4a6557cb8be9215bb895d17f1394c6cb8194dea35

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32dbe71a6b69807d8b961013b44f7bd474f92acd` · SHA-256 `3a1849f7fb9f951a489878f7911c5ffc267aaa476da472c90f950521c0b1964d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExistsInteriorNegativeSourceCorrelation.Variant5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ExistsInteriorNegativeSourceCorrelation.Variant5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle11/next-square-tail-work/SourceNegativeCorrelationGeometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

/-!
# PRIVATE UNCOMPILED geometry guard

A prospective source-only corollary of the checked negative continuous half.
It is not compiled, root-imported or part of the current proof packet. Pointwise
negativity does not specify any prime atom or supply an arithmetic lower bound.
AI attribution: drafted with OpenAI Codex; no new kernel proof claim.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExistsInteriorNegativeSourceCorrelation.Variant5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceNegativeCorrelationGeometry

open MeasureTheory
open scoped Interval
open SourcePairing SourceFirstPrimeAbel SourceContinuousHalfEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation

/-- Negative source energy forces negative correlation at an interior real separation. -/
theorem exists_interior_negative_sourceCorrelation {A : ℝ} (hA : 1 ≤ A) :
    ∃ u : ℝ, 0 < u ∧ u < 2*A ∧
      sourceCorrelation explicitSecondDerivative A u < 0 := by
  by_contra! hn
  have hp : 0 < A := by linarith
  have hc : ∀ u ∈ Set.Icc 0 (2*A),
      0 ≤ sourceCorrelation explicitSecondDerivative A u := by
    intro u hu
    rcases eq_or_lt_of_le hu.1 with hz | hz
    · subst u
      rw [actual_correlation_at_zero A hA]
      norm_num
    · rcases eq_or_lt_of_le hu.2 with hl | hl
      · rw [hl, sourceCorrelation_upper_endpoint A hp]
      · exact hn u hz hl
  have hg : ∀ u ∈ Set.Icc 0 (2*A), 0 ≤ criticalPrimeTest A u := by
    intro u hu
    exact mul_nonneg (Real.exp_pos (u/2)).le (hc u hu)
  have hi : 0 ≤ criticalContinuousMoment A :=
    intervalIntegral.integral_nonneg (by linarith) hg
  exact (not_lt_of_ge hi) (criticalContinuousMoment_lt_zero hA)

end FormalResearch.RiemannHypothesis.SourceNegativeCorrelationGeometry
```
