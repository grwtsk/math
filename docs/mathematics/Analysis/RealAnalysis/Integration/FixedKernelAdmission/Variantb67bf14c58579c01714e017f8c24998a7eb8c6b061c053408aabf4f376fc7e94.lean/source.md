# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelAdmission.Variantb67bf14c58579c01714e017f8c24998a7eb8c6b061c053408aabf4f376fc7e94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03c441f005af8f9818e8bcb2d0783d4a5f5691bb` · SHA-256 `e4a0a4823aa6ccec3781950b3db95a379f7c22dda9e951a9c56cd1e780aea742`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogSample.Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogSample.Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16","mathematical_subject":"Analysis.Integration","original_sha256":"f84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/FixedKernelAdmission.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.MeasureTheory.Function.L2Space
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import FormalResearch.RiemannHypothesis.SourceComparison.SamplingError
import FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport


namespace GRWTSK.Analysis.RealAnalysis.Integration.LogSample.Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16

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
```
