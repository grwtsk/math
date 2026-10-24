# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootActualXiTailPrimitiveAbel.Variantc6e1bae602f7c15758fb17fe93cb83d454a210948a7b372d01833c9fa9f8d9e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4271a428ef2966cbeaaaa748cd5a416e7addc65` · SHA-256 `c6e1bae602f7c15758fb17fe93cb83d454a210948a7b372d01833c9fa9f8d9e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualXiTailPrimitive

/-!
The actual signed Xi tail is reduced by genuine absolutely continuous Abel
integration with its zero lower anchor and true closed source upper traces.
A quantitative conditional average transport retains the missing arithmetic
premise explicitly. No average or uniform tail witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualXiTailPrimitiveAbel
open MeasureTheory Set
open scoped Interval
open RootActualXiTailPrimitive RH16CompleteXiTail RH16ActualXiPositiveBlock
open RH16ActualPsiNegativeBlock RH16FiveCesaro SourcePairing SourceCorrelationCurvature
open SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateSourceMobiusDerivative
noncomputable section

/-- The exact original first-minus-half-zeroth test in logarithmic coordinates. -/
def actualXiTailSourceTest (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t / 2

private theorem sourceTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualXiTailSourceTest A) := by
  exact (sourceCorrelation_deriv_contDiff hA).sub ((sourceCorrelation_contDiff A hA).div_const 2)

private theorem sourceTest_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (actualXiTailSourceTest A)
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2) t := by
  have h1 := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num) t).hasDerivAt
  have h0 := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt
  convert h1.sub (h0.div_const 2) using 1 <;> first
  | rfl
  | simp only [iteratedDeriv_succ, iteratedDeriv_zero]

private theorem sourceTest_zero_upper {A : ℝ} (hA : 0 < A) :
    actualXiTailSourceTest A (2 * A) = 0 := by
  unfold actualXiTailSourceTest
  rw [sourceCorrelation_deriv_zero_of_two_mul_le A _ hA le_rfl,
    sourceCorrelation_upper_endpoint A hA]
  simp

/-- The true signed physical tail is exactly its logarithmic source-density pairing. -/
theorem completeXiTail_eq_log_pairing (A : ℝ) :
    completeXiTail A = ∫ t in Real.log 7..2 * A,
      actualXiTailTimeDensity t * actualXiTailSourceTest A t := by
  let g := actualTransformedXiBlockDensity A
  have hd (r : ℝ) (_hr : r ∈ Ioo (min (Real.log 7) (2 * A))
      (max (Real.log 7) (2 * A))) :
      HasDerivAt Real.exp (Real.exp r) r := Real.hasDerivAt_exp r
  have he := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    Real.continuous_exp.continuousOn hd (fun r _ => (Real.exp_pos r).le) (g := g)
  have hh : (fun r => (g ∘ Real.exp) r * Real.exp r) =
      (fun r => actualXiTailTimeDensity r * actualXiTailSourceTest A r) := by
    funext r
    dsimp only [Function.comp_apply, g, actualTransformedXiBlockDensity,
      actualXiTailTimeDensity, actualXiTailSourceTest]
    rw [Real.rpow_def_of_pos (Real.exp_pos r), Real.log_exp]
    have hx : Real.exp r / Real.exp (r * (3 / 2 : ℝ)) = Real.exp (-r / 2) := by
      rw [← Real.exp_sub]
      congr 1
      ring
    calc
      _ = shiftedActualChebyshev (Real.exp r) *
          (Real.exp r / Real.exp (r * (3 / 2 : ℝ))) *
          (deriv (sourceCorrelation explicitSecondDerivative A) r -
            sourceCorrelation explicitSecondDerivative A r / 2) := by ring
      _ = _ := by rw [hx]
  rw [hh, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he.symm

/-- Genuine Abel preserves the lower anchor and upper source jets before evaluating them. -/
theorem completeXiTail_eq_anchored_primitive {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = -(∫ t in Real.log 7..2 * A,
      actualAnchoredXiTailPrimitive t *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
  have hAp : 0 < A := by linarith
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hG := actualAnchoredXiTailPrimitive_absolutelyContinuous hlb
  have hF : AbsolutelyContinuousOnInterval (actualXiTailSourceTest A) (Real.log 7) (2 * A) :=
    (sourceTest_contDiff hAp).contDiffOn.absolutelyContinuousOnInterval
  have hi1 : IntervalIntegrable (fun t => actualXiTailTimeDensity t * actualXiTailSourceTest A t)
      volume (Real.log 7) (2 * A) :=
    (actualXiTailTimeDensity_intervalIntegrable hlb).mul_continuousOn hF.continuousOn
  have hi2 : IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t *
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))
      volume (Real.log 7) (2 * A) := by
    have hi := hF.intervalIntegrable_deriv.continuousOn_mul hG.continuousOn
    have he : deriv (actualXiTailSourceTest A) = (fun t =>
        iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2) :=
      funext (fun t => (sourceTest_hasDerivAt hAp t).deriv)
    rwa [he] at hi
  have he : (∫ t in Real.log 7..2 * A,
      deriv actualAnchoredXiTailPrimitive t * actualXiTailSourceTest A t +
        actualAnchoredXiTailPrimitive t * deriv (actualXiTailSourceTest A) t) =
      (∫ t in Real.log 7..2 * A, actualXiTailTimeDensity t * actualXiTailSourceTest A t) +
        ∫ t in Real.log 7..2 * A, actualAnchoredXiTailPrimitive t *
          (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2) := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hlb] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv, (sourceTest_hasDerivAt hAp t).deriv]
  have hh := hG.integral_deriv_mul_eq_sub hF
  rw [he, sourceTest_zero_upper hAp, actualAnchoredXiTailPrimitive_at_lower,
    mul_zero, zero_mul, sub_self] at hh
  rw [completeXiTail_eq_log_pairing]
  linarith

