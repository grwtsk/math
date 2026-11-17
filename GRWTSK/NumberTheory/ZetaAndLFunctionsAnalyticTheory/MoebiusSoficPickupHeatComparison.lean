/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import Mathlib.Analysis.Normed.Group.Tannery
import Mathlib.Analysis.Normed.Ring.InfiniteSum
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualMixedAbel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficIndependentThinning

/-!
# Comparison of the signed thinning deviation at positive heats

Independent thinning returns the genuine ordered heated pickup less the
same signed source pickup at each heat. The heated ordered contributions
have uniform linear bounds from absolute summability. Thus a change
between fixed positive heats changes the actual mask deviation by at
most a linear term and preserves divergence of its normalized value.
Each normalized heated pickup converges to the absolutely convergent
ordered sum of settled response products, giving the exact cross-heat limit.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Filter Set MeasureTheory
open scoped Topology

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

private def settled (n : ℕ) : ℝ := 2 * (Real.sqrt n)⁻¹

private theorem response_le_settled (n : ℕ) (u : ℝ) :
    pickupResponse n u ≤ settled n := by
  unfold pickupResponse settled
  split_ifs
  · linarith [Real.exp_nonneg (-u / 2)]
  · positivity

private theorem tendsto_response (n : ℕ) :
    Tendsto (pickupResponse n) atTop (𝓝 (settled n)) := by
  have hhalf : Tendsto (fun u : ℝ => u / 2) atTop atTop :=
    tendsto_atTop_atTop.mpr fun b => ⟨2 * b, fun u hu => by linarith⟩
  have hneg : Tendsto (fun u : ℝ => -u) atTop atBot := tendsto_neg_atTop_atBot
  have hscale : Tendsto (fun u : ℝ => -u / 2) atTop atBot := by
    simp only [neg_div]
    exact hneg.comp hhalf
  have hexp := Real.tendsto_exp_atBot.comp hscale
  have h := (((tendsto_const_nhds : Tendsto (fun _ : ℝ => (Real.sqrt n)⁻¹) atTop
    (𝓝 ((Real.sqrt n)⁻¹))).sub hexp).const_mul 2)
  rw [sub_zero] at h
  refine h.congr' ?_
  filter_upwards [eventually_ge_atTop (Real.log (n : ℝ))] with u hu
  simp [pickupResponse, hu]

private theorem tendsto_gram_div {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) :
    Tendsto (fun T : ℝ => pickupResponseGram T m n / T) atTop
      (𝓝 (settled m * settled n)) := by
  let f (u : ℝ) := pickupResponse m u * pickupResponse n u
  let L := settled m * settled n
  have hf : Continuous f := (pickupResponse_continuous hm).mul (pickupResponse_continuous hn)
  have hlim : Tendsto f atTop (𝓝 L) := (tendsto_response m).mul (tendsto_response n)
  have hnonneg (u : ℝ) : 0 ≤ f u :=
    mul_nonneg (response_bounds hm u).1 (response_bounds hn u).1
  have hle (u : ℝ) : f u ≤ L :=
    mul_le_mul (response_le_settled m u) (response_le_settled n u)
      (response_bounds hn u).1 (by unfold settled; positivity)
  apply tendsto_order.mpr
  constructor
  · intro b hb
    let c := (b + L) / 2
    have hc : c < L := by dsimp [c]; linarith
    have hbc : b < c := by dsimp [c]; linarith
    obtain ⟨a, ha⟩ := eventually_atTop.mp ((tendsto_order.mp hlim).1 c hc)
    let A := max 0 a
    have hA : 0 ≤ A := le_max_left _ _
    have hAf (u : ℝ) (hu : A ≤ u) : c ≤ f u :=
      (ha u ((le_max_right 0 a).trans hu)).le
    have htail : Tendsto (fun T : ℝ => c * (T - A) / T) atTop (𝓝 c) := by
      have haux := (tendsto_inv_atTop_zero : Tendsto (fun T : ℝ => T⁻¹) atTop (𝓝 0))
      have h := ((haux.const_mul A).const_sub 1).const_mul c
      rw [mul_zero, sub_zero, mul_one] at h
      refine h.congr' ?_
      filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
      change c * (1 - A * T⁻¹) = c * (T - A) / T
      field_simp
    filter_upwards [(tendsto_order.mp htail).1 b hbc, eventually_ge_atTop A,
      eventually_gt_atTop (0 : ℝ)] with T hbT hAT hT
    apply hbT.trans_le
    apply (div_le_div_iff_of_pos_right hT).mpr
    have hrest : c * (T - A) ≤ ∫ u in A..T, f u := by
      have h := intervalIntegral.integral_mono_on (μ := volume) hAT
        (continuous_const.intervalIntegrable A T) (hf.intervalIntegrable A T)
        (fun u hu => hAf u hu.1)
      simpa [mul_comm] using h
    have hfirst : 0 ≤ ∫ u in (0 : ℝ)..A, f u :=
      intervalIntegral.integral_nonneg_of_forall hA hnonneg
    change c * (T - A) ≤ ∫ u in (0 : ℝ)..T, f u
    rw [← intervalIntegral.integral_add_adjacent_intervals
      (hf.intervalIntegrable 0 A) (hf.intervalIntegrable A T)]
    linarith
  · intro b hb
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
    apply lt_of_le_of_lt _ hb
    apply (div_le_iff₀ hT).mpr
    have h := intervalIntegral.integral_mono_on (μ := volume) hT.le
      (hf.intervalIntegrable 0 T) (continuous_const.intervalIntegrable 0 T)
      (fun u _ => hle u)
    simpa [pickupResponseGram, f, mul_comm] using h

/-- The settled ordered pickup of the actual signed heated coefficients.
Both orientations occur and the diagonal is omitted. -/
def settledHeatedPickup (s : ℝ) : ℝ :=
  ∑' p : ℕ × ℕ, if p.1 = p.2 then 0 else
    (heatedCoeff s p.1 * heatedCoeff s p.2) * (settled p.1 * settled p.2)

private def pairReadout (s T : ℝ) (p : ℕ × ℕ) : ℝ :=
  if p ∈ (pickupIndex T).product (pickupIndex T) then
    pickupPairTerm T (heatedCoeff s) p.1 p.2 / T else 0

private theorem pairReadout_tsum (s T : ℝ) :
    (∑' p, pairReadout s T p) =
      pickupPairSum T (pickupPairTerm T (heatedCoeff s)) / T := by
  rw [tsum_eq_sum (s := (pickupIndex T).product (pickupIndex T))
    (fun p hp => by rw [pairReadout, ite_eq_right hp])]
  refine (Finset.sum_product (pickupIndex T) (pickupIndex T) (pairReadout s T)).trans ?_
  unfold pickupPairSum
  simp only [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  have hp : (m, n) ∈ (pickupIndex T).product (pickupIndex T) :=
    Finset.mem_product.mpr ⟨hm, hn⟩
  rw [pairReadout, ite_eq_left hp]

private theorem eventually_mem_pickupIndex {n : ℕ} (hn : 1 ≤ n) :
    ∀ᶠ T : ℝ in atTop, n ∈ pickupIndex T := by
  filter_upwards [eventually_ge_atTop (Real.log (n : ℝ))] with T hT
  exact Finset.mem_Icc.mpr ⟨hn, Nat.le_floor
    ((Real.log_le_iff_le_exp (by exact_mod_cast hn)).mp hT)⟩

private theorem tendsto_heated_pickup_div {s : ℝ} (hs : 0 < s) :
    Tendsto (fun T : ℝ => pickupPairSum T (pickupPairTerm T (heatedCoeff s)) / T)
      atTop (𝓝 (settledHeatedPickup s)) := by
  let a (n : ℕ) := |heatedCoeff s n|
  let bound (p : ℕ × ℕ) := 4 * (a p.1 * a p.2)
  have ha : Summable a := heatedCoeff_abs_summable hs
  have hprod : Summable (fun p : ℕ × ℕ => a p.1 * a p.2) := by
    have hnonneg (p : ℕ × ℕ) : 0 ≤ a p.1 * a p.2 :=
      mul_nonneg (abs_nonneg _) (abs_nonneg _)
    apply (summable_prod_of_nonneg hnonneg).mpr
    have hinner (m : ℕ) : Summable (fun n : ℕ => a m * a n) := ha.mul_left (a m)
    refine ⟨hinner, ?_⟩
    simp_rw [tsum_mul_left]
    exact ha.mul_right (∑' n : ℕ, a n)
  have hsum : Summable bound := hprod.mul_left 4
  unfold settledHeatedPickup
  refine (tendsto_tsum_of_dominated_convergence (f := pairReadout s) hsum ?_ ?_).congr'
    (Eventually.of_forall (pairReadout_tsum s))
  · rintro ⟨m,n⟩
    by_cases hm : 1 ≤ m
    · by_cases hn : 1 ≤ n
      · by_cases he : m = n
        · subst n
          simp [pairReadout, pickupPairTerm]
        · rw [ite_eq_right he]
          refine ((tendsto_gram_div hm hn).const_mul
            (heatedCoeff s m * heatedCoeff s n)).congr' ?_
          filter_upwards [eventually_mem_pickupIndex hm, eventually_mem_pickupIndex hn]
            with T hmT hnT
          simp [pairReadout, Finset.mem_product, hmT, hnT, pickupPairTerm, he, mul_div_assoc]
      · have hn0 : n = 0 := by omega
        subst n
        have hz : settled 0 = 0 := by simp [settled]
        have hnot (T : ℝ) : 0 ∉ pickupIndex T := by simp [pickupIndex]
        simp [pairReadout, Finset.mem_product, hnot, hz]
    · have hm0 : m = 0 := by omega
      subst m
      have hz : settled 0 = 0 := by simp [settled]
      have hnot (T : ℝ) : 0 ∉ pickupIndex T := by simp [pickupIndex]
      simp [pairReadout, Finset.mem_product, hnot, hz]
  · filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
    rintro ⟨m,n⟩
    by_cases hmem : (m,n) ∈ (pickupIndex T).product (pickupIndex T)
    · rw [pairReadout, ite_eq_left hmem, pickupPairTerm]
      have ⟨hm, hn⟩ := Finset.mem_product.mp hmem
      by_cases he : m = n
      · rw [ite_eq_right (not_not_intro he), zero_div, norm_zero]
        dsimp [bound, a]
        positivity
      · rw [ite_eq_left he, Real.norm_eq_abs, abs_div, abs_of_pos hT, abs_mul, abs_mul]
        have hgram : |pickupResponseGram T m n| / T ≤ 4 :=
          (div_le_iff₀ hT).mpr (gram_abs_le hT.le (Finset.mem_Icc.mp hm).1
            (Finset.mem_Icc.mp hn).1)
        dsimp [bound, a]
        rw [mul_div_assoc, mul_comm 4]
        exact mul_le_mul_of_nonneg_left hgram (mul_nonneg (abs_nonneg _) (abs_nonneg _))
    · rw [pairReadout, ite_eq_right hmem, norm_zero]
      dsimp [bound, a]
      positivity

/-- Exact normalized cross-heat limit for the original signed mask deviation. -/
theorem tendsto_normalized_heatMaskDeviation_sub {s t : ℝ} (hs : 0 < s) (ht : 0 < t) :
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight t T) (heatMaskCoeff T) -
        weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T)) / T)
      atTop (𝓝 (settledHeatedPickup t - settledHeatedPickup s)) := by
  refine ((tendsto_heated_pickup_div ht).sub (tendsto_heated_pickup_div hs)).congr'
    (Eventually.of_forall fun T => ?_)
  simp only [mask_deviation_eq_heated_sub_source, sub_sub_sub_cancel_right, sub_div]


/-- Returning the signed mask deviation through the original diagonal leaves
the original pickup energy with an explicit asymptotic heat correction. -/
theorem tendsto_normalized_heatMaskDeviation_sub_diagonal_add_energy {s : ℝ}
    (hs : 0 < s) :
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
        pickupDiagonal T + pickupEnergy T) / T)
      atTop (𝓝 (settledHeatedPickup s)) := by
  refine (tendsto_heated_pickup_div hs).congr' ?_
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with T hT
  rw [mask_deviation_eq_heated_sub_source, pickupEnergy_eq_diagonal_add_cross hT]
  congr 1
  ring

/-- A normalized upper allowance for the original pickup energy is equivalent
to the corresponding lower allowance for the signed deviation relative to
the original diagonal, with the exact settled heat correction. -/
theorem original_pickupEnergy_linear_budget_iff_heatMaskDeviation {s A : ℝ}
    (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop) :
    (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, pickupEnergy T / T ≤ A + ε) ↔
      (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l,
        settledHeatedPickup s - A - ε ≤
          (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
            pickupDiagonal T) / T) := by
  have hlim := (tendsto_normalized_heatMaskDeviation_sub_diagonal_add_energy hs).mono_left hl
  constructor
  · intro h ε hε
    have hlow := (tendsto_order.mp hlim).1 (settledHeatedPickup s - ε / 2) (by linarith)
    filter_upwards [hlow, h (ε / 2) (by linarith)] with T hlow henergy
    rw [add_div] at hlow
    linarith
  · intro h ε hε
    have hhigh := (tendsto_order.mp hlim).2 (settledHeatedPickup s + ε / 2) (by linarith)
    filter_upwards [hhigh, h (ε / 2) (by linarith)] with T hhigh hdeviation
    rw [add_div] at hhigh
    linarith

