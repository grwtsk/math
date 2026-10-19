/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCubicPrimitive
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwoHeightSeed

set_option autoImplicit false

/-!
# Height five through the corrected quadratic reference

The source is H=(s+2)(s+3)/12-s(s-1)(s+1)(s+2)Q(s), where Q is the
actual cubic primitive integral and |Q|<=1/300 on Re(s)>=1/2.
On 1/2<=Re(s)<=1, |Im(s)|<=5 we derive
 |s||s-1|<=26 and |s+1|<=(7/8)|s+3|.
The error/reference comparison yields |H|>=21/320 on that closed right rectangle.
Critical reflection transports zero locations to the left, not H norm values.

These are bounded classical Euler--Maclaurin estimates, not an all-height RH
argument. The new homotopy has the QUADRATIC reference; it is not the old affine
homotopy. Source scripts and all imports still require exact elaboration/audit.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.CubicPrimitive

open Complex Set

noncomputable section

lemma norm_add_real_sq (s : ℂ) (a : ℝ) :
    ‖s + (a : ℂ)‖ ^ 2 = (s.re + a) ^ 2 + s.im ^ 2 := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [Complex.add_re, Complex.ofReal_re, Complex.add_im, Complex.ofReal_im, add_zero]
  ring

lemma fiveHeight_coordinate_squares {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ)) :
    s.re ^ 2 ≤ 1 ∧ (s.re - 1) ^ 2 ≤ 1 / 4 ∧ s.im ^ 2 ≤ 25 := by
  have hx0 : 0 ≤ s.re := by linarith
  have hx2 : s.re ^ 2 ≤ 1 := by nlinarith [mul_le_mul hx1 hx1 hx0 zero_le_one]
  have hxa : |s.re - 1| ≤ (1 / 2 : ℝ) := by
    rw [abs_of_nonpos (sub_nonpos.mpr hx1)]; linarith
  have hxm2 : (s.re - 1) ^ 2 ≤ (1 / 4 : ℝ) := by
    have h := mul_le_mul hxa hxa (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)
    nlinarith [sq_abs (s.re - 1)]
  have hy2 : s.im ^ 2 ≤ (25 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 5)
    nlinarith [sq_abs s.im]
  exact ⟨hx2, hxm2, hy2⟩

lemma fiveHeight_factor_product {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ)) :
    ‖s‖ * ‖s - 1‖ ≤ (26 : ℝ) := by
  have hb := fiveHeight_coordinate_squares hx hx1 hy
  have hs2 : ‖s‖ ^ 2 ≤ (26 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith [hb.1, hb.2.2]
  have hm2 : ‖s - 1‖ ^ 2 ≤ (26 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.sub_re, Complex.one_re, Complex.sub_im, Complex.one_im, sub_zero]
    nlinarith [hb.2.1, hb.2.2]
  have hprod := mul_le_mul hs2 hm2 (sq_nonneg ‖s - 1‖) (by norm_num : (0 : ℝ) ≤ 26)
  have heq : (‖s‖ * ‖s - 1‖) ^ 2 = ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 := by ring
  have hn : 0 ≤ ‖s‖ * ‖s - 1‖ := mul_nonneg (norm_nonneg _) (norm_nonneg _)
  nlinarith

/-- Keep the shared reference factor; crude independent absolute bounds lose margin. -/
lemma fiveHeight_shift_ratio {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ)) :
    ‖s + 1‖ ≤ (7 / 8 : ℝ) * ‖s + 3‖ := by
  have hb := fiveHeight_coordinate_squares hx hx1 hy
  have h1 : ‖s + 1‖ ^ 2 = (s.re + 1) ^ 2 + s.im ^ 2 := by
    simpa only [Complex.ofReal_one] using norm_add_real_sq s 1
  have h3 : ‖s + 3‖ ^ 2 = (s.re + 3) ^ 2 + s.im ^ 2 := by
    simpa using norm_add_real_sq s 3
  have hgap : (70 : ℝ) ≤ 49 * ‖s + 3‖ ^ 2 - 64 * ‖s + 1‖ ^ 2 := by
    rw [h1, h3]
    nlinarith [hb.1, hb.2.2]
  apply (sq_le_sq₀ (norm_nonneg _) (mul_nonneg (by norm_num) (norm_nonneg _))).mp
  nlinarith

lemma fiveHeight_triple_factor {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ)) :
    ‖s‖ * ‖s - 1‖ * ‖s + 1‖ ≤ (91 / 4 : ℝ) * ‖s + 3‖ := by
  calc
    _ ≤ 26 * ((7 / 8 : ℝ) * ‖s + 3‖) :=
      mul_le_mul (fiveHeight_factor_product hx hx1 hy) (fiveHeight_shift_ratio hx hx1 hy)
        (norm_nonneg _) (by norm_num)
    _ = _ := by ring

/-- The actual source, with its exact corrected reference and cubic tail. -/
theorem fiveHeight_source_error {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ)) :
    ‖poleNormalizedZeta s - reference s‖ ≤ (91 / 1200 : ℝ) * ‖s + 2‖ * ‖s + 3‖ := by
  have hs : 0 < s.re := by linarith
  have htail : ‖tail 1 s‖ ≤ (1 / 300 : ℝ) := by
    have h := tail_norm_le (T := 1) (σ := (1 / 2 : ℝ)) le_rfl (by norm_num) hx
    norm_num at h
    exact h
  have heq : poleNormalizedZeta s - reference s = -multiplier s * tail 1 s := by
    rw [source_identity hs]; ring
  rw [heq, norm_mul, norm_neg]
  have hmult : ‖multiplier s‖ ≤ (91 / 4 : ℝ) * ‖s + 3‖ * ‖s + 2‖ := by
    simp only [multiplier, norm_mul]
    exact mul_le_mul_of_nonneg_right (fiveHeight_triple_factor hx hx1 hy) (norm_nonneg _)
  calc
    _ ≤ ((91 / 4 : ℝ) * ‖s + 3‖ * ‖s + 2‖) * (1 / 300) :=
      mul_le_mul hmult htail (norm_nonneg _) (by positivity)
    _ = _ := by ring

