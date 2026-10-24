# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeOffGridCountermodel.Variant0bb8126fa7c6bbbca5f2a9189577e93f451bb7ab0dffa4ec78702ff76b154e50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bad5d6bd88c03a0cf7cad922837dbae63d6f7fef` · SHA-256 `0bb8126fa7c6bbbca5f2a9189577e93f451bb7ab0dffa4ec78702ff76b154e50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridCorrectionBounds
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridDensityReadout

/-!
# Complete literal positive-density native off-grid countermodel

The fixed density, unchanged source correlation, full x-domain readout,
exact phase carrier and uniform correction bounds are consumed together.
Every integer n>=100 has negative readout; every half-integer n+1/2 has
readout at least (9/8)*exp((n+1/2)/2)/(n+1/2)^9. Positivity, smoothness and
the power-saving counting envelope are retained in one existential witness.
Human unchanged-source and uniform-quantifier direction: grwtsk contributors.
Local complete consumer: OpenAI Codex. This is a deliberately different
smooth counting measure; it does not refute actual Mangoldt arithmetic,
provide a signed exceptional-Gram lower bound or prove RH.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCountermodel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization MeasureTheory NativeOffGridDensity NativeOffGridCounting
open NativeOffGridPhaseCarrier NativeOffGridModeBounds NativeOffGridCorrectionBounds
open NativeOffGridDensityReadout ActualComplexLaplacePrimitive
noncomputable section

def comparisonReadout (v : ℝ → ℝ) (A : ℝ) : ℝ :=
  ∫ x in (1 : ℝ)..Real.exp (2 * A), x ^ (-(1 / 2) : ℝ) *
    sourceCorrelation explicitSecondDerivative A (Real.log x) * v x

theorem literal_integer_native_readout_negative (n : ℕ) (hn : 100 ≤ n) :
    densityReadout (n : ℝ) < 0 := by
  have hA : (100 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have h := literal_native_density_full_moment_error (by linarith : 1 ≤ (n : ℝ))
  rw [literal_integer_selected_source_formula n (by linarith : 1 ≤ (n : ℝ))] at h
  simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re, Complex.neg_im,
    Complex.ofReal_im, neg_zero, zero_mul, sub_zero] at h
  have hr := (literal_endpoint_correction_square_real_bounds hA).1
  have hM := literal_mode_magnitude_gt_eight hA
  have hu := (abs_le.mp h).2
  nlinarith

theorem literal_half_integer_native_readout_lower (n : ℕ) (hn : 100 ≤ n) :
    (9 / 8) * (Real.exp (((n : ℝ) + 1 / 2) / 2) / ((n : ℝ) + 1 / 2) ^ 9) ≤
      densityReadout ((n : ℝ) + 1 / 2) := by
  have hnR : (100 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have hA : (100 : ℝ) ≤ (n : ℝ) + 1 / 2 := by linarith
  have h := literal_native_density_full_moment_error (by linarith : 1 ≤ (n : ℝ) + 1 / 2)
  rw [literal_half_integer_selected_source_formula n (by linarith : 1 ≤ (n : ℝ) + 1 / 2)] at h
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] at h
  have hr := (literal_endpoint_correction_square_real_bounds hA).1
  have hM := literal_mode_magnitude_gt_eight hA
  have hML := literal_mode_magnitude_lower hA
  have hl := (abs_le.mp h).1
  have hquarter : (1 / 4) * modeMagnitude ((n : ℝ) + 1 / 2) ≤
      densityReadout ((n : ℝ) + 1 / 2) := by nlinarith
  nlinarith

theorem literal_density_comparison_readout (A : ℝ) :
    comparisonReadout density A = densityReadout A := rfl

theorem literal_positive_native_offgrid_countermodel :
    ∃ v : ℝ → ℝ,
      (∀ (k : WithTop ℕ∞) (x : ℝ), 0 < x → ContDiffAt ℝ k v x) ∧
      (∀ x : ℝ, 1 ≤ x → 1 / 2 ≤ v x ∧ v x ≤ 3 / 2) ∧
      (∀ x : ℝ, 1 ≤ x → |(∫ y in (1 : ℝ)..x, v y) - x| ≤ (4 / 3) * x ^ (3 / 4 : ℝ)) ∧
      (∀ n : ℕ, 100 ≤ n → comparisonReadout v (n : ℝ) < 0) ∧
      (∀ n : ℕ, 100 ≤ n →
        (9 / 8) * (Real.exp (((n : ℝ) + 1 / 2) / 2) / ((n : ℝ) + 1 / 2) ^ 9) ≤
          comparisonReadout v ((n : ℝ) + 1 / 2)) := by
  refine ⟨density, literal_density_smooth_at, ?_, ?_, ?_, ?_⟩
  · intro x hx
    exact literal_density_positive_bounds hx
  · intro x hx
    exact literal_counting_error_power_envelope hx
  · intro n hn
    rw [literal_density_comparison_readout]
    exact literal_integer_native_readout_negative n hn
  · intro n hn
    rw [literal_density_comparison_readout]
    exact literal_half_integer_native_readout_lower n hn

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCountermodel
```
