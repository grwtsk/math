import MangoldtLaplaceIntegrability
import ActualPrimeIntercept
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-! Source-typed arithmetic decay adapters. Direction grwtsk contributors;
focused scratch construction OpenAI Codex. The raw decay instance remains open.
No Ramaré/PNT theorem, signed uniform witness, or RH proof is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualArithmeticDecay
open MeasureTheory Set
open ContinuousResearch.SourceRemainderLaplace
open ContinuousResearch.MangoldtLaplaceIntegrability
open ContinuousResearch.ActualPrimeIntercept
open ContinuousResearch.ProperPowerMoments

/-- Literal closed full-Mangoldt error, independent gamma, and real endpoint 1. -/
def RawMangoldtDecay (C : ℝ) : Prop :=
  0 ≤ C ∧ ∀ t : ℝ, 1 ≤ t → |actualRemainder t| ≤ C/t^2

/-- The corresponding literal first-prime remainder bound; not a fitted witness. -/
def RawPrimeDecay (K : ℝ) : Prop :=
  0 ≤ K ∧ ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2

theorem inverse_square_integrable {T : ℝ} (hT : 0 < T) :
    IntegrableOn (fun t : ℝ => 1/t^2) (Ioi T) := by
  have h := integrableOn_Ioi_rpow_of_lt (a:=(-2:ℝ)) (by norm_num) hT
  convert! h using 1
  funext t
  rw [Real.rpow_neg_natCast]
  simp

theorem inverse_square_integral {T : ℝ} (hT : 0 < T) :
    (∫ t in Ioi T, (1/t^2 : ℝ)) = 1/T := by
  have he : (fun t : ℝ => 1/t^2) = fun t : ℝ => t^(-2:ℝ) := by
    funext t
    rw [Real.rpow_neg_natCast]
    simp
  rw [he, integral_Ioi_rpow_of_lt (by norm_num : (-2:ℝ) < -1) hT]
  norm_num [Real.rpow_neg_one]

theorem actual_remainder_measurable : Measurable actualRemainder :=
  centeredMangoldtError_measurable

/-- Genuine local L1 is already supplied by the actual elementary Mertens bound. -/
theorem actual_remainder_integrable_near_origin :
    IntegrableOn actualRemainder (Ioc (0:ℝ) 1) := by
  refine (integrableOn_const (C:=
    Real.log 4+4+Real.log 2+|Real.eulerMascheroniConstant|)
      (measure_Ioc_lt_top.ne)).mono'
      actual_remainder_measurable.aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
  simpa only [Real.norm_eq_abs,actualRemainder] using centeredMangoldtError_bound ht.1.le

/-- Raw actual decay proves L1 on the tail; integrability is not a premise. -/
theorem actual_remainder_integrable_tail {C : ℝ} (hC : RawMangoldtDecay C) :
    IntegrableOn actualRemainder (Ioi (1:ℝ)) := by
  refine ((inverse_square_integrable (by norm_num : (0:ℝ)<1)).const_mul C).mono'
    actual_remainder_measurable.aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  simpa only [Real.norm_eq_abs, mul_one_div] using hC.2 t ht.le

/-- Actual closed-prefix decay supplies the genuine previously open hI input. -/
theorem actual_remainder_integrable {C : ℝ} (hC : RawMangoldtDecay C) :
    IntegrableOn actualRemainder (Ioi (0:ℝ)) := by
  have h := actual_remainder_integrable_near_origin.union
    (actual_remainder_integrable_tail hC)
  have hs : Ioc (0:ℝ) 1 ∪ Ioi 1 = Ioi 0 := by
    ext t
    simp only [mem_union,mem_Ioc,mem_Ioi]
    constructor
    · rintro (h|h)
      · exact h.1
      · linarith
    · intro ht
      by_cases h : t ≤ 1
      · exact Or.inl ⟨ht,h⟩
      · exact Or.inr (lt_of_not_ge h)
  simpa only [hs] using h

/-- Preserve the independently defined proper-power second moment. -/
theorem raw_prime_decay_of_mangoldt {C : ℝ} (hC : RawMangoldtDecay C) :
    RawPrimeDecay (C+properPowerB2) := by
  constructor
  · exact add_nonneg hC.1 (properPowerMoment_nonneg 2)
  · intro t ht
    rw [actual_prime_remainder_eq_full_plus_tail]
    calc
      |actualRemainder t+omittedOnsetTail t| ≤
          |actualRemainder t|+|omittedOnsetTail t| := abs_add_le _ _
      _ ≤ C/t^2+properPowerB2/t^2 := by
        rw [abs_of_nonneg (omittedOnsetTail_nonneg t)]
        exact add_le_add (hC.2 t ht)
          (omittedOnsetTail_le_B2_div_square t (by linarith))
      _ = (C+properPowerB2)/t^2 := by ring

/-- Genuine first-prime integrability follows through the proved strict complement. -/
theorem actual_prime_remainder_integrable_of_decay {C : ℝ}
    (hC : RawMangoldtDecay C) :
    IntegrableOn actualPrimeRemainder (Ioi (0:ℝ)) :=
  actual_prime_remainder_integrable (actual_remainder_integrable hC)

private theorem tail_norm_bound {f : ℝ → ℝ} {K T : ℝ}
    (hf : IntegrableOn f (Ioi T)) (hT : 1 ≤ T)
    (hK : ∀ t : ℝ, 1 ≤ t → |f t| ≤ K/t^2) :
    |∫ t in Ioi T, f t| ≤ K/T := by
  have ht : 0 < T := by linarith
  calc
    |∫ t in Ioi T, f t| ≤ ∫ t in Ioi T, |f t| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ t in Ioi T, K*(1/t^2) := by
      refine integral_mono_ae hf.abs ((inverse_square_integrable ht).const_mul K) ?_
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t htt
      simpa only [mul_one_div] using hK t (hT.trans htt.le)
    _ = K/T := by rw [integral_const_mul,inverse_square_integral ht];ring

theorem actual_remainder_tail_bound {C T : ℝ} (hC : RawMangoldtDecay C)
    (hT : 1 ≤ T) : |∫ t in Ioi T, actualRemainder t| ≤ C/T :=
  tail_norm_bound ((actual_remainder_integrable hC).mono_set
    (Ioi_subset_Ioi (by linarith))) hT hC.2

theorem actual_prime_remainder_tail_bound {C T : ℝ} (hC : RawMangoldtDecay C)
    (hT : 1 ≤ T) :
    |∫ t in Ioi T, actualPrimeRemainder t| ≤ (C+properPowerB2)/T :=
  tail_norm_bound ((actual_prime_remainder_integrable_of_decay hC).mono_set
    (Ioi_subset_Ioi (by linarith))) hT (raw_prime_decay_of_mangoldt hC).2

end ContinuousResearch.ActualArithmeticDecay