private theorem heatedWave_abs_le {s u : ℝ} (hs : 0 < s) (hu : 0 ≤ u) :
    |heatedWave s u| ≤ |heatedLimit s| + 2 * heatedAbsMass s := by
  have hmass := heatedAbsMass_nonneg s
  calc
    |heatedWave s u| ≤ |heatedWave s u - heatedLimit s| + |heatedLimit s| := by
      simpa only [sub_add_cancel] using
        abs_add_le (heatedWave s u - heatedLimit s) (heatedLimit s)
    _ ≤ 2 * heatedAbsMass s * Real.exp (-u / 2) + |heatedLimit s| :=
      add_le_add (heatedWave_sub_limit_abs_le hs u) le_rfl
    _ ≤ _ := by
      have hexp : Real.exp (-u / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
      linarith [mul_le_mul_of_nonneg_left hexp (show 0 ≤ 2 * heatedAbsMass s by positivity)]

private theorem integral_sq_add_le {f g : ℝ → ℝ} {T B : ℝ}
    (hT : 0 ≤ T) (hf : Continuous f) (hg : Continuous g) (hB : 0 ≤ B)
    (hbound : ∀ u ∈ Icc (0 : ℝ) T, |g u| ≤ B) :
    (∫ u in (0 : ℝ)..T, (f u + g u) ^ 2) ≤
      2 * (∫ u in (0 : ℝ)..T, f u ^ 2) + 2 * B ^ 2 * T := by
  have hsq : Continuous (fun u => 2 * f u ^ 2) := continuous_const.mul (hf.pow 2)
  have hc : Continuous (fun _ : ℝ => 2 * B ^ 2) := continuous_const
  calc
    _ ≤ ∫ u in (0 : ℝ)..T, 2 * f u ^ 2 + 2 * B ^ 2 := by
      apply intervalIntegral.integral_mono_on hT
        (((hf.add hg).pow 2).intervalIntegrable 0 T)
        ((hsq.add hc).intervalIntegrable 0 T)
      intro u hu
      have hgsq : g u ^ 2 ≤ B ^ 2 :=
        sq_le_sq.mpr (by simpa only [abs_of_nonneg hB] using hbound u hu)
      change (f u + g u) ^ 2 ≤ 2 * f u ^ 2 + 2 * B ^ 2
      nlinarith [sq_nonneg (f u - g u)]
    _ = _ := by
      rw [intervalIntegral.integral_add (hsq.intervalIntegrable 0 T) (hc.intervalIntegrable 0 T),
        intervalIntegral.integral_const_mul, intervalIntegral.integral_const]
      simp only [sub_zero, smul_eq_mul]
      ring

private theorem source_and_residual_energy_bounds {s T : ℝ} (hs : 0 < s) (hT : 0 ≤ T) :
    let B := |heatedLimit s| + 2 * heatedAbsMass s
    pickupEnergy T ≤ 2 * residualEnergy s T + 2 * B ^ 2 * T ∧
      residualEnergy s T ≤ 2 * pickupEnergy T + 2 * B ^ 2 * T := by
  let B := |heatedLimit s| + 2 * heatedAbsMass s
  have hB : 0 ≤ B := add_nonneg (abs_nonneg _) (by linarith [heatedAbsMass_nonneg s])
  have hH (u : ℝ) (hu : u ∈ Icc (0 : ℝ) T) : |heatedWave s u| ≤ B :=
    heatedWave_abs_le hs hu.1
  constructor
  · have h := integral_sq_add_le hT (residualWave_continuous s) (heatedWave_continuous s) hB hH
    simpa only [residualWave, sub_add_cancel, pickupEnergy, residualEnergy, B] using h
  · have h := integral_sq_add_le hT wholePickup_continuous (heatedWave_continuous s).neg hB
      (fun u hu => by simpa only [Pi.neg_apply, abs_neg] using hH u hu)
    simpa only [Pi.neg_apply, ← sub_eq_add_neg, residualWave, pickupEnergy, residualEnergy, B] using h

/-- Existence of a genuine linear signed residual budget on fixed scales is
equivalent to a linear lower budget for the original signed deviation
relative to the original Möbius diagonal on those same scales. -/
theorem exists_linear_residual_budget_iff_heatMaskDeviation {s : ℝ}
    (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop) :
    (∃ A : ℝ, ∀ᶠ T in l, residualEnergy s T ≤ A * T) ↔
      (∃ K : ℝ, ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l,
        settledHeatedPickup s - K - ε ≤
          (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
            pickupDiagonal T) / T) := by
  let B := |heatedLimit s| + 2 * heatedAbsMass s
  have hpos := (eventually_gt_atTop (0 : ℝ)).filter_mono hl
  constructor
  · rintro ⟨A, hA⟩
    refine ⟨2 * A + 2 * B ^ 2,
      (original_pickupEnergy_linear_budget_iff_heatMaskDeviation hs hl).mp ?_⟩
    intro ε hε
    filter_upwards [hpos, hA] with T hT hA
    have h := (source_and_residual_energy_bounds hs hT.le).1
    change pickupEnergy T ≤ 2 * residualEnergy s T + 2 * B ^ 2 * T at h
    apply (div_le_iff₀ hT).mpr
    linarith [mul_nonneg hε.le hT.le]
  · rintro ⟨K, hK⟩
    have h := (original_pickupEnergy_linear_budget_iff_heatMaskDeviation hs hl).mpr hK
    refine ⟨2 * (K + 1) + 2 * B ^ 2, ?_⟩
    filter_upwards [hpos, h 1 one_pos] with T hT henergy
    have hsource := (div_le_iff₀ hT).mp henergy
    have hres := (source_and_residual_energy_bounds hs hT.le).2
    change residualEnergy s T ≤ 2 * pickupEnergy T + 2 * B ^ 2 * T at hres
    linarith

private theorem centeredPickup_expand (b T : ℝ) :
    (∫ u in (0 : ℝ)..T, (wholePickup u - b) ^ 2) =
      pickupEnergy T - 2 * b * (∫ u in (0 : ℝ)..T, wholePickup u) + b ^ 2 * T := by
  have heq : (fun u => (wholePickup u - b) ^ 2) =
      fun u => (wholePickup u ^ 2 - 2 * b * wholePickup u) + b ^ 2 := by
    funext u
    ring
  have hf : Continuous (fun u => wholePickup u ^ 2) := wholePickup_continuous.pow 2
  have hg : Continuous (fun u => (2 * b) * wholePickup u) :=
    continuous_const.mul wholePickup_continuous
  have hc : Continuous (fun _ : ℝ => b ^ 2) := continuous_const
  rw [heq, intervalIntegral.integral_add (μ := volume)
    (f := fun u => wholePickup u ^ 2 - 2 * b * wholePickup u)
    ((hf.sub hg).intervalIntegrable 0 T) (hc.intervalIntegrable 0 T),
    intervalIntegral.integral_sub (hf.intervalIntegrable 0 T)
    (hg.intervalIntegrable 0 T), intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const, pickupEnergy]
  simp [mul_comm]

private theorem tendsto_centeredResidual_error_div {s : ℝ} (hs : 0 < s) :
    Tendsto (fun T : ℝ => (residualEnergy s T -
      (∫ u in (0 : ℝ)..T, (wholePickup u - heatedLimit s) ^ 2)) / T) atTop (𝓝 0) := by
  obtain ⟨C, _, hC⟩ :=
    GaussianSignedResidualMixedAbel.exists_residualEnergy_sub_centeredPickup_abs_le hs
  apply squeeze_zero_norm' (a := fun T : ℝ => C * T⁻¹)
  · filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
    rw [Real.norm_eq_abs, abs_div, abs_of_pos hT, div_eq_mul_inv]
    exact mul_le_mul_of_nonneg_right (hC T hT.le) (inv_nonneg.mpr hT.le)
  · simpa only [mul_zero] using
      (tendsto_inv_atTop_zero : Tendsto (fun T : ℝ => T⁻¹) atTop (𝓝 0)).const_mul C

/-- The exact settled correction to signed deviation plus genuine residual
energy, retaining the measured first moment of the original pickup. -/
theorem tendsto_normalized_heatMaskDeviation_add_residual_with_mean_correction {s : ℝ}
    (hs : 0 < s) :
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
        pickupDiagonal T + residualEnergy s T +
        2 * heatedLimit s * (∫ u in (0 : ℝ)..T, wholePickup u)) / T)
      atTop (𝓝 (settledHeatedPickup s + heatedLimit s ^ 2)) := by
  have h := ((tendsto_normalized_heatMaskDeviation_sub_diagonal_add_energy hs).add
    (tendsto_centeredResidual_error_div hs)).add_const (heatedLimit s ^ 2)
  rw [add_zero] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  rw [centeredPickup_expand]
  field_simp
  ring

/-- A supplied mean on the same scales determines the sharp correction
from the actual signed deviation to genuine residual energy. -/
theorem tendsto_normalized_heatMaskDeviation_add_residual_of_source_mean {s m : ℝ}
    (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop)
    (hmean : Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, wholePickup u) / T) l (𝓝 m)) :
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
        pickupDiagonal T + residualEnergy s T) / T)
      l (𝓝 (settledHeatedPickup s + heatedLimit s ^ 2 - 2 * heatedLimit s * m)) := by
  have h := (tendsto_normalized_heatMaskDeviation_add_residual_with_mean_correction hs).mono_left hl
  refine (h.sub (hmean.const_mul (2 * heatedLimit s))).congr' ?_
  exact Eventually.of_forall fun T => by
    dsimp only
    rw [add_div, mul_div_assoc, add_sub_cancel_right]

private theorem linear_budget_iff_of_sum_tendsto {f g : ℝ → ℝ} {A C : ℝ}
    {l : Filter ℝ} (hlim : Tendsto (fun T => g T + f T) l (𝓝 C)) :
    (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, f T ≤ A + ε) ↔
      (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, C - A - ε ≤ g T) := by
  constructor
  · intro h ε hε
    have hlow := (tendsto_order.mp hlim).1 (C - ε / 2) (by linarith)
    filter_upwards [hlow, h (ε / 2) (by linarith)] with T hlow hf
    linarith
  · intro h ε hε
    have hhigh := (tendsto_order.mp hlim).2 (C + ε / 2) (by linarith)
    filter_upwards [hhigh, h (ε / 2) (by linarith)] with T hhigh hg
    linarith

/-- The genuine residual allowance is equivalent to the signed mask lower
budget with the measured source mean retained at each horizon. -/
theorem residualEnergy_linear_budget_iff_heatMaskDeviation_with_mean_correction
    {s A : ℝ} (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop) :
    (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε) ↔
      (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l,
        settledHeatedPickup s + heatedLimit s ^ 2 - A - ε ≤
          (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
            pickupDiagonal T + 2 * heatedLimit s * (∫ u in (0 : ℝ)..T, wholePickup u)) / T) := by
  apply linear_budget_iff_of_sum_tendsto
  have h := (tendsto_normalized_heatMaskDeviation_add_residual_with_mean_correction hs).mono_left hl
  refine h.congr' ?_
  exact Eventually.of_forall fun T => by
    dsimp only
    rw [← add_div]
    congr 1
    ring

/-- A limiting source mean on the same scales gives the exact residual
allowance in terms of the original signed deviation and source diagonal. -/
theorem residualEnergy_linear_budget_iff_heatMaskDeviation_of_source_mean
    {s A m : ℝ} (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop)
    (hmean : Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, wholePickup u) / T) l (𝓝 m)) :
    (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε) ↔
      (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l,
        settledHeatedPickup s + heatedLimit s ^ 2 - 2 * heatedLimit s * m - A - ε ≤
          (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
            pickupDiagonal T) / T) := by
  apply linear_budget_iff_of_sum_tendsto
  simpa only [add_div] using
    tendsto_normalized_heatMaskDeviation_add_residual_of_source_mean hs hl hmean

