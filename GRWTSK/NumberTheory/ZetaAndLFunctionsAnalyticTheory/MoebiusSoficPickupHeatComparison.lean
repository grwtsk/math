/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import Mathlib.Analysis.Normed.Group.Tannery
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

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupHeatComparison
