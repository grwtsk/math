# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingLogarithmic.Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0eba596fa99caed8888b176fe27f8acb9457ec0f` · SHA-256 `4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
# Logarithmic-form convergence of the source smoothing

This is the Z2.5 continuation of the source-faithful Z2.4 smoothing family.
It uses the exact Fourier convention and the manuscript weight

`1 + log (1 + 4 * ξ^2) / 2`

with the source normalization `1 / (2π)`.  The same positive smoothing
scales and common compact support from Z2.4 are retained.  The proof does not
invoke the smooth explicit formula or the zero-side identity.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothingLogarithmic

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroTestRegularity ZeroSmoothing ZeroSmoothingDerivative
  ZeroSmoothingL2 ZeroSmoothingMultiplier ZeroSmoothingTransform

noncomputable section

private def logarithmicWeight (ξ : ℝ) : ℝ :=
  1 + Real.log (1 + 4 * ξ ^ 2) / 2

private theorem logarithmicWeight_nonneg (ξ : ℝ) :
    0 ≤ logarithmicWeight ξ := by
  unfold logarithmicWeight
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  linarith

private theorem source_fourier_smoothing (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (ξ : ℝ) :
    sourceFourier (smoothedTest A ε hε) ξ =
      sourceFourier (actualTest A) ξ *
        multiplier ε hε (Complex.I * (ξ : ℂ)) :=
  smoothed_bilateral_transform A ε hA hε (Complex.I * (ξ : ℂ))

private theorem fourier_multiplier_norm_le_one (ε : ℝ) (hε : 0 < ε) (ξ : ℝ) :
    ‖multiplier ε hε (Complex.I * (ξ : ℂ))‖ ≤ 1 := by
  simpa using multiplier_norm_le ε hε (Complex.I * (ξ : ℂ))

private theorem smoothed_fourier_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (ξ : ℝ) :
    Tendsto (fun i ↦ sourceFourier (smoothedTest A (ε i) (hε i)) ξ) l
      (𝓝 (sourceFourier (actualTest A) ξ)) := by
  simp_rw [source_fourier_smoothing A _ hA]
  simpa only [mul_one] using
    (multiplier_tendsto_one (Complex.I * (ξ : ℂ)) ε hε hlim).const_mul
      (sourceFourier (actualTest A) ξ)

private theorem weighted_error_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    logarithmicWeight ξ *
        Complex.normSq
          (sourceFourier (smoothedTest A ε hε) ξ - sourceFourier (actualTest A) ξ) ≤
      4 * (logarithmicWeight ξ *
        Complex.normSq (sourceFourier (actualTest A) ξ)) := by
  have hm := fourier_multiplier_norm_le_one ε hε ξ
  rw [source_fourier_smoothing A ε hA hε ξ]
  have heq :
      sourceFourier (actualTest A) ξ * multiplier ε hε (Complex.I * (ξ : ℂ)) -
          sourceFourier (actualTest A) ξ =
        sourceFourier (actualTest A) ξ *
          (multiplier ε hε (Complex.I * (ξ : ℂ)) - 1) := by
    ring
  rw [heq, Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq, norm_mul]
  have hm1 :
      ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖ ≤ 2 := by
    calc
      ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖ ≤
          ‖multiplier ε hε (Complex.I * (ξ : ℂ))‖ + ‖(1 : ℂ)‖ :=
        norm_sub_le _ _
      _ ≤ 1 + 1 := add_le_add hm (by norm_num)
      _ = 2 := by norm_num
  have hm1sq :
      ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖ ^ 2 ≤ 4 := by
    nlinarith [sq_nonneg ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖]
  have hw := logarithmicWeight_nonneg ξ
  calc
    logarithmicWeight ξ *
        (‖sourceFourier (actualTest A) ξ‖ *
          ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖) ^ 2 =
      logarithmicWeight ξ * (‖sourceFourier (actualTest A) ξ‖ ^ 2 *
        ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖ ^ 2) := by ring
    _ ≤ logarithmicWeight ξ * (‖sourceFourier (actualTest A) ξ‖ ^ 2 * 4) := by
      apply mul_le_mul_of_nonneg_left _ hw
      exact mul_le_mul_of_nonneg_left hm1sq (sq_nonneg _)
    _ = 4 * (logarithmicWeight ξ * ‖sourceFourier (actualTest A) ξ‖ ^ 2) := by
      ring

private theorem actual_weighted_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (actualTest A) ξ)) volume := by
  have hd : Differentiable ℝ (actualTest A) :=
    (actualTest_contDiff A hA).differentiable (by norm_num)
  have hzero := BridgeFourier.fourier_normSq_integrable (actualTest A)
    (actualTest_integrable A hA) hd (actualTest_deriv_integrable A hA)
  have hlog := BridgeFourier.logarithmic_fourier_integrable (actualTest A)
    (actualTest_integrable A hA) hd (actualTest_deriv_integrable A hA)
  have hsum := hzero.add (hlog.const_mul (1 / 2 : ℝ))
  apply hsum.congr
  filter_upwards [] with ξ
  unfold logarithmicWeight
  ring

