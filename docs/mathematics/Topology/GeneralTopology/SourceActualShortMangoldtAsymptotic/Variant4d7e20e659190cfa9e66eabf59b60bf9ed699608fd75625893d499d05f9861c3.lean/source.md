# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualShortMangoldtAsymptotic.Variant4d7e20e659190cfa9e66eabf59b60bf9ed699608fd75625893d499d05f9861c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd98eafbd7046d8c64d8738292f1b7ae5c0bea06` · SHA-256 `039276ec31a688a3b63598750d9c15a718533014c5e5319d23526c7e77c48168`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualCenteredMangoldtLogErrorIntegrableOn.Variante102ce83bede2353f2cbbf0ac38f9289c3ada2476b39439af285d03ebcf69df4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e102ce83bede2353f2cbbf0ac38f9289c3ada2476b39439af285d03ebcf69df4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualCenteredMangoldtLogErrorIntegrableOn.Variante102ce83bede2353f2cbbf0ac38f9289c3ada2476b39439af285d03ebcf69df4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e102ce83bede2353f2cbbf0ac38f9289c3ada2476b39439af285d03ebcf69df4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/SourceActualShortMangoldtAsymptotic-Native01/SourceActualShortMangoldtAsymptotic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualShortMangoldtBlock
import SourceActualMertensPntRate

/-!
The literal short Mangoldt block has asymptotic mass twice the real radius.
Actual PNT and the authentic gamma calibration make the genuine centered
error integrable; its finite causal convolutions vanish by dominated
convergence. Every closed short prime-power atom and the original source
correlation are retained. No estimate for the complete signed long block or
uniform residual is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.ActualCenteredMangoldtLogErrorIntegrableOn.Variante102ce83bede2353f2cbbf0ac38f9289c3ada2476b39439af285d03ebcf69df4

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualShortMangoldtAsymptotic
open MeasureTheory Set Filter Asymptotics ArithmeticFunction
open scoped Interval Topology
open SourceActualShortMangoldtBlock SourceActualMertensPntRate
open SourceActualMertensGammaCalibration SourceActualPsiPntTimeDecay
open SourceActualXiErrorConvolution SourceMangoldtAbel SourceFiveCancelledFactorialBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimatePrimeSmoothDefect EstimateMobiusSplit
noncomputable section

/-- Genuine actual PNT gives full positive-time L1 for the centered error. -/
theorem actualCenteredMangoldtLogError_integrableOn :
    IntegrableOn actualCenteredMangoldtLogError (Ici 0) := by
  have hloc : LocallyIntegrableOn actualCenteredMangoldtLogError (Ici 0) := by
    intro x hx
    have hx0 : 0 ≤ x := hx
    refine ⟨Icc 0 (x + 1), ?_, ?_⟩
    · change Ici 0 ∩ Iic (x + 1) ∈ nhdsWithin x (Ici 0)
      exact inter_mem self_mem_nhdsWithin
        (mem_nhdsWithin_of_mem_nhds (Iic_mem_nhds (by linarith)))
    · have he : IntervalIntegrable mangoldtLogError volume 0 (x + 1) := by
        simpa only [deriv_id, mul_one] using
          mangoldtLogError_mul_deriv_intervalIntegrable 0 (x + 1) (by linarith)
            id (by fun_prop)
      exact (intervalIntegrable_iff_integrableOn_Icc_of_le (by linarith)).mp
        (he.add intervalIntegrable_const)
  obtain ⟨c, hc, hp⟩ := actualCenteredMangoldtLogError_isBigO
  have hex := actualPntHalfRate_integrable (show 0 < 2 * c by positivity)
  have hex' : IntegrableOn (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10)))
      (Ioi 0) := by convert hex using 1 <;> ring
  have hexTop : IntegrableAtFilter
      (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop volume :=
    ⟨Ioi 0, Ioi_mem_atTop 0, hex'⟩
  exact hloc.integrableOn_of_isBigO_atTop hp hexTop

private def causalErrorKernel (lam T r : ℝ) : ℝ :=
  (Iic T).indicator (fun r =>
    actualCenteredMangoldtLogError r * Real.exp (lam * (r - T))) r

private theorem causalErrorKernel_measurable (lam T : ℝ) :
    AEStronglyMeasurable (causalErrorKernel lam T) (volume.restrict (Ioi 0)) := by
  have hG := actualCenteredMangoldtLogError_integrableOn.mono_set Ioi_subset_Ici_self
  exact (hG.aestronglyMeasurable.mul
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (lam * (r - T)))).aestronglyMeasurable)
      .indicator measurableSet_Iic