/-- The actual sharp curvature and first-derivative bounds control the full primitive pairing. -/
theorem completeXiTail_abs_le_primitive_average {A : ℝ} (hA : 91 ≤ A) :
    |completeXiTail A| ≤ (5 / A ^ 2 + 5 / (2 * A)) *
      ∫ t in Real.log 7..2 * A, |actualAnchoredXiTailPrimitive t| := by
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  let B : ℝ := 5 / A ^ 2 + 5 / (2 * A)
  have hg : IntervalIntegrable (fun t => B * |actualAnchoredXiTailPrimitive t|)
      volume (Real.log 7) (2 * A) := by
    have hi : IntervalIntegrable actualAnchoredXiTailPrimitive volume (Real.log 7) (2 * A) :=
      (actualAnchoredXiTailPrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable
    simpa only [Real.norm_eq_abs] using hi.norm.const_mul B
  have hb : ∀ᵐ t : ℝ, t ∈ Ioc (Real.log 7) (2 * A) →
      ‖actualAnchoredXiTailPrimitive t *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)‖ ≤
        B * |actualAnchoredXiTailPrimitive t| := by
    filter_upwards with t _
    have h2 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ^ 2 :=
      by simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
        actualCorrelation_second_abs_le_five hA t
    have h1 := sourceCorrelation_deriv_abs_le_five_div (by linarith : 1 ≤ A) t
    have hh := abs_sub (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t)
      (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hh
    have hk : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤ B := by
      dsimp [B]
      have he : (5 / A) / 2 = 5 / (2 * A) := by ring
      nlinarith
    rw [Real.norm_eq_abs, abs_mul]
    nlinarith [mul_nonneg (abs_nonneg (actualAnchoredXiTailPrimitive t)) (sub_nonneg.mpr hk)]
  rw [completeXiTail_eq_anchored_primitive hA, abs_neg]
  have he := intervalIntegral.norm_integral_le_of_norm_le hlb hb hg
  simpa only [Real.norm_eq_abs, intervalIntegral.integral_const_mul, B] using he

/-- An actual uniform average witness would supply the unchanged complete signed tail budget. -/
theorem completeXiTail_lower_of_uniform_primitive_average {M R A : ℝ}
    (hM : 0 ≤ M) (hR : 91 ≤ R) (hA : R ≤ A)
    (havg : ∀ T : ℝ, 2 * R ≤ T →
      (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) ≤ M * T) :
    -((5 + 10 / R) * M) ≤ completeXiTail A := by
  have hAp : 0 < A := by linarith
  have hRp : 0 < R := by linarith
  have hb := completeXiTail_abs_le_primitive_average (hR.trans hA)
  have hh := havg (2 * A) (by linarith)
  have hB : 0 ≤ 5 / A ^ 2 + 5 / (2 * A) := by positivity
  have he : (5 / A ^ 2 + 5 / (2 * A)) * (M * (2 * A)) = (5 + 10 / A) * M := by
    field_simp
    ring
  have hc : (5 + 10 / A) * M ≤ (5 + 10 / R) * M := by
    gcongr
  have hmid := hb.trans (mul_le_mul_of_nonneg_left hh hB)
  have hfinal : |completeXiTail A| ≤ (5 + 10 / R) * M :=
    hmid.trans (by rw [he]; exact hc)
  exact (abs_le.mp hfinal).1

/-- Conditional all-real source return retains the unchanged finite prefix and actual mean. -/
theorem estimate_of_uniform_primitive_average (M R : ℝ) (hM : 0 ≤ M) (hR : 91 ≤ R)
    (havg : ∀ T : ℝ, 2 * R ≤ T →
      (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) ≤ M * T) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_tail ((5 + 10 / R) * M) R
  intro A hA
  exact completeXiTail_lower_of_uniform_primitive_average hM hR hA havg

end
end FormalResearch.RiemannHypothesis.RootActualXiTailPrimitiveAbel
```