/-- After retaining the measured first moment, the cross-heat energy
difference equals the settled square difference up to bounded error. -/
theorem exists_residualEnergy_heat_difference_with_mean_correction_abs_le
    {s t : ℝ} (hs : 0 < s) (ht : 0 < t) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ T : ℝ, 0 ≤ T →
      |residualEnergy t T - residualEnergy s T +
          2 * (heatedLimit t - heatedLimit s) * (∫ u in (0 : ℝ)..T, wholePickup u) -
          (heatedLimit t ^ 2 - heatedLimit s ^ 2) * T| ≤ K := by
  obtain ⟨Ks, hKs, hsbound⟩ :=
    GaussianSignedResidualMixedAbel.exists_residualEnergy_sub_centeredPickup_abs_le hs
  obtain ⟨Kt, hKt, htbound⟩ :=
    GaussianSignedResidualMixedAbel.exists_residualEnergy_sub_centeredPickup_abs_le ht
  refine ⟨Kt + Ks, add_nonneg hKt hKs, fun T hT => ?_⟩
  let es := residualEnergy s T - (∫ u in (0 : ℝ)..T, (wholePickup u - heatedLimit s) ^ 2)
  let et := residualEnergy t T - (∫ u in (0 : ℝ)..T, (wholePickup u - heatedLimit t) ^ 2)
  have heq : residualEnergy t T - residualEnergy s T +
      2 * (heatedLimit t - heatedLimit s) * (∫ u in (0 : ℝ)..T, wholePickup u) -
      (heatedLimit t ^ 2 - heatedLimit s ^ 2) * T = et - es := by
    dsimp only [et, es]
    rw [centeredPickup_expand, centeredPickup_expand]
    ring
  rw [heq]
  calc
    |et - es| ≤ |et| + |es| := by
      simpa only [sub_eq_add_neg, abs_neg] using abs_add_le et (-es)
    _ ≤ _ := add_le_add (htbound T hT) (hsbound T hT)

/-- The corrected cross-heat limit requires neither a linear energy budget
nor convergence of the measured pickup mean. -/
theorem tendsto_residualEnergy_heat_difference_with_mean_correction
    {s t : ℝ} (hs : 0 < s) (ht : 0 < t) :
    Tendsto (fun T : ℝ =>
      (residualEnergy t T - residualEnergy s T +
        2 * (heatedLimit t - heatedLimit s) * (∫ u in (0 : ℝ)..T, wholePickup u)) / T)
      atTop (𝓝 (heatedLimit t ^ 2 - heatedLimit s ^ 2)) := by
  let B := heatedLimit t ^ 2 - heatedLimit s ^ 2
  let N (T : ℝ) := residualEnergy t T - residualEnergy s T +
      2 * (heatedLimit t - heatedLimit s) * (∫ u in (0 : ℝ)..T, wholePickup u)
  obtain ⟨K, _, hK⟩ := exists_residualEnergy_heat_difference_with_mean_correction_abs_le hs ht
  have hzero : Tendsto (fun T : ℝ => (N T - B * T) / T) atTop (𝓝 0) := by
    apply squeeze_zero_norm' (a := fun T : ℝ => K * T⁻¹)
    · filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
      rw [Real.norm_eq_abs, abs_div, abs_of_pos hT, div_eq_mul_inv]
      exact mul_le_mul_of_nonneg_right (hK T hT.le) (inv_nonneg.mpr hT.le)
    · simpa only [mul_zero] using
        (tendsto_inv_atTop_zero : Tendsto (fun T : ℝ => T⁻¹) atTop (𝓝 0)).const_mul K
  have h := hzero.add_const B
  rw [zero_add] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  change (N T - B * T) / T + B = N T / T
  field_simp
  ring

/-- At heats with unequal settled values, convergence of the uncorrected
energy drift is equivalent to convergence of the original pickup mean.
Both limits are measured on the same horizon filter. -/
theorem tendsto_residualEnergy_heat_difference_iff_tendsto_source_mean
    {s t m : ℝ} (hs : 0 < s) (ht : 0 < t)
    (hne : heatedLimit t ≠ heatedLimit s) {l : Filter ℝ} (hl : l ≤ atTop) :
    Tendsto (fun T : ℝ => (residualEnergy t T - residualEnergy s T) / T) l
      (𝓝 (heatedLimit t ^ 2 - heatedLimit s ^ 2 - 2 * (heatedLimit t - heatedLimit s) * m)) ↔
    Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, wholePickup u) / T) l (𝓝 m) := by
  let B := heatedLimit t ^ 2 - heatedLimit s ^ 2
  let k := 2 * (heatedLimit t - heatedLimit s)
  let D (T : ℝ) := (residualEnergy t T - residualEnergy s T) / T
  let M (T : ℝ) := (∫ u in (0 : ℝ)..T, wholePickup u) / T
  change Tendsto D l (𝓝 (B - k * m)) ↔ Tendsto M l (𝓝 m)
  have hk : k ≠ 0 := mul_ne_zero (by norm_num) (sub_ne_zero.mpr hne)
  have hsum : Tendsto (fun T => D T + k * M T) l (𝓝 B) := by
    simpa only [D, k, M, B, add_div, mul_div_assoc] using
      (tendsto_residualEnergy_heat_difference_with_mean_correction hs ht).mono_left hl
  constructor
  · intro hD
    have h := (hsum.sub hD).div_const k
    have hlimit : (B - (B - k * m)) / k = m := by
      rw [show B - (B - k * m) = k * m by ring]
      field_simp
    rw [hlimit] at h
    refine h.congr' (Eventually.of_forall fun T => ?_)
    rw [show D T + k * M T - D T = k * M T by ring]
    field_simp
  · intro hM
    refine (hsum.sub (hM.const_mul k)).congr' (Eventually.of_forall fun T => ?_)
    exact add_sub_cancel_right _ _

private theorem settled_bounds (n : ℕ) : 0 ≤ settled n ∧ settled n ≤ 2 := by
  constructor
  · unfold settled
    positivity
  · by_cases h : n = 0
    · simp [h, settled]
    · have hn : (1 : ℝ) ≤ n := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr h
      have hroot : (1 : ℝ) ≤ Real.sqrt n := by
        simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hn
      unfold settled
      linarith [inv_le_one_of_one_le₀ hroot]

private theorem tendsto_heat_weight_zero {q : ℝ} (hq : 0 < q) :
    Tendsto (fun s : ℝ => Real.exp (-s * q)) atTop (𝓝 0) := by
  have hmul := (tendsto_const_mul_atBot_of_pos hq).2
    (tendsto_neg_atTop_atBot : Tendsto (fun s : ℝ => -s) atTop atBot)
  convert Real.tendsto_exp_atBot.comp hmul using 1
  funext s
  simp only [Function.comp_apply, mul_comm]

private def leadingHeatedTerm (s : ℝ) (n : ℕ) : ℝ :=
  if n = 1 then 0 else
    moebiusReal n * settled n *
      Real.exp (-s * (Real.log (n : ℝ) ^ 2 - Real.log 2 ^ 2))

private theorem leadingHeatedTerm_return {s : ℝ} (hs : 0 < s) :
    (∑' n, leadingHeatedTerm s n) =
      (heatedLimit s - 2) / Real.exp (-s * Real.log 2 ^ 2) := by
  let f (n : ℕ) := heatedCoeff s n * settled n
  have hf : Summable f :=
    ((heatedCoeff_abs_summable hs).mul_right 2).of_norm_bounded fun n => by
      simp only [f, Real.norm_eq_abs, abs_mul, abs_of_nonneg (settled_bounds n).1]
      exact mul_le_mul_of_nonneg_left (settled_bounds n).2 (abs_nonneg _)
  have h1 : f 1 = 2 := by
    norm_num [f, heatedCoeff, settled, moebiusReal, ArithmeticFunction.moebius_apply_one]
  change (∑' n, leadingHeatedTerm s n) = ((∑' n, f n) - 2) / _
  rw [hf.tsum_eq_add_tsum_ite 1, h1, add_sub_cancel_left, ← tsum_div_const]
  apply tsum_congr
  intro n
  by_cases h : n = 1
  · simp [h, leadingHeatedTerm]
  · simp only [leadingHeatedTerm, ite_eq_right h, f, heatedCoeff]
    rw [show -s * (Real.log (n : ℝ) ^ 2 - Real.log 2 ^ 2) =
      -s * Real.log (n : ℝ) ^ 2 - (-s * Real.log 2 ^ 2) by ring, Real.exp_sub]
    ring

/-- At high heat, the original signed coefficient at index two is the first
nonconstant contribution to the settled pickup wave. -/
theorem tendsto_heatedLimit_sub_two_div_prime_two_weight :
    Tendsto (fun s : ℝ => (heatedLimit s - 2) / Real.exp (-s * Real.log 2 ^ 2))
      atTop (𝓝 (-(2 * (Real.sqrt 2)⁻¹))) := by
  let g (n : ℕ) := if n = 2 then moebiusReal 2 * settled 2 else 0
  let bound (n : ℕ) := (2 * Real.exp (Real.log 2 ^ 2)) * |heatedCoeff 1 n|
  have hsum : Summable bound := (heatedCoeff_abs_summable (by norm_num : (0 : ℝ) < 1)).mul_left _
  have h := tendsto_tsum_of_dominated_convergence (𝓕 := atTop) (f := leadingHeatedTerm) (g := g) hsum
    (by
      intro n
      by_cases h0 : n = 0
      · subst n
        simp [leadingHeatedTerm, g, settled]
      by_cases h1 : n = 1
      · subst n
        simp [leadingHeatedTerm, g]
      by_cases h2 : n = 2
      · subst n
        simp [leadingHeatedTerm, g]
      have hn : 2 < n := by omega
      have hlog : Real.log 2 < Real.log (n : ℝ) :=
        Real.log_lt_log (by norm_num) (by exact_mod_cast hn)
      have hq : 0 < Real.log (n : ℝ) ^ 2 - Real.log 2 ^ 2 := by
        nlinarith [Real.log_pos (by norm_num : (1 : ℝ) < 2)]
      simpa only [leadingHeatedTerm, g, ite_eq_right h1, ite_eq_right h2, mul_zero] using
        (tendsto_heat_weight_zero hq).const_mul (moebiusReal n * settled n))
    (by
      filter_upwards [eventually_ge_atTop (1 : ℝ)] with s hs n
      by_cases h0 : n = 0
      · subst n
        simp only [leadingHeatedTerm, settled, Nat.zero_ne_one, ite_false, Nat.cast_zero,
          Real.sqrt_zero, inv_zero, mul_zero, zero_mul, norm_zero]
        dsimp [bound]
        positivity
      by_cases h1 : n = 1
      · rw [leadingHeatedTerm, ite_eq_left h1, norm_zero]
        dsimp [bound]
        positivity
      have hn : 2 ≤ n := by omega
      have hlog : Real.log 2 ≤ Real.log (n : ℝ) :=
        Real.log_le_log (by norm_num) (by exact_mod_cast hn)
      have hq : 0 ≤ Real.log (n : ℝ) ^ 2 - Real.log 2 ^ 2 :=
        sub_nonneg.mpr (pow_le_pow_left₀ (Real.log_nonneg (by norm_num)) hlog 2)
      have hexp : Real.exp (-s * (Real.log (n : ℝ) ^ 2 - Real.log 2 ^ 2)) ≤
          Real.exp (Real.log 2 ^ 2) * Real.exp (-Real.log (n : ℝ) ^ 2) := by
        rw [← Real.exp_add]
        exact Real.exp_le_exp.mpr (by nlinarith [mul_nonneg (sub_nonneg.mpr hs) hq])
      rw [leadingHeatedTerm, ite_eq_right h1, Real.norm_eq_abs, abs_mul, abs_mul,
        abs_of_nonneg (settled_bounds n).1, abs_of_nonneg (Real.exp_nonneg _)]
      dsimp [bound]
      rw [heatedCoeff, abs_mul, abs_of_nonneg (Real.exp_nonneg _)]
      have hterm := mul_le_mul (settled_bounds n).2 hexp
        (Real.exp_nonneg _) (by norm_num : (0 : ℝ) ≤ 2)
      calc
        _ = |moebiusReal n| * (settled n *
            Real.exp (-s * (Real.log (n : ℝ) ^ 2 - Real.log 2 ^ 2))) := by ring
        _ ≤ |moebiusReal n| * (2 *
            (Real.exp (Real.log 2 ^ 2) * Real.exp (-Real.log (n : ℝ) ^ 2))) :=
          mul_le_mul_of_nonneg_left hterm (abs_nonneg _)
        _ = _ := by ring)
  have htwo : moebiusReal 2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
  have hg : (∑' n, g n) = -(2 * (Real.sqrt 2)⁻¹) := by
    simp [g, htwo, settled]
  rw [hg] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with s hs
  exact leadingHeatedTerm_return hs

/-- The source mean recovery theorem can use positive heats with genuinely
different settled values of the actual Möbius waveform. -/
theorem exists_positive_heats_ne_settled :
    ∃ s t : ℝ, 0 < s ∧ 0 < t ∧ heatedLimit t ≠ heatedLimit s := by
  have h := tendsto_heatedLimit_sub_two_div_prime_two_weight
  have hnegative : -(2 * (Real.sqrt 2)⁻¹) < 0 := by
    have hsqrt : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
    exact neg_neg_of_pos (mul_pos (by norm_num) (inv_pos.mpr hsqrt))
  have hbelow : ∀ᶠ s : ℝ in atTop, heatedLimit s < 2 := by
    filter_upwards [(tendsto_order.mp h).2 0 hnegative] with s hs
    have hnum := (div_lt_iff₀ (Real.exp_pos (-s * Real.log 2 ^ 2))).mp hs
    linarith
  have hconv : Tendsto heatedLimit atTop (𝓝 2) := by
    have hweight := tendsto_heat_weight_zero (pow_pos (Real.log_pos (by norm_num : (1 : ℝ) < 2)) 2)
    have hprod := (h.mul hweight).add_const 2
    rw [mul_zero, zero_add] at hprod
    refine hprod.congr' (Eventually.of_forall fun s => ?_)
    rw [div_mul_cancel₀ _ (Real.exp_ne_zero _), sub_add_cancel]
  obtain ⟨s, hs⟩ := ((eventually_gt_atTop (0 : ℝ)).and hbelow).exists
  obtain ⟨t, ht⟩ := ((eventually_gt_atTop (0 : ℝ)).and
    ((tendsto_order.mp hconv).1 (heatedLimit s) hs.2)).exists
  exact ⟨s, t, hs.1, ht.1, ne_of_gt ht.2⟩

/-- The leading signed coefficient gives the exact settled response
difference for any fixed shift of the heat parameter. -/
theorem tendsto_heatedLimit_fixed_shift_div_prime_two_weight (d : ℝ) :
    Tendsto (fun s : ℝ => (heatedLimit (s + d) - heatedLimit s) /
      Real.exp (-s * Real.log 2 ^ 2)) atTop
      (𝓝 ((2 * (Real.sqrt 2)⁻¹) * (1 - Real.exp (-d * Real.log 2 ^ 2)))) := by
  let q := Real.log 2 ^ 2
  let c := 2 * (Real.sqrt 2)⁻¹
  let w := Real.exp (-d * q)
  let f (s : ℝ) := (heatedLimit s - 2) / Real.exp (-s * q)
  have hf : Tendsto f atTop (𝓝 (-c)) := tendsto_heatedLimit_sub_two_div_prime_two_weight
  have hshift : Tendsto (fun s : ℝ => s + d) atTop atTop :=
    tendsto_atTop_atTop.mpr fun b => ⟨b - d, fun s hs => by linarith⟩
  have h := ((hf.comp hshift).const_mul w).sub hf
  have hlim : w * (-c) - (-c) = c * (1 - w) := by ring
  rw [hlim] at h
  refine h.congr' (Eventually.of_forall fun s => ?_)
  change w * f (s + d) - f s =
    (heatedLimit (s + d) - heatedLimit s) / Real.exp (-s * q)
  have hweight : Real.exp (-(s + d) * q) = Real.exp (-s * q) * w := by
    unfold w
    rw [← Real.exp_add]
    congr 1
    ring
  unfold f
  rw [hweight]
  have hw : w ≠ 0 := Real.exp_ne_zero _
  have hs : Real.exp (-s * q) ≠ 0 := Real.exp_ne_zero _
  field_simp
  ring

/-- Every fixed positive heat increment eventually separates the settled
values, in the direction given by the signed coefficient at index two. -/
theorem eventually_heatedLimit_lt_fixed_shift {d : ℝ} (hd : 0 < d) :
    ∀ᶠ s : ℝ in atTop, heatedLimit s < heatedLimit (s + d) := by
  have hq : 0 < Real.log 2 ^ 2 := pow_pos (Real.log_pos (by norm_num)) 2
  have hExp : Real.exp (-d * Real.log 2 ^ 2) < 1 :=
    Real.exp_lt_one_iff.mpr (mul_neg_of_neg_of_pos (neg_neg_of_pos hd) hq)
  have hRoot : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
  have hpos : 0 < (2 * (Real.sqrt 2)⁻¹) * (1 - Real.exp (-d * Real.log 2 ^ 2)) :=
    mul_pos (mul_pos (by norm_num) (inv_pos.mpr hRoot)) (sub_pos.mpr hExp)
  filter_upwards [(tendsto_order.mp
    (tendsto_heatedLimit_fixed_shift_div_prime_two_weight d)).1 0 hpos] with s hs
  exact sub_pos.mp ((div_pos_iff_of_pos_right (Real.exp_pos _)).mp hs)

/-- The diagonal removed from the settled ordered heated pickup. -/
def settledHeatedDiagonal (s : ℝ) : ℝ :=
  ∑' n : ℕ, (heatedCoeff s n * settled n) ^ 2

private theorem settledHeated_norm_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun n : ℕ => ‖heatedCoeff s n * settled n‖) := by
  have hb (n : ℕ) : ‖heatedCoeff s n * settled n‖ ≤ |heatedCoeff s n| * 2 := by
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (settled_bounds n).1]
    exact mul_le_mul_of_nonneg_left (settled_bounds n).2 (abs_nonneg _)
  exact ((heatedCoeff_abs_summable hs).mul_right 2).of_nonneg_of_le
    (fun _ => norm_nonneg _) hb