private theorem weighted_error_continuous (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Continuous (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq
        (sourceFourier (smoothedTest A ε hε) ξ - sourceFourier (actualTest A) ξ)) := by
  have hs := BridgeFourier.sourceFourier_continuous (smoothedTest_integrable A ε hA hε)
  have ha := BridgeFourier.sourceFourier_continuous (actualTest_integrable A hA)
  have harg : Continuous (fun ξ : ℝ ↦ 1 + 4 * ξ ^ 2) := by fun_prop
  have hlog : Continuous (fun ξ : ℝ ↦ Real.log (1 + 4 * ξ ^ 2)) :=
    harg.log (by intro ξ; positivity)
  have hw : Continuous logarithmicWeight := by
    unfold logarithmicWeight
    exact continuous_const.add (hlog.div_const 2)
  exact hw.mul (Complex.continuous_normSq.comp (hs.sub ha))

private theorem weighted_error_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq
        (sourceFourier (smoothedTest A ε hε) ξ - sourceFourier (actualTest A) ξ)) volume := by
  apply ((actual_weighted_integrable A hA).const_mul 4).mono'
    (weighted_error_continuous A ε hA hε).aestronglyMeasurable
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg
    (mul_nonneg (logarithmicWeight_nonneg ξ) (Complex.normSq_nonneg _))]
  exact weighted_error_le A ε hA hε ξ

private theorem weighted_error_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (ξ : ℝ) :
    Tendsto (fun i ↦ logarithmicWeight ξ *
      Complex.normSq
        (sourceFourier (smoothedTest A (ε i) (hε i)) ξ -
          sourceFourier (actualTest A) ξ)) l (𝓝 0) := by
  have ht := smoothed_fourier_tendsto A hA ε hε hlim ξ
  have hs := ht.sub_const (sourceFourier (actualTest A) ξ)
  have hn := Complex.continuous_normSq.continuousAt.tendsto.comp hs
  simpa using hn.const_mul (logarithmicWeight ξ)

/-- Z2.5: the source H¹ approximation and the exact normalized logarithmic
Fourier-form approximation hold on the same positive-scale filter.  Every
weighted error is genuinely integrable, and all radii at most one retain the
fixed support window `[-A-1,A+1]`.  This is convergence only; it does not
assert the smooth explicit formula or the zero-side identity. -/
theorem source_logarithmic_convergence (A : ℝ) (hA : 1 ≤ A) :
    (∀ (ε : ℝ) (hε : 0 < ε),
      Integrable (fun ξ ↦
        (1 + Real.log (1 + 4 * ξ ^ 2) / 2) *
          Complex.normSq
            (sourceFourier (smoothedTest A ε hε) ξ -
              sourceFourier (actualTest A) ξ)) volume) ∧
    (∀ (ε : ℝ) (hε : 0 < ε), ε ≤ 1 →
      tsupport (smoothedTest A ε hε) ⊆ Icc (-A - 1) (A + 1)) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ h1Error A ε ε.property)
      positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
      (∫ ξ,
        (1 + Real.log (1 + 4 * ξ ^ 2) / 2) *
          Complex.normSq
            (sourceFourier (smoothedTest A ε ε.property) ξ -
              sourceFourier (actualTest A) ξ)) / (2 * Real.pi))
      positiveScaleAtZero (𝓝 0) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro ε hε
    simpa only [logarithmicWeight] using weighted_error_integrable A ε hA hε
  · intro ε hε hε1
    exact smoothedTest_tsupport_subset_common A ε hA hε hε1
  · exact h1Error_tendsto_zero A hA _ (fun ε ↦ ε.property) positiveScale_tendsto_zero
  · have hraw :
        Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
          ∫ ξ, logarithmicWeight ξ *
            Complex.normSq
              (sourceFourier (smoothedTest A ε ε.property) ξ -
                sourceFourier (actualTest A) ξ))
          positiveScaleAtZero (𝓝 0) := by
      apply tendsto_integral_filter_of_dominated_convergence
        (fun ξ ↦ 4 * (logarithmicWeight ξ *
          Complex.normSq (sourceFourier (actualTest A) ξ)))
        (Eventually.of_forall fun ε ↦
          (weighted_error_integrable A ε hA ε.property).aestronglyMeasurable)
        (Eventually.of_forall fun ε ↦ Eventually.of_forall fun ξ ↦ by
          rw [Real.norm_eq_abs, abs_of_nonneg
            (mul_nonneg (logarithmicWeight_nonneg ξ) (Complex.normSq_nonneg _))]
          exact weighted_error_le A ε hA ε.property ξ)
        ((actual_weighted_integrable A hA).const_mul 4)
      exact Eventually.of_forall fun ξ ↦
        weighted_error_tendsto A hA (fun ε : {ε : ℝ // 0 < ε} ↦ (ε : ℝ))
          (fun ε ↦ ε.property) positiveScale_tendsto_zero ξ
    simpa only [logarithmicWeight, zero_div] using hraw.div_const (2 * Real.pi)

end
end ZeroSmoothingLogarithmic
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
