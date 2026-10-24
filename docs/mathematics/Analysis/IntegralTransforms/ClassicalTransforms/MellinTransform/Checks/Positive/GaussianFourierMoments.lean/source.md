# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianFourierMoments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90360a18613fabda141f7a9dda70ad57f40d4205` · SHA-256 `3bb18be10f76784706a8ee7ee20aee7f4fa9f9333917456241a5238faf443f92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Actual Gaussian Fourier moment consumers and the exact scale-cancellation boundary.
OpenAI/Mathlib Apache-2.0 notices and credits are retained in the imported sources. -/
import GRWTSK.Analysis.MellinTransform.GaussianFourierMoments
namespace GRWTSK.Analysis.MellinTransform.GaussianFourierMoments.Checks
noncomputable section
open scoped FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow

theorem all_real_power_bound (a : ℝ) (J : ℕ) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j : ℕ,
      gaussianFourierMoment J Z hZ j≤C*((2:ℝ)^j/Z)^(-a) :=
  gaussianFourierMoment_power_bound a J

theorem actual_moment_integrable :
    Integrable (fun t : ℝ=>(1+‖t‖)^2*‖(𝓕 (gaussianDyadicSchwartz 1 (by norm_num) 0)) t‖) :=
  gaussianFourierMoment_integrable 2 1 (by norm_num) 0

theorem actual_moment_bound : ∃C : ℝ,0<C ∧ gaussianFourierMoment 0 1 (by norm_num) 0≤C := by
  obtain ⟨C,hC,h⟩ := gaussianFourierMoment_power_bound 1 0
  refine ⟨C,hC,?_⟩
  simpa only [pow_zero,div_one,Real.one_rpow,mul_one] using h 1 (by norm_num) 0

theorem actual_positive_scale_cancel (Z a : ℝ) (hZ : 0<Z) (j : ℕ) :
    ((2:ℝ)^j/Z)^a*((2:ℝ)^j/Z)^(-a)=1 :=
  scale_rpow_cancel _ a (div_pos (by positivity) hZ)

/-- A genuine helper-domain obstruction; no zero-scale Schwartz map or moment is constructed. -/
theorem actual_zero_scale_cancel_false :
    ¬ (((2:ℝ)^0/0)^(1:ℝ)*((2:ℝ)^0/0)^(-(1:ℝ))=1) := by
  norm_num

end
end GRWTSK.Analysis.MellinTransform.GaussianFourierMoments.Checks
```