private theorem causalErrorKernel_norm_le {lam : ℝ} (hlam : 0 < lam) (T r : ℝ) :
    ‖causalErrorKernel lam T r‖ ≤ |actualCenteredMangoldtLogError r| := by
  unfold causalErrorKernel
  by_cases hr : r ≤ T
  · rw [indicator_of_mem hr, Real.norm_eq_abs, abs_mul, Real.abs_exp]
    exact mul_le_of_le_one_right (abs_nonneg _)
      (Real.exp_le_one_iff.mpr (mul_nonpos_of_nonneg_of_nonpos hlam.le (by linarith)))
  · rw [indicator_of_notMem hr, norm_zero]
    exact abs_nonneg _

private theorem causalErrorKernel_tendsto_zero {lam : ℝ} (hlam : 0 < lam) (r : ℝ) :
    Tendsto (fun T => causalErrorKernel lam T r) atTop (𝓝 0) := by
  have he : Tendsto (fun T : ℝ => Real.exp (-lam * T)) atTop (𝓝 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 lam hlam
  have hh := he.const_mul (actualCenteredMangoldtLogError r * Real.exp (lam * r))
  simp only [mul_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop r] with T hT
  unfold causalErrorKernel
  rw [indicator_of_mem hT, show lam * (r - T) = lam * r + -lam * T by ring,
    Real.exp_add]
  ring

/-- Every fixed positive damping has genuine actual causal error limit zero. -/
theorem actualMangoldtErrorConvolution_tendsto_zero {lam : ℝ} (hlam : 0 < lam) :
    Tendsto (actualMangoldtErrorConvolution lam) atTop (𝓝 0) := by
  have hG := actualCenteredMangoldtLogError_integrableOn.mono_set Ioi_subset_Ici_self
  have hh := tendsto_integral_filter_of_dominated_convergence
    (μ := volume.restrict (Ioi 0)) (F := causalErrorKernel lam) (f := fun _ => (0 : ℝ))
    (fun r => |actualCenteredMangoldtLogError r|)
    (Eventually.of_forall (causalErrorKernel_measurable lam))
    (Eventually.of_forall (fun T => ae_of_all _ (causalErrorKernel_norm_le hlam T)))
    hG.norm (ae_of_all _ (causalErrorKernel_tendsto_zero hlam))
  simp only [integral_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with T hT
  unfold causalErrorKernel
  rw [integral_indicator measurableSet_Iic, Measure.restrict_restrict measurableSet_Iic,
    inter_comm, Ioi_inter_Iic, ← intervalIntegral.integral_of_le hT]
  rfl

/-- The actual full closed exponential readout tends to its literal main mass. -/
theorem actualNormalizedMangoldtExpReadout_tendsto_inv {lam : ℝ} (hlam : 0 < lam) :
    Tendsto (actualNormalizedMangoldtExpReadout lam) atTop (𝓝 (1 / lam)) := by
  have he : Tendsto (fun T : ℝ => Real.exp (-lam * T)) atTop (𝓝 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 lam hlam
  have hh := ((actualCenteredMangoldtLogError_tendsto_zero.add_const (1 / lam)).sub
    ((actualMangoldtErrorConvolution_tendsto_zero hlam).const_mul lam)).sub
      (he.const_mul (Real.eulerMascheroniConstant + 1 / lam))
  simp only [zero_add, mul_zero, sub_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with T hT
  exact (actualNormalizedMangoldtExpReadout_eq_convolution hlam.ne' hT).symm

/-- The complete closed half-weighted Mangoldt prefix at A squared is asymptotic to 2A. -/
theorem actualHalfMangoldtPrefix_square_normalized_tendsto_two :
    Tendsto (fun A : ℝ => actualMangoldtHalfClosedPrefix (2 * Real.log A) / A)
      atTop (𝓝 2) := by
  have ht : Tendsto (fun A : ℝ => 2 * Real.log A) atTop atTop :=
    Real.tendsto_log_atTop.const_mul_atTop (by norm_num)
  have hh := (actualNormalizedMangoldtExpReadout_tendsto_inv
    (by norm_num : (0 : ℝ) < 1 / 2)).comp ht
  norm_num at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hp : 0 < A := by linarith
  have hT : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  rw [actualNormalizedMangoldtExpReadout_half hT]
  rw [show -(2 * Real.log A) / 2 = -Real.log A by ring,
    Real.exp_neg, Real.exp_log hp]
  ring

private theorem halfPrefix_square_eq_sum {A : ℝ} (hA : 1 ≤ A) :
    actualMangoldtHalfClosedPrefix (2 * Real.log A) =
      ∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) := by
  have hp : 0 < A := by linarith
  have hex : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hp]
    ring
  have hU := vaughanCutoff_pos A hA
  have hI : Finset.Ioc 0 (vaughanCutoff A) =
      insert 1 (Finset.Icc 2 (vaughanCutoff A)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_insert, Finset.mem_Icc]
    omega
  unfold actualMangoldtHalfClosedPrefix
  rw [hex, show Nat.floor (A ^ 2) = vaughanCutoff A from rfl, hI]
  simp

/-- Actual curvature controls the whole short-weight replacement before any asymptotic use. -/
theorem actualShortMangoldtBlock_sub_halfPrefix_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A)| ≤
      (160 * Real.sqrt A / A ^ 2) * actualMangoldtHalfClosedPrefix (2 * Real.log A) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hU1 : (1 : ℝ) ≤ vaughanCutoff A := by
    exact_mod_cast vaughanCutoff_pos A hA1
  have hlogU := RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  rw [halfPrefix_square_eq_sum hA1]
  unfold actualShortMangoldtBlock
  rw [← Finset.sum_sub_distrib, Finset.mul_sum]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
  intro n hn
  have hn2 := (Finset.mem_Icc.mp hn).1
  have hn0 : 0 < n := by omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
  have hln := Real.log_nonneg hn1
  have hlu := Real.log_nonneg hU1
  have hle : Real.log (n : ℝ) ≤ Real.log (vaughanCutoff A : ℝ) :=
    Real.log_le_log hnR (by exact_mod_cast (Finset.mem_Icc.mp hn).2)
  have hlogs : (Real.log (n : ℝ)) ^ 2 ≤
      (Real.log (vaughanCutoff A : ℝ)) ^ 2 := by nlinarith
  have hc := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A)
    (Real.log (n : ℝ))
  have hcn : |sourceCorrelation explicitSecondDerivative A (Real.log n) - 1| ≤
      160 * Real.sqrt A / A ^ 2 := by
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (Real.log (n : ℝ)) ^ 2 := hc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (64 * Real.sqrt A) := by
        exact mul_le_mul_of_nonneg_left (hlogs.trans hlogU) (by positivity)
      _ = _ := by ring
  have hw : vonMangoldt n * closedPrimeWeight A n -
      vonMangoldt n / Real.sqrt (n : ℝ) =
      (vonMangoldt n / Real.sqrt (n : ℝ)) *
        (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1) := by
    unfold closedPrimeWeight
    rw [exponentialTest_log _ _ hn0]
    ring
  rw [hw, abs_mul, abs_of_nonneg (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _))]
  calc
    _ ≤ (vonMangoldt n / Real.sqrt (n : ℝ)) * (160 * Real.sqrt A / A ^ 2) :=
      mul_le_mul_of_nonneg_left hcn (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _))
    _ = _ := by ring

/-- The original actual short source, without renormalizing its arithmetic row, has mass 2A. -/
theorem actualShortMangoldtBlock_normalized_tendsto_two :
    Tendsto (fun A : ℝ => actualShortMangoldtBlock A / A) atTop (𝓝 2) := by
  have hhalf := actualHalfMangoldtPrefix_square_normalized_tendsto_two
  have hsmall : Tendsto (fun A : ℝ => 160 * Real.sqrt A / A ^ 2) atTop (𝓝 0) := by
    have hh := Real.tendsto_sqrt_atTop.inv_tendsto_atTop
    have h0 : Tendsto (fun A : ℝ => (Real.sqrt A)⁻¹) atTop (𝓝 0) := hh
    apply squeeze_zero' (Eventually.of_forall (fun A => by positivity))
      ?_ (h0.const_mul 160)
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hp : 0 < A := by linarith
    have hs := Real.sq_sqrt hp.le
    have hsp := Real.sqrt_pos.mpr hp
    rw [div_le_iff₀ (by positivity : 0 < A ^ 2)]
    apply (le_mul_inv_iff₀ hsp).mp
    nlinarith
  have hbound := hsmall.mul hhalf
  simp only [zero_mul] at hbound
  have hd : Tendsto (fun A : ℝ => actualShortMangoldtBlock A / A -
      actualMangoldtHalfClosedPrefix (2 * Real.log A) / A) atTop (𝓝 0) := by
    apply squeeze_zero_norm' ?_ hbound
    filter_upwards [eventually_ge_atTop (25600 : ℝ)] with A hA
    have hp : 0 < A := by linarith
    rw [← sub_div, Real.norm_eq_abs, abs_div, abs_of_pos hp]
    exact (div_le_div_of_nonneg_right
      (actualShortMangoldtBlock_sub_halfPrefix_abs_le hA) hp.le).trans_eq (by ring)
  have hh := hd.add hhalf
  simp only [zero_add] at hh
  apply hh.congr'
  exact Eventually.of_forall (fun A => by ring)

end
end FormalResearch.RiemannHypothesis.SourceActualShortMangoldtAsymptotic
```
