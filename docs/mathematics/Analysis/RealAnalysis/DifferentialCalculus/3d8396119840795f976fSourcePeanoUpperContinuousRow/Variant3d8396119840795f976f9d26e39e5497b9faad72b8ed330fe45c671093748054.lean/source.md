# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.3d8396119840795f976fSourcePeanoUpperContinuousRow.Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `021e5c6870a385a142b9f53ba1217bc76273517a` · SHA-256 `3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFullDivisorLogInventory
import SourceOmegaContinuousSector
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

/-!
# Actual Peano evaluation of the retained upper continuous divisor row

AI attribution: OpenAI Codex. Genuine FTC keeps the lower boundary and the
actual touching upper support; both the primitive and its derivative vanish
there. The exact positive row threshold does not assert positivity of the
Moebius-weighted short sum. The full complementary divisor sector and discrete
baseline remain separate signed terms. No complete Omega bound is supplied.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourcePeanoUpperContinuousRow
open MeasureTheory Set
open scoped BigOperators Interval
open SourcePairing SourceCausalEnergy SourcePrimitivePrimeInteraction
open SourcePositivePeanoPrimitive SourcePeanoProfileTransport
open SourcePrimitiveCorrelationCurvature SourcePositiveSampling SourceSamplingTaylor
open SourceOmegaContinuousSector SourceCubicSignedUpperCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- The literal primitive correlation includes the true touching support boundary. -/
theorem actualPrimitiveCorrelation_zero_of_two_mul_le_abs {A t : ℝ} (hA : 0 < A)
    (ht : 2 * A ≤ |t|) : primitiveCorrelationZero A t = 0 := by
  have hb (x : ℝ) (hx : A ≤ |x|) : normalizedPrimitiveBump A x = 0 := by
    by_cases hm : x ∈ Icc (-A) A
    · by_cases hs : 0 ≤ x
      · have he : x = A := by rw [abs_of_nonneg hs] at hx; linarith [hm.2]
        rw [he]
        exact (normalizedPrimitiveBump_endpoints hA).2
      · have he : x = -A := by rw [abs_of_neg (lt_of_not_ge hs)] at hx; linarith [hm.1]
        rw [he]
        exact (normalizedPrimitiveBump_endpoints hA).1
    · exact normalizedPrimitiveBump_zero_of_not_mem hA hm
  unfold primitiveCorrelationZero
  apply integral_eq_zero_of_ae
  filter_upwards [] with x
  change _ = (0 : ℝ)
  by_cases hx : A ≤ |x|
  · rw [hb x hx, zero_mul]
  · have he : x + -(x - t) = t := by ring
    have hu := abs_add_le x (-(x - t))
    rw [he, abs_neg] at hu
    have hxt : A ≤ |x - t| := by linarith [lt_of_not_ge hx]
    rw [hb (x - t) hxt, mul_zero]

/-- Exact one-sided zero transport retains the inclusive upper seam. -/
theorem actualPrimitiveCorrelation_deriv_zero_of_support_upper_le {A t : ℝ}
    (hA : 0 < A) (ht : 2 * A ≤ t) : deriv (primitiveCorrelationZero A) t = 0 := by
  have hz : ∀ y ∈ Ici t, primitiveCorrelationZero A y = 0 := by
    intro y hy
    exact actualPrimitiveCorrelation_zero_of_two_mul_le_abs hA
      ((ht.trans hy).trans (le_abs_self y))
  have hd : HasDerivWithinAt (primitiveCorrelationZero A) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- The second ordinary derivative also vanishes at the true touching upper endpoint. -/
theorem actualPrimitiveCorrelation_second_deriv_zero_of_support_upper_le {A t : ℝ}
    (hA : 0 < A) (ht : 2 * A ≤ t) : deriv (deriv (primitiveCorrelationZero A)) t = 0 := by
  have hz : ∀ y ∈ Ici t, deriv (primitiveCorrelationZero A) y = 0 := by
    intro y hy
    exact actualPrimitiveCorrelation_deriv_zero_of_support_upper_le hA (ht.trans hy)
  have hd : HasDerivWithinAt (deriv (primitiveCorrelationZero A)) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- The actual Peano primitive vanishes at and beyond the upper seam. -/
theorem actualPeano_zero_of_support_upper_le {A t : ℝ} (hA : 0 < A)
    (ht : 2 * A ≤ t) : sourcePeanoPrimitive A t = 0 := by
  unfold sourcePeanoPrimitive
  rw [actualPrimitiveCorrelation_zero_of_two_mul_le_abs hA (ht.trans (le_abs_self t)),
    actualPrimitiveCorrelation_deriv_zero_of_support_upper_le hA ht,
    actualPrimitiveCorrelation_second_deriv_zero_of_support_upper_le hA ht]
  ring

/-- The first Peano derivative vanishes inclusively, preserving the FTC boundary term. -/
theorem actualPeano_deriv_zero_of_support_upper_le {A t : ℝ} (hA : 0 < A)
    (ht : 2 * A ≤ t) : deriv (sourcePeanoPrimitive A) t = 0 := by
  have hz : ∀ y ∈ Ici t, sourcePeanoPrimitive A y = 0 := by
    intro y hy
    exact actualPeano_zero_of_support_upper_le hA (ht.trans hy)
  have hd : HasDerivWithinAt (sourcePeanoPrimitive A) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- Actual x-coordinate antiderivative; its lower term is the retained local Peano value. -/
