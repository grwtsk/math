# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FixedSourceKernel.Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5c2c661a43aef27b50627acad91c3d3a2909dbb` · SHA-256 `2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import FormalResearch.RiemannHypothesis.SourceComparison.SamplingError
import FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport

set_option autoImplicit false
namespace FixedSourceKernelScratch
open MeasureTheory Set Real Filter Finset
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section
local notation "v" => normalizedTest explicitSecondDerivative 1

/-- The actual logarithmic source sample, defined at all real arguments. -/
def logSample (t x : ℝ) : ℝ := Real.exp (-Real.log x / 2) * v (t - 1 - Real.log x)

/-- The derivative profile of the actual zero-extended normalized filter. -/
def sampleDerivativeProfile (y : ℝ) : ℝ := -v y / 2 - deriv v y

private theorem v_diff : Differentiable ℝ v :=
  (normalizedTest_contDiff 1 (by norm_num)).differentiable (by norm_num)

private theorem v_cont : Continuous v := (normalizedTest_contDiff 1 (by norm_num)).continuous

private theorem profile_cont : Continuous sampleDerivativeProfile := by
  exact (v_cont.neg.div_const 2).sub (contDiff_one_iff_deriv.mp
    (normalizedTest_contDiff 1 (by norm_num))).2

private theorem profile_compact : HasCompactSupport sampleDerivativeProfile := by
  have h : HasCompactSupport (fun x => -v x * (2 : ℝ)⁻¹) :=
    (normalizedTest_hasCompactSupport 1 (by norm_num)).neg.mul_right
  unfold sampleDerivativeProfile
  simp_rw [div_eq_mul_inv]
  exact h.sub (normalizedTest_hasCompactSupport 1 (by norm_num)).deriv

/-- Differentiation keeps the source value and derivative with both negative signs. -/
theorem logSample_hasDerivAt (t x : ℝ) (hx : 0 < x) :
    HasDerivAt (logSample t)
      (Real.exp (-Real.log x / 2) * sampleDerivativeProfile (t - 1 - Real.log x) / x) x := by
  have hl := Real.hasDerivAt_log hx.ne'
  have hv := (v_diff (t - 1 - Real.log x)).hasDerivAt.comp x (hl.const_sub (t - 1))
  apply (((hl.neg.div_const 2).exp).mul hv).congr_deriv
  dsimp only [sampleDerivativeProfile, Function.comp_apply, Pi.neg_apply]
  ring

/-- Every source sample is the original inverse-square-root weight on its positive domain. -/
theorem logSample_eq (t x : ℝ) (hx : 0 < x) :
    logSample t x = 1 / Real.sqrt x * v (t - 1 - Real.log x) := by
  rw [logSample, neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hx, one_div]

/-- Exact Jacobian for the logarithmic substitution in the source sample. -/
theorem logSample_exp (t r : ℝ) :
    Real.exp r * logSample t (Real.exp r) =
      Real.exp (r / 2) * v (t - 1 - r) := by
  rw [logSample, Real.log_exp, ← mul_assoc, ← Real.exp_add]
  congr 2
  ring

private theorem translated_compact (F : ℝ → ℝ) (hF : HasCompactSupport F) (t : ℝ) :
    HasCompactSupport (fun r : ℝ => F (t - 1 - r)) := by
  have h := (hF.comp_homeomorph (Homeomorph.addLeft (t - 1))).comp_homeomorph (Homeomorph.neg ℝ)
  change HasCompactSupport (fun r => F ((t - 1) + -r)) at h
  simpa only [sub_eq_add_neg] using h