private theorem settledHeated_pair_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun p : ℕ × ℕ =>
      ‖(heatedCoeff s p.1 * settled p.1) * (heatedCoeff s p.2 * settled p.2)‖) :=
  Summable.mul_norm (f := fun n : ℕ => heatedCoeff s n * settled n)
    (g := fun n : ℕ => heatedCoeff s n * settled n)
    (settledHeated_norm_summable hs) (settledHeated_norm_summable hs)

private theorem settledHeated_diag_pairs_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun p : ℕ × ℕ =>
      if p.1 = p.2 then (heatedCoeff s p.1 * settled p.1) ^ 2 else 0) := by
  refine (settledHeated_pair_summable hs).of_norm_bounded ?_
  rintro ⟨m,n⟩
  by_cases h : m = n
  · subst n
    simp only [ite_true, pow_two]
    exact le_rfl
  · simpa only [ite_eq_right h, norm_zero] using
      norm_nonneg ((heatedCoeff s m * settled m) * (heatedCoeff s n * settled n))

private theorem settledHeated_diagonal_row (s : ℝ) (m : ℕ) :
    (∑' n : ℕ, if m = n then (heatedCoeff s m * settled m) ^ 2 else 0) =
      (heatedCoeff s m * settled m) ^ 2 := by
  rw [tsum_eq_single m]
  · simp
  · intro n hn
    simp [Ne.symm hn]

/-- The settled signed sum over ordered distinct pairs factors as the
square of the settled wave with its actual diagonal removed. -/
theorem settledHeatedPickup_eq_sq_sub_diagonal {s : ℝ} (hs : 0 < s) :
    settledHeatedPickup s = heatedLimit s ^ 2 - settledHeatedDiagonal s := by
  let a (n : ℕ) := heatedCoeff s n * settled n
  have hnorm : Summable (fun n : ℕ => ‖a n‖) := settledHeated_norm_summable hs
  have hpair : Summable (fun p : ℕ × ℕ => a p.1 * a p.2) :=
    (settledHeated_pair_summable hs).of_norm
  have hdiag := settledHeated_diag_pairs_summable hs
  have hfull : (∑' p : ℕ × ℕ, a p.1 * a p.2) = heatedLimit s ^ 2 := by
    rw [← tsum_mul_tsum_of_summable_norm hnorm hnorm, pow_two]
    rfl
  have hremoved :
      (∑' p : ℕ × ℕ, if p.1 = p.2 then a p.1 ^ 2 else 0) = settledHeatedDiagonal s := by
    rw [hdiag.tsum_prod]
    apply tsum_congr
    exact settledHeated_diagonal_row s
  rw [← hfull, ← hremoved, ← hpair.tsum_sub hdiag]
  unfold settledHeatedPickup
  apply tsum_congr
  rintro ⟨m,n⟩
  by_cases h : m = n
  · subst n
    simp [a, pow_two]
  · simp only [ite_eq_right h, sub_zero]
    dsimp [a]
    ring

/-- The original (n=1) term alone removes four from the full settled
square, independently of the signs of the remaining coefficients. -/
theorem settledHeatedPickup_le_sq_sub_four {s : ℝ} (hs : 0 < s) :
    settledHeatedPickup s ≤ heatedLimit s ^ 2 - 4 := by
  have hdiag := (settledHeated_diag_pairs_summable hs).prod
  simp_rw [settledHeated_diagonal_row] at hdiag
  have h := hdiag.sum_le_tsum ({1} : Finset ℕ) (fun n _ => sq_nonneg _)
  have hfour : 4 ≤ settledHeatedDiagonal s := by
    simpa [settledHeatedDiagonal, heatedCoeff, settled, moebiusReal,
      ArithmeticFunction.moebius_apply_one, show (2 : ℝ) ^ 2 = 4 by norm_num] using h
  rw [settledHeatedPickup_eq_sq_sub_diagonal hs]
  linarith

private def normalizedSettledDiagonalTerm (q s : ℝ) (n : ℕ) : ℝ :=
  if n = 1 then 0 else
    (moebiusReal n * settled n) ^ 2 *
      Real.exp (-s * (2 * Real.log (n : ℝ) ^ 2 - q))

private theorem settledHeated_square_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun n : ℕ => (heatedCoeff s n * settled n) ^ 2) := by
  have h := (settledHeated_diag_pairs_summable hs).prod
  simpa only [settledHeated_diagonal_row] using h

private theorem normalizedSettledDiagonal_return {q s : ℝ} (hs : 0 < s) :
    (∑' n, normalizedSettledDiagonalTerm q s n) =
      (settledHeatedDiagonal s - 4) / Real.exp (-s * q) := by
  let f (n : ℕ) := (heatedCoeff s n * settled n) ^ 2
  have hf : Summable f := settledHeated_square_summable hs
  have hone : f 1 = 4 := by
    norm_num [f, heatedCoeff, settled, moebiusReal, ArithmeticFunction.moebius_apply_one]
  change (∑' n, normalizedSettledDiagonalTerm q s n) = ((∑' n, f n) - 4) / _
  rw [hf.tsum_eq_add_tsum_ite 1, hone, add_sub_cancel_left, ← tsum_div_const]
  apply tsum_congr
  intro n
  by_cases h : n = 1
  · simp [h, normalizedSettledDiagonalTerm]
  · simp only [normalizedSettledDiagonalTerm, ite_eq_right h, f, heatedCoeff]
    rw [show -s * (2 * Real.log (n : ℝ) ^ 2 - q) =
          -s * Real.log (n : ℝ) ^ 2 + -s * Real.log (n : ℝ) ^ 2 -
            (-s * q) by ring, Real.exp_sub, Real.exp_add]
    ring

private theorem tendsto_normalizedSettledDiagonal_aux {q : ℝ}
    (hqmax : q ≤ 2 * Real.log 2 ^ 2) :
    Tendsto (fun s : ℝ => (settledHeatedDiagonal s - 4) / Real.exp (-s * q))
      atTop (𝓝 (if q = 2 * Real.log 2 ^ 2 then (moebiusReal 2 * settled 2) ^ 2 else 0)) := by
  let g (n : ℕ) := if q = 2 * Real.log 2 ^ 2 ∧ n = 2 then (moebiusReal 2 * settled 2) ^ 2 else 0
  let bound (n : ℕ) := Real.exp (q) * (heatedCoeff 1 n * settled n) ^ 2
  have hs : Summable bound := (settledHeated_square_summable (by norm_num : (0 : ℝ) < 1)).mul_left _
  have h := tendsto_tsum_of_dominated_convergence (𝓕 := atTop)
    (f := normalizedSettledDiagonalTerm q) (g := g) hs
    (by
      intro n
      by_cases h0 : n = 0
      · subst n
        simp [normalizedSettledDiagonalTerm, settled, g]
      by_cases h1 : n = 1
      · subst n
        simp [normalizedSettledDiagonalTerm, g]
      by_cases hlead : q = 2 * Real.log 2 ^ 2 ∧ n = 2
      · obtain ⟨rfl, rfl⟩ := hlead
        simp [normalizedSettledDiagonalTerm, g]
      have hq : 0 < 2 * Real.log (n : ℝ) ^ 2 - q := by
        by_cases h2 : n = 2
        · subst n
          exact sub_pos.mpr (lt_of_le_of_ne hqmax (fun he => hlead ⟨he, rfl⟩))
        · have hn : 2 < n := by omega
          have hlog : Real.log 2 < Real.log (n : ℝ) :=
            Real.log_lt_log (by norm_num) (by exact_mod_cast hn)
          have hsq := pow_lt_pow_left₀ hlog (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2))
            (by decide : (2 : ℕ) ≠ 0)
          linarith
      simpa only [normalizedSettledDiagonalTerm, g, ite_eq_right h1, ite_eq_right hlead,
        mul_zero] using
        (tendsto_heat_weight_zero hq).const_mul ((moebiusReal n * settled n) ^ 2))
    (by
      filter_upwards [eventually_ge_atTop (1 : ℝ)] with s hs n
      by_cases h0 : n = 0
      · subst n
        simp [normalizedSettledDiagonalTerm, settled, bound]
      by_cases h1 : n = 1
      · rw [normalizedSettledDiagonalTerm, ite_eq_left h1, norm_zero]
        dsimp [bound]
        positivity
      have hn : 2 ≤ n := by omega
      have hlog : Real.log 2 ≤ Real.log (n : ℝ) :=
        Real.log_le_log (by norm_num) (by exact_mod_cast hn)
      have hsq := pow_le_pow_left₀ (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)) hlog 2
      have hq : 0 ≤ 2 * Real.log (n : ℝ) ^ 2 - q := by
        linarith
      have hexp : Real.exp (-s * (2 * Real.log (n : ℝ) ^ 2 - q)) ≤
          Real.exp (-(2 * Real.log (n : ℝ) ^ 2 - q)) :=
        Real.exp_le_exp.mpr (by nlinarith [mul_nonneg (sub_nonneg.mpr hs) hq])
      rw [normalizedSettledDiagonalTerm, ite_eq_right h1, Real.norm_eq_abs,
        abs_of_nonneg (by positivity)]
      calc
        _ ≤ (moebiusReal n * settled n) ^ 2 *
            Real.exp (-(2 * Real.log (n : ℝ) ^ 2 - q)) :=
          mul_le_mul_of_nonneg_left hexp (sq_nonneg _)
        _ = bound n := by
          dsimp [bound, heatedCoeff]
          rw [show -(2 * Real.log (n : ℝ) ^ 2 - q) =
            q + (-1 * Real.log (n : ℝ) ^ 2 + -1 * Real.log (n : ℝ) ^ 2) by ring,
            Real.exp_add, Real.exp_add]
          ring)
  have hg : (∑' n, g n) =
      if q = 2 * Real.log 2 ^ 2 then (moebiusReal 2 * settled 2) ^ 2 else 0 := by
    by_cases hq : q = 2 * Real.log 2 ^ 2
    · simp [g, hq]
    · simp [g, hq]
  rw [hg] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with s hs
  exact normalizedSettledDiagonal_return hs

private theorem tendsto_normalizedSettledDiagonal :
    Tendsto (fun s : ℝ => (settledHeatedDiagonal s - 4) / Real.exp (-s * Real.log 2 ^ 2))
      atTop (𝓝 0) := by
  have hq : 0 < Real.log 2 ^ 2 := pow_pos (Real.log_pos (by norm_num)) 2
  have hq' : Real.log 2 ^ 2 < 2 * Real.log 2 ^ 2 := by linarith
  simpa only [ite_eq_right (ne_of_lt hq')] using
    tendsto_normalizedSettledDiagonal_aux hq'.le

/-- The leading signed ordered contribution at high heat consists of the
two orientations between the original indices one and two. -/
theorem tendsto_settledHeatedPickup_div_prime_two_weight :
    Tendsto (fun s : ℝ => settledHeatedPickup s / Real.exp (-s * Real.log 2 ^ 2))
      atTop (𝓝 (-(8 * (Real.sqrt 2)⁻¹))) := by
  have h := tendsto_heatedLimit_sub_two_div_prime_two_weight
  have hw := tendsto_heat_weight_zero (pow_pos (Real.log_pos (by norm_num : (1 : ℝ) < 2)) 2)
  have hL : Tendsto heatedLimit atTop (𝓝 2) := by
    have hp := (h.mul hw).add_const 2
    rw [mul_zero, zero_add] at hp
    refine hp.congr' (Eventually.of_forall fun s => ?_)
    rw [div_mul_cancel₀ _ (Real.exp_ne_zero _), sub_add_cancel]
  have hlim := (h.mul (hL.add_const 2)).sub tendsto_normalizedSettledDiagonal
  rw [sub_zero, show -(2 * (Real.sqrt 2)⁻¹) * (2 + 2) = -(8 * (Real.sqrt 2)⁻¹) by ring] at hlim
  refine hlim.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with s hs
  rw [settledHeatedPickup_eq_sq_sub_diagonal hs]
  ring

/-- The high-heat first correction to the sharp signed allowance at a
given source mean. Its leading term vanishes exactly at mean four. -/
theorem tendsto_settled_residual_allowance_correction_div_prime_two_weight (m : ℝ) :
    Tendsto (fun s : ℝ =>
      (settledHeatedPickup s + heatedLimit s ^ 2 - 2 * heatedLimit s * m -
        (4 - 4 * m)) / Real.exp (-s * Real.log 2 ^ 2))
      atTop (𝓝 ((2 * m - 8) * (2 * (Real.sqrt 2)⁻¹))) := by
  have h := tendsto_heatedLimit_sub_two_div_prime_two_weight
  have hw := tendsto_heat_weight_zero (pow_pos (Real.log_pos (by norm_num : (1 : ℝ) < 2)) 2)
  have hL : Tendsto heatedLimit atTop (𝓝 2) := by
    have hp := (h.mul hw).add_const 2
    rw [mul_zero, zero_add] at hp
    refine hp.congr' (Eventually.of_forall fun s => ?_)
    rw [div_mul_cancel₀ _ (Real.exp_ne_zero _), sub_add_cancel]
  have hlim := tendsto_settledHeatedPickup_div_prime_two_weight.add
    (h.mul ((hL.add_const 2).sub_const (2 * m)))
  have hc : -(8 * (Real.sqrt 2)⁻¹) +
      -(2 * (Real.sqrt 2)⁻¹) * (2 + 2 - 2 * m) =
        (2 * m - 8) * (2 * (Real.sqrt 2)⁻¹) := by ring
  rw [hc] at hlim
  refine hlim.congr' (Eventually.of_forall fun s => ?_)
  dsimp only
  ring

/-- At supplied mean four, the leading heat correction cancels and the
second order coefficient of the actual signed allowance is two. -/
theorem tendsto_settled_residual_allowance_at_mean_four_second_order :
    Tendsto (fun s : ℝ =>
      (settledHeatedPickup s + heatedLimit s ^ 2 - 2 * heatedLimit s * 4 + 12) /
        Real.exp (-s * (2 * Real.log 2 ^ 2)))
      atTop (𝓝 2) := by
  let c := 2 * (Real.sqrt 2)⁻¹
  have hc : c ^ 2 = 2 := by
    have hroot : (Real.sqrt 2) ^ 2 = 2 := Real.sq_sqrt (by norm_num)
    have hpos : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
    dsimp [c]
    field_simp
    nlinarith
  have hmu : moebiusReal 2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
  have hdiag : Tendsto (fun s : ℝ => (settledHeatedDiagonal s - 4) /
      Real.exp (-s * (2 * Real.log 2 ^ 2))) atTop (𝓝 2) := by
    have hd := tendsto_normalizedSettledDiagonal_aux (q := 2 * Real.log 2 ^ 2) le_rfl
    have heq : (moebiusReal 2 * settled 2) ^ 2 = 2 := by
      rw [hmu, neg_one_mul, neg_sq]
      exact hc
    simpa only [ite_true, heq] using hd
  have hf := tendsto_heatedLimit_sub_two_div_prime_two_weight.pow 2
  change Tendsto _ atTop (𝓝 ((-c) ^ 2)) at hf
  rw [neg_sq, hc] at hf
  have h := (hf.const_mul (2 : ℝ)).sub hdiag
  rw [show (2 : ℝ) * 2 - 2 = 2 by norm_num] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with s hs
  rw [settledHeatedPickup_eq_sq_sub_diagonal hs]
  have hw : Real.exp (-s * (2 * Real.log 2 ^ 2)) = Real.exp (-s * Real.log 2 ^ 2) ^ 2 := by
    rw [show -s * (2 * Real.log 2 ^ 2) =
      -s * Real.log 2 ^ 2 + -s * Real.log 2 ^ 2 by ring, Real.exp_add]
    ring
  rw [hw, div_pow]
  ring

/-- At one positive heat with nonzero settled wave, the signed mask and
residual correction determines the original source mean on the same scales. -/
theorem tendsto_normalized_heatMaskDeviation_add_residual_iff_source_mean
    {s m : ℝ} (hs : 0 < s) (hne : heatedLimit s ≠ 0)
    {l : Filter ℝ} (hl : l ≤ atTop) :
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
        pickupDiagonal T + residualEnergy s T) / T)
      l (𝓝 (settledHeatedPickup s + heatedLimit s ^ 2 - 2 * heatedLimit s * m)) ↔
    Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, wholePickup u) / T) l (𝓝 m) := by
  let B := settledHeatedPickup s + heatedLimit s ^ 2
  let k := 2 * heatedLimit s
  let D (T : ℝ) :=
    (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
      pickupDiagonal T + residualEnergy s T) / T
  let M (T : ℝ) := (∫ u in (0 : ℝ)..T, wholePickup u) / T
  change Tendsto D l (𝓝 (B - k * m)) ↔ Tendsto M l (𝓝 m)
  have hk : k ≠ 0 := mul_ne_zero (by norm_num) hne
  have hsum : Tendsto (fun T => D T + k * M T) l (𝓝 B) := by
    simpa only [D, k, M, B, add_div, mul_div_assoc] using
      (tendsto_normalized_heatMaskDeviation_add_residual_with_mean_correction hs).mono_left hl
  constructor
  · intro hD
    have h := (hsum.sub hD).div_const k
    have hlimit : (B - (B - k * m)) / k = m := by
      rw [show B - (B - k * m) = k * m by ring]
      field_simp
    rw [hlimit] at h
    refine h.congr' (Eventually.of_forall fun T => ?_)
    rw [show D T + k * M T - D T = k * M T by ring]
    field_simp
  · exact tendsto_normalized_heatMaskDeviation_add_residual_of_source_mean hs hl