def upperPeanoAntiderivative (A d x : ℝ) : ℝ :=
  (Real.log x - Real.log d) * deriv (sourcePeanoPrimitive A) (Real.log x) -
    sourcePeanoPrimitive A (Real.log x)

theorem upperPeanoAntiderivative_hasDerivAt {A d x : ℝ} (hA : 0 < A)
    (hd : 0 < d) (hx : 0 < x) :
    HasDerivAt (upperPeanoAntiderivative A d) (continuousDivisorIntegrand A d x) x := by
  have hc := sourcePeanoPrimitive_contDiff_two hA
  have hp (t : ℝ) : HasDerivAt (sourcePeanoPrimitive A)
      (deriv (sourcePeanoPrimitive A) t) t :=
    (hc.differentiable (by norm_num) t).hasDerivAt
  have hc1 : ContDiff ℝ 1 (deriv (sourcePeanoPrimitive A)) := hc.deriv'
  have hpp (t : ℝ) : HasDerivAt (deriv (sourcePeanoPrimitive A))
      (deriv (deriv (sourcePeanoPrimitive A)) t) t :=
    (hc1.differentiable (by norm_num) t).hasDerivAt
  have hl := Real.hasDerivAt_log hx.ne'
  have hh := ((hl.sub_const (Real.log d)).mul ((hpp (Real.log x)).comp x hl)).sub
    ((hp (Real.log x)).comp x hl)
  change HasDerivAt (upperPeanoAntiderivative A d) _ x at hh
  apply hh.congr_deriv
  rw [sourcePeanoPrimitive_second_deriv hA]
  unfold continuousDivisorIntegrand
  rw [plainProfile_eq_of_pos A 1 hx,
    sourcePlainSamplingTerm_eq_source_weight A (by norm_num : (0 : ℝ) < 1) hx,
    one_mul, Real.log_div hx.ne' hd.ne']
  have he : Real.exp (Real.log x / 2) = Real.sqrt x := by
    rw [Real.exp_half, Real.exp_log hx]
  rw [he]
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hs2 := Real.sq_sqrt hx.le
  simp only [Function.comp_apply]
  field_simp
  ring_nf
  simp only [hs2]
  ring

/-- Genuine FTC gives the full upper divisor integral, including its touching boundary. -/
theorem actual_upper_continuous_row_eq_Peano {A d : ℝ} (hA : 1 ≤ A)
    (hd : 0 < d) (hdX : d ≤ Real.exp (2 * A)) :
    upperContinuousDivisorIntegral A d = sourcePeanoPrimitive A (Real.log d) / d := by
  have hAp : 0 < A := by linarith
  have hi : IntervalIntegrable (continuousDivisorIntegrand A d) volume d (Real.exp (2 * A)) := by
    apply intervalIntegrable_iff_integrableOn_Ioc_of_le hdX |>.2
    exact (continuousDivisorIntegrand_integrable hA hd).mono_set Ioc_subset_Ioi_self
  have hFTC := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (f := upperPeanoAntiderivative A d) (f' := continuousDivisorIntegrand A d)
    (a := d) (b := Real.exp (2 * A)) (fun x hx => by
      have hxx : x ∈ Icc d (Real.exp (2 * A)) := by
        simpa only [uIcc_of_le hdX] using hx
      exact upperPeanoAntiderivative_hasDerivAt hAp hd (hd.trans_le hxx.1)) hi
  rw [upperContinuousDivisorIntegral_eq_literal_row hA hd hdX, hFTC]
  unfold upperPeanoAntiderivative
  rw [Real.log_exp, actualPeano_zero_of_support_upper_le hAp le_rfl,
    actualPeano_deriv_zero_of_support_upper_le hAp le_rfl]
  ring

/-- The exact source positivity threshold concerns the actual row before Moebius weighting. -/
theorem actual_upper_continuous_row_nonneg {A d : ℝ} (hA : 1 ≤ A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (hd : 1 ≤ d)
    (hdX : d ≤ Real.exp (2 * A)) : 0 ≤ upperContinuousDivisorIntegral A d := by
  have hdp : 0 < d := by linarith
  have ht0 : 0 ≤ Real.log d := Real.log_nonneg hd
  have ht2 : Real.log d ≤ 2 * A := by
    have h := Real.log_le_log hdp hdX
    simpa only [Real.log_exp] using h
  rw [actual_upper_continuous_row_eq_Peano hA hdp hdX]
  exact div_nonneg (sourcePeanoPrimitive_nonneg (by linarith) hthreshold ht0 ht2) hdp.le

/-- Entire literal I remains a signed sum of the actual local Peano values. -/
theorem literal_I_eq_actual_Peano_divisor_sum (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaIntegralSector A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (sourcePeanoPrimitive A (Real.log (d : ℝ)) / (d : ℝ)) := by
  rw [← full_short_continuous_sector_eq_literal_I A hA]
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  have hdN : d ≤ sourceKernelCutoff A :=
    (Finset.mem_Icc.mp hd).2.trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hdX : (d : ℝ) ≤ Real.exp (2 * A) :=
    (by exact_mod_cast hdN : (d : ℝ) ≤ sourceKernelCutoff A).trans
      (Nat.floor_le (Real.exp_pos (2 * A)).le)
  rw [actual_upper_continuous_row_eq_Peano hA hdp hdX]

end
end FormalResearch.RiemannHypothesis.SourcePeanoUpperContinuousRow
```