/-- Genuine integrability precedes the logarithmic sampling integral. -/
theorem logSample_integrableOn (t : ℝ) : IntegrableOn (logSample t) (Ioi 1) := by
  have hc := translated_compact v (normalizedTest_hasCompactSupport 1 (by norm_num)) t
  have hi : Integrable (fun r : ℝ => Real.exp (r / 2) * v (t - 1 - r)) :=
    ((continuous_id.div_const 2).rexp.mul
      (v_cont.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport hc.mul_left
  have hs : IntegrableOn (fun r : ℝ => Real.exp r * logSample t (Real.exp r)) (Ioi 0) := by
    simpa only [logSample_exp] using hi.integrableOn (s := Ioi 0)
  simpa only [smul_eq_mul, Real.exp_zero] using
    (integrableOn_comp_exp_Ioi (logSample t) 0).mp hs

/-- The derivative change of variables is a decaying exponential times the exact profile. -/
theorem logSample_deriv_exp (t r : ℝ) :
    Real.exp r * |deriv (logSample t) (Real.exp r)| =
      Real.exp (-r / 2) * |sampleDerivativeProfile (t - 1 - r)| := by
  rw [(logSample_hasDerivAt t (Real.exp r) (Real.exp_pos _)).deriv,
    Real.log_exp, abs_div, abs_mul, abs_of_pos (Real.exp_pos _), abs_of_pos (Real.exp_pos _)]
  field_simp

/-- The finite positive derivative budget of the prescribed source filter. -/
def derivativeBudget : ℝ := ∫ y : ℝ, Real.exp (y / 2) * |sampleDerivativeProfile y|

/-- The budget is an actual finite integral of a continuous compactly supported function. -/
theorem derivativeBudget_integrable :
    Integrable (fun y : ℝ => Real.exp (y / 2) * |sampleDerivativeProfile y|) :=
  ((continuous_id.div_const 2).rexp.mul profile_cont.abs).integrable_of_hasCompactSupport
    profile_compact.abs.mul_left

/-- The actual derivative budget is nonnegative. -/
theorem derivativeBudget_nonneg : 0 ≤ derivativeBudget :=
  integral_nonneg (fun _ => mul_nonneg (Real.exp_pos _).le (abs_nonneg _))

private theorem derivative_translate (t r : ℝ) :
    Real.exp (-r / 2) * |sampleDerivativeProfile (t - 1 - r)| =
      Real.exp ((1 - t) / 2) *
        (Real.exp ((t - 1 - r) / 2) * |sampleDerivativeProfile (t - 1 - r)|) := by
  rw [← mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- The source derivative is genuinely integrable on the full positive sampling interval. -/
theorem logSample_deriv_integrableOn (t : ℝ) :
    IntegrableOn (deriv (logSample t)) (Ioi 1) := by
  have hc := translated_compact sampleDerivativeProfile profile_compact t
  have hi : Integrable (fun r : ℝ => Real.exp (-r / 2) *
      |sampleDerivativeProfile (t - 1 - r)|) :=
    ((continuous_id.neg.div_const 2).rexp.mul
      (profile_cont.comp (continuous_const.sub continuous_id)).abs).integrable_of_hasCompactSupport
        hc.abs.mul_left
  have hs : IntegrableOn (fun r : ℝ => Real.exp r *
      |deriv (logSample t) (Real.exp r)|) (Ioi 0) := by
    simpa only [logSample_deriv_exp] using hi.integrableOn (s := Ioi 0)
  have hh : IntegrableOn (fun x => |deriv (logSample t) x|) (Ioi 1) := by
    simpa only [smul_eq_mul, Real.exp_zero] using
      (integrableOn_comp_exp_Ioi (fun x => |deriv (logSample t) x|) 0).mp hs
  exact (integrable_norm_iff (stronglyMeasurable_deriv _).aestronglyMeasurable).mp (by
    simpa only [Real.norm_eq_abs, IntegrableOn] using hh)

/-- The full derivative variation has a genuine exponentially decaying source bound. -/
theorem logSample_variation_le (t : ℝ) :
    (∫ x in Ioi (1 : ℝ), |deriv (logSample t) x|) ≤
      Real.exp ((1 - t) / 2) * derivativeBudget := by
  have hchange := integral_comp_exp_Ioi (fun x => |deriv (logSample t) x|) 0
  simp only [smul_eq_mul, Real.exp_zero] at hchange
  rw [← hchange]
  simp_rw [logSample_deriv_exp, derivative_translate]
  rw [integral_const_mul]
  apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
  have hi := derivativeBudget_integrable.comp_sub_left (t - 1)
  calc
    _ ≤ ∫ r : ℝ, Real.exp ((t - 1 - r) / 2) *
        |sampleDerivativeProfile (t - 1 - r)| :=
      setIntegral_le_integral hi (Filter.Eventually.of_forall
        (fun _ => mul_nonneg (Real.exp_pos _).le (abs_nonneg _)))
    _ = derivativeBudget := integral_sub_left_eq_self
      (fun y => Real.exp (y / 2) * |sampleDerivativeProfile y|) volume (t - 1)

/-- The sample vanishes at and beyond the exact causal endpoint. -/
theorem logSample_zero_of_time_le_log (t x : ℝ) (h : t ≤ Real.log x) :
    logSample t x = 0 := by
  rw [logSample, normalizedTest_zero_of_le_abs 1 _ (by norm_num), mul_zero]
  have ha := neg_le_abs (t - 1 - Real.log x)
  linarith

/-- The original exponential time cutoff retains a zero boundary value. -/
theorem logSample_zero_of_exp_le (t x : ℝ) (_hx : 0 < x) (h : Real.exp t ≤ x) :
    logSample t x = 0 := by
  apply logSample_zero_of_time_le_log
  simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos t) h

/-- The complete prescribed fixed causal kernel, with n+1 enumerating every positive integer. -/
def fixedKernel (t : ℝ) : ℝ := ∑' n : ℕ, logSample t (n + 1)

/-- Every finite time has an exact finite source prefix; omitted terms are proved zero. -/
theorem fixedKernel_eq_sum (t : ℝ) (N : ℕ) (hN : Real.exp t ≤ N) :
    fixedKernel t = ∑ n ∈ Finset.range N, logSample t (n + 1) := by
  apply tsum_eq_sum
  intro n hn
  have hnN : N ≤ n := Nat.le_of_not_gt (by simpa only [Finset.mem_range] using hn)
  apply logSample_zero_of_exp_le t _ (by positivity)
  have hnr : (N : ℝ) ≤ n := by exact_mod_cast hnN
  linarith

/-- Summability is genuine because the actual time-dependent source has finite support. -/
theorem fixedKernel_summable (t : ℝ) : Summable (fun n : ℕ => logSample t (n + 1)) := by
  apply summable_of_ne_finset_zero (s := Finset.range (⌊Real.exp t⌋₊ + 1))
  intro n hn
  have hnN : ⌊Real.exp t⌋₊ + 1 ≤ n := Nat.le_of_not_gt
    (by simpa only [Finset.mem_range] using hn)
  apply logSample_zero_of_exp_le t _ (by positivity)
  have hnr : ((⌊Real.exp t⌋₊ + 1 : ℕ) : ℝ) ≤ n := by exact_mod_cast hnN
  have hx := Nat.lt_floor_add_one (Real.exp t)
  push_cast at hnr
  linarith

/-- Source admission preserves the literal n^(-1/2) weights, not Mangoldt weights. -/
theorem fixedKernel_eq_literal (t : ℝ) :
    fixedKernel t = ∑' n : ℕ, 1 / Real.sqrt (n + 1 : ℝ) *
      v (t - 1 - Real.log (n + 1)) := by
  unfold fixedKernel
  apply tsum_congr
  intro n
  exact logSample_eq t _ (by positivity)

/-- The actual kernel is measurable before its full-time integrals are considered. -/
theorem fixedKernel_measurable : Measurable fixedKernel := by
  apply Measurable.tsum
  intro n
  exact ((continuous_const.mul (v_cont.comp
    ((continuous_id.sub continuous_const).sub continuous_const)))).measurable

/-- The zero extension is causal, including its initial endpoint. -/
theorem fixedKernel_zero_of_nonpos (t : ℝ) (ht : t ≤ 0) : fixedKernel t = 0 := by
  suffices h : ∀ n : ℕ, logSample t (n + 1) = 0 by simp only [fixedKernel, h, tsum_zero]
  intro n
  apply logSample_zero_of_time_le_log
  have hlog : 0 ≤ Real.log (n + 1 : ℝ) := Real.log_nonneg (by have := (show (0 : ℝ) ≤ n from Nat.cast_nonneg n); linarith)
  linarith

/-- Every compact time interval is represented by a fixed continuous finite source sum. -/
theorem fixedKernel_integrableOn_Icc (a b : ℝ) : IntegrableOn fixedKernel (Icc a b) := by
  let N := ⌊Real.exp b⌋₊ + 1
  have hc : Continuous (fun t : ℝ => ∑ n ∈ Finset.range N, logSample t (n + 1)) := by
    apply continuous_finsetSum
    intro n _
    exact continuous_const.mul (v_cont.comp
      ((continuous_id.sub continuous_const).sub continuous_const))
  apply hc.integrableOn_Icc.congr_fun _ measurableSet_Icc
  intro t ht
  apply (fixedKernel_eq_sum t N _).symm
  have h := Real.exp_le_exp.mpr ht.2
  exact h.trans (by exact_mod_cast (Nat.lt_floor_add_one (Real.exp b)).le)

end
end FixedSourceKernelScratch
```
