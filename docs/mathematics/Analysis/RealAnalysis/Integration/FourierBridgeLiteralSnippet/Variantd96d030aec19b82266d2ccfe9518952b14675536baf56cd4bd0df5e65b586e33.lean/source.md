# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FourierBridgeLiteralSnippet.Variantd96d030aec19b82266d2ccfe9518952b14675536baf56cd4bd0df5e65b586e33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39f0fabb24cb4b9d85bcba6debef4bc23b7170c6` · SHA-256 `d96d030aec19b82266d2ccfe9518952b14675536baf56cd4bd0df5e65b586e33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
open MeasureTheory FourierTransform
open FourierL1L2BridgeScratch
open scoped Topology

example (f g : ℝ → ℂ) (hf : Integrable f) (hg : Integrable g) :
    (∫ x : ℝ, (𝓕⁻ f) x * g x) = ∫ x : ℝ, f x * (𝓕⁻ g) x :=
  integral_fourierInv_mul_eq f g hf hg

example (f : ℝ → ℂ) (hf : Integrable f) : Continuous (𝓕⁻ f) :=
  continuous_fourierInv f hf

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ((𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕⁻ f :=
  fourierInv_toLp_ae f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    MemLp (𝓕⁻ f) 2 := fourierInv_memLp f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    (fourierInv_memLp f hf hf2).toLp (𝓕⁻ f) = 𝓕⁻ (hf2.toLp f) :=
  fourierInv_toLp_eq f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ‖(fourierInv_memLp f hf hf2).toLp (𝓕⁻ f)‖ = ‖hf2.toLp f‖ :=
  norm_fourierInv_toLp f hf hf2
```
