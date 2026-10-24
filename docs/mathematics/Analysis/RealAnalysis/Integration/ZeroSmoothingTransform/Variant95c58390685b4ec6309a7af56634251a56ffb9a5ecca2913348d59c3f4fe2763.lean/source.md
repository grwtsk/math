# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingTransform.Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3346cedd88bef959e33ca76056ae6de05aa25410` · SHA-256 `95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingMultiplier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform

/-!
# Bilateral transforms of the actual source smoothing

The positive bilateral exponential and the real convolution orientation are
unchanged. Compact support proves genuine integrability for every complex
argument. The convolution theorem is applied to exponentially weighted
functions, so the result is not restricted to the critical line.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothingTransform

open MeasureTheory Set
open scoped ContDiff Convolution Topology
open ZeroSideTargets ZeroTestRegularity ZeroSmoothing
open ZeroSmoothingMultiplier

noncomputable section

/-- The bilateral transform of the actual prescribed smoothing, with the source sign. -/
def smoothedBilateralTransform (A ε : ℝ) (hε : 0 < ε) (z : ℂ) : ℂ :=
  ∫ x : ℝ, (smoothedTest A ε hε x : ℂ) * Complex.exp (z * (x : ℂ))

/-- Every smoothed bilateral-transform integral is genuine for every complex argument. -/
theorem smoothed_transform_integrand_integrable (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (smoothedTest A ε hε x : ℂ) *
      Complex.exp (z * (x : ℂ))) volume := by
  have hc : Continuous (fun x : ℝ ↦ (smoothedTest A ε hε x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
    (Complex.continuous_ofReal.comp (smoothedTest_contDiff A ε hA hε).continuous).mul
      (by fun_prop)
  have hs : HasCompactSupport (fun x : ℝ ↦ (smoothedTest A ε hε x : ℂ)) :=
    (smoothedTest_hasCompactSupport A ε hA hε).comp_left (g := Complex.ofReal) (by simp)
  exact hc.integrable_of_hasCompactSupport hs.mul_right

/-- Exponential weighting turns the prescribed real convolution into the weighted complex one. -/
theorem smoothed_weighted_eq_convolution (A ε : ℝ) (hε : 0 < ε) (z : ℂ) (x : ℝ) :
    (smoothedTest A ε hε x : ℂ) * Complex.exp (z * (x : ℂ)) =
      ((fun y : ℝ ↦ (mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))) ⋆[
        ContinuousLinearMap.mul ℂ ℂ, volume]
        (fun t : ℝ ↦ (actualTest A t : ℂ) * Complex.exp (z * (t : ℂ)))) x := by
  rw [smoothedTest_eq_integral, ← integral_complex_ofReal, ← integral_mul_const, convolution_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun y ↦ by
    push_cast
    have hexp : Complex.exp (z * (y : ℂ)) * Complex.exp (z * ((x : ℂ) - (y : ℂ))) =
        Complex.exp (z * (x : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      ring
    calc
      _ = (mollifier ε hε y : ℂ) * (actualTest A (x - y) : ℂ) *
          (Complex.exp (z * (y : ℂ)) * Complex.exp (z * ((x : ℂ) - (y : ℂ)))) := by
        rw [hexp]
      _ = _ := by ring

/-- The product-measure integrability needed for the convolution integral theorem.
Both weighted factors are genuinely integrable; the interchange is not formal algebra alone. -/
theorem weighted_convolution_integrand_integrable (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (z : ℂ) :
    Integrable (fun p : ℝ × ℝ ↦
      ((mollifier ε hε p.2 : ℂ) * Complex.exp (z * (p.2 : ℂ))) *
      ((actualTest A (p.1 - p.2) : ℂ) * Complex.exp (z * ((p.1 - p.2 : ℝ) : ℂ))))
      (volume.prod volume) :=
  (multiplier_integrand_integrable ε hε z).convolution_integrand
    (ContinuousLinearMap.mul ℂ ℂ) (ZeroTransform.actual_integrable A (by linarith) z)

/-- The weighted pointwise convolution integral exists at every real x,
not just almost everywhere. -/
theorem weighted_convolution_integrable_at (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (z : ℂ) (x : ℝ) :
    Integrable (fun y : ℝ ↦
      ((mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))) *
      ((actualTest A (x - y) : ℂ) * Complex.exp (z * ((x - y : ℝ) : ℂ)))) volume :=
  (multiplier_integrand_hasCompactSupport ε hε z).convolutionExists_left
    (ContinuousLinearMap.mul ℂ ℂ) (multiplier_integrand_continuous ε hε z)
    (ZeroTransform.actual_integrable A (by linarith) z).locallyIntegrable x

/-- Exact factorization for every complex argument, with the actual source bilateral transform. -/
theorem smoothed_bilateral_transform (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (z : ℂ) :
    smoothedBilateralTransform A ε hε z = bilateralTransform A z * multiplier ε hε z := by
  unfold smoothedBilateralTransform
  simp_rw [smoothed_weighted_eq_convolution]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ)
    (multiplier_integrand_integrable ε hε z) (ZeroTransform.actual_integrable A (by linarith) z)]
  change multiplier ε hε z * bilateralTransform A z = bilateralTransform A z * multiplier ε hε z
  exact mul_comm _ _

/-- Every original zero occurrence retains its multiplicity slot and the same transform. -/
theorem smoothed_bilateral_transform_zeroOccurrence (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (o : ZeroObject.ZeroOccurrence) :
    smoothedBilateralTransform A ε hε (ZeroObject.shiftedValue o) =
      bilateralTransform A (ZeroObject.shiftedValue o) *
        multiplier ε hε (ZeroObject.shiftedValue o) :=
  smoothed_bilateral_transform A ε hA hε (ZeroObject.shiftedValue o)

/-- The complete bilateral-transform control needed at the analytic smoothing boundary. -/
theorem source_transform_control (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    (∀ z : ℂ,
      Integrable (fun x : ℝ ↦ (actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))) volume ∧
      Integrable (fun x : ℝ ↦ (smoothedTest A ε hε x : ℂ) *
        Complex.exp (z * (x : ℂ))) volume ∧
      Integrable (fun y : ℝ ↦ (mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))) volume ∧
      smoothedBilateralTransform A ε hε z = bilateralTransform A z * multiplier ε hε z) ∧
    (∀ o : ZeroObject.ZeroOccurrence,
      ‖multiplier ε hε (ZeroObject.shiftedValue o)‖ ≤ Real.exp (ε / 2)) := by
  refine ⟨fun z ↦ ?_, multiplier_norm_le_zeroOccurrence ε hε⟩
  exact ⟨ZeroTransform.actual_integrable A (by linarith) z,
    smoothed_transform_integrand_integrable A ε hA hε z,
    multiplier_integrand_integrable ε hε z, smoothed_bilateral_transform A ε hA hε z⟩

end
end ZeroSmoothingTransform
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
