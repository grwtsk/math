# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.D32ff48ad7de971c51e1SourceUpperCenteredQuadrature.Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `401fa767dd75e73aa853915ac1e24e0a8841c97f` · SHA-256 `d32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCubicCenteredRows
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature

/-!
# Genuine upper-axis centered quadrature for the actual logarithmic profile

AI attribution: OpenAI Codex. The original right-endpoint unit cell identity
is summed, its entire below-one cell subtracted, and its remaining derivative
centered using the actual endpoint FTC. The upper continuous integral is
retained. Actual logProfile has a zero sample at one; no assertion identifies
its upper integral with the whole-positive-axis cancellation. The full cubic
signed derivative model and complementary divisor sector remain explicit.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceUpperCenteredQuadrature

open MeasureTheory Set Filter
open scoped BigOperators
open SourcePairing SourcePositiveSampling SourceFractionalQuadrature
open SourceCubicUpperLogMoments SourceCubicSamplingRemainder SourceActualCubicCenteredRows
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- Centered derivative integrability on actual finite intervals, including integer seams. -/
theorem centered_deriv_intervalIntegrable (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (a b : ℝ) :
    IntervalIntegrable (fun u => centeredSawtooth u * deriv f u) volume a b := by
  have he : (fun u => centeredSawtooth u * deriv f u) =
      (fun u => Int.fract u * deriv f u - deriv f u / 2) := by
    funext u
    unfold centeredSawtooth
    ring
  rw [he]
  exact (fract_deriv_intervalIntegrable f hf a b).sub
    (((hf.continuous_deriv_one).intervalIntegrable a b).div_const 2)

/-- Subtracting the actual cell below one and centering keeps both endpoint half samples. -/
theorem finite_upper_centered_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      (∫ u in 1..(N + 1 : ℝ), f u) + (f 1 - f (N + 1 : ℝ)) / 2 +
        ∫ u in 1..(N + 1 : ℝ), centeredSawtooth u * deriv f u := by
  have hq := finite_quadrature f hf N
  have hz := unit_right_sampling_identity f hf 0
  simp only [Nat.cast_zero, zero_add] at hz
  have hfadd := intervalIntegral.integral_add_adjacent_intervals
    (hf.continuous.intervalIntegrable (μ := volume) 0 1)
    (hf.continuous.intervalIntegrable (μ := volume) 1 (N + 1 : ℝ))
  have hdadd := intervalIntegral.integral_add_adjacent_intervals
    (fract_deriv_intervalIntegrable f hf 0 1)
    (fract_deriv_intervalIntegrable f hf 1 (N + 1 : ℝ))
  have hd : (∫ u in 1..(N + 1 : ℝ), deriv f u) = f (N + 1 : ℝ) - f 1 := by
    rw [intervalIntegral.integral_deriv_eq_sub]
    · intro u _
      exact hf.differentiable (by norm_num) u
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have he : (fun u => centeredSawtooth u * deriv f u) =
      (fun u => Int.fract u * deriv f u - deriv f u / 2) := by
    funext u
    unfold centeredSawtooth
    ring
  have hc : (∫ u in 1..(N + 1 : ℝ), centeredSawtooth u * deriv f u) =
      (∫ u in 1..(N + 1 : ℝ), Int.fract u * deriv f u) -
        (f (N + 1 : ℝ) - f 1) / 2 := by
    rw [he, intervalIntegral.integral_sub
      (fract_deriv_intervalIntegrable f hf 1 (N + 1 : ℝ))
      ((hf.continuous_deriv_one.intervalIntegrable _ _).div_const 2),
      intervalIntegral.integral_div, hd]
  linarith only [hq, hz, hfadd, hdadd, hc]

/-- Actual global derivative existence and compact support justify the upper signed pairing. -/
theorem centered_deriv_upper_integrable (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) :
    IntegrableOn (fun u => centeredSawtooth u * deriv f u) (Ioi (1 : ℝ)) := by
  have hd : Integrable (deriv f) := hf.continuous_deriv_one.integrable_of_hasCompactSupport hs.deriv
  exact (hd.bdd_mul centeredSawtooth_measurable.aestronglyMeasurable
    (Eventually.of_forall (fun u => by
      rw [Real.norm_eq_abs]
      exact centeredSawtooth_abs_le_half u))).integrableOn

/-- Genuine infinite-upper quadrature retains the endpoint half sample and upper integral. -/
theorem upper_centered_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (_hs : HasCompactSupport f) (N : ℕ)
    (hupper : ∀ u : ℝ, (N + 1 : ℝ) ≤ u → f u = 0) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      (∫ u in Ioi (1 : ℝ), f u) + f 1 / 2 +
        ∫ u in Ioi (1 : ℝ), centeredSawtooth u * deriv f u := by
  have hNB : (1 : ℝ) ≤ N + 1 := by linarith [Nat.cast_nonneg (α := ℝ) N]
  have hdz : ∀ u : ℝ, (N + 1 : ℝ) < u → deriv f u = 0 := by
    have he : EqOn f (fun _ => (0 : ℝ)) (Ioi (N + 1 : ℝ)) :=
      fun u hu => hupper u hu.le
    intro u hu
    simpa using he.deriv isOpen_Ioi hu
  have hi : (∫ u in Ioi (1 : ℝ), f u) = ∫ u in 1..(N + 1 : ℝ), f u := by
    rw [intervalIntegral.integral_of_le hNB, ← Ioc_union_Ioi_eq_Ioi hNB]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro u hu
    exact hupper u hu.le
  have hdi : (∫ u in Ioi (1 : ℝ), centeredSawtooth u * deriv f u) =
      ∫ u in 1..(N + 1 : ℝ), centeredSawtooth u * deriv f u := by
    rw [intervalIntegral.integral_of_le hNB, ← Ioc_union_Ioi_eq_Ioi hNB]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro u hu
    rw [hdz u hu, mul_zero]
  rw [hi, hdi]
  simpa only [hupper _ le_rfl, sub_zero] using finite_upper_centered_quadrature f hf N

/-- Original actual logProfile quadrature; its upper continuous integral is retained verbatim. -/
theorem actual_logProfile_upper_centered_quadrature {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) =
      (∫ u in Ioi (1 : ℝ), logProfile A k u) +
        ∫ u in Ioi (1 : ℝ), centeredSawtooth u * deriv (logProfile A k) u := by
  have hp : 0 < A := by linarith
  have hq := upper_centered_quadrature (logProfile A k) (logProfile_contDiff hp k)
    (logProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (fun u hu => logProfile_cutoff_tail hA hk hu)
  have h1 : logProfile A k 1 = 0 := by
    rw [logProfile_eq_log_mul, Real.log_one, zero_mul]
  simpa only [h1, zero_div, add_zero] using hq

/-- The cubic model's signed upper row is independently specified by its actual derivative. -/
def cubicSignedUpperModelRow (A k : ℝ) : ℝ :=
  ∫ u in Ioi (1 : ℝ), centeredSawtooth u * cubicLogModelDerivative A k u

/-- The independent model row is genuinely integrable through actual source and actual error L1. -/
theorem cubic_signed_upper_model_row_integrable {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    IntegrableOn (fun u => centeredSawtooth u * cubicLogModelDerivative A k u)
      (Ioi (1 : ℝ)) := by
  have ha := centered_deriv_upper_integrable (logProfile A k)
    (logProfile_contDiff (by linarith : 0 < A) k)
    (logProfile_hasCompactSupport (by linarith : 0 < A) k)
  have he := actual_cubic_centered_row_integrable hA hk
  apply (ha.sub he).congr_fun
  · intro u _
    change centeredSawtooth u * deriv (logProfile A k) u -
      centeredSawtooth u * (deriv (logProfile A k) u - cubicLogModelDerivative A k u) =
        centeredSawtooth u * cubicLogModelDerivative A k u
    ring
  · exact measurableSet_Ioi

/-- Real cubic sampling keeps the full upper baseline, all signed model jets and actual error. -/
theorem actual_logProfile_upper_cubic_sampling {A k : ℝ} (hA : 91 ≤ A) (hk : 1 ≤ k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) =
      (∫ u in Ioi (1 : ℝ), logProfile A k u) + cubicSignedUpperModelRow A k +
        cubicCenteredLogErrorRow A k := by
  have ha := centered_deriv_upper_integrable (logProfile A k)
    (logProfile_contDiff (by linarith : 0 < A) k)
    (logProfile_hasCompactSupport (by linarith : 0 < A) k)
  have hm := cubic_signed_upper_model_row_integrable hA (by linarith : 0 < k)
  have hd : cubicCenteredLogErrorRow A k =
      (∫ u in Ioi (1 : ℝ), centeredSawtooth u * deriv (logProfile A k) u) -
        cubicSignedUpperModelRow A k := by
    unfold cubicCenteredLogErrorRow cubicSignedUpperModelRow
    simp_rw [mul_sub]
    rw [integral_sub ha hm]
  have hq := actual_logProfile_upper_centered_quadrature (by linarith : 1 ≤ A) hk
  linarith only [hd, hq]

/-- Full actual short divisor sampling identity with the signed error summed before estimation. -/
theorem actual_short_divisor_upper_cubic_sampling (A : ℝ) (hA : 91 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) =
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicSignedUpperModelRow A (d : ℝ))) +
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) := by
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hd1 : 1 ≤ (d : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).1
  rw [actual_logProfile_upper_cubic_sampling hA hd1]
  ring

end
end FormalResearch.RiemannHypothesis.SourceUpperCenteredQuadrature
```
