# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelLaplaceCheck.Variant19f25028a56d9eacb3aceb04a08a5f749d39a6e0146a9d4096f6cd31a8d52321

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `720d73b26718d4c11d3c38667813e9b70f4c50fc` · SHA-256 `b61017f7a2f05b5f9862dc6854f2a23bbcd4b90d6b4a1ef1a8dfd8ce899616d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FixedBump.Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FixedBump.Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7","mathematical_subject":"Analysis.Integration","original_sha256":"bd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/FixedKernelLaplaceCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PoleCancellation
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.MeasureTheory.Function.L2Space
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import FormalResearch.RiemannHypothesis.SourceComparison.SamplingError
import FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Topology.Piecewise
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Pow.Complex


namespace GRWTSK.Analysis.RealAnalysis.Integration.FixedBump.Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7

set_option autoImplicit false
namespace FixedSourceFilterScratch
open MeasureTheory Set
open scoped Topology ContDiff
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison
open Realization CorrelationRegularity BridgeNormalization ZeroSideTargets
noncomputable section

/-- The unchanged source bump at unit scale. -/
def fixedBump : ℝ → ℝ := sourceBump

/-- Its first interior derivative, with the same zero extension. -/
def fixedBumpFirst : ℝ → ℝ := (Icc (-1 : ℝ) 1).indicator (firstInterior 1)

/-- The fixed filter is the actual normalized source at scale one. -/
def v : ℝ → ℝ := normalizedTest explicitSecondDerivative 1

/-- Its bilateral transform is defined by the genuine source integral. -/
def V (z : ℂ) : ℂ := ∫ x : ℝ, (v x : ℂ) * Complex.exp (z * (x : ℂ))

theorem sourceNormalization_one : sourceNormalization 1 = (45056 / 1105 : ℝ) := by
  norm_num [sourceNormalization]

theorem fixedBump_eq_scaled : fixedBump = scaledBump 1 := by
  funext x
  simp [fixedBump, scaledBump]

theorem fixedBump_weak_second_derivative :
    IsWeakSecondDerivative fixedBump (explicitSecondDerivative 1) := by
  rw [fixedBump_eq_scaled]
  exact scaledBump_weak_second_derivative 1 le_rfl

theorem fixedBump_hasDerivAt (x : ℝ) : HasDerivAt fixedBump (fixedBumpFirst x) x := by
  rw [fixedBump_eq_scaled, scaledBump_eq_indicator 1 (by norm_num)]
  apply indicator_hasDerivAt (bumpInterior_hasDerivAt 1)
  intro y hy
  rw [frontier_Icc (by norm_num : (-1 : ℝ) ≤ 1)] at hy
  rcases hy with rfl | rfl <;> norm_num [bumpInterior, firstInterior]

theorem fixedBumpFirst_hasDerivAt (x : ℝ) :
    HasDerivAt fixedBumpFirst (explicitSecondDerivative 1 x) x := by
  apply indicator_hasDerivAt (firstInterior_hasDerivAt 1)
  intro y hy
  rw [frontier_Icc (by norm_num : (-1 : ℝ) ≤ 1)] at hy
  rcases hy with rfl | rfl <;> norm_num [firstInterior, secondInterior]

theorem fixedBump_deriv : deriv fixedBump = fixedBumpFirst := by
  funext x
  exact (fixedBump_hasDerivAt x).deriv

theorem fixedBump_second_deriv : deriv (deriv fixedBump) = explicitSecondDerivative 1 := by
  rw [fixedBump_deriv]
  funext x
  exact (fixedBumpFirst_hasDerivAt x).deriv

theorem v_eq_fixed_differential (x : ℝ) :
    v x = (deriv (deriv fixedBump) x - fixedBump x / 4) /
      Real.sqrt (45056 / 1105 : ℝ) := by
  rw [fixedBump_second_deriv, fixedBump_eq_scaled]
  simp only [v, normalizedTest, dilationTest, sourceNormalization_one]

theorem v_contDiff : ContDiff ℝ 1 v := normalizedTest_contDiff 1 (by norm_num)

theorem v_hasCompactSupport : HasCompactSupport v :=
  normalizedTest_hasCompactSupport 1 (by norm_num)

theorem v_zero_of_one_le_abs (x : ℝ) (hx : 1 ≤ |x|) : v x = 0 :=
  normalizedTest_zero_of_le_abs 1 x (by norm_num) hx

theorem v_support_subset : Function.support v ⊆ Icc (-1 : ℝ) 1 := by
  intro x hx
  by_contra h
  have hxabs : 1 ≤ |x| := by
    simp only [mem_Icc, not_and_or, not_le] at h
    rcases h with h | h
    · exact le_trans (by linarith) (neg_le_abs x)
    · exact le_trans (by linarith) (le_abs_self x)
  exact hx (v_zero_of_one_le_abs x hxabs)

theorem v_even : Function.Even v := CorrelationSecondMoment.normalizedTest_even 1 le_rfl

theorem v_integrable : Integrable v volume := normalizedTest_integrable 1 (by norm_num)

theorem v_memLp_two : MemLp v 2 volume :=
  v_contDiff.continuous.memLp_of_hasCompactSupport v_hasCompactSupport

theorem v_square_integrable : Integrable (fun x ↦ v x ^ 2) volume :=
  normalized_square_integrable 1 le_rfl

theorem v_square_integral : (∫ x, v x ^ 2) = 1 := normalized_square_integral 1 le_rfl

theorem v_deriv_hasCompactSupport : HasCompactSupport (deriv v) := v_hasCompactSupport.deriv

theorem v_deriv_bounded : ∃ C : ℝ, ∀ x : ℝ, ‖deriv v x‖ ≤ C := by
  exact v_deriv_hasCompactSupport.exists_bound_of_continuous v_contDiff.continuous_deriv_one

theorem v_complex_eq_actual (x : ℝ) :
    (v x : ℂ) = (actualTest 1 x : ℂ) / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  simp only [v, normalizedTest, actualTest, sourceNormalization_one, Complex.ofReal_div]

theorem V_integrable (z : ℂ) :
    Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))) volume := by
  have h := (ZeroTransform.actual_integrable 1 (by norm_num) z).div_const
    (Real.sqrt (45056 / 1105 : ℝ) : ℂ)
  convert h using 1
  funext x
  rw [v_complex_eq_actual]
  ring

theorem V_eq_bilateral (z : ℂ) :
    V z = bilateralTransform 1 z / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  unfold V bilateralTransform
  rw [← integral_div]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [v_complex_eq_actual]
  ring

theorem V_eq_closed_formula (z : ℂ) (hz : z ≠ 0) :
    V z = dividedTransform 1 z / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  rw [V_eq_bilateral, ZeroTransform.actual_transform 1 (by norm_num) z hz]

theorem V_positive_pole_zero : V (1 / 2) = 0 := by
  rw [V_eq_bilateral, PoleCancellation.actual_positive_bilateral 1 le_rfl, zero_div]

theorem V_negative_pole_zero : V (-1 / 2) = 0 := by
  rw [V_eq_bilateral, PoleCancellation.actual_negative_bilateral 1 le_rfl, zero_div]


/-- The remaining analytic factor in the exact source formula; only z=0 is excluded. -/
def removedFilter (z : ℂ) : ℂ :=
  384 * (Complex.exp z * transformPolynomial z -
    Complex.exp (-z) * transformPolynomial (-z)) /
      (z ^ 9 * (Real.sqrt (45056 / 1105 : ℝ) : ℂ))

/-- The exact real coefficient of the simple zero at the positive pole. -/
def positivePoleSlope : ℝ :=
  12288 * (1001 * Real.exp (1 / 2) - 2721 * Real.exp (-1 / 2)) /
    Real.sqrt (45056 / 1105 : ℝ)

theorem V_eq_removedFilter (z : ℂ) (hz : z ≠ 0) :
    V z = (z ^ 2 - 1 / 4) * removedFilter z := by
  rw [V_eq_closed_formula z hz]
  norm_num [dividedTransform, removedFilter]
  ring

theorem removedFilter_differentiableAt (z : ℂ) (hz : z ≠ 0) :
    DifferentiableAt ℂ removedFilter z := by
  have hc : (Real.sqrt (45056 / 1105 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ) < 45056 / 1105)).ne'
  unfold removedFilter transformPolynomial
  fun_prop (disch := positivity)

theorem removedFilter_positive_pole : removedFilter (1 / 2) = (positivePoleSlope : ℂ) := by
  norm_num [removedFilter, positivePoleSlope, transformPolynomial,
    Complex.ofReal_div, Complex.ofReal_mul, Complex.ofReal_sub, Complex.ofReal_exp]
  ring

theorem positivePoleSlope_pos : 0 < positivePoleSlope := by
  have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 1) 11
  norm_num [Finset.sum_range_succ, Nat.factorial] at he
  have he' : (2721 : ℝ) < 1001 * Real.exp 1 := by linarith
  have hp : 0 < Real.exp (-1 / 2 : ℝ) := Real.exp_pos _
  have hexp : Real.exp (1 / 2 : ℝ) = Real.exp 1 * Real.exp (-1 / 2) := by
    rw [← Real.exp_add]
    norm_num
  have hd : 0 < 1001 * Real.exp (1 / 2 : ℝ) - 2721 * Real.exp (-1 / 2) := by
    rw [hexp]
    nlinarith [mul_pos (sub_pos.mpr he') hp]
  unfold positivePoleSlope
  positivity

theorem V_hasDerivAt_positive_pole :
    HasDerivAt V (positivePoleSlope : ℂ) (1 / 2) := by
  have hd := (removedFilter_differentiableAt (1 / 2) (by norm_num)).hasDerivAt
  have hpoly := ((hasDerivAt_id (1 / 2 : ℂ)).pow 2).sub_const (1 / 4)
  have hprod := hpoly.mul hd
  have h : HasDerivAt (fun z : ℂ ↦ (z ^ 2 - 1 / 4) * removedFilter z)
      (positivePoleSlope : ℂ) (1 / 2) := by
    convert hprod using 1 <;> first | rfl | norm_num [removedFilter_positive_pole]
  apply h.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds (by norm_num : (1 / 2 : ℂ) ≠ 0)] with z hz
  exact V_eq_removedFilter z hz

theorem V_deriv_positive_pole : deriv V (1 / 2) = (positivePoleSlope : ℂ) :=
  V_hasDerivAt_positive_pole.deriv

theorem V_deriv_positive_pole_ne_zero : deriv V (1 / 2) ≠ 0 := by
  rw [V_deriv_positive_pole]
  exact_mod_cast positivePoleSlope_pos.ne'


/-- Dividing by the removed simple zero has this genuine nonzero limiting value. -/
theorem V_removed_pole_limit :
    Filter.Tendsto (fun z : ℂ ↦ V z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (positivePoleSlope : ℂ)) := by
  have hs : slope V (1 / 2) = (fun z : ℂ ↦ V z / (z - 1 / 2)) := by
    funext z
    rw [slope_def_field, V_positive_pole_zero, sub_zero]
  rw [← hs]
  exact V_hasDerivAt_positive_pole.tendsto_slope

end
end FixedSourceFilterScratch

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

namespace FixedKernelMomentScratch

open MeasureTheory Set Real Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment FixedSourceKernelScratch

noncomputable section
local notation "v" => normalizedTest explicitSecondDerivative 1

private theorem weighted_translate (t r : ℝ) :
    Real.exp (r / 2) * v (t - 1 - r) =
      Real.exp ((t - 1) / 2) *
        (Real.exp ((-1 / 2 : ℝ) * (t - 1 - r)) * v (t - 1 - r)) := by
  rw [← mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- The full logarithmic Jacobian expression has genuine integrability. -/
theorem weighted_translated_integrable (t : ℝ) :
    Integrable (fun r : ℝ => Real.exp (r / 2) * v (t - 1 - r)) := by
  have hi := ((weighted_normalizedTest_integrable 1 (-1 / 2) le_rfl).comp_sub_left
    (t - 1)).const_mul (Real.exp ((t - 1) / 2))
  simpa only [weighted_translate] using hi

/-- The original negative half-exponential source moment cancels after translation. -/
theorem weighted_translated_integral_zero (t : ℝ) :
    (∫ r : ℝ, Real.exp (r / 2) * v (t - 1 - r)) = 0 := by
  simp_rw [weighted_translate]
  rw [integral_const_mul, integral_sub_left_eq_self
    (fun y : ℝ => Real.exp ((-1 / 2 : ℝ) * y) * v y) volume (t - 1),
    weighted_normalizedTest_integral_zero 1 (-1 / 2) le_rfl (by norm_num), mul_zero]

/-- For t≥2 the positive sampling integral is exactly zero, with its endpoint retained. -/
theorem logSample_integral_zero (t : ℝ) (ht : 2 ≤ t) :
    (∫ x in Ioi (1 : ℝ), logSample t x) = 0 := by
  have hchange := integral_comp_exp_Ioi (logSample t) 0
  simp only [smul_eq_mul, Real.exp_zero] at hchange
  rw [← hchange]
  simp_rw [logSample_exp]
  rw [setIntegral_eq_integral_of_forall_compl_eq_zero]
  · exact weighted_translated_integral_zero t
  · intro r hr
    have hrle : r ≤ 0 := le_of_not_gt hr
    have hy : 1 ≤ |t - 1 - r| := (by linarith : 1 ≤ t - 1 - r).trans (le_abs_self _)
    rw [normalizedTest_zero_of_le_abs 1 (t - 1 - r) (by norm_num) hy, mul_zero]

/-- Both convergence and the cancellation hold for the unchanged source sample. -/
theorem logSample_integrableOn_and_integral_zero (t : ℝ) (ht : 2 ≤ t) :
    IntegrableOn (logSample t) (Ioi 1) ∧
      (∫ x in Ioi (1 : ℝ), logSample t x) = 0 :=
  ⟨logSample_integrableOn t, logSample_integral_zero t ht⟩

end
end FixedKernelMomentScratch

namespace FixedKernelAdmissionScratch

open MeasureTheory Set Real Filter Finset
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernelScratch FixedKernelMomentScratch

noncomputable section

private theorem sample_prefix_eq (t : ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range N, logSample t (n + 1)) =
      ∑ n ∈ Finset.Icc 1 N, logSample t n := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, Finset.sum_Icc_succ_top (by omega), ih]
      simp only [Nat.cast_add, Nat.cast_one]

/-- The exact source moment and signed sampling error give genuine exponential decay. -/
theorem fixedKernel_abs_le (t : ℝ) (ht : 2 ≤ t) :
    |fixedKernel t| ≤ Real.exp ((1 - t) / 2) * derivativeBudget := by
  let N : ℕ := ⌊Real.exp t⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  have hNr : Real.exp t ≤ (N : ℝ) := by
    exact_mod_cast (Nat.lt_floor_add_one (Real.exp t)).le
  have hbound := SamplingError.abs_sum_sub_integral_Ioi_le (logSample t) N hN
    (fun x hx => (logSample_hasDerivAt t x (by linarith [hx.1])).differentiableAt)
    (logSample_integrableOn t) (logSample_deriv_integrableOn t)
    (fun x hx => logSample_zero_of_exp_le t x
      ((Real.exp_pos t).trans_le (hNr.trans hx)) (hNr.trans hx))
  rw [logSample_integral_zero t ht, sub_zero, ← sample_prefix_eq,
    ← fixedKernel_eq_sum t N hNr] at hbound
  exact hbound.trans (logSample_variation_le t)

private theorem tail_majorant_integrable :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Set.Ioi 2) := by
  have hi := (exp_neg_integrableOn_Ioi 2 (b := 1 / 2) (by norm_num)).const_mul
    (Real.exp (1 / 2) * derivativeBudget)
  change Integrable (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget)
    (volume.restrict (Set.Ioi 2))
  convert hi using 1
  funext t
  rw [show (1 - t) / 2 = (1 / 2 : ℝ) + -(1 / 2) * t by ring, Real.exp_add]
  ring

/-- The measurable tail of the fixed source kernel is absolutely integrable. -/
theorem fixedKernel_integrableOn_tail : IntegrableOn fixedKernel (Set.Ioi 2) := by
  refine tail_majorant_integrable.mono'
    fixedKernel_measurable.aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  simpa only [Real.norm_eq_abs] using fixedKernel_abs_le t ht.le

/-- The original causal half-line integral combines the finite initial interval and the tail. -/
theorem fixedKernel_integrableOn_Ioi : IntegrableOn fixedKernel (Set.Ioi 0) := by
  apply ((fixedKernel_integrableOn_Icc 0 2).union fixedKernel_integrableOn_tail).mono_set
  intro t ht
  by_cases h : t ≤ 2
  · exact Or.inl ⟨ht.le, h⟩
  · exact Or.inr (lt_of_not_ge h)

/-- The actual zero extension is genuinely integrable on the whole real axis. -/
theorem fixedKernel_integrable : Integrable fixedKernel := by
  have hzero : IntegrableOn fixedKernel (Set.Iic 0) := by
    have hz : IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Set.Iic 0) :=
      integrable_zero ℝ ℝ (volume.restrict (Set.Iic 0))
    exact hz.congr_fun (fun t ht => (fixedKernel_zero_of_nonpos t ht).symm) measurableSet_Iic
  have hi := hzero.union fixedKernel_integrableOn_Ioi
  simpa only [Set.Iic_union_Ioi, integrableOn_univ] using hi


private theorem fixedKernel_square_integrableOn_Icc (a b : ℝ) :
    IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Icc a b) := by
  let N : ℕ := ⌊Real.exp b⌋₊ + 1
  have hv := (normalizedTest_contDiff 1 (by norm_num)).continuous
  have hc : Continuous (fun t : ℝ => ∑ n ∈ Finset.range N, logSample t (n + 1)) := by
    apply continuous_finsetSum
    intro n _
    exact continuous_const.mul (hv.comp
      ((continuous_id.sub continuous_const).sub continuous_const))
  apply (hc.pow 2).integrableOn_Icc.congr_fun _ measurableSet_Icc
  intro t ht
  have hN : Real.exp t ≤ (N : ℝ) :=
    (Real.exp_le_exp.mpr ht.2).trans (by exact_mod_cast (Nat.lt_floor_add_one (Real.exp b)).le)
  change (∑ n ∈ Finset.range N, logSample t (n + 1)) ^ 2 = fixedKernel t ^ 2
  rw [fixedKernel_eq_sum t N hN]

private theorem fixedKernel_square_integrableOn_tail :
    IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Ioi 2) := by
  have hmaj : IntegrableOn (fun t : ℝ => Real.exp (1 - t) * derivativeBudget ^ 2)
      (Set.Ioi 2) := by
    have hi := (exp_neg_integrableOn_Ioi 2 (b := 1) (by norm_num)).const_mul
      (Real.exp 1 * derivativeBudget ^ 2)
    change Integrable _ (volume.restrict (Set.Ioi 2))
    convert hi using 1
    funext t
    rw [show 1 - t = 1 + -(1 : ℝ) * t by ring, Real.exp_add]
    ring
  refine hmaj.mono' (fixedKernel_measurable.pow_const 2).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  calc
    fixedKernel t ^ 2 = |fixedKernel t| ^ 2 := (sq_abs _).symm
    _ ≤ (Real.exp ((1 - t) / 2) * derivativeBudget) ^ 2 :=
      pow_le_pow_left₀ (abs_nonneg _) (fixedKernel_abs_le t ht.le) 2
    _ = Real.exp (1 - t) * derivativeBudget ^ 2 := by
      rw [mul_pow, ← Real.exp_nat_mul]
      congr 2
      norm_num
      ring

/-- The unchanged source kernel has a genuine square integral on the whole real axis. -/
theorem fixedKernel_square_integrable : Integrable (fun t => fixedKernel t ^ 2) := by
  have hpos : IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Ioi 0) := by
    apply ((fixedKernel_square_integrableOn_Icc 0 2).union
      fixedKernel_square_integrableOn_tail).mono_set
    intro t ht
    by_cases h : t ≤ 2
    · exact Or.inl ⟨ht.le, h⟩
    · exact Or.inr (lt_of_not_ge h)
  have hzero : IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Iic 0) := by
    have hz : IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Set.Iic 0) :=
      integrable_zero ℝ ℝ (volume.restrict (Set.Iic 0))
    apply hz.congr_fun _ measurableSet_Iic
    intro t ht
    change 0 = fixedKernel t ^ 2
    rw [fixedKernel_zero_of_nonpos t ht, zero_pow (by norm_num : (2 : ℕ) ≠ 0)]
  simpa only [Set.Iic_union_Ioi, integrableOn_univ] using hzero.union hpos

/-- The actual kernel is admitted to L², with no formal norm integral shortcut. -/
theorem fixedKernel_memLp_two : MemLp fixedKernel 2 volume :=
  (memLp_two_iff_integrable_sq fixedKernel_measurable.aestronglyMeasurable).2
    fixedKernel_square_integrable

end
end FixedKernelAdmissionScratch

set_option autoImplicit false
namespace FrozenSourceTransferScratch
open Filter Set FixedSourceFilterScratch
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- The pointwise transfer product, whose value at the zeta pole is not the repaired value. -/
def transferProduct (z : ℂ) : ℂ :=
  Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z

/-- The nonzero removed-pole value is obtained from the actual source's simple-zero slope. -/
def removedPoleValue : ℂ := Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ)

/-- Translation carries the source puncture to the zeta puncture. -/
theorem positive_pole_shift_tendsto :
    Tendsto (fun z : ℂ ↦ 1 / 2 + z) (𝓝[≠] (1 / 2)) (𝓝[≠] 1) := by
  apply tendsto_nhdsWithin_iff.mpr
  constructor
  · have h : Tendsto (fun z : ℂ ↦ (1 / 2 : ℂ) + z)
        (𝓝[≠] (1 / 2)) (𝓝 ((1 / 2 : ℂ) + 1 / 2)) :=
      tendsto_const_nhds.add (tendsto_id.mono_left nhdsWithin_le_nhds)
    convert h using 1
    norm_num
  · filter_upwards [self_mem_nhdsWithin] with z hz
    simp only [mem_compl_iff, mem_singleton_iff] at hz ⊢
    intro h
    apply hz
    linear_combination h

/-- The residue-one theorem is transported to the actual shifted source variable. -/
theorem shifted_zeta_residue :
    Tendsto (fun z : ℂ ↦ (z - 1 / 2) * riemannZeta (1 / 2 + z))
      (𝓝[≠] (1 / 2)) (𝓝 1) := by
  convert riemannZeta_residue_one.comp positive_pole_shift_tendsto using 1
  funext z
  simp only [Function.comp_apply]
  congr 1
  ring

/-- The actual product has a genuine punctured limit, using both source slope and zeta residue. -/
theorem transferProduct_removed_pole_limit :
    Tendsto transferProduct (𝓝[≠] (1 / 2)) (𝓝 removedPoleValue) := by
  have he : Tendsto (fun z : ℂ ↦ Complex.exp (-z))
      (𝓝[≠] (1 / 2)) (𝓝 (Complex.exp (-(1 / 2 : ℂ)))) :=
    (Complex.continuous_exp.comp continuous_neg).continuousAt.tendsto.mono_left
      nhdsWithin_le_nhds
  have hp := (he.mul shifted_zeta_residue).mul V_removed_pole_limit
  simp only [mul_one] at hp
  apply hp.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  have hz' : z - 1 / 2 ≠ 0 := sub_ne_zero.mpr hz
  unfold transferProduct
  rw [show V z / (z - 1 / 2) = V z * (z - 1 / 2)⁻¹ by rw [div_eq_mul_inv]]
  calc
    _ = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z *
        ((z - 1 / 2) * (z - 1 / 2)⁻¹) := by ring
    _ = _ := by rw [mul_inv_cancel₀ hz', mul_one]

/-- Repair exactly the source pole, leaving every other transfer-product value untouched. -/
def repairedTransfer : ℂ → ℂ := by
  classical
  exact Function.update transferProduct (1 / 2) removedPoleValue

/-- The repaired transfer has precisely the prescribed pole value. -/
theorem repairedTransfer_at_pole : repairedTransfer (1 / 2) = removedPoleValue := by
  classical
  simp [repairedTransfer]

/-- Away from the pole, the original complex product is retained verbatim. -/
theorem repairedTransfer_eq_product (z : ℂ) (hz : z ≠ 1 / 2) :
    repairedTransfer z = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := by
  classical
  simp only [repairedTransfer, Function.update_of_ne hz, transferProduct]

/-- The repaired value makes the actual transfer genuinely continuous at the removed pole. -/
theorem repairedTransfer_continuousAt_pole : ContinuousAt repairedTransfer (1 / 2) := by
  classical
  exact continuousAt_update_same.mpr transferProduct_removed_pole_limit

/-- The pole cancellation produces a nonzero value, rather than a retained artificial zero. -/
theorem removedPoleValue_ne_zero : removedPoleValue ≠ 0 := by
  apply mul_ne_zero (Complex.exp_ne_zero _)
  exact_mod_cast positivePoleSlope_pos.ne'

/-- In particular, the repaired transfer cannot vanish at the pole. -/
theorem repairedTransfer_pole_ne_zero : repairedTransfer (1 / 2) ≠ 0 := by
  rw [repairedTransfer_at_pole]
  exact removedPoleValue_ne_zero

/-- A genuine zeta zero away from its pole gives a zero of the repaired source transfer. -/
theorem repairedTransfer_zero_of_zeta_zero (ρ : ℂ) (hρ : riemannZeta ρ = 0)
    (hρ1 : ρ ≠ 1) : repairedTransfer (ρ - 1 / 2) = 0 := by
  have hz : ρ - 1 / 2 ≠ 1 / 2 := by
    intro h
    apply hρ1
    linear_combination h
  rw [repairedTransfer_eq_product _ hz]
  rw [show (1 / 2 : ℂ) + (ρ - 1 / 2) = ρ by ring, hρ]
  simp

/-- The unchanged nontrivial-zero predicate supplies all required zero and pole guards. -/
theorem repairedTransfer_zero_of_nontrivial (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) :
    repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_zeta_zero ρ hρ.1 hρ.2.2

/-- Every occurrence retains its own source zero, including every analytic multiplicity slot. -/
theorem repairedTransfer_zero_occurrence (o : ZeroObject.ZeroOccurrence) :
    repairedTransfer (ZeroObject.shiftedValue o) = 0 := by
  rw [repairedTransfer_eq_product _ (ZeroObject.shiftedValue_ne_half o)]
  rw [show (1 / 2 : ℂ) + ZeroObject.shiftedValue o = o.1.val by
    unfold ZeroObject.shiftedValue; ring, o.1.property.1]
  simp

/-- Any finite-valued replacement of zeta retains the source's zero at the pole. -/
theorem finite_factor_product_at_pole (E : ℂ → ℂ) :
    Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2) = 0 := by
  rw [V_positive_pole_zero, mul_zero]

/-- A continuous finite factor has zero product limit and cannot provide the repaired pole value. -/
theorem finite_factor_product_limit (E : ℂ → ℂ) (hE : ContinuousAt E (1 / 2)) :
    Tendsto (fun z : ℂ ↦ Complex.exp (-z) * E z * V z)
      (𝓝 (1 / 2)) (𝓝 0) := by
  have h := ((Complex.continuous_exp.comp continuous_neg).continuousAt.tendsto.mul
    hE.tendsto).mul V_hasDerivAt_positive_pole.continuousAt.tendsto
  simpa only [V_positive_pole_zero, mul_zero, Function.comp_apply] using h

/-- The entire discrepancy at the removed pole persists for every finite-valued factor. -/
theorem finite_factor_pole_discrepancy (E : ℂ → ℂ) :
    ‖repairedTransfer (1 / 2) -
      Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2)‖ =
      ‖removedPoleValue‖ := by
  rw [repairedTransfer_at_pole, finite_factor_product_at_pole, sub_zero]

end
end FrozenSourceTransferScratch

set_option autoImplicit false
namespace FixedKernelLaplaceScratch
open MeasureTheory Set Filter FixedSourceFilterScratch FixedSourceKernelScratch
open scoped Topology
noncomputable section

/-- The fixed source with its actual Laplace exponential. -/
def weightedSource (z : ℂ) (x : ℝ) : ℂ :=
  (v x : ℂ) * Complex.exp ((-z) * (x : ℂ))

/-- A single original integer sample in the Laplace integral. -/
def laplaceSample (z : ℂ) (n : ℕ) (t : ℝ) : ℂ :=
  (logSample t (n + 1) : ℂ) * Complex.exp ((-z) * (t : ℂ))

/-- The exact exponential translation coefficient, before identification with a Dirichlet weight. -/
def sampleCoefficient (z : ℂ) (n : ℕ) : ℂ :=
  (Real.exp (-Real.log (n + 1 : ℝ) / 2) : ℂ) *
    Complex.exp ((-z) * (1 + (Real.log (n + 1 : ℝ) : ℂ)))

/-- A genuine finite source norm integral used as a separated majorant. -/
def sourceNormIntegral (z : ℂ) : ℝ := ∫ x : ℝ, ‖weightedSource z x‖

/-- The actual fixed bilateral transform is even. -/
theorem V_even (z : ℂ) : V (-z) = V z := by
  unfold V
  rw [← integral_neg_eq_self (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))) volume]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [v_even, Complex.ofReal_neg]
  congr 2
  ring

/-- Every translated weighted source has a genuinely integrable complex value. -/
theorem weightedSource_integrable (z : ℂ) : Integrable (weightedSource z) :=
  V_integrable (-z)

/-- Translation separates the actual sample index from the source coordinate. -/
theorem laplaceSample_eq_translate (z : ℂ) (n : ℕ) (t : ℝ) :
    laplaceSample z n t = sampleCoefficient z n *
      weightedSource z (t - (1 + Real.log (n + 1 : ℝ))) := by
  have ht : (-z) * (t : ℂ) =
      (-z) * (1 + (Real.log (n + 1 : ℝ) : ℂ)) +
        (-z) * ((t - (1 + Real.log (n + 1 : ℝ)) : ℝ) : ℂ) := by
    push_cast
    ring
  unfold laplaceSample logSample sampleCoefficient weightedSource
  rw [Complex.ofReal_mul, ht, Complex.exp_add]
  rw [show t - 1 - Real.log (n + 1 : ℝ) = t - (1 + Real.log (n + 1 : ℝ)) by ring]
  unfold FixedSourceFilterScratch.v
  ring

/-- No improper integral is used before individual sample admission. -/
theorem laplaceSample_integrable (z : ℂ) (n : ℕ) : Integrable (laplaceSample z n) := by
  have he : laplaceSample z n = fun t ↦ sampleCoefficient z n *
      weightedSource z (t - (1 + Real.log (n + 1 : ℝ))) :=
    funext (laplaceSample_eq_translate z n)
  rw [he]
  exact ((weightedSource_integrable z).comp_sub_right (1 + Real.log (n + 1 : ℝ))).const_mul _

/-- The complex sample vanishes on the complement of the original positive time domain. -/
theorem laplaceSample_zero_of_nonpos (z : ℂ) (n : ℕ) (t : ℝ) (ht : t ≤ 0) :
    laplaceSample z n t = 0 := by
  have hl : 0 ≤ Real.log (n + 1 : ℝ) := Real.log_nonneg (by have := Nat.cast_nonneg (α := ℝ) n; linarith)
  rw [laplaceSample, logSample_zero_of_time_le_log t _ (by linarith), Complex.ofReal_zero, zero_mul]

/-- The original half-line integral equals the full-line translated integral, with zero extension proved. -/
theorem laplaceSample_integral_Ioi (z : ℂ) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, laplaceSample z n t) = sampleCoefficient z n * V z := by
  rw [setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ)) (fun t ht ↦
    laplaceSample_zero_of_nonpos z n t (le_of_not_gt ht))]
  simp_rw [laplaceSample_eq_translate]
  rw [integral_const_mul, integral_sub_right_eq_self]
  change sampleCoefficient z n * V (-z) = _
  rw [V_even]

/-- The source norm integral is nonnegative. -/
theorem sourceNormIntegral_nonneg (z : ℂ) : 0 ≤ sourceNormIntegral z :=
  integral_nonneg (fun _ ↦ norm_nonneg _)

/-- The exact norm-integral formula retains the complete positive-time sample. -/
theorem laplaceSample_norm_integral_Ioi (z : ℂ) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, ‖laplaceSample z n t‖) =
      ‖sampleCoefficient z n‖ * sourceNormIntegral z := by
  rw [setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ)) (fun t ht ↦ by
    rw [laplaceSample_zero_of_nonpos z n t (le_of_not_gt ht), norm_zero])]
  simp_rw [laplaceSample_eq_translate, norm_mul]
  rw [integral_const_mul, integral_sub_right_eq_self (fun x : ℝ ↦ ‖weightedSource z x‖)
    (1 + Real.log (n + 1 : ℝ))]
  rfl

/-- Exact Dirichlet decay of the sample coefficient. -/
theorem sampleCoefficient_norm (z : ℂ) (n : ℕ) :
    ‖sampleCoefficient z n‖ = Real.exp (-z.re) *
      (1 / (n + 1 : ℝ) ^ (z.re + 1 / 2)) := by
  rw [sampleCoefficient, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (Real.exp_pos _), Complex.norm_exp]
  simp only [Complex.mul_re, Complex.neg_re, Complex.add_re, Complex.one_re,
    Complex.ofReal_re, Complex.neg_im, Complex.add_im, Complex.one_im,
    Complex.ofReal_im, add_zero, mul_zero, sub_zero]
  rw [Real.rpow_def_of_pos (by positivity : (0 : ℝ) < n + 1), one_div, ← Real.exp_neg,
    ← Real.exp_add, ← Real.exp_add]
  congr 1
  ring

/-- Summability of the L1 norms is proved before any infinite integral interchange. -/
theorem laplaceSample_norm_integrals_summable (z : ℂ) (hz : 1 / 2 < z.re) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖laplaceSample z n t‖) := by
  have hs := (Real.summable_one_div_nat_add_rpow 1 (z.re + 1 / 2)).mpr (by linarith)
  have hn : Summable (fun n : ℕ ↦ 1 / (n + 1 : ℝ) ^ (z.re + 1 / 2)) := by
    convert hs using 1
    funext n
    rw [abs_of_nonneg (by positivity : (0 : ℝ) ≤ (n : ℝ) + 1)]
  simp_rw [laplaceSample_norm_integral_Ioi, sampleCoefficient_norm]
  exact (hn.mul_left (Real.exp (-z.re))).mul_right (sourceNormIntegral z)

/-- The separated coefficient is exactly the original complex Dirichlet-series weight. -/
theorem sampleCoefficient_eq_cpow (z : ℂ) (n : ℕ) :
    sampleCoefficient z n = Complex.exp (-z) * (1 / (n + 1 : ℂ) ^ (1 / 2 + z)) := by
  have hn : (n + 1 : ℂ) ≠ 0 := by
    exact_mod_cast (show (n + 1 : ℕ) ≠ 0 by omega)
  have hl : Complex.log (n + 1 : ℂ) = (Real.log (n + 1 : ℝ) : ℂ) := by
    rw [Complex.ofReal_log (by positivity : (0 : ℝ) ≤ n + 1)]
    push_cast
    rfl
  rw [sampleCoefficient, Complex.ofReal_exp, Complex.cpow_def_of_ne_zero hn, hl,
    one_div, ← Complex.exp_neg, ← Complex.exp_add, ← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- The complete infinite sample sum is the unchanged real source kernel with its exponential. -/
theorem laplaceSample_tsum (z : ℂ) (t : ℝ) :
    (∑' n : ℕ, laplaceSample z n t) =
      (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ)) := by
  simp only [laplaceSample, tsum_mul_right, fixedKernel, Complex.ofReal_tsum]

/-- Actual L1 source admission gives a genuine Laplace integral on the closed right half-plane. -/
theorem fixedKernel_laplace_integrable (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun t : ℝ ↦ (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) (Ioi 0) := by
  have hk : IntegrableOn (fun t : ℝ ↦ (fixedKernel t : ℂ)) (Ioi 0) :=
    FixedKernelAdmissionScratch.fixedKernel_integrableOn_Ioi.ofReal
  apply hk.mul_bdd
    ((Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).aestronglyMeasurable)
    (c := 1)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  change ‖Complex.exp ((-z) * (t : ℂ))‖ ≤ 1
  rw [Complex.norm_exp]
  apply Real.exp_le_one_iff.mpr
  simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
    Complex.neg_im, Complex.ofReal_im, mul_zero, sub_zero]
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hz) (le_of_lt ht)

/-- Summable source L1 norms justify the complete Laplace interchange in the Dirichlet half-plane. -/
theorem fixedKernel_laplace_eq_transferProduct (z : ℂ) (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := by
  have hi (n : ℕ) : IntegrableOn (laplaceSample z n) (Ioi 0) :=
    (laplaceSample_integrable z n).integrableOn
  calc
    _ = ∫ t : ℝ in Ioi 0, ∑' n : ℕ, laplaceSample z n t := by
      apply integral_congr_ae
      filter_upwards [] with t
      exact (laplaceSample_tsum z t).symm
    _ = ∑' n : ℕ, ∫ t : ℝ in Ioi 0, laplaceSample z n t :=
      (integral_tsum_of_summable_integral_norm hi (laplaceSample_norm_integrals_summable z hz)).symm
    _ = _ := by
      simp_rw [laplaceSample_integral_Ioi, sampleCoefficient_eq_cpow]
      rw [tsum_mul_right, tsum_mul_left,
        ← zeta_eq_tsum_one_div_nat_add_one_cpow (s := 1 / 2 + z) (by
          simp only [Complex.add_re, Complex.div_ofNat_re, Complex.one_re]
          linarith)]

/-- The admitted actual integral agrees with the repaired source transfer in its initial half-plane. -/
theorem fixedKernel_laplace_eq_repairedTransfer (z : ℂ) (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      FrozenSourceTransferScratch.repairedTransfer z := by
  rw [FrozenSourceTransferScratch.repairedTransfer_eq_product z (by
    intro h
    have hr := congrArg Complex.re h
    simp only [Complex.div_ofNat_re, Complex.one_re] at hr
    linarith)]
  exact fixedKernel_laplace_eq_transferProduct z hz

end
end FixedKernelLaplaceScratch
```
