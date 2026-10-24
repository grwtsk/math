# Complete source: GRWTSK.Analysis.Convolution.FirstMomentConvolution

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec1cdb50f7891f9ec40f9fa2e0a47396ca7dfc46` · SHA-256 `6e012c62b3c4cb866d0338683f24fa09854059363fe89aafa377949ce1d7b9bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Convolution
import Mathlib.Tactic

/-!
# The full first moment of a real convolution

Both factors and both first weighted factors must be genuinely
integrable. Pinned Mathlib convolution integrability supplies the full product
Fubini admission. Almost-everywhere splitting precedes integral additivity.
No actual compact profile, source pole moment or arithmetic budget is assumed.
-/

open scoped Convolution

namespace GRWTSK.Analysis.Convolution.FirstMomentConvolution

open MeasureTheory Filter

noncomputable section

/-- Both first-moment integrands exist almost everywhere before they are split. -/
theorem first_moment_convolution_ae {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g)
    (hxf : Integrable (fun x : ℝ ↦ x * f x))
    (hxg : Integrable (fun x : ℝ ↦ x * g x)) :
    (fun t : ℝ ↦ t * (f ⋆ g) t) =ᵐ[volume]
      (fun t : ℝ ↦ ((fun x : ℝ ↦ x * f x) ⋆ g) t +
        (f ⋆ (fun x : ℝ ↦ x * g x)) t) := by
  filter_upwards [hxf.ae_convolution_exists (ContinuousLinearMap.lsmul ℝ ℝ) hg,
    hf.ae_convolution_exists (ContinuousLinearMap.lsmul ℝ ℝ) hxg] with t left right
  change Integrable (fun x : ℝ ↦ (x * f x) * g (t - x)) at left
  change Integrable (fun x : ℝ ↦ f x * ((t - x) * g (t - x))) at right
  simp only [convolution_lsmul, smul_eq_mul]
  calc
    t * (∫ x : ℝ, f x * g (t - x)) =
        ∫ x : ℝ, (x * f x) * g (t - x) + f x * ((t - x) * g (t - x)) := by
      rw [← integral_const_mul]
      apply integral_congr_ae
      filter_upwards [] with x
      ring
    _ = (∫ x : ℝ, (x * f x) * g (t - x)) +
        ∫ x : ℝ, f x * ((t - x) * g (t - x)) := integral_add left right

/-- The first moment is integrable through the sum of two admitted convolutions. -/
theorem first_moment_convolution_integrable {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g)
    (hxf : Integrable (fun x : ℝ ↦ x * f x))
    (hxg : Integrable (fun x : ℝ ↦ x * g x)) :
    Integrable (fun t : ℝ ↦ t * (f ⋆ g) t) := by
  exact ((hxf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hg).add
    (hf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hxg)).congr
      (first_moment_convolution_ae hf hg hxf hxg).symm

/-- The entire ordered first moment, including both mixed factors, is retained. -/
theorem first_moment_convolution_integral {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g)
    (hxf : Integrable (fun x : ℝ ↦ x * f x))
    (hxg : Integrable (fun x : ℝ ↦ x * g x)) :
    (∫ t : ℝ, t * (f ⋆ g) t) =
      (∫ x : ℝ, x * f x) * (∫ x : ℝ, g x) +
        (∫ x : ℝ, f x) * (∫ x : ℝ, x * g x) := by
  rw [integral_congr_ae (first_moment_convolution_ae hf hg hxf hxg)]
  rw [integral_add (hxf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hg)
    (hf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hxg)]
  rw [integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hxf hg,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hf hxg]
  rfl

/-- Both vanishing zeroth moments annihilate the full first convolution moment. -/
theorem first_moment_convolution_integral_zero {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g)
    (hxf : Integrable (fun x : ℝ ↦ x * f x))
    (hxg : Integrable (fun x : ℝ ↦ x * g x))
    (zeroF : (∫ x : ℝ, f x) = 0) (zeroG : (∫ x : ℝ, g x) = 0) :
    (∫ t : ℝ, t * (f ⋆ g) t) = 0 := by
  rw [first_moment_convolution_integral hf hg hxf hxg, zeroF, zeroG]
  ring

end

end GRWTSK.Analysis.Convolution.FirstMomentConvolution
```