/-- Pure comparison reused by the source and the quadratic-reference homotopy. -/
lemma norm_lower_from_quadratic_enclosure {s v : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re)
    (he : ‖v - reference s‖ ≤ (91 / 1200 : ℝ) * ‖s + 2‖ * ‖s + 3‖) :
    (21 / 320 : ℝ) ≤ ‖v‖ := by
  have h2 : (5 / 2 : ℝ) ≤ ‖s + 2‖ := by
    have h := Complex.re_le_norm (s + 2)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h3 : (7 / 2 : ℝ) ≤ ‖s + 3‖ := by
    have h := Complex.re_le_norm (s + 3)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have hprod : (35 / 4 : ℝ) ≤ ‖s + 2‖ * ‖s + 3‖ := by
    have h := mul_le_mul h2 h3 (by norm_num : (0 : ℝ) ≤ 7 / 2) (norm_nonneg _)
    norm_num at h
    exact h
  have hn : ‖reference s‖ = ‖s + 2‖ * ‖s + 3‖ / 12 := by
    norm_num [reference, norm_div, norm_mul]
  have htri : ‖reference s‖ ≤ ‖v‖ + ‖v - reference s‖ := by
    calc
      _ = ‖v - (v - reference s)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  rw [hn] at htri
  have hgap : (3 / 400 : ℝ) * (‖s + 2‖ * ‖s + 3‖) ≤ ‖v‖ := by nlinarith
  calc
    (21 / 320 : ℝ) = (3 / 400) * (35 / 4) := by norm_num
    _ ≤ (3 / 400 : ℝ) * (‖s + 2‖ * ‖s + 3‖) :=
      mul_le_mul_of_nonneg_left hprod (by norm_num)
    _ ≤ _ := hgap

theorem poleNormalized_norm_lower_fiveHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ)) :
    (21 / 320 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_quadratic_enclosure hx (fiveHeight_source_error hx hx1 hy)

theorem poleNormalized_nonzero_fiveHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_fiveHeight hx hx1 hy
  rw [hz, norm_zero] at h
  norm_num at h

/-- The mirror changes zero locations, not values or norms of H. -/
theorem nontrivialZetaZero_height_gt_five {z : ℂ} (hz : NontrivialZetaZero z) :
    (5 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hy : |z.im| ≤ (5 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_fiveHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (5 : ℝ) := by
      simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_fiveHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_fiveHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (5 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_five hzero)) hz

theorem windowRH_five : WindowRH 5 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (5 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_five hzero)) hh)

theorem windowRH_three : WindowRH 3 := windowRH_mono windowRH_five (by decide)
theorem windowRH_four : WindowRH 4 := windowRH_mono windowRH_five (by decide)
theorem shellRH_two : ShellRH 2 := (window_succ_iff 2).mp windowRH_three |>.2
theorem shellRH_three : ShellRH 3 := (window_succ_iff 3).mp windowRH_four |>.2
theorem shellRH_four : ShellRH 4 := (window_succ_iff 4).mp windowRH_five |>.2

/-- This homotopy starts at the new quadratic reference, not the old affine one. -/
def deformation (t : ℝ) (s : ℂ) : ℂ :=
  reference s + (t : ℂ) * (poleNormalizedZeta s - reference s)

@[simp] theorem deformation_zero (s : ℂ) : deformation 0 s = reference s := by simp [deformation]
@[simp] theorem deformation_one (s : ℂ) : deformation 1 s = poleNormalizedZeta s := by simp [deformation]

theorem deformation_continuous (s : ℂ) : Continuous (fun t : ℝ => deformation t s) := by
  unfold deformation
  fun_prop

theorem reference_differentiableAt (s : ℂ) : DifferentiableAt ℂ reference s :=
  ((differentiableAt_id.add_const 2).mul (differentiableAt_id.add_const 3)).div_const 12

theorem deformation_differentiableAt (t : ℝ) (s : ℂ) : DifferentiableAt ℂ (deformation t) s :=
  (reference_differentiableAt s).add (((differentiable_poleNormalizedZeta s).sub
    (reference_differentiableAt s)).const_mul (t : ℂ))

theorem deformation_norm_lower_fiveHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (21 / 320 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_from_quadratic_enclosure hx
  have heq : deformation t s - reference s = (t : ℂ) * (poleNormalizedZeta s - reference s) := by
    unfold deformation; ring
  rw [heq, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (fiveHeight_source_error hx hx1 hy)

theorem inverse_deformation_differentiableAt_fiveHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_fiveHeight hx hx1 hy ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- The next shell is still a required theorem, not a height-index relabeling. -/
theorem window_six_of_shell (h : ShellRH 5) : WindowRH 6 :=
  (window_succ_iff 5).mpr ⟨windowRH_five, h⟩

theorem all_windows_of_above_five
    (hstep : ∀ N : ℕ, 5 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_five (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 5
    · exact windowRH_mono windowRH_five hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_five
    (hstep : ∀ N : ℕ, 5 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_five hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.CubicPrimitive
