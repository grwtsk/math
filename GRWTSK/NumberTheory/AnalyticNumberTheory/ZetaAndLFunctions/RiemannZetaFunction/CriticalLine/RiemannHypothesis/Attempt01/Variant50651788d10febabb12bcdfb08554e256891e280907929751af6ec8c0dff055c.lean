import Zeta23.FromPNTPlus.MediumPNT
import SourceActualXiErrorCriticalCovariance
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.MeasureTheory.Integral.Asymptotics

/-!
The genuine actual prime-number theorem controls the actual relative psi
error on logarithmic time. Closed prime powers remain in psi. This source
proves ordinary decay and genuine positive-time L1, without inferring a
critical exponential rate or a signed covariance bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay
open MeasureTheory Set Filter Asymptotics
open scoped Interval
open SourceMangoldtAbel SourceActualXiErrorConvolution SourceActualXiErrorCriticalCovariance
noncomputable section

/-- The literal actual relative Chebyshev discrepancy on logarithmic time. -/
def actualRelativePsiTimeError (t : ℝ) : ℝ :=
  (Chebyshev.psi (Real.exp t) - Real.exp t) * Real.exp (-t)

/-- A closed finite Abel readout retains the actual zero/unit normalization. -/
theorem actualRelativePsiTimeError_eq_one_convolution {t : ℝ} (ht : 0 ≤ t) :
    actualRelativePsiTimeError t = actualCenteredMangoldtLogError t -
      actualMangoldtErrorConvolution 1 t -
        (Real.eulerMascheroniConstant + 1) * Real.exp (-t) := by
  have h := actualNormalizedMangoldtExpReadout_eq_convolution (by norm_num : (1 : ℝ) ≠ 0) ht
  rw [actualNormalizedMangoldtExpReadout_one ht] at h
  have hx : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  simp only [one_div, inv_one, one_mul, neg_mul] at h
  unfold actualRelativePsiTimeError
  calc
    _ = Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1 := by rw [sub_mul, hx]; ring
    _ = _ := by linarith

/-- Actual closed prime jumps cause no loss of local L1 on finite time intervals. -/
theorem actualRelativePsiTimeError_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualRelativePsiTimeError volume 0 b := by
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using
      mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have hf : IntervalIntegrable actualCenteredMangoldtLogError volume 0 b :=
    he.add intervalIntegrable_const
  have hq := actualMangoldtErrorConvolution_absolutelyContinuous 1 hb
  have hiq : IntervalIntegrable (actualMangoldtErrorConvolution 1) volume 0 b :=
    hq.continuousOn.intervalIntegrable
  have hiex : IntervalIntegrable
      (fun t : ℝ => (Real.eulerMascheroniConstant + 1) * Real.exp (-t)) volume 0 b :=
    (by fun_prop : Continuous
      (fun t : ℝ => (Real.eulerMascheroniConstant + 1) * Real.exp (-t))).intervalIntegrable _ _
  apply ((hf.sub hiq).sub hiex).congr
  filter_upwards with t ht
  exact (actualRelativePsiTimeError_eq_one_convolution (by
    simpa only [uIcc_of_le hb, mem_Icc] using ht)).symm

/-- The freshly replayed actual PNT supplies a genuine subexponential time majorant. -/
theorem actualRelativePsiTimeError_isBigO :
    ∃ c > 0, actualRelativePsiTimeError =O[atTop]
      fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := MediumPNT
  refine ⟨c, hc, ?_⟩
  obtain ⟨C, hC⟩ := isBigO_iff.mp (hp.comp_tendsto Real.tendsto_exp_atTop)
  apply isBigO_iff.mpr
  refine ⟨C, ?_⟩
  filter_upwards [hC] with t ht
  simp only [Function.comp_def, Pi.sub_apply, id_eq, Real.norm_eq_abs, abs_mul,
    Real.abs_exp, Real.log_exp] at ht
  have hx : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  simp only [actualRelativePsiTimeError, Real.norm_eq_abs, abs_mul, Real.abs_exp]
  calc
    _ ≤ (C * (Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)))) * Real.exp (-t) :=
      mul_le_mul_of_nonneg_right ht (Real.exp_pos _).le
    _ = C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by nlinarith [hx]

/-- The actual relative psi error tends to zero; this gives no critical half-plane rate. -/
theorem actualRelativePsiTimeError_tendsto_zero :
    Tendsto actualRelativePsiTimeError atTop (𝓝 0) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  have hpow : Tendsto (fun t : ℝ => t ^ ((1 : ℝ) / 10)) atTop atTop :=
    Real.tendsto_rpow_atTop (by norm_num)
  have hex : Tendsto (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop (𝓝 0) := by
    exact Real.tendsto_exp_atBot.comp (hpow.const_mul_atBot (by linarith))
  exact hp.trans_tendsto hex

/-- Actual local L1 plus the PNT majorant gives a genuine full positive-time integral. -/
theorem actualRelativePsiTimeError_integrableOn :
    IntegrableOn actualRelativePsiTimeError (Ici 0) := by
  have hloc : LocallyIntegrableOn actualRelativePsiTimeError (Ici 0) := by
    intro x hx
    refine ⟨Icc 0 (x + 1), ?_, ?_⟩
    · rw [Icc_eq_Ici_inter_Iic]
      exact inter_mem self_mem_nhdsWithin
        (mem_nhdsWithin_of_mem_nhds (Iic_mem_nhds (by linarith)))
    · exact (intervalIntegrable_iff_integrableOn_Icc_of_le (by linarith)).mp
        (actualRelativePsiTimeError_intervalIntegrable (by linarith))
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  have hex : IntegrableOn (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) (Ioi 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      Real.integrableOn_rpow_mul_exp_neg_mul_rpow (by norm_num : (-1 : ℝ) < 0)
        (by norm_num : (0 : ℝ) < 1 / 10) hc
  have hexTop : IntegrableAtFilter
      (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop volume :=
    ⟨Ioi 0, Ioi_mem_atTop 0, hex⟩
  exact hloc.integrableOn_of_isBigO_atTop hp hexTop

end
end FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay
