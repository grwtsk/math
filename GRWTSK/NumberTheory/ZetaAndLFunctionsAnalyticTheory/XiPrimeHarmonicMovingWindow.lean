import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeHarmonicKernel
import Mathlib.Analysis.Calculus.Deriv.Inv

/-! # The unique critical point of the normalized dyadic window

The numerator of the normalized derivative is strictly decreasing once the
unnormalized slope passes its maximum. The decay of the normalized window
then forces this numerator through zero exactly once.
-/

namespace GRWTSK.XiPrimeHarmonic
open Set Filter
open scoped Topology
noncomputable section

/-- Normalized order block in the logarithmic scale. -/
def window (N : ℕ) (s : ℝ) := block N s / s

/-- The numerator of the derivative of the normalized window. -/
def windowNumerator (N : ℕ) (s : ℝ) := s * deriv (block N) s - block N s

private theorem block_mvt {a b : ℝ} (hab : a < b) (N : ℕ) :
    ∃ c ∈ Ioo a b, deriv (block N) c = (block N b - block N a) / (b-a) :=
  exists_deriv_eq_slope _ hab (fun x _ ↦ (hasDerivAt_block N x).continuousAt.continuousWithinAt)
    (fun x _ ↦ (hasDerivAt_block N x).differentiableAt.differentiableWithinAt)

theorem hasDerivAt_window {s : ℝ} (hs : 0 < s) (N : ℕ) :
    HasDerivAt (window N) (windowNumerator N s / s^2) s := by
  change HasDerivAt (block N / id) _ s
  simpa only [windowNumerator, (hasDerivAt_block N s).deriv, id_eq, one_mul, mul_one, mul_comm]
    using (hasDerivAt_block N s).div (hasDerivAt_id s) hs.ne'

private theorem cont_num (N : ℕ) : Continuous (windowNumerator N) := by
  have hd : Continuous (deriv (block N)) := by
    have h : deriv (block N) = fun x : ℝ ↦ (1-Real.exp (-x))^N * (1-(1-Real.exp (-x))^N) :=
      funext fun s ↦ (hasDerivAt_block N s).deriv
    rw [h]
    fun_prop
  exact (continuous_id.mul hd).sub (continuous_iff_continuousAt.mpr fun x ↦ (hasDerivAt_block N x).continuousAt)

private theorem kernel_infinity (N : ℕ) :
    Tendsto (kernel N) atTop (𝓝 (∑ i ∈ Finset.range N, 1/((i:ℝ)+1))) := by
  apply tendsto_finsetSum
  intro i _
  have h := (((tendsto_const_nhds (x := (1:ℝ))).sub Real.tendsto_exp_neg_atTop_nhds_zero).pow (i+1)).div_const ((i:ℝ)+1)
  simpa using h

theorem tendsto_window_atTop (N : ℕ) : Tendsto (window N) atTop (𝓝 0) :=
  ((kernel_infinity (2*N)).sub (kernel_infinity N)).div_atTop tendsto_id

