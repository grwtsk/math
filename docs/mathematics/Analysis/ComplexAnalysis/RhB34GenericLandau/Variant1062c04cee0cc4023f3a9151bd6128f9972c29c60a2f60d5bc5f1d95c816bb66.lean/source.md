# Complete source: GRWTSK.Analysis.ComplexAnalysis.RhB34GenericLandau.Variant1062c04cee0cc4023f3a9151bd6128f9972c29c60a2f60d5bc5f1d95c816bb66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `feed6dc75c5bdf6eff270b00c3612dfb01a5d3e8` · SHA-256 `b92e478a9caea13589bfb07c4c40071275bc6633ff49b9bec889a893fbf5130d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.Continuation.Variant2516dd4ddfc6766f4f911d6ef852d3ed69f0dd8a3eb11e116569f2986f8520ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2516dd4ddfc6766f4f911d6ef852d3ed69f0dd8a3eb11e116569f2986f8520ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.Continuation.Variant2516dd4ddfc6766f4f911d6ef852d3ed69f0dd8a3eb11e116569f2986f8520ab","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"2516dd4ddfc6766f4f911d6ef852d3ed69f0dd8a3eb11e116569f2986f8520ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/tests/rh_b3_4_generic_landau.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Laplace.Continuation


namespace GRWTSK.Analysis.ComplexAnalysis.Continuation.Variant2516dd4ddfc6766f4f911d6ef852d3ed69f0dd8a3eb11e116569f2986f8520ab

#print axioms FormalResearch.MathematicalTooling.Laplace.Positivity.not_analyticAt_laplace_of_finite_abscissa
#print axioms FormalResearch.MathematicalTooling.Laplace.Continuation.integrable_positive_of_continuation
#print axioms FormalResearch.MathematicalTooling.Laplace.Continuation.order_nonneg_of_continuation

example
    {Ω : Type*} [MeasurableSpace Ω] {μ : Measure Ω} {X : Ω → ℝ}
    (hXm : AEMeasurable X μ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t →
      Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (F : ℂ → ℂ)
    (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hreal : ∀ t : ℝ, 0 < t → AnalyticAt ℂ F (t : ℂ))
    (hinit : ∀ s : ℂ, 1 < s.re →
      F s =
        FormalResearch.MathematicalTooling.Laplace.Continuation.transform X μ s)
    (s : ℂ) (hs : 0 < s.re) :
    0 ≤ meromorphicOrderAt F s :=
  FormalResearch.MathematicalTooling.Laplace.Continuation.order_nonneg_of_continuation
    hXm hX hconv F hF hreal hinit s hs
```
