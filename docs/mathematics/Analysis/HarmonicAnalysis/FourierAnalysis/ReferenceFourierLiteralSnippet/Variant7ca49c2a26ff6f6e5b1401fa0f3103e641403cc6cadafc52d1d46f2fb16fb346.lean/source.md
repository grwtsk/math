# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceFourierLiteralSnippet.Variant7ca49c2a26ff6f6e5b1401fa0f3103e641403cc6cadafc52d1d46f2fb16fb346

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b85d1ab5b890008bbce76c1baaa371a7a398827` · SHA-256 `540aaf938a4cd0c651161e5be14877f19ca10d0cf4af5b3544a37630fd07e2b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceUnit.Variante26b63029e5bed70a83497dc8a1e9e1a566b891eba5d4c6303a606f5c05a82d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e26b63029e5bed70a83497dc8a1e9e1a566b891eba5d4c6303a606f5c05a82d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.SourceUnit.Variante26b63029e5bed70a83497dc8a1e9e1a566b891eba5d4c6303a606f5c05a82d8","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"e26b63029e5bed70a83497dc8a1e9e1a566b891eba5d4c6303a606f5c05a82d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/reference-fourier-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceUnit.Variante26b63029e5bed70a83497dc8a1e9e1a566b891eba5d4c6303a606f5c05a82d8

open MeasureTheory FourierTransform Set Complex
open ReferenceFourierScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineExtension

example : zeroExtension referenceVector =ᵐ[volume]
    (Ioi (0 : ℝ)).indicator (fun t : ℝ => Complex.exp (-(t : ℂ))) :=
  reference_zeroExtension_ae

example : Integrable ((zeroExtension referenceVector : FullH) : ℝ → ℂ) :=
  reference_zeroExtension_integrable

example (ξ : ℝ) : (𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ =
    1 / (1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I) := reference_zeroExtension_fourier ξ

example (ξ : ℝ) : ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2 =
    (1 + (2 * Real.pi * ξ) ^ 2)⁻¹ := reference_zeroExtension_fourier_norm_sq ξ

example : Integrable (fun ξ : ℝ =>
    ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2) ∧
    (∫ ξ : ℝ, ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2) =
      (1 / 2 : ℝ) := reference_zeroExtension_fourier_square_integral
```