private theorem half_exists {N : ℕ} (hN : N ≠ 0) :
    ∃ t : ℝ, 0 < t ∧ (1-Real.exp (-t))^N = 1/2 := by
  let u := fun x : ℝ ↦ (1-Real.exp (-x))^N
  have hu : Continuous u := by dsimp [u]; fun_prop
  have hlim : Tendsto u atTop (𝓝 1) := by
    simpa [u] using ((tendsto_const_nhds (x := (1:ℝ))).sub Real.tendsto_exp_neg_atTop_nhds_zero).pow N
  obtain ⟨v,hv,hv'⟩ := ((eventually_gt_atTop (0:ℝ)).and
    (hlim.eventually_const_lt (show (1/2:ℝ)<1 by norm_num))).exists
  obtain ⟨t,ht,he⟩ := intermediate_value_Ioo hv.le hu.continuousOn
    (show (1/2:ℝ) ∈ Ioo (u 0) (u v) by exact ⟨by simp [u,hN],hv'⟩)
  exact ⟨t,ht.1,he⟩

private theorem pos_before {N : ℕ} (hN : N ≠ 0) {s : ℝ} (hs : 0 < s)
    (hp : (1-Real.exp (-s))^N ≤ 1/2) : 0 < windowNumerator N s := by
  obtain ⟨c,hc,he⟩ := block_mvt hs N
  have hd := deriv_block_strict_rise hN hc.1.le hc.2 hp
  have hb : block N 0 = 0 := by simp [block]
  rw [hb, sub_zero, sub_zero] at he
  rw [he] at hd
  unfold windowNumerator
  have h := (div_lt_iff₀ hs).mp hd
  linarith only [h, mul_comm s (deriv (block N) s)]

private theorem u_monotone (N : ℕ) {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    (1-Real.exp (-x))^N ≤ (1-Real.exp (-y))^N := by
  apply pow_le_pow_left₀ _ _ N
  · exact sub_nonneg.mpr (Real.exp_le_one_iff.mpr (by linarith))
  · exact sub_le_sub_left (Real.exp_le_exp.mpr (neg_le_neg hxy)) _

private theorem num_decreases {N : ℕ} (hN : N ≠ 0) {s t : ℝ} (hs : 0 < s) (hst : s < t)
    (hp : 1/2 ≤ (1-Real.exp (-s))^N) : windowNumerator N t < windowNumerator N s := by
  obtain ⟨c,hc,he⟩ := block_mvt hst N
  have hct := deriv_block_strict_fall hN (hs.trans hc.1).le hc.2 (hp.trans (u_monotone N hs.le hc.1.le))
  have hst' := deriv_block_strict_fall hN hs.le hst hp
  have hh := (eq_div_iff (sub_pos.mpr hst).ne').mp he
  unfold windowNumerator
  nlinarith only [hh, mul_pos (sub_pos.mpr hct) (sub_pos.mpr hst), mul_pos hs (sub_pos.mpr hst')]

private theorem window_pos {N : ℕ} (hN : N ≠ 0) {s : ℝ} (hs : 0 < s) : 0 < window N s := by
  obtain ⟨c,hc,he⟩ := block_mvt hs N
  have hu : 0 < 1-Real.exp (-c) := sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith [hc.1]))
  have hu' : (1-Real.exp (-c))^N < 1 := pow_lt_one₀ hu.le (by linarith [Real.exp_pos (-c)]) hN
  have hd := mul_pos (pow_pos hu N) (sub_pos.mpr hu')
  rw [← (hasDerivAt_block N c).deriv, he] at hd
  simpa [block, window] using hd

private theorem negative_later {N : ℕ} (hN : N ≠ 0) {p : ℝ} (hp : 0 < p) :
    ∃ t : ℝ, p < t ∧ windowNumerator N t < 0 := by
  obtain ⟨q,hq,hq'⟩ := ((eventually_gt_atTop p).and
    ((tendsto_window_atTop N).eventually_lt_const (window_pos hN hp))).exists
  obtain ⟨t,ht,he⟩ := exists_deriv_eq_slope (window N) hq
    (fun x hx ↦ (hasDerivAt_window (hp.trans_le hx.1) N).continuousAt.continuousWithinAt)
    (fun x hx ↦ (hasDerivAt_window (hp.trans hx.1) N).differentiableAt.differentiableWithinAt)
  have hn := div_neg_of_neg_of_pos (sub_neg.mpr hq') (sub_pos.mpr hq)
  rw [← he, (hasDerivAt_window (hp.trans ht.1) N).deriv] at hn
  exact ⟨t,ht.1,neg_of_div_neg_left hn (sq_nonneg _)⟩

/-- There is exactly one turning point of the normalized moving window on the
positive ray. The derivative is strictly positive to its left and strictly
negative to its right. -/
theorem window_turning_point {N : ℕ} (hN : N ≠ 0) :
    ∃ t : ℝ, 0 < t ∧ deriv (window N) t = 0 ∧
      (∀ s ∈ Ioo 0 t, 0 < deriv (window N) s) ∧
      (∀ s ∈ Ioi t, deriv (window N) s < 0) := by
  obtain ⟨p,hp,he⟩ := half_exists hN
  obtain ⟨q,hq,hneg⟩ := negative_later hN hp
  have hpos := pos_before hN hp he.le
  obtain ⟨t,ht,hz⟩ := intermediate_value_Ioo' hq.le (cont_num N).continuousOn
    (show 0 ∈ Ioo (windowNumerator N q) (windowNumerator N p) from ⟨hneg,hpos⟩)
  have ht0 := hp.trans ht.1
  refine ⟨t,ht0,by rw [(hasDerivAt_window ht0 N).deriv, hz, zero_div],?_,?_⟩
  · intro s hs
    rw [(hasDerivAt_window hs.1 N).deriv]
    apply div_pos _ (sq_pos_of_pos hs.1)
    by_cases hsp : s ≤ p
    · exact pos_before hN hs.1 ((u_monotone N hs.1.le hsp).trans he.le)
    · rw [← hz]
      exact num_decreases hN hs.1 hs.2 (he.ge.trans (u_monotone N hp.le (le_of_not_ge hsp)))
  · intro s hs
    rw [(hasDerivAt_window (ht0.trans hs) N).deriv]
    apply div_neg_of_neg_of_pos _ (sq_pos_of_pos (ht0.trans hs))
    rw [← hz]
    exact num_decreases hN ht0 hs (he.ge.trans (u_monotone N hp.le ht.1.le))

/-- The normalized dyadic window is strictly increasing up to its single peak
and strictly decreasing from that peak onward. -/
theorem window_strict_unimodal {N : ℕ} (hN : N ≠ 0) :
    ∃ t : ℝ, 0 < t ∧ StrictMonoOn (window N) (Ioc 0 t) ∧
      StrictAntiOn (window N) (Ici t) := by
  obtain ⟨t,ht,_,hpos,hneg⟩ := window_turning_point hN
  refine ⟨t, ht, strictMonoOn_of_deriv_pos (convex_Ioc ..) ?_ ?_,
    strictAntiOn_of_deriv_neg (convex_Ici _) ?_ ?_⟩
  · exact fun x hx ↦ (hasDerivAt_window hx.1 N).continuousAt.continuousWithinAt
  · simpa only [interior_Ioc] using hpos
  · exact fun x hx ↦ (hasDerivAt_window (ht.trans_le hx) N).continuousAt.continuousWithinAt
  · simpa only [interior_Ici] using hneg

private theorem window_continuousOn {N : ℕ} (hN : N ≠ 0) : ContinuousOn (window N) (Ici 0) := by
  intro x hx
  rcases eq_or_lt_of_le (show 0 ≤ x from hx) with rfl | hx
  · apply ContinuousAt.continuousWithinAt
    apply continuousAt_iff_punctured_nhds.mpr
    change Tendsto (fun x : ℝ ↦ block N x / x) (𝓝[≠] 0) (𝓝 (window N 0))
    have hd := (hasDerivAt_block N 0).tendsto_slope
    simpa [funext (slope_def_field (block N) 0), window, block, hN] using hd
  · exact (hasDerivAt_window hx N).continuousAt.continuousWithinAt

/-- Every positive, subpeak level cuts the open positive ray in exactly two
points. The corresponding strict superlevel set is the interval between them. -/
theorem window_level_interval {N : ℕ} (hN : N ≠ 0) :
    ∃ t : ℝ, 0 < t ∧ ∀ v ∈ Ioo 0 (window N t), ∃ a b : ℝ,
      0 < a ∧ a < t ∧ t < b ∧ window N a = v ∧ window N b = v ∧
      ∀ s : ℝ, 0 < s → ((window N s = v ↔ s = a ∨ s = b) ∧
        (v < window N s ↔ s ∈ Ioo a b)) := by
  obtain ⟨t,ht,hup,hdn⟩ := window_strict_unimodal hN
  refine ⟨t,ht,?_⟩
  intro v hv
  have hc := window_continuousOn hN
  have hv0 : window N 0 < v := by simpa [window] using hv.1
  obtain ⟨a,ha,haa⟩ := intermediate_value_Ioo ht.le
    (hc.mono fun _ hx ↦ hx.1) (show v ∈ Ioo (window N 0) (window N t) from ⟨hv0,hv.2⟩)
  obtain ⟨q,hq,hq'⟩ := ((eventually_gt_atTop t).and
    ((tendsto_window_atTop N).eventually_lt_const hv.1)).exists
  obtain ⟨b,hb,hbb⟩ := intermediate_value_Ioo' hq.le
    (hc.mono fun _ hx ↦ ht.le.trans hx.1) (show v ∈ Ioo (window N q) (window N t) from ⟨hq',hv.2⟩)
  refine ⟨a,b,ha.1,ha.2,hb.1,haa,hbb,?_⟩
  intro s hs
  have hal : a ∈ Ioc 0 t := ⟨ha.1,ha.2.le⟩
  have hbr : b ∈ Ici t := hb.1.le
  by_cases hst : s ≤ t
  · have hsl : s ∈ Ioc 0 t := ⟨hs,hst⟩
    have hsb := hst.trans_lt hb.1
    refine ⟨⟨fun he ↦ Or.inl (hup.injOn hsl hal (he.trans haa.symm)),?_⟩,?_⟩
    · rintro (rfl|rfl) <;> assumption
    · rw [← haa]
      exact ⟨fun h ↦ ⟨(hup.lt_iff_lt hal hsl).mp h,hsb⟩,
        fun h ↦ hup hal hsl h.1⟩
  · have hsr : s ∈ Ici t := (lt_of_not_ge hst).le
    have has := ha.2.trans (lt_of_not_ge hst)
    refine ⟨⟨fun he ↦ Or.inr (hdn.injOn hsr hbr (he.trans hbb.symm)),?_⟩,?_⟩
    · rintro (rfl|rfl) <;> assumption
    · rw [← hbb]
      exact ⟨fun h ↦ ⟨has,(hdn.lt_iff_gt hbr hsr).mp h⟩,
        fun h ↦ hdn hsr hbr h.2⟩

end
end GRWTSK.XiPrimeHarmonic
