# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.9d27028145b08333SourceActualNegativeDefect.Variant947920e73822e3bab207af070fb8efb397d8c26a1f215e3d1683855cfa8af73e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `766cd01324873832703d0107fb47749c2aed6062` · SHA-256 `d9aae225bd38f1fb5f29b083850ea3777c31bbb6102a6caf2680fcd5b07b763e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceNegativeDefect.Variant9d27028145b083336da08c370630910accb2f35b0e28494e6d3d2783c21138e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d27028145b083336da08c370630910accb2f35b0e28494e6d3d2783c21138e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualSourceNegativeDefect.Variant9d27028145b083336da08c370630910accb2f35b0e28494e6d3d2783c21138e3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9d27028145b083336da08c370630910accb2f35b0e28494e6d3d2783c21138e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/concurrent-newer/9d27028145b08333-SourceActualNegativeDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualOffAxisReducedLimit

/-!
The prescribed arithmetic quadratic value and the actual reduced off-axis zero
head have asymptotically equal negative defects, with the proved source error.
This applies the one-Lipschitz negative-part map to the exact arithmetic/zero
comparison; it assumes no uniform defect cap or off-axis lower bound.
Originating research direction and normalization: grwtsk contributors.
Formal development and independent-check preparation: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceNegativeDefect.Variant9d27028145b083336da08c370630910accb2f35b0e28494e6d3d2783c21138e3

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualNegativeDefect
open Filter
open scoped Topology
open SourcePairing SourceActualCriticalZeroHead SourceActualReducedZeroHeight
open SourceActualOffAxisReducedLimit
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The literal prescribed source family's negative defect. -/
def actualSourceNegativeDefect (A : ℝ) : ℝ :=
  max 0 (-sourceQuadraticValue explicitSecondDerivative A)

/-- The actual same-carrier reduced off-axis head's negative defect. -/
def actualReducedOffAxisNegativeDefect (A : ℝ) : ℝ :=
  max 0 (-(actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re)

private theorem negative_part_abs_sub_le (x y : ℝ) :
    |max 0 (-x) - max 0 (-y)| ≤ |x-y| := by
  have h := abs_max_sub_max_le_max (0 : ℝ) (-x) 0 (-y)
  simpa only [sub_self, abs_zero, neg_sub_neg, abs_sub_comm,
    max_eq_right (abs_nonneg (x-y))] using h

/-- The source-specific defect error is controlled by its genuine complex source error. -/
theorem actualNegativeDefect_distance_le_source_error (A : ℝ) :
    |actualSourceNegativeDefect A - actualReducedOffAxisNegativeDefect A| ≤
      ‖(sourceQuadraticValue explicitSecondDerivative A : ℂ) -
        actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)‖ := by
  apply (negative_part_abs_sub_le _ _).trans
  simpa only [Complex.sub_re, Complex.ofReal_re] using
    Complex.abs_re_le_norm ((sourceQuadraticValue explicitSecondDerivative A : ℂ) -
      actualOffAxisZeroHeightHead A (actualReducedZeroHeight A))

/-- All real scales beyond the proved radius retain the actual tail and critical error. -/
theorem actualNegativeDefect_reducedOffAxis_bound :
    ∃ C R0 A0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R0 ≤ A →
      |actualSourceNegativeDefect A - actualReducedOffAxisNegativeDefect A| ≤
        C / A^9 + actualReducedZeroEnvelope A0 A := by
  obtain ⟨C,R0,A0,hC,hR0,hA0,hbound⟩ :=
    actualSourceQuadraticValue_reducedOffAxis_norm_bound
  exact ⟨C,R0,A0,hC,hR0,hA0,fun A hA =>
    (actualNegativeDefect_distance_le_source_error A).trans (hbound A hA)⟩

/-- The actual arithmetic and reduced off-axis negative defects differ by o(1). -/
theorem actualNegativeDefect_reducedOffAxis_tendsto_zero :
    Tendsto (fun A : ℝ => actualSourceNegativeDefect A -
      actualReducedOffAxisNegativeDefect A) atTop (𝓝 0) := by
  have hz : Tendsto (fun A : ℝ =>
      ‖(sourceQuadraticValue explicitSecondDerivative A : ℂ) -
        actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)‖) atTop (𝓝 0) := by
    simpa only [norm_zero] using
      actualSourceQuadraticValue_reducedOffAxis_tendsto_zero.norm
  apply squeeze_zero_norm' _ hz
  filter_upwards [] with A
  simpa only [Real.norm_eq_abs] using actualNegativeDefect_distance_le_source_error A

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeDefect
```
