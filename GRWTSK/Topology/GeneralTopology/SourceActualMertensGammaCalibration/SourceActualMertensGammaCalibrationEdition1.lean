import SourceActualMertensOrdinaryLimit
import SourceActualXiMellinAtOne

/-!
The actual PNT and the genuine pole-one value identify the ordinary signed
Mertens-error center. The full closed-seven, unit, and prescribed gamma
heads are retained. Ordinary centering supplies no critical signed bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMertensGammaCalibration

open MeasureTheory Set Filter Complex ArithmeticFunction
open scoped Interval Topology
open SourceMangoldtAbel WeightedPrimeMertens RH16ActualPsiNegativeBlock
open SourceActualMertensOrdinaryLimit SourceActualXiPntAtOne SourceActualXiMellinAtOne
open SourceActualXiMellinSeven SourceActualXiSevenPoleCancellation
open SourceActualXiErrorConvolution

noncomputable section

/-- The complete closed-seven head equals the literal weighted prefix. -/
theorem actualClosedMangoldtMellinHeadSeven_at_one :
    actualClosedMangoldtMellinHeadSeven 1 =
      ((mangoldtLogError (Real.log 7) + Real.log 7 : ℝ) : ℂ) := by
  have hh : actualClosedMangoldtMellinHeadSeven 1 =
      ((∑ n ∈ Finset.Icc 0 7, (vonMangoldt n : ℝ) / (n : ℝ) : ℝ) : ℂ) := by
    unfold actualClosedMangoldtMellinHeadSeven
    rw [ofReal_sum]
    apply Finset.sum_congr rfl
    intro n _
    rw [cpow_neg_one]
    simp only [ofReal_div, ofReal_natCast, div_eq_mul_inv]
  have he : mangoldtLogError (Real.log 7) + Real.log 7 =
      ∑ n ∈ Finset.Ioc 0 7, (vonMangoldt n : ℝ) / (n : ℝ) := by
    simp only [mangoldtLogError, mangoldtLogPrefix, weightedMangoldt,
      Real.exp_log (by norm_num : (0 : ℝ) < 7), Nat.floor_ofNat, sub_add_cancel]
  rw [hh, he, ← Finset.Ioc_insert_left (by norm_num : (0 : ℕ) ≤ 7),
    Finset.sum_insert (by simp : (0 : ℕ) ∉ Finset.Ioc 0 7)]
  simp

/-- Full signed time integrability retains the exact finite lower-seven contribution. -/
theorem actualXiInverseSquarePhysical_integral_eq_mertensLimit :
    (∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2) =
      actualPntMertensLimit - mangoldtLogError (Real.log 7) - 1 +
        (Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / 7 := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hd0 := SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_integrableOn.mono_set
    (Ioi_subset_Ici_self : Ioi (0 : ℝ) ⊆ Ici 0)
  have hda := hd0.mono_set (Ioi_subset_Ioi ha)
  have he := (integrableOn_exp_neg_Ioi (Real.log (7 : ℝ))).const_mul
    (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))
  have hs := intervalIntegral.integral_Ioi_sub_Ioi hd0 ha
  have hf := mangoldtLogError_eq_pnt_relative_primitive ha
  have hdelta : SourceActualPsiPntTimeDecay.actualRelativePsiTimeError (Real.log 7) =
      Chebyshev.psi 7 / 7 - 1 := by
    simp only [SourceActualPsiPntTimeDecay.actualRelativePsiTimeError,
      Real.exp_log (by norm_num : (0 : ℝ) < 7), Real.exp_neg]
    ring
  have hx : Real.exp (-Real.log (7 : ℝ)) = 1 / 7 := by
    rw [Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
    norm_num
  rw [actualXiInverseSquarePhysical_integral_eq_time]
  rw [setIntegral_congr_fun measurableSet_Ioi
    (fun t _ => actualXiInverseSquareTimeDensity_eq_relative t)]
  rw [integral_add hda he, integral_const_mul, integral_exp_neg_Ioi, hx]
  rw [hdelta] at hf
  unfold actualPntMertensLimit
  nlinarith

/-- The complete analytic pole value is the same actual closed-seven scalar. -/
theorem actualXiSevenPoleValue_eq_convolutionSevenValue :
    actualXiSevenPoleValue = (actualXiErrorConvolutionSevenValue : ℂ) := by
  unfold actualXiSevenPoleValue actualXiErrorConvolutionSevenValue
  rw [actualClosedMangoldtMellinHeadSeven_at_one,
    ← ofReal_log (by norm_num : (0 : ℝ) ≤ 7)]
  push_cast
  ring

/-- Actual PNT and authentic pole-one regularization calibrate the ordinary center. -/
theorem actualPntMertensLimit_eq_neg_gamma :
    actualPntMertensLimit = -Real.eulerMascheroniConstant := by
  have h := actualXiInverseSquarePhysical_integral_eq_poleValue
  rw [actualXiSevenPoleValue_eq_convolutionSevenValue] at h
  have hr := ofReal_inj.mp h
  rw [actualXiInverseSquarePhysical_integral_eq_mertensLimit] at hr
  unfold actualXiErrorConvolutionSevenValue at hr
  linarith

/-- The actual weighted Mangoldt error tends ordinarily to minus gamma. -/
theorem mangoldtLogError_tendsto_neg_gamma :
    Tendsto mangoldtLogError atTop (𝓝 (-Real.eulerMascheroniConstant)) := by
  simpa only [actualPntMertensLimit_eq_neg_gamma] using
    mangoldtLogError_tendsto_actualPntMertensLimit

/-- The literal actual gamma-centered Mangoldt error tends ordinarily to zero. -/
theorem actualCenteredMangoldtLogError_tendsto_zero :
    Tendsto actualCenteredMangoldtLogError atTop (𝓝 0) := by
  simpa only [actualPntMertensLimit_eq_neg_gamma, neg_add_cancel] using
    actualCenteredMangoldtLogError_tendsto

end
end FormalResearch.RiemannHypothesis.SourceActualMertensGammaCalibration
