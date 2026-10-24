# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceNativeMellin.Variantfd440f2943f9d38c80d4e744e71a937fb45e17c4439a0214ed6133567470a273

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd25beb1931507a94c7ae661059524a079058c13` · SHA-256 `fd440f2943f9d38c80d4e744e71a937fb45e17c4439a0214ed6133567470a273`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import Mathlib.Analysis.Convolution

/-!
# Exact normalized source Mellin transform

This binds the actual correlation to the ordinary complex square of the actual
normalized bilateral transform. All weighted integrals are genuinely integrable.
It supplies neither Mellin inversion nor a bound on the retained signed head.

AI attribution: developed with OpenAI Codex; checked locally by Lean.
-/

namespace FormalResearch.RiemannHypothesis.SourceNativeMellin

open MeasureTheory Set
open scoped Convolution
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform

noncomputable section

/-- The exact normalized source transform, with the positive bilateral orientation. -/
def normalizedBilateralTransform (A : ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
    Complex.exp (z * (x : ℂ))

/-- The native Mellin transform of the actual correlation, without a half-line cutoff. -/
def nativeMellinTransform (A : ℝ) (s : ℂ) : ℂ :=
  ∫ t : ℝ, (sourceCorrelation explicitSecondDerivative A t : ℂ) *
    Complex.exp ((s - 1 / 2) * (t : ℂ))

/-- Pointwise reflection of the exact normalized test retains its source value. -/
theorem normalizedTest_even (A : ℝ) (hA : 0 < A) :
    Function.Even (normalizedTest explicitSecondDerivative A) := by
  intro x
  rw [normalizedTest_eq_indicator A hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> intro h <;> constructor <;> linarith [h.1, h.2]
  simp only [indicator_apply, hm]
  split_ifs
  · simp only [normalizedInterior, secondInterior, bumpInterior, neg_div]
    ring
  · rfl

private theorem weighted_integrable (f : ℝ → ℝ) (hf : Continuous f)
    (hc : HasCompactSupport f) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) := by
  have hcont : Continuous (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) :=
    (Complex.continuous_ofReal.comp hf).mul (by fun_prop)
  have hsupport : HasCompactSupport (fun x : ℝ ↦ (f x : ℂ)) :=
    hc.comp_left (g := Complex.ofReal) (by simp)
  exact hcont.integrable_of_hasCompactSupport hsupport.mul_right

/-- Every actual normalized bilateral integral is genuinely integrable. -/
theorem normalizedBilateral_integrable (A : ℝ) (hA : 0 < A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
  weighted_integrable _ (normalizedTest_contDiff A hA).continuous
    (normalizedTest_hasCompactSupport A hA) z

/-- Every actual native Mellin integral is genuinely integrable. -/
theorem nativeMellin_integrable (A : ℝ) (hA : 0 < A) (s : ℂ) :
    Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp ((s - 1 / 2) * (t : ℂ))) :=
  weighted_integrable _ (sourceCorrelation_contDiff A hA).continuous
    (sourceCorrelation_hasCompactSupport A hA) (s - 1 / 2)

/-- Normalization divides the original bilateral transform by the literal square root. -/
theorem normalizedBilateral_eq_original (A : ℝ) (z : ℂ) :
    normalizedBilateralTransform A z =
      bilateralTransform A z / (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold normalizedBilateralTransform bilateralTransform actualTest normalizedTest
  simp_rw [Complex.ofReal_div, div_mul_eq_mul_div]
  exact integral_div _ _

private theorem weighted_correlation_eq_convolution (A : ℝ) (hA : 0 < A)
    (z : ℂ) (t : ℝ) :
    (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ)) =
      ((fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp (z * (x : ℂ))) ⋆[ContinuousLinearMap.mul ℂ ℂ, volume]
        (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ) *
          Complex.exp (z * (x : ℂ)))) t := by
  rw [sourceCorrelation, ← integral_complex_ofReal, ← integral_mul_const, convolution_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x ↦ by
    dsimp only
    rw [← neg_sub t x, normalizedTest_even A hA]
    push_cast
    have hexp : Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t : ℂ) - (x : ℂ))) =
        Complex.exp (z * (t : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      ring
    calc
      _ = (normalizedTest explicitSecondDerivative A x : ℂ) *
          (normalizedTest explicitSecondDerivative A (t - x) : ℂ) *
          (Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t : ℂ) - (x : ℂ)))) := by
        rw [hexp]
      _ = _ := by ring

/-- The source Mellin transform is an ordinary complex square, with its exact orientation. -/
theorem nativeMellin_eq_square (A : ℝ) (hA : 0 < A) (s : ℂ) :
    nativeMellinTransform A s = normalizedBilateralTransform A (s - 1 / 2) ^ 2 := by
  unfold nativeMellinTransform normalizedBilateralTransform
  simp_rw [weighted_correlation_eq_convolution A hA (s - 1 / 2)]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ)
    (normalizedBilateral_integrable A hA _) (normalizedBilateral_integrable A hA _)]
  exact (pow_two _).symm

/-- The actual nonzero-argument transform formula retains the normalization polynomial. -/
theorem nativeMellin_eq_dividedTransform (A : ℝ) (hA : 1 ≤ A)
    (s : ℂ) (hs : s - 1 / 2 ≠ 0) :
    nativeMellinTransform A s =
      dividedTransform A (s - 1 / 2) ^ 2 / (sourceNormalization A : ℂ) := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [nativeMellin_eq_square A hp, normalizedBilateral_eq_original,
    actual_transform A hp _ hs, div_pow]
  have hsq : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 =
      (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt (le_of_lt (source_normalization_pos A hA))
  rw [hsq]

end
end FormalResearch.RiemannHypothesis.SourceNativeMellin
```
