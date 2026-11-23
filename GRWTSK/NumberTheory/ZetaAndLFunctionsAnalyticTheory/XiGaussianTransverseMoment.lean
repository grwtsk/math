/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiGenusOneLogSeries
import Mathlib.Analysis.Calculus.SmoothSeries

/-! The transverse derivative of an anisotropic Gaussian sum over the actual xi divisor. -/

namespace GRWTSK.XiGaussianTransverseMoment

open GRWTSK.NumberTheory.SpectralProductDivisorReturn
open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor (bounded_zero_set_finite)
open Real Set
noncomputable section

def weight (t b : ℝ) (z : XiZero) : ℝ :=
  analyticOrderNatAt xi z.1 * exp (-(t*(z.1.im-b)^2))

def transverse (z : XiZero) : ℝ := (z.1.re-1/2)^2

theorem weight_pos (t b : ℝ) (z : XiZero) : 0 < weight t b z :=
  mul_pos (Nat.cast_pos.mpr (xiAnalyticOrderNatAt_pos z.2)) (exp_pos _)

theorem transverse_bounds (z : XiZero) : 0 ≤ transverse z ∧ transverse z ≤ 1/4 := by
  obtain ⟨hl,hr⟩ := ((xi_eq_zero_iff_nontrivialZetaZero _).mp z.2).mem_critical_strip
  exact ⟨sq_nonneg _, by unfold transverse; nlinarith [mul_pos hl (sub_pos.mpr hr)]⟩

private theorem gaussian_majorant {t : ℝ} (ht : 0 < t) (b : ℝ) (z : XiZero) :
    weight t b z ≤ (4+2*b^2+2/t)*xiAnchorOrderTerm z.1 := by
  obtain ⟨hl,hr⟩ := ((xi_eq_zero_iff_nontrivialZetaZero _).mp z.2).mem_critical_strip
  let a := 2-z.1.re
  let x := z.1.im-b
  let C := 4+2*b^2+2/t
  have ha : 1 ≤ a := by dsimp [a]; linarith
  have ha' : a ≤ 2 := by dsimp [a]; linarith
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hCt : 2 ≤ C*t := by dsimp [C]; field_simp; nlinarith [sq_nonneg b, mul_nonneg (sq_nonneg b) ht.le]
  have hab : a^2 + z.1.im^2 ≤ (4+2*b^2)+2*x^2 := by
    dsimp [x]
    nlinarith [sq_nonneg (z.1.im-2*b), mul_nonneg (sub_nonneg.mpr ha') (by linarith : 0 ≤ 2+a)]
  have hbd : a^2+z.1.im^2 ≤ C*exp (t*x^2) := by
    calc
      _ ≤ (4+2*b^2)+2*x^2 := hab
      _ ≤ C*(t*x^2+1) := by
        have he := mul_le_mul_of_nonneg_right hCt (sq_nonneg x)
        dsimp [C] at *
        nlinarith [div_pos (by norm_num : (0:ℝ)<2) ht]
      _ ≤ _ := mul_le_mul_of_nonneg_left (Real.add_one_le_exp _) hC
  have hapos : 0 < a := by linarith
  have hden : 0 < a^2+z.1.im^2 := by positivity
  have hh : exp (-(t*x^2)) ≤ C * (a/(a^2+z.1.im^2)) := by
    rw [exp_neg, ← mul_div_assoc]
    apply (le_div_iff₀ hden).2
    rw [inv_mul_eq_div, div_le_iff₀ (exp_pos _)]
    exact hbd.trans (mul_le_mul_of_nonneg_right (le_mul_of_one_le_right hC ha) (exp_pos _).le)
  unfold weight xiAnchorOrderTerm xiAnchorWeight
  calc
    _ ≤ (analyticOrderNatAt xi z.1 : ℝ) * (C*(a/(a^2+z.1.im^2))) :=
      mul_le_mul_of_nonneg_left hh (Nat.cast_nonneg _)
    _ = _ := by dsimp [C,a]; ring

theorem weight_summable {t : ℝ} (ht : 0 < t) (b : ℝ) : Summable (weight t b) := by
  have hs := (xiPositiveTail_inverseSquare_summable_and_bound (T := 3) (by norm_num)).1
  have htail : Summable (xiAnchorOrderTerm ∘ (Subtype.val : xiStrictZeroTail 3 → ℂ)) :=
    (xiStrictTail_hasSum_paired Real.exp_one_lt_three.le hs).summable
  have h := ((summable_subtype_iff_indicator (s := xiStrictZeroTail 3)).mp htail).comp_injective
    (Subtype.val_injective : Function.Injective (Subtype.val : XiZero → ℂ))
  have hhead : {z : XiZero | |z.1.im| ≤ 3}.Finite := by
    apply (bounded_zero_set_finite 3).of_injOn (f := fun z : XiZero => z.val)
    · intro z hz
      exact ⟨(xi_eq_zero_iff_nontrivialZetaZero _).mp z.2,hz⟩
    · exact Subtype.val_injective.injOn
  apply Summable.of_norm_bounded_eventually (h.mul_left (4+2*b^2+2/t))
  filter_upwards [hhead.eventually_cofinite_notMem] with z hz
  have hm : z.1 ∈ xiStrictZeroTail 3 := ⟨z.2,lt_of_not_ge hz⟩
  simpa [Function.comp_apply, Set.indicator_of_mem hm, Real.norm_of_nonneg (weight_pos t b z).le]
    using gaussian_majorant ht b z

def scan (t b u : ℝ) := ∑' z : XiZero, weight t b z * exp (-(u*transverse z))

def moment (t b u : ℝ) := ∑' z : XiZero, weight t b z * exp (-(u*transverse z))*transverse z

private theorem attenuation {u : ℝ} (hu : 0 ≤ u) (z : XiZero) :
    exp (-(u*transverse z)) ≤ 1 := exp_le_one_iff.mpr (neg_nonpos.mpr (mul_nonneg hu (transverse_bounds z).1))

private theorem moment_term_bound {u : ℝ} (hu : 0 ≤ u) (t b : ℝ) (z : XiZero) :
    weight t b z * exp (-(u*transverse z))*transverse z ≤ weight t b z := by
  have he := attenuation hu z
  have hv := (transverse_bounds z).2
  exact (mul_le_of_le_one_right (mul_nonneg (weight_pos _ _ _).le (exp_pos _).le)
    (by linarith : transverse z ≤ 1)).trans (mul_le_of_le_one_right (weight_pos _ _ _).le he)

theorem scan_hasDerivAt {t u : ℝ} (ht : 0 < t) (hu : 0 < u) (b : ℝ) :
    HasDerivAt (scan t b) (-moment t b u) u := by
  let f := fun (z : XiZero) (v : ℝ) => weight t b z * exp (-(v*transverse z))
  let g := fun (z : XiZero) (v : ℝ) => -(f z v * transverse z)
  have hd (z : XiZero) (v : ℝ) : HasDerivAt (f z) (g z v) v := by
    convert ((((hasDerivAt_id v).mul_const (transverse z)).neg.exp).const_mul (weight t b z)) using 1 <;>
      simp [f,g] <;> ring
  have hsum : Summable (fun z => f z u) := by
    apply Summable.of_norm_bounded (weight_summable ht b)
    intro z
    rw [Real.norm_of_nonneg (mul_nonneg (weight_pos _ _ _).le (exp_pos _).le)]
    exact mul_le_of_le_one_right (weight_pos _ _ _).le (attenuation hu.le z)
  have hx := hasDerivAt_tsum_of_isPreconnected (g := f) (g' := g) (weight_summable ht b)
    isOpen_Ioi isPreconnected_Ioi (fun z v _ => hd z v)
    (fun z v hv => by
      dsimp [g,f]
      rw [abs_neg,abs_of_nonneg (mul_nonneg (mul_nonneg (weight_pos _ _ _).le (exp_pos _).le) (transverse_bounds z).1)]
      exact moment_term_bound (le_of_lt hv) t b z)
    (show u ∈ Ioi 0 from hu) hsum (show u ∈ Ioi 0 from hu)
  change HasDerivAt (fun v => ∑' z : XiZero, f z v) (-(∑' z : XiZero, f z u * transverse z)) u
  rw [← tsum_neg]
  exact hx

theorem moment_zero_iff_RH {t u : ℝ} (ht : 0 < t) (hu : 0 ≤ u) (b : ℝ) :
    moment t b u = 0 ↔ _root_.RiemannHypothesis := by
  let f := fun z : XiZero => weight t b z * exp (-(u*transverse z))*transverse z
  have hn (z : XiZero) : 0 ≤ f z := mul_nonneg (mul_nonneg (weight_pos _ _ _).le (exp_pos _).le) (transverse_bounds z).1
  have hs : Summable f := Summable.of_norm_bounded (weight_summable ht b)
    (fun z => (Real.norm_of_nonneg (hn z)).le.trans (moment_term_bound hu t b z))
  constructor
  · intro h s hz htr hp
    let z : XiZero := ⟨s,(xi_eq_zero_iff_nontrivialZetaZero _).mpr ⟨hz,htr,hp⟩⟩
    have he := hs.le_tsum z (fun i _ => hn i)
    change f z ≤ moment t b u at he
    rw [h] at he
    have h0 := le_antisymm he (hn z)
    have hv : transverse z = 0 := (mul_eq_zero.mp h0).resolve_left
      (mul_pos (weight_pos _ _ _) (exp_pos _)).ne'
    change (s.re-1/2)^2 = 0 at hv
    nlinarith
  · intro h
    have htzero (z : XiZero) : transverse z = 0 := by
      obtain ⟨hz,ht',hp⟩ := (xi_eq_zero_iff_nontrivialZetaZero _).mp z.2
      simp [transverse,h _ hz ht' hp]
    simp [moment,htzero]

theorem stationary_scan_iff_RH {t u : ℝ} (ht : 0 < t) (hu : 0 < u) (b : ℝ) :
    deriv (scan t b) u = 0 ↔ _root_.RiemannHypothesis := by
  rw [(scan_hasDerivAt ht hu b).deriv,neg_eq_zero,moment_zero_iff_RH ht hu.le]

end
end GRWTSK.XiGaussianTransverseMoment
