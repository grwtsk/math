# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrectedControllerBoundaryFragment.Variant652f2a18cd30195e590d3fdd6b48eaa67d7bddeaae4b98e9a5cc017151f88f3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8da48656833149ec567502d54e2d805a75dea045` · SHA-256 `c0ee7c37e219ccddf5ee4736aa63fd40d66b084ec6f2d846da97b88b0fa1ab67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShiftedWNeZero.Variantf2e42672de48753c005f47128f8b95672078aa8fbfe5ef3f316f7c09b62029a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2e42672de48753c005f47128f8b95672078aa8fbfe5ef3f316f7c09b62029a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ShiftedWNeZero.Variantf2e42672de48753c005f47128f8b95672078aa8fbfe5ef3f316f7c09b62029a2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f2e42672de48753c005f47128f8b95672078aa8fbfe5ef3f316f7c09b62029a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/CorrectedControllerBoundaryFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! The exact actual-source boundary residual, with every signed numerator factor retained. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShiftedWNeZero.Variantf2e42672de48753c005f47128f8b95672078aa8fbfe5ef3f316f7c09b62029a2

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusSourceFilterQuotient MobiusPoleNumerator CorrectedControllerAnalytic
open FixedLaplaceContinuation FixedLaplaceBoundary SourceFilterDelta
noncomputable section

/-- Positive shifts smaller than one half avoid the only right-half-plane source zero. -/
theorem shifted_W_ne_zero (ε t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    W ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
  intro h
  have hz : 0 < ((ε : ℂ) + (t : ℂ) * Complex.I).re := by simpa using hε
  have hh := (W_zero_iff _ hz).mp h
  have := congrArg Complex.re hh
  norm_num at this
  linarith

/-- The genuine kernel boundary value times the analytic candidate has the exact signed product. -/
theorem actual_boundary_product (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I) =
      boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I) := by
  have hn : (t : ℂ) * Complex.I + (ε : ℂ) ≠ 1 / 2 := by
    intro hh
    apply shifted_W_ne_zero ε t hε he
    rw [add_comm (ε : ℂ) ((t : ℂ) * Complex.I), hh, W_half_zero]
  rw [actualLaplace_boundary, candidate, quotient_of_ne X _ hn]
  unfold boundaryFilter
  have hc : (t : ℂ) * Complex.I + (ε : ℂ) = (ε : ℂ) + (t : ℂ) * Complex.I := add_comm _ _
  rw [hc]
  ring

/-- The full boundary residual decomposes into source distortion and the complete arithmetic error. -/
theorem residual_decomposition (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I) =
    (1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t) +
      boundaryFilter ε h t *
        (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
  rw [actual_boundary_product X ε h t hε he]
  ring

/-- The pointwise norm bound retains all arithmetic terms inside their original signed factor. -/
theorem residual_norm_le (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    ‖1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I)‖ ≤
    ‖1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t‖ +
      ‖boundaryFilter ε h t‖ *
        ‖1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  rw [residual_decomposition X ε h t hε he]
  simpa only [norm_mul] using norm_add_le
    (1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t)
    (boundaryFilter ε h t * (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
      correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)))

end
end FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary
```