private theorem pickup_mean_sq_le_energy_div {T : ℝ} (hT : 0 < T) :
    ((∫ u in (0 : ℝ)..T, wholePickup u) / T) ^ 2 ≤ pickupEnergy T / T := by
  let I := ∫ u in (0 : ℝ)..T, wholePickup u
  have hnonneg : 0 ≤ ∫ u in (0 : ℝ)..T, (wholePickup u - I / T) ^ 2 :=
    intervalIntegral.integral_nonneg_of_forall hT.le (fun _ => sq_nonneg _)
  rw [centeredPickup_expand] at hnonneg
  change 0 ≤ pickupEnergy T - 2 * (I / T) * I + (I / T) ^ 2 * T at hnonneg
  have heq : pickupEnergy T - 2 * (I / T) * I + (I / T) ^ 2 * T =
      pickupEnergy T - (I / T) ^ 2 * T := by
    field_simp
    ring
  rw [heq] at hnonneg
  exact (le_div_iff₀ hT).mpr (sub_nonneg.mp hnonneg)

/-- A limiting source mean puts a sharp ceiling on the normalized signed
mask deviation relative to the original diagonal. -/
theorem eventually_heatMaskDeviation_sub_diagonal_div_le_of_source_mean
    {s m : ℝ} (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop)
    (hmean : Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, wholePickup u) / T) l (𝓝 m))
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ T in l, (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
      pickupDiagonal T) / T ≤ settledHeatedPickup s - m ^ 2 + ε := by
  have hsum := (tendsto_normalized_heatMaskDeviation_sub_diagonal_add_energy hs).mono_left hl
  have hlim := hsum.sub (hmean.pow 2)
  have hhigh := (tendsto_order.mp hlim).2 (settledHeatedPickup s - m ^ 2 + ε) (by linarith)
  filter_upwards [hhigh, (eventually_gt_atTop (0 : ℝ)).filter_mono hl] with T hhigh hT
  rw [add_div] at hhigh
  linarith [pickup_mean_sq_le_energy_div hT]

/-- Any supplied linear residual allowance must pay at least the squared
difference between the limiting source mean and the settled heated wave. -/
theorem sq_source_mean_sub_heatedLimit_le_residual_allowance
    {s m A : ℝ} (hs : 0 < s) {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (hmean : Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, wholePickup u) / T) l (𝓝 m))
    (hbudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε) :
    (m - heatedLimit s) ^ 2 ≤ A := by
  by_contra! hbad
  let ε := ((m - heatedLimit s) ^ 2 - A) / 3
  have hε : 0 < ε := by dsimp [ε]; linarith
  have hlow := (residualEnergy_linear_budget_iff_heatMaskDeviation_of_source_mean hs hl hmean).mp
    hbudget ε hε
  have hhigh := eventually_heatMaskDeviation_sub_diagonal_div_le_of_source_mean hs hl hmean hε
  obtain ⟨T, htlow, hthigh⟩ := (hlow.and hhigh).exists
  dsimp [ε] at htlow hthigh
  nlinarith

