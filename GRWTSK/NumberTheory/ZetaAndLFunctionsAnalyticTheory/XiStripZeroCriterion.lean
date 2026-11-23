/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiGenusOneLogSeries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiStripGreenKernel

/-! The positive strip Green sum on the actual xi divisor and its exact zero set. -/

namespace GRWTSK.XiStripZeroCriterion

open GRWTSK.NumberTheory.SpectralProductDivisorReturn GRWTSK.XiStripGreenKernel
open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor (bounded_zero_set_finite)
open Set Real
noncomputable section

def offset (σ : ℝ) (z : XiZero) := max (z.val.re-σ) 0

def term (σ k b : ℝ) (z : XiZero) := (analyticOrderNatAt xi z.1 : ℝ) *
  green k (offset σ z) (z.val.im-b)

def defect (σ k b : ℝ) := ∑' z : XiZero, term σ k b z

theorem offset_bounds {σ : ℝ} (hσ : σ ≤ 1) (z : XiZero) :
    0 ≤ offset σ z ∧ offset σ z ≤ 1-σ := by
  have hz := ((xi_eq_zero_iff_nontrivialZetaZero _).mp z.2).mem_critical_strip.2
  exact ⟨le_max_right _ _,max_le (by linarith) (by linarith)⟩

private theorem anchor_summable : Summable (fun z : XiZero => xiAnchorOrderTerm z.1) := by
  have hs := (xiPositiveTail_inverseSquare_summable_and_bound (T := 3) (by norm_num)).1
  have ha : Summable (xiAnchorOrderTerm ∘ (Subtype.val : xiStrictZeroTail 3 → ℂ)) :=
    (xiStrictTail_hasSum_paired Real.exp_one_lt_three.le hs).summable
  have h := ((summable_subtype_iff_indicator (s := xiStrictZeroTail 3)).mp ha).comp_injective
    (Subtype.val_injective : Function.Injective (Subtype.val : XiZero → ℂ))
  have head : {z : XiZero | |z.1.im| ≤ 3}.Finite := by
    apply (bounded_zero_set_finite 3).of_injOn (f := fun z : XiZero => z.val)
    · intro z hz
      exact ⟨(xi_eq_zero_iff_nontrivialZetaZero _).mp z.2,hz⟩
    · exact Subtype.val_injective.injOn
  apply h.congr_cofinite
  filter_upwards [head.eventually_cofinite_notMem] with z hz
  exact Set.indicator_of_mem (show z.1 ∈ xiStrictZeroTail 3 from ⟨z.2,lt_of_not_ge hz⟩) _

private theorem sech_bound {k : ℝ} (hk : 0 < k) (b : ℝ) (z : XiZero) :
    1/cosh (k*(z.1.im-b)) ≤ (4+2*b^2+4/k^2)*xiAnchorWeight z.1 := by
  obtain ⟨hl,hr⟩ := ((xi_eq_zero_iff_nontrivialZetaZero _).mp z.2).mem_critical_strip
  let a := 2-z.1.re
  let x := z.1.im-b
  let c := cosh (k*x)
  have ha : 1 ≤ a := by dsimp [a]; linarith
  have ht : a ≤ 2 := by dsimp [a]; linarith
  have hc : 1 ≤ c := one_le_cosh _
  have hc0 : 0 < c := cosh_pos _
  have hsq : 2*x^2 ≤ (4/k^2)*c := by
    rw [div_mul_eq_mul_div,le_div_iff₀ (by positivity : 0 < k^2)]
    nlinarith [quadratic_cosh (k*x)]
  have hraw : a^2+z.1.im^2 ≤ (4+2*b^2)*c+(4/k^2)*c := by
    have h1 := le_mul_of_one_le_right (by positivity : 0 ≤ 4+2*b^2) hc
    dsimp [x] at hsq
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) (by linarith : 0 ≤ 2+a),sq_nonneg (z.1.im-2*b)]
  let K := 4+2*b^2+4/k^2
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hKa := le_mul_of_one_le_right hK ha
  have hden : 0 < a^2+z.1.im^2 := by
    have ha0 : 0 < a := by linarith
    positivity
  change 1/c ≤ K*(a/(a^2+z.1.im^2))
  rw [← mul_div_assoc,div_le_div_iff₀ hc0 hden]
  dsimp [K] at hKa ⊢
  nlinarith [mul_le_mul_of_nonneg_right hKa hc0.le]

theorem term_nonneg {σ k : ℝ} (hσ : σ ≤ 1) (hk : 0 < k)
    (hw : k*(1-σ) < π/2) (b : ℝ) (z : XiZero) : 0 ≤ term σ k b z := by
  obtain ⟨hl,hu⟩ := offset_bounds hσ z
  exact mul_nonneg (Nat.cast_nonneg _) (artanh_nonneg (ratio_bounds hk hl hu hw _).1)

