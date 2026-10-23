/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.NormalizedDiskLogarithm
import GRWTSK.Analysis.Complex.TrigonometricHeightBounds
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma

set_option autoImplicit false

/-!
# A source-derived linear height bound for digamma on a positive real strip

Euler's actual Gamma integral gives an all-height modulus ceiling on
1/2 <= Re(s) <= 9/2. Reflection and two recurrences give a quantitative
anchor at 5/2+it. The existing normalized disk logarithm then bounds the
actual Gamma logarithmic derivative on 1 <= Re(s) <= 4. No digamma-series
identity, Stirling estimate, logarithm, or derivative bound is an input.
The constants are deliberately coarse. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.GammaVerticalBound

open Set Metric Filter MeasureTheory
open scoped Topology
open GRWTSK.Analysis.Complex.NormalizedDiskLogarithm
open GRWTSK.Analysis.Complex.TrigonometricHeightBounds

noncomputable section

/-- A fixed positive real constant, independent of every imaginary height. -/
def envelope : ℝ := 2 + Real.Gamma (1 / 2) + Real.Gamma (9 / 2)

theorem two_le_envelope : 2 ≤ envelope := by
  have h₀ := Real.Gamma_pos_of_pos (by norm_num : (0 : ℝ) < 1 / 2)
  have h₁ := Real.Gamma_pos_of_pos (by norm_num : (0 : ℝ) < 9 / 2)
  dsimp [envelope]
  linarith

theorem envelope_pos : 0 < envelope := lt_of_lt_of_le (by norm_num) two_le_envelope

/-- The exponent order reverses below one; both endpoint densities are retained. -/
theorem power_le_endpoint_sum (t σ : ℝ) (ht : 0 < t)
    (hσ : σ ∈ Icc (1 / 2 : ℝ) (9 / 2)) :
    t ^ (σ - 1) ≤ t ^ ((1 / 2 : ℝ) - 1) + t ^ ((9 / 2 : ℝ) - 1) := by
  simp only [Real.rpow_def_of_pos ht]
  by_cases hl : 0 ≤ Real.log t
  · have hm := mul_le_mul_of_nonneg_left
      (show σ - 1 ≤ (9 / 2 : ℝ) - 1 by linarith [hσ.2]) hl
    have he := Real.exp_le_exp.mpr hm
    linarith [Real.exp_pos (Real.log t * ((1 / 2 : ℝ) - 1))]
  · have hm := mul_le_mul_of_nonpos_left
      (show (1 / 2 : ℝ) - 1 ≤ σ - 1 by linarith [hσ.1]) (le_of_not_ge hl)
    have he := Real.exp_le_exp.mpr hm
    linarith [Real.exp_pos (Real.log t * ((9 / 2 : ℝ) - 1))]

/-- Actual integral domination; no sampled Gamma values or circle ceiling is supplied. -/
theorem norm_Gamma_le_envelope (s : ℂ)
    (hs : s.re ∈ Icc (1 / 2 : ℝ) (9 / 2)) : ‖Complex.Gamma s‖ ≤ envelope := by
  have h₀ := Real.GammaIntegral_convergent (by norm_num : (0 : ℝ) < 1 / 2)
  have h₁ := Real.GammaIntegral_convergent (by norm_num : (0 : ℝ) < 9 / 2)
  have hb : ‖Complex.Gamma s‖ ≤ Real.Gamma (1 / 2) + Real.Gamma (9 / 2) := by
    rw [Complex.Gamma_eq_integral (by linarith [hs.1]), Complex.GammaIntegral,
      Real.Gamma_eq_integral (by norm_num : (0 : ℝ) < 1 / 2),
      Real.Gamma_eq_integral (by norm_num : (0 : ℝ) < 9 / 2), ← integral_add h₀ h₁]
    apply norm_integral_le_of_norm_le (h₀.add h₁)
    filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with t ht
    rw [norm_mul, Complex.norm_of_nonneg (Real.exp_pos (-t)).le,
      Complex.norm_cpow_eq_rpow_re_of_pos ht]
    simp only [Complex.sub_re, Complex.one_re]
    simpa only [mul_add, Pi.add_apply] using mul_le_mul_of_nonneg_left
      (power_le_endpoint_sum t s.re ht hs) (Real.exp_pos (-t)).le
  dsimp [envelope]
  linarith

/-- Translation center for the Gamma disk; not a zeta-zero or contour inventory. -/
def center (t : ℝ) : ℂ := (5 / 2 : ℂ) + (t : ℂ) * Complex.I

/-- Reflection bounds a half-integer anchor from below using the opposite-height ceiling. -/
theorem half_anchor_product_ge_pi (t : ℝ) :
    Real.pi ≤ ‖Complex.Gamma ((1 / 2 : ℂ) + (t : ℂ) * Complex.I)‖ *
      envelope * Real.exp (Real.pi * |t|) := by
  let z : ℂ := (1 / 2 : ℂ) + (t : ℂ) * Complex.I
  have hz : 0 < z.re := by norm_num [z]
  have hz' : 0 < (1 - z).re := by norm_num [z]
  have hreflect := Complex.Gamma_mul_Gamma_one_sub z
  have hsin : Complex.sin ((Real.pi : ℂ) * z) ≠ 0 := by
    intro he
    rw [he, div_zero] at hreflect
    exact (mul_ne_zero (Complex.Gamma_ne_zero_of_re_pos hz)
      (Complex.Gamma_ne_zero_of_re_pos hz')) hreflect
  have he := congrArg norm hreflect
  rw [norm_mul, norm_div, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos Real.pi_pos] at he
  have he' : ‖Complex.Gamma z‖ * ‖Complex.Gamma (1 - z)‖ *
      ‖Complex.sin ((Real.pi : ℂ) * z)‖ = Real.pi :=
    (eq_div_iff (norm_ne_zero_iff.mpr hsin)).mp he
  have hg : ‖Complex.Gamma (1 - z)‖ ≤ envelope :=
    norm_Gamma_le_envelope _ (by norm_num [z])
  have hs : ‖Complex.sin ((Real.pi : ℂ) * z)‖ ≤ Real.exp (Real.pi * |t|) := by
    have h := norm_sin_le_exp_abs_im ((Real.pi : ℂ) * z)
    simpa [z, abs_mul, abs_of_pos Real.pi_pos] using h
  change Real.pi ≤ ‖Complex.Gamma z‖ * envelope * Real.exp (Real.pi * |t|)
  calc
    _ = ‖Complex.Gamma z‖ * ‖Complex.Gamma (1 - z)‖ *
        ‖Complex.sin ((Real.pi : ℂ) * z)‖ := he'.symm
    _ ≤ _ := mul_le_mul (mul_le_mul_of_nonneg_left hg (norm_nonneg _)) hs
      (norm_nonneg _) (mul_nonneg (norm_nonneg _) envelope_pos.le)

/-- Two exact Gamma recurrences move the half anchor to the center of the disk. -/
theorem center_norm_ge_half_anchor (t : ℝ) :
    (3 / 4 : ℝ) * ‖Complex.Gamma ((1 / 2 : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      ‖Complex.Gamma (center t)‖ := by
  let z : ℂ := (1 / 2 : ℂ) + (t : ℂ) * Complex.I
  have hz : z ≠ 0 := by intro he; have hr := congrArg Complex.re he; norm_num [z] at hr
  have hz1 : z + 1 ≠ 0 := by intro he; have hr := congrArg Complex.re he; norm_num [z] at hr
  have hc : center t = (z + 1) + 1 := by dsimp [center, z]; ring
  have h₀ : (1 / 2 : ℝ) ≤ ‖z‖ := by
    have h := Complex.abs_re_le_norm z
    norm_num [z] at h ⊢
    exact h
  have h₁ : (3 / 2 : ℝ) ≤ ‖z + 1‖ := by
    have h := Complex.abs_re_le_norm (z + 1)
    norm_num [z] at h ⊢
    exact h
  rw [hc, Complex.Gamma_add_one (z + 1) hz1, Complex.Gamma_add_one z hz,
    norm_mul, norm_mul]
  change (3 / 4 : ℝ) * ‖Complex.Gamma z‖ ≤ _
  calc
    _ = (3 / 2 : ℝ) * ((1 / 2 : ℝ) * ‖Complex.Gamma z‖) := by ring
    _ ≤ _ := by gcongr

/-- A positive all-height floor, obtained before any logarithm or division. -/
theorem center_floor (t : ℝ) :
    Real.exp (-(Real.pi * |t|)) / envelope ≤ ‖Complex.Gamma (center t)‖ := by
  have he : 0 < Real.exp (Real.pi * |t|) := Real.exp_pos _
  have hp := half_anchor_product_ge_pi t
  have hc := center_norm_ge_half_anchor t
  have hm := mul_le_mul_of_nonneg_right hc
    (mul_nonneg envelope_pos.le he.le)
  have hprod : 1 ≤ ‖Complex.Gamma (center t)‖ *
      (envelope * Real.exp (Real.pi * |t|)) := by
    nlinarith [Real.two_le_pi]
  calc
    _ = 1 / (envelope * Real.exp (Real.pi * |t|)) := by
      rw [Real.exp_neg]
      field_simp [envelope_pos.ne', he.ne']
    _ ≤ _ := (div_le_iff₀ (mul_pos envelope_pos he)).mpr hprod

/-- The logarithmic budget is affine in absolute height, with fixed source constants. -/
def heightLogBudget (t : ℝ) : ℝ := 2 * Real.log envelope + Real.pi * |t|

theorem heightLogBudget_pos (t : ℝ) : 0 < heightLogBudget t := by
  have hlog : 0 < Real.log envelope := Real.log_pos (by linarith [two_le_envelope])
  have hmul : 0 ≤ Real.pi * |t| := mul_nonneg Real.pi_pos.le (abs_nonneg t)
  dsimp [heightLogBudget]
  linarith

/-- Radius two, middle radius seven-fourths, and a radius-one-fourth Cauchy circle. -/
theorem normalized_log_deriv_le (L : ℂ → ℂ) (H : ℝ) (hH : 0 < H)
    (hL : DifferentiableOn ℂ L (ball 0 (2 : ℝ))) (h0 : L 0 = 0)
    (hr : ∀ w ∈ ball 0 (2 : ℝ), (L w).re ≤ H)
    (w : ℂ) (hw : ‖w‖ ≤ 3 / 2) : ‖deriv L w‖ ≤ 56 * H := by
  have hmid (v : ℂ) (hv : ‖v‖ ≤ 7 / 4) : ‖L v‖ ≤ 14 * H := by
    have hv' : v ∈ ball (0 : ℂ) (2 : ℝ) := by
      rw [Metric.mem_ball, dist_zero_right]
      linarith
    have hb := Complex.borelCaratheodory_zero hH hL hr (by norm_num) hv' h0
    apply hb.trans
    apply (div_le_iff₀ (by linarith : 0 < 2 - ‖v‖)).mpr
    nlinarith [mul_le_mul_of_nonneg_left hv hH.le]
  have hcircle (v : ℂ) (hv : v ∈ closedBall w (1 / 4 : ℝ)) : ‖v‖ ≤ 7 / 4 := by
    have hd : ‖v - w‖ ≤ (1 / 4 : ℝ) := by simpa [Metric.mem_closedBall, dist_eq_norm] using hv
    linarith [norm_le_norm_sub_add v w]
  have hsub : closedBall w (1 / 4 : ℝ) ⊆ ball (0 : ℂ) (2 : ℝ) := by
    intro v hv
    rw [Metric.mem_ball, dist_zero_right]
    linarith [hcircle v hv]
  have hcont : DiffContOnCl ℂ L (ball w (1 / 4 : ℝ)) :=
    DiffContOnCl.mk_ball (hL.mono (ball_subset_closedBall.trans hsub))
      (hL.continuousOn.mono hsub)
  have hd := Complex.norm_deriv_le_of_forall_mem_sphere_norm_le
    (by norm_num : (0 : ℝ) < 1 / 4) hcont
    (fun v hv => hmid v (hcircle v (sphere_subset_closedBall hv)))
  convert hd using 1; ring

/-- Full actual digamma on the reflected positive strip; no series identity is assumed. -/
theorem norm_digamma_le (s : ℂ) (hs : s.re ∈ Icc (1 : ℝ) 4) :
    ‖Complex.digamma s‖ ≤ 56 * heightLogBudget s.im := by
  let t : ℝ := s.im
  let c : ℂ := center t
  let g : ℂ → ℂ := fun w => Complex.Gamma (c + w)
  have hc_re : c.re = (5 / 2 : ℝ) := by norm_num [c, center]
  have hgeom (w : ℂ) (hw : w ∈ ball 0 (2 : ℝ)) :
      (c + w).re ∈ Icc (1 / 2 : ℝ) (9 / 2) := by
    have hn : ‖w‖ < 2 := by simpa [Metric.mem_ball, dist_zero_right] using hw
    have hr := abs_le.mp (Complex.abs_re_le_norm w)
    change (1 / 2 : ℝ) ≤ c.re + w.re ∧ c.re + w.re ≤ (9 / 2 : ℝ)
    rw [hc_re]
    constructor <;> linarith [hr.1, hr.2]
  have hg : DifferentiableOn ℂ g (ball 0 (2 : ℝ)) := by
    intro w hw
    have hpos : 0 < (c + w).re := by linarith [(hgeom w hw).1]
    have hne : ∀ m : ℕ, c + w ≠ -(m : ℂ) := by
      intro m he
      have hr := congrArg Complex.re he
      simp only [Complex.neg_re, Complex.natCast_re] at hr
      linarith [Nat.cast_nonneg (α := ℝ) m]
    exact ((Complex.differentiableAt_Gamma (c + w) hne).comp w
      ((differentiableAt_const c).add differentiableAt_id)).differentiableWithinAt
  have hn : ∀ w ∈ ball 0 (2 : ℝ), g w ≠ 0 := by
    intro w hw
    exact Complex.Gamma_ne_zero_of_re_pos (by linarith [(hgeom w hw).1])
  have hbound : ∀ w ∈ ball 0 (2 : ℝ), ‖g w‖ ≤ envelope :=
    fun w hw => norm_Gamma_le_envelope (c + w) (hgeom w hw)
  have hfloor : Real.exp (-(Real.pi * |t|)) / envelope ≤ ‖g 0‖ := by
    simpa only [g, c, add_zero] using center_floor t
  obtain ⟨L, h0, hL, hd, _he, hr⟩ := exists_normalized_log_bounded g 2 envelope
    (Real.exp (-(Real.pi * |t|)) / envelope) (by norm_num) envelope_pos
    (div_pos (Real.exp_pos _) envelope_pos) hg hn hbound hfloor
  have hlog : Real.log (envelope / (Real.exp (-(Real.pi * |t|)) / envelope)) =
      heightLogBudget t := by
    rw [Real.log_div envelope_pos.ne' (div_ne_zero (Real.exp_pos _).ne' envelope_pos.ne'),
      Real.log_div (Real.exp_pos _).ne' envelope_pos.ne', Real.log_exp]
    dsimp [heightLogBudget]
    ring
  let w : ℂ := s - c
  have hew : w = ((s.re - 5 / 2 : ℝ) : ℂ) := by
    apply Complex.ext <;> norm_num [w, c, center, t]
  have hw : ‖w‖ ≤ (3 / 2 : ℝ) := by
    rw [hew, Complex.norm_real, Real.norm_eq_abs]
    exact abs_le.mpr ⟨by linarith [hs.1], by linarith [hs.2]⟩
  have hmem : w ∈ ball (0 : ℂ) (2 : ℝ) := by
    rw [Metric.mem_ball, dist_zero_right]
    linarith
  have hnorm := normalized_log_deriv_le L (heightLogBudget t) (heightLogBudget_pos t)
    hL h0 (fun v hv => by simpa only [hlog] using hr v hv) w hw
  have hcs : c + w = s := by dsimp [w]; ring
  have hcomp : logDeriv g w = Complex.digamma s := by
    change logDeriv (Complex.Gamma ∘ fun v => c + v) w = _
    have hne : ∀ m : ℕ, s ≠ -(m : ℂ) := by
      intro m he
      have hrr := congrArg Complex.re he
      simp only [Complex.neg_re, Complex.natCast_re] at hrr
      linarith [hs.1, Nat.cast_nonneg (α := ℝ) m]
    have hdc : HasDerivAt (fun v : ℂ => c + v) 1 w := by
      simpa only [id_eq] using (hasDerivAt_id w).const_add c
    have hgamma : DifferentiableAt ℂ Complex.Gamma (c + w) := by
      rw [hcs]
      exact Complex.differentiableAt_Gamma s hne
    have he := logDeriv_comp (f := Complex.Gamma) (g := fun v => c + v)
      (x := w) hgamma hdc.differentiableAt
    simpa only [hdc.deriv, mul_one, hcs, Complex.digamma_def] using he
  rw [(hd w hmem).deriv, hcomp] at hnorm
  exact hnorm

end
end GRWTSK.Analysis.Complex.GammaVerticalBound