/-- With a limiting pickup mean, the signed deviation reaches its mean-square
ceiling precisely when the normalized centered source energy goes to zero.
More generally the centered energy subtracts its slope from that ceiling. -/
theorem tendsto_heatMaskDeviation_sub_diagonal_div_iff_source_variance
    {s m v : ℝ} (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop)
    (hmean : Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, wholePickup u) / T) l (𝓝 m)) :
    Tendsto (fun T : ℝ => (weightedPickupDeviation T Finset.univ (heatMaskWeight s T)
      (heatMaskCoeff T) - pickupDiagonal T) / T) l (𝓝 (settledHeatedPickup s - m ^ 2 - v)) ↔
    Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, (wholePickup u - m) ^ 2) / T) l (𝓝 v) := by
  let D (T : ℝ) := (weightedPickupDeviation T Finset.univ (heatMaskWeight s T)
    (heatMaskCoeff T) - pickupDiagonal T) / T
  let V (T : ℝ) := (∫ u in (0 : ℝ)..T, (wholePickup u - m) ^ 2) / T
  let B := settledHeatedPickup s - m ^ 2
  change Tendsto D l (𝓝 (B - v)) ↔ Tendsto V l (𝓝 v)
  have hsum : Tendsto (fun T => D T + V T) l (𝓝 B) := by
    have hsource := (tendsto_normalized_heatMaskDeviation_sub_diagonal_add_energy hs).mono_left hl
    have h := (hsource.sub (hmean.const_mul (2 * m))).add_const (m ^ 2)
    rw [show settledHeatedPickup s - 2 * m * m + m ^ 2 = B by dsimp [B]; ring] at h
    refine h.congr' ?_
    filter_upwards [(eventually_gt_atTop (0 : ℝ)).filter_mono hl] with T hT
    unfold D V
    rw [centeredPickup_expand]
    field_simp
    ring
  constructor
  · intro h
    have hv := hsum.sub h
    rw [show B - (B - v) = v by ring] at hv
    exact hv.congr' (Eventually.of_forall fun T => by
      show D T + V T - D T = V T
      ring)
  · intro h
    exact (hsum.sub h).congr' (Eventually.of_forall fun T => add_sub_cancel_right (D T) (V T))

/-- The mean over the original pickup horizon. -/
def pickupHorizonMean (T : ℝ) : ℝ := (∫ u in (0 : ℝ)..T, wholePickup u) / T

/-- The average squared fluctuation about the mean at the same horizon. -/
def pickupHorizonVariance (T : ℝ) : ℝ :=
  (∫ u in (0 : ℝ)..T, (wholePickup u - pickupHorizonMean T) ^ 2) / T

private theorem centeredPickup_div_eq_variance_add_sq (b : ℝ) {T : ℝ} (hT : 0 < T) :
    (∫ u in (0 : ℝ)..T, (wholePickup u - b) ^ 2) / T =
      pickupHorizonVariance T + (pickupHorizonMean T - b) ^ 2 := by
  unfold pickupHorizonVariance pickupHorizonMean
  rw [centeredPickup_expand, centeredPickup_expand]
  field_simp
  ring

/-- With the measured mean and variance retained, the original signed
deviation has the same settled limit even if the mean does not converge. -/
theorem tendsto_normalized_heatMaskDeviation_add_measured_variance_and_mean_sq
    {s : ℝ} (hs : 0 < s) :
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
        pickupDiagonal T) / T + pickupHorizonVariance T + pickupHorizonMean T ^ 2)
      atTop (𝓝 (settledHeatedPickup s)) := by
  refine (tendsto_normalized_heatMaskDeviation_sub_diagonal_add_energy hs).congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  have h := centeredPickup_div_eq_variance_add_sq 0 hT
  simp only [sub_zero] at h
  change pickupEnergy T / T = pickupHorizonVariance T + pickupHorizonMean T ^ 2 at h
  rw [add_div, h]
  ring

/-- The genuine residual slope is the measured variance plus the squared
difference from the settled heat, up to an error tending to zero. -/
theorem tendsto_residualEnergy_div_sub_measured_variance_and_mean_cost
    {s : ℝ} (hs : 0 < s) :
    Tendsto (fun T : ℝ => residualEnergy s T / T -
      (pickupHorizonVariance T + (pickupHorizonMean T - heatedLimit s) ^ 2))
      atTop (𝓝 0) := by
  refine (tendsto_centeredResidual_error_div hs).congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  rw [sub_div, centeredPickup_div_eq_variance_add_sq (heatedLimit s) hT]

/-- Any convex combination of two genuine allowances bounds the variance
and the squared cost relative to the corresponding settled mean. -/
theorem eventually_variance_add_weighted_cost_le_of_two_residual_allowances
    {s t A B w : ℝ} (hs : 0 < s) (ht : 0 < t) (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1)
    {l : Filter ℝ} (hl : l ≤ atTop)
    (hA : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε)
    (hB : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ B + ε)
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ T in l, pickupHorizonVariance T +
        (pickupHorizonMean T - (w * heatedLimit s + (1 - w) * heatedLimit t)) ^ 2 ≤
      w * A + (1 - w) * B - w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 + ε := by
  have hsmall : 0 < ε / 2 := by linarith
  have hnegative : -(ε / 2) < 0 := by linarith
  have hslim := (tendsto_residualEnergy_div_sub_measured_variance_and_mean_cost hs).mono_left hl
  have htlim := (tendsto_residualEnergy_div_sub_measured_variance_and_mean_cost ht).mono_left hl
  filter_upwards [hA (ε / 2) hsmall, hB (ε / 2) hsmall,
    (tendsto_order.mp hslim).1 _ hnegative, (tendsto_order.mp htlim).1 _ hnegative]
    with T hsT htT hslow htlow
  have hsCost : pickupHorizonVariance T + (pickupHorizonMean T - heatedLimit s) ^ 2 ≤ A + ε := by
    linarith
  have htCost : pickupHorizonVariance T + (pickupHorizonMean T - heatedLimit t) ^ 2 ≤ B + ε := by
    linarith
  have hcost := add_le_add (mul_le_mul_of_nonneg_left hsCost hw₀)
    (mul_le_mul_of_nonneg_left htCost (sub_nonneg.mpr hw₁))
  have hsplit :
      w * (pickupHorizonVariance T + (pickupHorizonMean T - heatedLimit s) ^ 2) +
        (1 - w) * (pickupHorizonVariance T + (pickupHorizonMean T - heatedLimit t) ^ 2) =
      pickupHorizonVariance T +
        (pickupHorizonMean T - (w * heatedLimit s + (1 - w) * heatedLimit t)) ^ 2 +
        w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 := by ring
  rw [hsplit] at hcost
  linarith

/-- Two genuine residual allowances on the same scales bound the measured
variance and the squared distance to the midpoint of the settled heats. -/
theorem eventually_variance_add_midpoint_cost_le_of_two_residual_allowances
    {s t A B : ℝ} (hs : 0 < s) (ht : 0 < t) {l : Filter ℝ} (hl : l ≤ atTop)
    (hA : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε)
    (hB : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ B + ε)
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ T in l, pickupHorizonVariance T +
        (pickupHorizonMean T - (heatedLimit s + heatedLimit t) / 2) ^ 2 ≤
      (A + B) / 2 - (heatedLimit s - heatedLimit t) ^ 2 / 4 + ε := by
  have h := eventually_variance_add_weighted_cost_le_of_two_residual_allowances
    (w := 1 / 2) hs ht (by norm_num) (by norm_num) hl hA hB hε
  filter_upwards [h] with T hT
  linarith [show (1 / 2 : ℝ) * heatedLimit s + (1 - 1 / 2) * heatedLimit t =
    (heatedLimit s + heatedLimit t) / 2 by ring]