theorem term_summable {σ k : ℝ} (hσ : σ ≤ 1) (hk : 0 < k)
    (hw : k*(1-σ) < π/2) (b : ℝ) : Summable (term σ k b) := by
  let U := sin (k*(1-σ))
  have hU : U < 1 := by
    have h0 : -(π/2) ≤ k*(1-σ) := by nlinarith [mul_nonneg hk.le (sub_nonneg.mpr hσ),pi_pos]
    simpa [U] using sin_lt_sin_of_lt_of_le_pi_div_two h0 (le_refl (π/2)) hw
  let K := 4+2*b^2+4/k^2
  apply Summable.of_norm_bounded (anchor_summable.mul_left (K/(1-U)))
  intro z
  rw [Real.norm_of_nonneg (term_nonneg hσ hk hw b z)]
  let q := ratio k (offset σ z) (z.1.im-b)
  have hd := offset_bounds hσ z
  have hq := ratio_bounds hk hd.1 hd.2 hw (z.1.im-b)
  have hq' : q ≤ U := hq.2
  have h1 := (artanh_bounds hq.1 (hq'.trans_lt hU)).2
  have h2 : q/(1-q) ≤ q/(1-U) :=
    div_le_div_of_nonneg_left hq.1 (by linarith) (by linarith)
  have h3 : q ≤ K*xiAnchorWeight z.1 := (div_le_div_of_nonneg_right (sin_le_one _) (cosh_pos _).le).trans
    (sech_bound hk b z)
  have hg : artanh q ≤ (K*xiAnchorWeight z.1)/(1-U) :=
    (h1.trans h2).trans (div_le_div_of_nonneg_right h3 (by linarith))
  have hh := mul_le_mul_of_nonneg_left hg (Nat.cast_nonneg (analyticOrderNatAt xi z.1) : (0:ℝ) ≤ _)
  unfold term green xiAnchorOrderTerm
  convert hh using 1 <;> ring

/-- Every zero on or to the left of the test line is invisible to this sum. -/
theorem defect_zero_iff {σ k : ℝ} (hσ : σ ≤ 1) (hk : 0 < k)
    (hw : k*(1-σ) < π/2) (b : ℝ) :
    defect σ k b = 0 ↔ ∀ z : XiZero, z.1.re ≤ σ := by
  constructor
  · intro h z
    by_contra! hz
    have hlt : 0 < offset σ z := (sub_pos.mpr hz).trans_le (le_max_left _ _)
    have h0 := offset_bounds hσ z
    have hsmall := mul_le_mul_of_nonneg_left h0.2 hk.le
    have hs := sin_pos_of_pos_of_lt_pi (mul_pos hk hlt) (by linarith [pi_pos] : k*offset σ z < π)
    have hp := artanh_pos (show ratio k (offset σ z) (z.1.im-b) ∈ Ioo 0 1 from
      ⟨div_pos hs (cosh_pos _),ratio_lt_one hk h0.1 h0.2 hw _⟩)
    have ht : 0 < term σ k b z := mul_pos (Nat.cast_pos.mpr (xiAnalyticOrderNatAt_pos z.2)) hp
    have ha : term σ k b z ≤ defect σ k b := (term_summable hσ hk hw b).le_tsum z
      (fun i _ => term_nonneg hσ hk hw b i)
    linarith
  · intro h
    simp [defect,term,offset,fun z => max_eq_right (sub_nonpos.mpr (h z)),green,ratio]

theorem critical_defect_iff_RH {k : ℝ} (hk : 0 < k) (hw : k/2 < π/2) (b : ℝ) :
    defect (1/2) k b = 0 ↔ _root_.RiemannHypothesis := by
  rw [defect_zero_iff (by norm_num) hk (by linarith)]
  constructor
  · intro h s hz ht hp
    let z : XiZero := ⟨s,(xi_eq_zero_iff_nontrivialZetaZero _).mpr ⟨hz,ht,hp⟩⟩
    let w : XiZero := ⟨1-s,by rw [xi_one_sub]; exact z.2⟩
    have h1 : s.re ≤ 1/2 := h z
    have h2 : (1-s).re ≤ 1/2 := h w
    rw [Complex.sub_re,Complex.one_re] at h2
    linarith
  · intro h z
    obtain ⟨hz,ht,hp⟩ := (xi_eq_zero_iff_nontrivialZetaZero _).mp z.2
    exact (h _ hz ht hp).le

theorem isolated_cost {σ k η R b : ℝ} (hσ : σ ≤ 1) (hk : 0 < k)
    (hw : k*(1-σ) < π/2) (hη : 0 ≤ η) (z : XiZero)
    (hd : η ≤ z.val.re-σ) (hg : |z.val.im-b| ≤ R) :
    (analyticOrderNatAt xi z.1 : ℝ)*(sin (k*η)/cosh (k*R)) ≤ defect σ k b := by
  have ho := offset_bounds hσ z
  have hd' : η ≤ offset σ z := hd.trans (le_max_left (z.val.re-σ) 0)
  have hm := mul_le_mul_of_nonneg_left hd' hk.le
  have hu := mul_le_mul_of_nonneg_left ho.2 hk.le
  have hηk := mul_nonneg hk.le hη
  have hsin := sin_le_sin_of_le_of_le_pi_div_two (by linarith [pi_pos]) (hu.trans hw.le) hm
  have hc : cosh (k*(z.val.im-b)) ≤ cosh (k*R) := by
    rw [cosh_le_cosh,abs_mul,abs_mul,abs_of_pos hk,abs_of_nonneg ((abs_nonneg _).trans hg)]
    exact mul_le_mul_of_nonneg_left hg hk.le
  have hn := sin_nonneg_of_nonneg_of_le_pi hηk (by linarith [pi_pos])
  have hratio : sin (k*η)/cosh (k*R) ≤ ratio k (offset σ z) (z.val.im-b) :=
    (div_le_div_of_nonneg_left hn (cosh_pos _) hc).trans (div_le_div_of_nonneg_right hsin (cosh_pos _).le)
  have ha := (artanh_bounds (ratio_bounds hk ho.1 ho.2 hw (z.val.im-b)).1
    (ratio_lt_one hk ho.1 ho.2 hw _)).1
  exact (mul_le_mul_of_nonneg_left (hratio.trans ha) (Nat.cast_nonneg _)).trans
    ((term_summable hσ hk hw b).le_tsum z (fun i _ => term_nonneg hσ hk hw b i))

end
end GRWTSK.XiStripZeroCriterion
