# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceFourierLiteralSnippet.Variante26b63029e5bed70a83497dc8a1e9e1a566b891eba5d4c6303a606f5c05a82d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82bf4603095686d50aa3238685456126c9ef391a` · SHA-256 `e26b63029e5bed70a83497dc8a1e9e1a566b891eba5d4c6303a606f5c05a82d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