/-- The squared gap between settled waves imposes a joint lower cost on
two linear residual allowances, even without convergence of the source mean. -/
theorem settled_gap_sq_le_of_two_residual_allowances
    {s t A B : ℝ} (hs : 0 < s) (ht : 0 < t) {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (hA : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε)
    (hB : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ B + ε) :
    (heatedLimit s - heatedLimit t) ^ 2 ≤ 2 * (A + B) := by
  by_contra! hbad
  let ε := ((heatedLimit s - heatedLimit t) ^ 2 - 2 * (A + B)) / 8
  have hε : 0 < ε := by dsimp [ε]; linarith
  have hlim := eventually_variance_add_midpoint_cost_le_of_two_residual_allowances hs ht hl hA hB hε
  obtain ⟨T, hT, hcost⟩ := (((eventually_gt_atTop (0 : ℝ)).filter_mono hl).and hlim).exists
  have hvar : 0 ≤ pickupHorizonVariance T := by
    unfold pickupHorizonVariance
    exact div_nonneg (intervalIntegral.integral_nonneg_of_forall hT.le (fun _ => sq_nonneg _)) hT.le
  dsimp [ε] at hcost
  linarith [sq_nonneg (pickupHorizonMean T - (heatedLimit s + heatedLimit t) / 2)]

/-- Two possibly unequal genuine allowances constrain the separation of
their settled heats by the sum of the two square-root allowances. -/
theorem abs_settled_gap_le_sqrt_add_sqrt_of_two_residual_allowances
    {s t A B : ℝ} (hs : 0 < s) (ht : 0 < t) {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (hA : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε)
    (hB : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ B + ε) :
    |heatedLimit s - heatedLimit t| ≤ Real.sqrt A + Real.sqrt B := by
  have hδ (δ : ℝ) (hδ : 0 < δ) :
      |heatedLimit s - heatedLimit t| ≤ Real.sqrt (A + δ) + Real.sqrt (B + δ) := by
    have hleft := eventually_variance_add_weighted_cost_le_of_two_residual_allowances
      (w := 1) hs ht (by norm_num) le_rfl hl hA hB hδ
    have hright := eventually_variance_add_weighted_cost_le_of_two_residual_allowances
      (w := 0) hs ht le_rfl (by norm_num) hl hA hB hδ
    obtain ⟨T, hT, hleftT, hrightT⟩ :=
      (((eventually_gt_atTop (0 : ℝ)).filter_mono hl).and (hleft.and hright)).exists
    have hvar : 0 ≤ pickupHorizonVariance T := by
      unfold pickupHorizonVariance
      exact div_nonneg (intervalIntegral.integral_nonneg_of_forall hT.le
        (fun _ => sq_nonneg _)) hT.le
    have hleftSq : (pickupHorizonMean T - heatedLimit s) ^ 2 ≤ A + δ := by
      norm_num at hleftT
      linarith
    have hrightSq : (pickupHorizonMean T - heatedLimit t) ^ 2 ≤ B + δ := by
      norm_num at hrightT
      linarith
    have habs {x a : ℝ} (h : x ^ 2 ≤ a) : |x| ≤ Real.sqrt a := by
      have ha := (sq_nonneg x).trans h
      rw [← abs_of_nonneg (Real.sqrt_nonneg a)]
      apply sq_le_sq.mp
      rwa [Real.sq_sqrt ha]
    calc
      |heatedLimit s - heatedLimit t| ≤
        |heatedLimit s - pickupHorizonMean T| + |pickupHorizonMean T - heatedLimit t| :=
        abs_sub_le _ _ _
      _ ≤ _ := add_le_add (by rw [abs_sub_comm]; exact habs hleftSq) (habs hrightSq)
  have hcont : Continuous (fun δ : ℝ => Real.sqrt (A + δ) + Real.sqrt (B + δ)) := by
    fun_prop
  have hlim : Tendsto (fun δ : ℝ => Real.sqrt (A + δ) + Real.sqrt (B + δ))
      (𝓝[>] (0 : ℝ)) (𝓝 (Real.sqrt A + Real.sqrt B)) := by
    have h := (hcont.continuousAt (x := (0 : ℝ))).continuousWithinAt (s := Ioi 0)
    simpa only [ContinuousWithinAt, add_zero] using h
  apply ge_of_tendsto hlim
  filter_upwards [(self_mem_nhdsWithin : Ioi (0 : ℝ) ∈ 𝓝[>] (0 : ℝ))] with δ hpos
  exact hδ δ hpos

/-- Saturation at a prescribed convex weight forces the measured mean to
the weighted settled value and the measured variance to zero. -/
theorem pickup_weighted_mean_and_variance_limits_of_saturated_allowances
    {s t A B w : ℝ} (hs : 0 < s) (ht : 0 < t) (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1)
    {l : Filter ℝ} (hl : l ≤ atTop)
    (hA : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε)
    (hB : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ B + ε)
    (heq : w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 = w * A + (1 - w) * B) :
    Tendsto pickupHorizonMean l (𝓝 (w * heatedLimit s + (1 - w) * heatedLimit t)) ∧
      Tendsto pickupHorizonVariance l (𝓝 0) := by
  let m := w * heatedLimit s + (1 - w) * heatedLimit t
  have hnonneg : ∀ᶠ T in l, 0 ≤ pickupHorizonVariance T := by
    filter_upwards [(eventually_gt_atTop (0 : ℝ)).filter_mono hl] with T hT
    unfold pickupHorizonVariance
    exact div_nonneg (intervalIntegral.integral_nonneg_of_forall hT.le
      (fun _ => sq_nonneg _)) hT.le
  have hcost {ε : ℝ} (hε : 0 < ε) :
      ∀ᶠ T in l, pickupHorizonVariance T + (pickupHorizonMean T - m) ^ 2 ≤ ε := by
    filter_upwards [eventually_variance_add_weighted_cost_le_of_two_residual_allowances
      hs ht hw₀ hw₁ hl hA hB hε] with T hT
    rw [heq] at hT
    simpa only [m, sub_self, zero_add] using hT
  constructor
  · apply Metric.tendsto_nhds.mpr
    intro ε hε
    have hsmall : 0 < ε ^ 2 / 2 := by positivity
    filter_upwards [hnonneg, hcost hsmall] with T hv hT
    rw [Real.dist_eq]
    have hsq : (pickupHorizonMean T - m) ^ 2 < ε ^ 2 := by
      linarith [sq_pos_of_pos hε]
    simpa only [abs_of_pos hε] using (sq_lt_sq.mp hsq)
  · apply tendsto_order.mpr
    constructor
    · intro b hb
      exact hnonneg.mono fun _ h => hb.trans_le h
    · intro b hb
      filter_upwards [hcost (show 0 < b / 2 by positivity)] with T hT
      linarith [sq_nonneg (pickupHorizonMean T - m)]

/-- Attaining the midpoint joint lower cost forces the measured mean to
the midpoint and forces the centered source energy per horizon to zero. -/
theorem pickup_midpoint_and_variance_limits_of_saturated_allowances
    {s t A B : ℝ} (hs : 0 < s) (ht : 0 < t) {l : Filter ℝ} (hl : l ≤ atTop)
    (hA : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε)
    (hB : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ B + ε)
    (heq : (heatedLimit s - heatedLimit t) ^ 2 = 2 * (A + B)) :
    Tendsto pickupHorizonMean l (𝓝 ((heatedLimit s + heatedLimit t) / 2)) ∧
      Tendsto pickupHorizonVariance l (𝓝 0) := by
  have hw :
      (1 / 2 : ℝ) * (1 - 1 / 2) * (heatedLimit s - heatedLimit t) ^ 2 =
        (1 / 2 : ℝ) * A + (1 - 1 / 2) * B := by rw [heq]; ring
  have hm : (1 / 2 : ℝ) * heatedLimit s + (1 - 1 / 2) * heatedLimit t =
      (heatedLimit s + heatedLimit t) / 2 := by ring
  simpa only [hm] using
    pickup_weighted_mean_and_variance_limits_of_saturated_allowances
      hs ht (by norm_num) (by norm_num) hl hA hB hw

/-- When the two allowances attain the midpoint cost, the original signed
deviation relative to the source diagonal reaches its corresponding ceiling. -/
theorem tendsto_signed_mask_at_saturated_allowances
    {s t A B : ℝ} (hs : 0 < s) (ht : 0 < t) {l : Filter ℝ} (hl : l ≤ atTop)
    (hA : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ A + ε)
    (hB : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ B + ε)
    (heq : (heatedLimit s - heatedLimit t) ^ 2 = 2 * (A + B)) :
    Tendsto (fun T : ℝ => (weightedPickupDeviation T Finset.univ (heatMaskWeight s T)
      (heatMaskCoeff T) - pickupDiagonal T) / T)
      l (𝓝 (settledHeatedPickup s - ((heatedLimit s + heatedLimit t) / 2) ^ 2)) := by
  obtain ⟨hmean, hvar⟩ :=
    pickup_midpoint_and_variance_limits_of_saturated_allowances hs ht hl hA hB heq
  have h := (tendsto_normalized_heatMaskDeviation_add_measured_variance_and_mean_sq hs).mono_left hl
  have hlim := (h.sub (hmean.pow 2)).sub hvar
  rw [sub_zero] at hlim
  exact hlim.congr' (Eventually.of_forall fun T => by ring)

/-- If the two allowance radii just meet, the original measured mean tends
to their common endpoint and the measured variance tends to zero. -/
theorem pickup_mean_and_variance_limits_at_tangent_allowances
    {s t a b : ℝ} (hs : 0 < s) (ht : 0 < t)
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hpos : 0 < a + b)
    {l : Filter ℝ} (hl : l ≤ atTop)
    (hA : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ a ^ 2 + ε)
    (hB : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ b ^ 2 + ε)
    (heq : |heatedLimit s - heatedLimit t| = a + b) :
    Tendsto pickupHorizonMean l (𝓝 ((b * heatedLimit s + a * heatedLimit t) / (a + b))) ∧
      Tendsto pickupHorizonVariance l (𝓝 0) := by
  let w := b / (a + b)
  have hw₀ : 0 ≤ w := div_nonneg hb hpos.le
  have hw₁ : w ≤ 1 := (div_le_iff₀ hpos).mpr (by linarith)
  have hgap : (heatedLimit s - heatedLimit t) ^ 2 = (a + b) ^ 2 := by
    rw [← heq, sq_abs]
  have hweight : w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 =
      w * a ^ 2 + (1 - w) * b ^ 2 := by
    rw [hgap]
    dsimp [w]
    field_simp
    ring
  have hcenter : w * heatedLimit s + (1 - w) * heatedLimit t =
      (b * heatedLimit s + a * heatedLimit t) / (a + b) := by
    dsimp [w]
    field_simp
    ring
  simpa only [hcenter] using
    pickup_weighted_mean_and_variance_limits_of_saturated_allowances
      hs ht hw₀ hw₁ hl hA hB hweight


private theorem mask_exp_gap_le {q x d : ℝ} (hq : 0 < q) (hqx : q ≤ x) (hd : 0 ≤ d) :
    1 - Real.exp (-d * x) ≤ x / q * (1 - Real.exp (-d * q)) := by
  let f (u : ℝ) := x * (1 - Real.exp (-u * q)) - q * (1 - Real.exp (-u * x))
  have hder (u : ℝ) :
      HasDerivAt f (x * q * (Real.exp (-u * q) - Real.exp (-u * x))) u := by
    have aux (a : ℝ) : HasDerivAt (fun v : ℝ => Real.exp (-v * a))
        (Real.exp (-u * a) * (-1 * a)) u :=
      (((hasDerivAt_id u).neg).mul_const a).exp
    convert (((aux q).const_sub 1).const_mul x).sub (((aux x).const_sub 1).const_mul q) using 1
    ring
  have hm : MonotoneOn f (Ici 0) := by
    apply monotoneOn_of_deriv_nonneg (convex_Ici 0)
    · exact fun u _ => (hder u).continuousAt.continuousWithinAt
    · exact fun u _ => (hder u).differentiableAt.differentiableWithinAt
    · intro u hu
      have hu' : 0 ≤ u := interior_subset hu
      rw [(hder u).deriv]
      exact mul_nonneg (mul_nonneg (hq.le.trans hqx) hq.le)
        (sub_nonneg.mpr (Real.exp_le_exp.mpr (by nlinarith [mul_nonneg hu' (sub_nonneg.mpr hqx)])))
  have hf := hm (show (0 : ℝ) ∈ Ici 0 from (le_refl (0 : ℝ))) (show d ∈ Ici 0 from hd) hd
  have hf0 : f 0 = 0 := by simp [f]
  rw [hf0] at hf
  have h := (le_div_iff₀ hq).2 (by dsimp [f] at hf; linarith :
    (1 - Real.exp (-d * x)) * q ≤ x * (1 - Real.exp (-d * q)))
  rwa [mul_div_right_comm] at h

private theorem mask_exp_weight_tail {q t x s d : ℝ} (hq : 0 < q) (hqt : q ≤ t)
    (htx : t ≤ x) (hs : 2 ≤ s) (hd : 0 < d) :
    Real.exp (-s * x) * (1 - Real.exp (-d * x)) ≤
      Real.exp (-x) * (Real.exp (-1) / q * Real.exp (-(s - 2) * t) *
        (1 - Real.exp (-d * q))) := by
  have hgap : 0 ≤ 1 - Real.exp (-d * q) :=
    sub_nonneg.mpr (Real.exp_le_one_iff.mpr (by nlinarith))
  have hx : 0 ≤ x := hq.le.trans (hqt.trans htx)
  have he : Real.exp (-(s - 2) * x) ≤ Real.exp (-(s - 2) * t) :=
    Real.exp_le_exp.mpr (by nlinarith [mul_nonneg (sub_nonneg.mpr hs) (sub_nonneg.mpr htx)])
  calc
    _ ≤ Real.exp (-s * x) * (x / q * (1 - Real.exp (-d * q))) :=
      mul_le_mul_of_nonneg_left (mask_exp_gap_le hq (hqt.trans htx) hd.le) (Real.exp_nonneg _)
    _ = Real.exp (-x) * ((x * Real.exp (-x)) / q * Real.exp (-(s - 2) * x) *
          (1 - Real.exp (-d * q))) := by
      rw [show -s * x = -x + -x + -(s - 2) * x by ring, Real.exp_add, Real.exp_add]
      ring
    _ ≤ _ := by
      gcongr
      exact Real.mul_exp_neg_le_exp_neg_one x

private theorem mask_gram_two_deficit (T : ℝ) (hT : 0 ≤ T) :
    |pickupResponseGram T 1 2 - (8 * (Real.sqrt 2)⁻¹ / 2) * T| ≤ 16 := by
  have hresp (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
      0 ≤ settled n - pickupResponse n u ∧
        settled n - pickupResponse n u ≤ 2 * Real.exp (-u / 2) := by
    refine ⟨sub_nonneg.mpr (response_le_settled n u), ?_⟩
    have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
    have hr : (Real.sqrt (n : ℝ))⁻¹ = Real.exp (-Real.log (n : ℝ) / 2) := by
      rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnpos]
    unfold pickupResponse settled
    split_ifs with h
    · linarith
    · rw [sub_zero, hr]
      exact mul_le_mul_of_nonneg_left
        (Real.exp_le_exp.mpr (by linarith [lt_of_not_ge h])) (by norm_num)
  let f (u : ℝ) := pickupResponse 1 u * pickupResponse 2 u
  let L := settled 1 * settled 2
  have hbound (u : ℝ) : 0 ≤ L - f u ∧ L - f u ≤ 8 * Real.exp (-u / 2) := by
    have h₁ := hresp 1 (by decide) u
    have h₂ := hresp 2 (by decide) u
    have h₃ := response_bounds (n := 1) (by decide) u
    have h₄ := settled_bounds 2
    have he := Real.exp_nonneg (-u / 2)
    dsimp [L, f]
    rw [show settled 1 * settled 2 - pickupResponse 1 u * pickupResponse 2 u =
      (settled 1 - pickupResponse 1 u) * settled 2 +
        pickupResponse 1 u * (settled 2 - pickupResponse 2 u) by ring]
    constructor
    · exact add_nonneg (mul_nonneg h₁.1 h₄.1) (mul_nonneg h₃.1 h₂.1)
    · nlinarith [mul_le_mul h₁.2 h₄.2 h₄.1 (by positivity : 0 ≤ 2 * Real.exp (-u / 2)),
        mul_le_mul h₃.2 h₂.2 h₂.1 (by norm_num : (0 : ℝ) ≤ 2)]
  have hcont : Continuous f := (pickupResponse_continuous (n := 1) (by decide)).mul
    (pickupResponse_continuous (n := 2) (by decide))
  have hi : IntervalIntegrable (fun u => L - f u) volume 0 T :=
    (continuous_const.sub hcont).intervalIntegrable 0 T
  have hj : IntervalIntegrable (fun u : ℝ => 8 * Real.exp (-u / 2)) volume 0 T :=
    (by fun_prop : Continuous (fun u : ℝ => 8 * Real.exp (-u / 2))).intervalIntegrable 0 T
  have hlow := intervalIntegral.integral_nonneg (μ := volume) hT (fun u _ => (hbound u).1)
  have hhigh := intervalIntegral.integral_mono_on hT hi hj (fun u _ => (hbound u).2)
  have hval : (∫ u in (0 : ℝ)..T, 8 * Real.exp (-u / 2)) ≤ 16 := by
    rw [intervalIntegral.integral_const_mul]
    have hex : (∫ u in (0 : ℝ)..T, Real.exp (-u / 2)) = 2 * (1 - Real.exp (-T / 2)) := by
      have hder (u : ℝ) : HasDerivAt (fun v : ℝ => -2 * Real.exp (-v / 2))
          (Real.exp (-u / 2)) u := by
        have hf : HasDerivAt (fun v : ℝ => -v / 2) (-1 / 2) u :=
          ((hasDerivAt_id u).neg).div_const 2
        convert (hf.exp.const_mul (-2)) using 1
        ring
      rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hder u)]
      · simp
        ring
      · exact (by fun_prop : Continuous (fun u : ℝ => Real.exp (-u / 2))).intervalIntegrable 0 T
    rw [hex]
    linarith [Real.exp_nonneg (-T / 2)]
  have hL : L = 8 * (Real.sqrt 2)⁻¹ / 2 := by norm_num [L, settled]; ring
  rw [intervalIntegral.integral_sub (continuous_const.intervalIntegrable 0 T)
    (hcont.intervalIntegrable 0 T), intervalIntegral.integral_const, sub_zero, smul_eq_mul,
    hL] at hlow hhigh
  change 0 ≤ T * _ - pickupResponseGram T 1 2 at hlow
  change T * _ - pickupResponseGram T 1 2 ≤ _ at hhigh
  rw [abs_le]
  constructor <;> nlinarith

/-- Uniform finite-horizon shift of the original signed mask, with the
literal cutoff and the two orientations of the leading pair. -/
theorem abs_normalized_heatMaskDeviation_shift_sub_prime_two_le
    {s T d : ℝ} (hs : 2 ≤ s) (hT : Real.log 2 ≤ T) (hd : 0 < d) :
    |(weightedPickupDeviation T Finset.univ (heatMaskWeight (s + d) T) (heatMaskCoeff T) -
      weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T)) /
        (T * Real.exp (-s * Real.log 2 ^ 2) * (1 - Real.exp (-d * Real.log 2 ^ 2))) -
      8 * (Real.sqrt 2)⁻¹| ≤
      32 / T + 4 * heatedAbsMass 1 ^ 2 * (Real.exp (-1) / Real.log 2 ^ 2) *
        Real.exp (2 * Real.log 3 ^ 2 - s * (Real.log 3 ^ 2 - Real.log 2 ^ 2)) := by
  classical
  let q := Real.log 2 ^ 2
  let r := Real.log 3 ^ 2
  let g := 1 - Real.exp (-d * q)
  let W := Real.exp (-s * q) * g
  let K := Real.exp (-1) / q * Real.exp (-(s - 2) * r) * g
  let I := pickupIndex T
  let F (m n : ℕ) := pickupPairTerm T (heatedCoeff (s + d)) m n -
    pickupPairTerm T (heatedCoeff s) m n
  let a (m : ℕ) := |heatedCoeff 1 m|
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hq : 0 < q := sq_pos_of_pos hlog2
  have hqr : q ≤ r := pow_le_pow_left₀ hlog2.le
    (Real.log_le_log (by norm_num) (by norm_num)) 2
  have hTp : 0 < T := hlog2.trans_le hT
  have hg : 0 < g := sub_pos.mpr (Real.exp_lt_one_iff.mpr (by dsimp [q]; nlinarith))
  have hW : 0 < W := mul_pos (Real.exp_pos _) hg
  have hK : 0 ≤ K := mul_nonneg
    (mul_nonneg (div_nonneg (Real.exp_nonneg _) hq.le) (Real.exp_nonneg _)) hg.le
  have h2 : 2 ∈ I := by
    exact Finset.mem_Icc.mpr ⟨by decide, Nat.le_floor ((Real.log_le_iff_le_exp (by norm_num)).mp hT)⟩
  have h1 : 1 ∈ I := Finset.mem_Icc.mpr ⟨le_rfl,
    (by decide : (1 : ℕ) ≤ 2).trans (Finset.mem_Icc.mp h2).2⟩
  have hμ₁ : moebiusReal 1 = 1 := by simp [moebiusReal]
  have hμ₂ : moebiusReal 2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
  have h12 : F 1 2 = W * pickupResponseGram T 1 2 := by
    norm_num [F, pickupPairTerm, heatedCoeff, hμ₁, hμ₂, W, g, q]
    rw [show (-d + -s) * Real.log 2 ^ 2 =
      -(s * Real.log 2 ^ 2) + -(d * Real.log 2 ^ 2) by ring, Real.exp_add]
    ring
  have h21 : F 2 1 = W * pickupResponseGram T 2 1 := by
    norm_num [F, pickupPairTerm, heatedCoeff, hμ₁, hμ₂, W, g, q]
    rw [show (-d + -s) * Real.log 2 ^ 2 =
      -(s * Real.log 2 ^ 2) + -(d * Real.log 2 ^ 2) by ring, Real.exp_add]
    ring
  let J := ((I ×ˢ I).erase (1, 2)).erase (2, 1)
  have hmem12 : (1, 2) ∈ I ×ˢ I := Finset.mem_product.mpr ⟨h1, h2⟩
  have hmem21 : (2, 1) ∈ (I ×ˢ I).erase (1, 2) :=
    Finset.mem_erase.mpr ⟨by decide, Finset.mem_product.mpr ⟨h2, h1⟩⟩
  have hsplit : ∑ p ∈ J, F p.1 p.2 = (∑ m ∈ I, ∑ n ∈ I, F m n) -
      W * (pickupResponseGram T 1 2 + pickupResponseGram T 2 1) := by
    rw [← Finset.sum_product I I (fun p : ℕ × ℕ => F p.1 p.2)]
    have hA := Finset.sum_erase_add (s := I ×ˢ I) (f := fun p => F p.1 p.2) hmem12
    have hB := Finset.sum_erase_add (s := (I ×ˢ I).erase (1, 2)) (f := fun p => F p.1 p.2) hmem21
    dsimp only at hA hB
    change (∑ p ∈ J, F p.1 p.2) + F 2 1 = _ at hB
    rw [h12] at hA
    rw [h21] at hB
    linear_combination hA + hB
  have hpoint (p : ℕ × ℕ) (hp : p ∈ J) : |F p.1 p.2| ≤ a p.1 * a p.2 * (4 * T * K) := by
    obtain ⟨m, n⟩ := p
    obtain ⟨hne21, hne12, hp⟩ := Finset.mem_erase.mp hp |>.imp_right Finset.mem_erase.mp
    obtain ⟨hm, hn⟩ := Finset.mem_product.mp hp
    have hm₁ := (Finset.mem_Icc.mp hm).1
    have hn₁ := (Finset.mem_Icc.mp hn).1
    by_cases hmn : m = n
    · simp only [F, pickupPairTerm, ite_eq_right (not_not_intro hmn), sub_self, abs_zero]
      exact mul_nonneg (mul_nonneg (abs_nonneg _) (abs_nonneg _))
        (mul_nonneg (by positivity) hK)
    have hbig : 3 ≤ m ∨ 3 ≤ n := by
      by_contra! h
      obtain ⟨hm₂, hn₂⟩ := h
      have hm' : m = 1 ∨ m = 2 := by omega
      have hn' : n = 1 ∨ n = 2 := by omega
      rcases hm' with rfl | rfl <;> rcases hn' with rfl | rfl <;> contradiction
    let x := Real.log (m : ℝ) ^ 2 + Real.log (n : ℝ) ^ 2
    have hlog (k : ℕ) (hk : 3 ≤ k) : r ≤ Real.log (k : ℝ) ^ 2 :=
      pow_le_pow_left₀ (Real.log_nonneg (by norm_num))
        (Real.log_le_log (by norm_num) (by exact_mod_cast hk)) 2
    have hrx : r ≤ x := by
      rcases hbig with h | h
      · exact (hlog m h).trans (le_add_of_nonneg_right (sq_nonneg _))
      · exact (hlog n h).trans (le_add_of_nonneg_left (sq_nonneg _))
    have hF : F m n = (moebiusReal m * moebiusReal n * pickupResponseGram T m n) *
        (Real.exp (-s * x) * (Real.exp (-d * x) - 1)) := by
      simp only [F, pickupPairTerm, ite_eq_left hmn, heatedCoeff]
      calc
        _ = (moebiusReal m * moebiusReal n * pickupResponseGram T m n) *
            (Real.exp (-(s+d) * Real.log (m : ℝ)^2) *
              Real.exp (-(s+d) * Real.log (n : ℝ)^2) -
              Real.exp (-s * Real.log (m : ℝ)^2) *
              Real.exp (-s * Real.log (n : ℝ)^2)) := by ring
        _ = _ := by
          rw [← Real.exp_add, ← Real.exp_add]
          rw [show -(s+d) * Real.log (m : ℝ)^2 + -(s+d) * Real.log (n : ℝ)^2 =
            -s * x + -d * x by dsimp [x]; ring, Real.exp_add]
          rw [show -s * Real.log (m : ℝ)^2 + -s * Real.log (n : ℝ)^2 =
            -s * x by dsimp [x]; ring]
          ring
    have hax : a m * a n = |moebiusReal m| * |moebiusReal n| * Real.exp (-x) := by
      simp only [a, heatedCoeff, abs_mul, abs_of_nonneg (Real.exp_nonneg _)]
      rw [show -x = -1 * Real.log (m : ℝ) ^ 2 + -1 * Real.log (n : ℝ) ^ 2 by dsimp [x]; ring,
        Real.exp_add]
      ring
    have hnon : Real.exp (-d * x) ≤ 1 := Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hd.le) (hq.le.trans (hqr.trans hrx)))
    rw [hF, hax, abs_mul, abs_mul, abs_mul, abs_mul, abs_of_nonneg (Real.exp_nonneg _),
      abs_of_nonpos (sub_nonpos.mpr hnon), neg_sub]
    have hpw := mask_exp_weight_tail hq hqr hrx hs hd
    calc
      _ ≤ (|moebiusReal m| * |moebiusReal n| * (4 * T)) * (Real.exp (-x) * K) :=
        mul_le_mul (mul_le_mul_of_nonneg_left (gram_abs_le hTp.le hm₁ hn₁) (by positivity))
          hpw (by positivity) (by positivity)
      _ = _ := by ring
  have hmass : ∑ n ∈ I, a n ≤ heatedAbsMass 1 :=
    (heatedCoeff_abs_summable (by norm_num : (0 : ℝ) < 1)).sum_le_tsum _ (fun n _ => abs_nonneg _)
  have hrem : |∑ p ∈ J, F p.1 p.2| ≤ 4 * T * heatedAbsMass 1 ^ 2 * K := by
    have hsub : J ⊆ I ×ˢ I :=
      (Finset.erase_subset _ _).trans (Finset.erase_subset _ _)
    calc
      _ ≤ ∑ p ∈ J, |F p.1 p.2| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ p ∈ J, a p.1 * a p.2 * (4 * T * K) := Finset.sum_le_sum hpoint
      _ ≤ ∑ p ∈ I ×ˢ I, a p.1 * a p.2 * (4 * T * K) :=
        Finset.sum_le_sum_of_subset_of_nonneg hsub (fun p _ _ =>
          mul_nonneg (mul_nonneg (abs_nonneg _) (abs_nonneg _)) (by positivity))
      _ = (∑ n ∈ I, a n) ^ 2 * (4 * T * K) := by
        rw [Finset.sum_product, pow_two, Finset.sum_mul_sum]
        simp only [Finset.sum_mul]
      _ ≤ _ := by
        calc
          _ ≤ heatedAbsMass 1 ^ 2 * (4 * T * K) :=
            mul_le_mul_of_nonneg_right (pow_le_pow_left₀ (Finset.sum_nonneg
              (fun n _ => abs_nonneg (heatedCoeff 1 n))) hmass 2) (by positivity)
          _ = _ := by ring
  have hsym : pickupResponseGram T 2 1 = pickupResponseGram T 1 2 := by
    unfold pickupResponseGram
    simp only [mul_comm]
  let D := weightedPickupDeviation T Finset.univ (heatMaskWeight (s + d) T) (heatMaskCoeff T) -
    weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T)
  have hD : D = ∑ m ∈ I, ∑ n ∈ I, F m n := by
    simp only [D, mask_deviation_eq_heated_sub_source, sub_sub_sub_cancel_right,
      pickupPairSum, Finset.sum_sub_distrib, F, I]
  rw [hsplit, hsym, ← hD] at hrem
  have hden : 0 < T * W := mul_pos hTp hW
  have hnorm : |D / (T * W) - (2 * pickupResponseGram T 1 2) / T| ≤
      4 * heatedAbsMass 1 ^ 2 * (Real.exp (-1) / q) *
        Real.exp (2 * r - s * (r - q)) := by
    have h : |(D - W * (pickupResponseGram T 1 2 + pickupResponseGram T 1 2)) / (T * W)| ≤
        (4 * T * heatedAbsMass 1 ^ 2 * K) / (T * W) := by
      rw [abs_div, abs_of_pos hden]
      exact div_le_div_of_nonneg_right hrem hden.le
    have ha : (D - W * (pickupResponseGram T 1 2 + pickupResponseGram T 1 2)) / (T * W) =
        D / (T * W) - (2 * pickupResponseGram T 1 2) / T := by
      field_simp
      ring
    rw [ha] at h
    convert h using 1
    dsimp [W, K]
    rw [show 2 * r - s * (r - q) = -(s - 2) * r - (-s * q) by ring, Real.exp_sub]
    field_simp [ne_of_gt hg]
  have hgram : |(2 * pickupResponseGram T 1 2) / T - 8 * (Real.sqrt 2)⁻¹| ≤ 32 / T := by
    rw [show (2 * pickupResponseGram T 1 2) / T - 8 * (Real.sqrt 2)⁻¹ =
      (2 * (pickupResponseGram T 1 2 - (8 * (Real.sqrt 2)⁻¹ / 2) * T)) / T by
      field_simp, abs_div, abs_mul, abs_of_pos hTp, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
    exact div_le_div_of_nonneg_right (by linarith [mask_gram_two_deficit T hTp.le]) hTp.le
  have hfinal := (abs_sub_le (D / (T * W)) ((2 * pickupResponseGram T 1 2) / T)
    (8 * (Real.sqrt 2)⁻¹)).trans (add_le_add hnorm hgram)
  rw [add_comm] at hfinal
  simpa only [D, W, g, q, r, mul_assoc] using hfinal

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupHeatComparison
