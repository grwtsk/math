/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficIndependentThinning

/-!
# Comparison of the signed thinning deviation at positive heats

Independent thinning returns the genuine ordered heated pickup less the
same signed source pickup at each heat. The heated ordered contributions
have uniform linear bounds from absolute summability. Thus a change
between fixed positive heats changes the actual mask deviation by at
most a linear term and preserves divergence of its normalized value.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Filter

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupHeatComparison

open GRWTSK.RiemannHypothesis.CCC
open GaussianSignedResidualLaplace MoebiusSoficBlockObstruction
  MoebiusSoficHeatedResidualBridge MoebiusSoficIndependentThinning

private theorem response_bounds {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    0 ≤ pickupResponse n u ∧ pickupResponse n u ≤ 2 := by
  have hn' : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < n := by linarith
  have hroot : (Real.sqrt (n : ℝ))⁻¹ = Real.exp (-Real.log (n : ℝ) / 2) := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnpos]
  unfold pickupResponse
  rw [hroot]
  split_ifs with h
  · have hlow : Real.exp (-u / 2) ≤ Real.exp (-Real.log (n : ℝ) / 2) :=
      Real.exp_le_exp.mpr (by linarith)
    have hhigh : Real.exp (-Real.log (n : ℝ) / 2) ≤ 1 :=
      Real.exp_le_one_iff.mpr (by linarith [Real.log_nonneg hn'])
    constructor <;> linarith [Real.exp_nonneg (-u / 2)]
  · norm_num

private theorem gram_abs_le {T : ℝ} (hT : 0 ≤ T) {m n : ℕ}
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    |pickupResponseGram T m n| ≤ 4 * T := by
  have hcont : Continuous (fun u => pickupResponse m u * pickupResponse n u) :=
    (pickupResponse_continuous hm).mul (pickupResponse_continuous hn)
  unfold pickupResponseGram
  rw [abs_of_nonneg (intervalIntegral.integral_nonneg hT
    (fun u _ => mul_nonneg (response_bounds hm u).1 (response_bounds hn u).1))]
  calc
    _ ≤ ∫ _ in (0 : ℝ)..T, (4 : ℝ) := by
      apply intervalIntegral.integral_mono_on hT (hcont.intervalIntegrable 0 T)
        (continuous_const.intervalIntegrable 0 T)
      intro u _
      calc
        pickupResponse m u * pickupResponse n u ≤ 2 * 2 :=
          mul_le_mul (response_bounds hm u).2 (response_bounds hn u).2
            (response_bounds hn u).1 (by norm_num)
        _ = 4 := by norm_num
    _ = _ := by simp [mul_comm]

private theorem heated_ordered_abs_le {s T : ℝ} (hs : 0 < s) (hT : 0 ≤ T) :
    |pickupPairSum T (pickupPairTerm T (heatedCoeff s))| ≤
      4 * heatedAbsMass s ^ 2 * T := by
  let a (n : ℕ) := |heatedCoeff s n|
  have hsum : ∑ n ∈ pickupIndex T, a n ≤ heatedAbsMass s :=
    (heatedCoeff_abs_summable hs).sum_le_tsum _ (fun n _ => abs_nonneg _)
  have hsum0 : 0 ≤ ∑ n ∈ pickupIndex T, a n :=
    Finset.sum_nonneg fun n _ => abs_nonneg _
  unfold pickupPairSum
  calc
    _ ≤ ∑ m ∈ pickupIndex T, ∑ n ∈ pickupIndex T,
        a m * a n * (4 * T) := by
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
      intro m hm
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
      intro n hn
      unfold pickupPairTerm
      by_cases h : m = n
      · rw [ite_eq_right (not_not_intro h), abs_zero]
        exact mul_nonneg (mul_nonneg (abs_nonneg _) (abs_nonneg _)) (by positivity)
      · rw [ite_eq_left h, abs_mul, abs_mul]
        exact mul_le_mul_of_nonneg_left
          (gram_abs_le hT (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1)
          (mul_nonneg (abs_nonneg _) (abs_nonneg _))
    _ = (∑ n ∈ pickupIndex T, a n) ^ 2 * (4 * T) := by
      rw [pow_two, Finset.sum_mul_sum]
      simp only [Finset.sum_mul]
    _ ≤ _ := by
      calc
        _ ≤ heatedAbsMass s ^ 2 * (4 * T) :=
          mul_le_mul_of_nonneg_right (pow_le_pow_left₀ hsum0 hsum 2) (by positivity)
        _ = _ := by ring

private theorem mask_deviation_eq_heated_sub_source (s T : ℝ) :
    weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) =
      pickupPairSum T (pickupPairTerm T (heatedCoeff s)) - pickupCross T := by
  rw [weightedPickupDeviation_eq_heatedDeviation_add_covariance s T _ _ _
    (heatMaskWeight_normalized s T) (fun _ hn => heatMaskCoeff_mean s T hn),
    heatedPathCovariance_heatMask_eq_zero, add_zero]

/-- Changing between fixed positive heats changes the genuine signed mask
deviation by at most an explicit linear term. -/
theorem abs_heatMaskDeviation_sub_le {s t T : ℝ} (hs : 0 < s) (ht : 0 < t)
    (hT : 0 ≤ T) :
    |weightedPickupDeviation T Finset.univ (heatMaskWeight t T) (heatMaskCoeff T) -
      weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T)| ≤
      4 * (heatedAbsMass s ^ 2 + heatedAbsMass t ^ 2) * T := by
  rw [mask_deviation_eq_heated_sub_source, mask_deviation_eq_heated_sub_source,
    sub_sub_sub_cancel_right]
  calc
    _ ≤ |pickupPairSum T (pickupPairTerm T (heatedCoeff t))| +
        |pickupPairSum T (pickupPairTerm T (heatedCoeff s))| := by
      simpa only [sub_eq_add_neg, abs_neg] using abs_add_le
        (pickupPairSum T (pickupPairTerm T (heatedCoeff t)))
        (-(pickupPairSum T (pickupPairTerm T (heatedCoeff s))))
    _ ≤ _ := by linarith [heated_ordered_abs_le hs hT, heated_ordered_abs_le ht hT]

/-- Superlinear signed mask deviation transfers between positive heats on
any fixed filter tending to infinity. -/
theorem heatMaskDeviation_div_tendsto_atTop_of_heat {s t : ℝ}
    (hs : 0 < s) (ht : 0 < t) {l : Filter ℝ} (hl : l ≤ atTop)
    (h : Tendsto (fun T : ℝ =>
      weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) / T)
      l atTop) :
    Tendsto (fun T : ℝ =>
      weightedPickupDeviation T Finset.univ (heatMaskWeight t T) (heatMaskCoeff T) / T)
      l atTop := by
  apply tendsto_atTop.mpr
  intro B
  let C := 4 * (heatedAbsMass s ^ 2 + heatedAbsMass t ^ 2)
  filter_upwards [tendsto_atTop.mp h (B + C),
    (eventually_gt_atTop (0 : ℝ)).filter_mono hl] with T hsource hT
  have hdiff := (abs_le.mp (abs_heatMaskDeviation_sub_le hs ht hT.le)).1
  have hfloor := (le_div_iff₀ hT).mp hsource
  change -(C * T) ≤ _ at hdiff
  apply (le_div_iff₀ hT).mpr
  linarith

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupHeatComparison
