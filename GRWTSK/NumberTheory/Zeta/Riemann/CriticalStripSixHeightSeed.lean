/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuarticPrimitive
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFiveHeightSeed

set_option autoImplicit false

/-!
# Height six from the centered quartic arithmetic remainder

On the CLOSED right rectangle Re(s) in [1/2,1], |Im(s)|<=6, the actual
source error is at most 481/504 of the norm of the quartic reference.
The reference norm is at least 11/16, so |H(s)|>=253/8064>0.
No sample, cover, zero-free-region or RH premise is introduced.

The mirror acts only on canonical zero locations. The same commutator root
height is retained. This is bounded nonvanishing, not the higher-shell supplier,
not positivity of a Hodge metric or Weil form, and not an exact divisor count.
All declarations are source scripts awaiting Lean elaboration and axiom audit.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive

open Complex Set
noncomputable section

lemma sixHeight_coordinate_squares {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    s.re ^ 2 ≤ 1 ∧ (s.re - 1) ^ 2 ≤ 1 / 4 ∧ s.im ^ 2 ≤ 36 := by
  have hx0 : 0 ≤ s.re := by linarith
  have hx2 : s.re ^ 2 ≤ 1 := by nlinarith [mul_le_mul hx1 hx1 hx0 zero_le_one]
  have hxa : |s.re - 1| ≤ (1 / 2 : ℝ) := by
    rw [abs_of_nonpos (sub_nonpos.mpr hx1)]; linarith
  have hxm2 : (s.re - 1) ^ 2 ≤ (1 / 4 : ℝ) := by
    have h := mul_le_mul hxa hxa (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)
    nlinarith [sq_abs (s.re - 1)]
  have hy2 : s.im ^ 2 ≤ (36 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 6)
    nlinarith [sq_abs s.im]
  exact ⟨hx2, hxm2, hy2⟩

lemma sixHeight_factor_product {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    ‖s‖ * ‖s - 1‖ ≤ (37 : ℝ) := by
  have hb := sixHeight_coordinate_squares hx hx1 hy
  have hs2 : ‖s‖ ^ 2 ≤ (37 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith [hb.1, hb.2.2]
  have hm2 : ‖s - 1‖ ^ 2 ≤ (37 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.sub_re, Complex.one_re, Complex.sub_im, Complex.one_im, sub_zero]
    nlinarith [hb.2.1, hb.2.2]
  have hprod := mul_le_mul hs2 hm2 (sq_nonneg ‖s - 1‖) (by norm_num : (0 : ℝ) ≤ 37)
  have heq : (‖s‖ * ‖s - 1‖) ^ 2 = ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 := by ring
  have hn : 0 ≤ ‖s‖ * ‖s - 1‖ := mul_nonneg (norm_nonneg _) (norm_nonneg _)
  nlinarith


/-- Shared factors make the comparison effective; independent absolute bounds
would lose the strict margin. Both ratio guards are proved on the whole rectangle. -/
lemma sixHeight_shift_one_five {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    ‖s + 1‖ ≤ (7 / 9 : ℝ) * ‖s + 5‖ := by
  have hb := sixHeight_coordinate_squares hx hx1 hy
  have h1 : ‖s + 1‖ ^ 2 = (s.re + 1) ^ 2 + s.im ^ 2 := by
    simpa only [Complex.ofReal_one] using CubicPrimitive.norm_add_real_sq s 1
  have h5 : ‖s + 5‖ ^ 2 = (s.re + 5) ^ 2 + s.im ^ 2 := by
    simpa using CubicPrimitive.norm_add_real_sq s 5
  have hgap : (124 : ℝ) ≤ 49 * ‖s + 5‖ ^ 2 - 81 * ‖s + 1‖ ^ 2 := by
    rw [h1, h5]
    nlinarith [hb.1, hb.2.2]
  apply (sq_le_sq₀ (norm_nonneg _) (mul_nonneg (by norm_num) (norm_nonneg _))).mp
  nlinarith

lemma sixHeight_shift_three_four {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    ‖s + 3‖ ≤ (13 / 14 : ℝ) * ‖s + 4‖ := by
  have hb := sixHeight_coordinate_squares hx hx1 hy
  have h3 : ‖s + 3‖ ^ 2 = (s.re + 3) ^ 2 + s.im ^ 2 := by
    simpa using CubicPrimitive.norm_add_real_sq s 3
  have h4 : ‖s + 4‖ ^ 2 = (s.re + 4) ^ 2 + s.im ^ 2 := by
    simpa using CubicPrimitive.norm_add_real_sq s 4
  have hgap : (29 : ℝ) ≤ 169 * ‖s + 4‖ ^ 2 - 196 * ‖s + 3‖ ^ 2 := by
    rw [h3, h4]
    nlinarith [hb.1, hb.2.2]
  apply (sq_le_sq₀ (norm_nonneg _) (mul_nonneg (by norm_num) (norm_nonneg _))).mp
  nlinarith

lemma nine_sub_norm_lower {s : ℂ} (hx1 : s.re ≤ 1) : (8 : ℝ) ≤ ‖9 - s‖ := by
  have h := Complex.re_le_norm (9 - s)
  simp only [Complex.sub_re, Complex.ofNat_re] at h
  linarith

def referenceFactors (s : ℂ) : ℝ := ‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖ * ‖9 - s‖

lemma reference_norm (s : ℂ) : ‖reference s‖ = referenceFactors s / 720 := by
  norm_num [reference, referenceFactors, norm_div, norm_mul]

lemma sixHeight_multiplier_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    ‖multiplier s‖ ≤ (481 / 144 : ℝ) * referenceFactors s := by
  have hpair : ‖s + 1‖ * ‖s + 3‖ ≤
      (13 / 18 : ℝ) * (‖s + 5‖ * ‖s + 4‖) := by
    have h := mul_le_mul (sixHeight_shift_one_five hx hx1 hy)
      (sixHeight_shift_three_four hx hx1 hy) (norm_nonneg _)
      (mul_nonneg (by norm_num) (norm_nonneg _))
    convert h using 1 <;> ring
  have hfour : (‖s‖ * ‖s - 1‖) * (‖s + 1‖ * ‖s + 3‖) ≤
      (481 / 18 : ℝ) * (‖s + 5‖ * ‖s + 4‖) := by
    have h := mul_le_mul (sixHeight_factor_product hx hx1 hy) hpair
      (mul_nonneg (norm_nonneg _) (norm_nonneg _)) (by norm_num : (0 : ℝ) ≤ 37)
    convert h using 1 <;> ring
  have hm : ‖multiplier s‖ ≤
      (481 / 18 : ℝ) * (‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖) := by
    have h := mul_le_mul_of_nonneg_right hfour (norm_nonneg (s + 2))
    calc
      ‖multiplier s‖ = ((‖s‖ * ‖s - 1‖) * (‖s + 1‖ * ‖s + 3‖)) * ‖s + 2‖ := by
        simp only [multiplier, CubicPrimitive.multiplier, norm_mul]
        ring
      _ ≤ ((481 / 18 : ℝ) * (‖s + 5‖ * ‖s + 4‖)) * ‖s + 2‖ := h
      _ = _ := by ring
  have hp : 8 * (‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖) ≤ referenceFactors s := by
    have h := mul_le_mul_of_nonneg_left (nine_sub_norm_lower hx1)
      (by positivity : 0 ≤ ‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖)
    dsimp only [referenceFactors]
    nlinarith [h]
  nlinarith

/-- The error is bounded relative to the SAME corrected quartic reference. -/
theorem sixHeight_source_error {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    ‖poleNormalizedZeta s - reference s‖ ≤ (481 / 504 : ℝ) * ‖reference s‖ := by
  have hs : 0 < s.re := by linarith
  have htail : ‖centeredTail 1 s‖ ≤ (1 / 2520 : ℝ) := by
    have h := centeredTail_norm_le (T := 1) (σ := (1 / 2 : ℝ)) le_rfl (by norm_num) hx
    norm_num at h
    exact h
  have heq : poleNormalizedZeta s - reference s = -multiplier s * centeredTail 1 s := by
    rw [source_identity hs]; ring
  rw [heq, norm_mul, norm_neg]
  calc
    _ ≤ ((481 / 144 : ℝ) * referenceFactors s) * (1 / 2520) :=
      mul_le_mul (sixHeight_multiplier_bound hx hx1 hy) htail
        (norm_nonneg _) (by dsimp only [referenceFactors]; positivity)
    _ = (481 / 504 : ℝ) * ‖reference s‖ := by rw [reference_norm]; ring

lemma reference_norm_lower {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    (11 / 16 : ℝ) ≤ ‖reference s‖ := by
  have h2 : (5 / 2 : ℝ) ≤ ‖s + 2‖ := by
    have h := Complex.re_le_norm (s + 2)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h4 : (9 / 2 : ℝ) ≤ ‖s + 4‖ := by
    have h := Complex.re_le_norm (s + 4)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h5 : (11 / 2 : ℝ) ≤ ‖s + 5‖ := by
    have h := Complex.re_le_norm (s + 5)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h24 := mul_le_mul h2 h4 (by norm_num : (0 : ℝ) ≤ 9 / 2) (norm_nonneg _)
  have h245 := mul_le_mul h24 h5 (by norm_num : (0 : ℝ) ≤ 11 / 2)
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))
  have hprod := mul_le_mul h245 (nine_sub_norm_lower hx1) (by norm_num : (0 : ℝ) ≤ 8)
    (by positivity : 0 ≤ ‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖)
  rw [reference_norm]
  dsimp only [referenceFactors]
  nlinarith

/-- A relative error strictly below one excludes zero; the positive margin is explicit. -/
lemma norm_lower_from_quartic_enclosure {s v : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (he : ‖v - reference s‖ ≤ (481 / 504 : ℝ) * ‖reference s‖) :
    (253 / 8064 : ℝ) ≤ ‖v‖ := by
  have htri : ‖reference s‖ ≤ ‖v‖ + ‖v - reference s‖ := by
    calc
      _ = ‖v - (v - reference s)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  have hr := reference_norm_lower hx hx1
  nlinarith

theorem poleNormalized_norm_lower_sixHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    (253 / 8064 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_quartic_enclosure hx hx1 (sixHeight_source_error hx hx1 hy)

theorem poleNormalized_nonzero_sixHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_sixHeight hx hx1 hy
  rw [hz, norm_zero] at h
  norm_num at h

theorem nontrivialZetaZero_height_gt_six {z : ℂ} (hz : NontrivialZetaZero z) :
    (6 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hy : |z.im| ≤ (6 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_sixHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (6 : ℝ) := by simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_sixHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_sixHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (6 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_six hzero)) hz

theorem windowRH_six : WindowRH 6 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (6 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_six hzero)) hh)

theorem shellRH_five : ShellRH 5 := (window_succ_iff 5).mp windowRH_six |>.2

/-- The deformation starts at the corrected quartic, not an earlier polynomial. -/
def deformation (t : ℝ) (s : ℂ) : ℂ := reference s + (t : ℂ) * (poleNormalizedZeta s - reference s)

@[simp] theorem deformation_zero (s : ℂ) : deformation 0 s = reference s := by simp [deformation]
@[simp] theorem deformation_one (s : ℂ) : deformation 1 s = poleNormalizedZeta s := by simp [deformation]

theorem deformation_continuous (s : ℂ) : Continuous (fun t : ℝ => deformation t s) := by
  unfold deformation
  fun_prop

theorem reference_differentiableAt (s : ℂ) : DifferentiableAt ℂ reference s :=
  ((((differentiableAt_id.add_const 2).mul (differentiableAt_id.add_const 4)).mul
    (differentiableAt_id.add_const 5)).mul (differentiableAt_const.sub differentiableAt_id)).div_const 720

theorem deformation_differentiableAt (t : ℝ) (s : ℂ) : DifferentiableAt ℂ (deformation t) s :=
  (reference_differentiableAt s).add (((differentiable_poleNormalizedZeta s).sub
    (reference_differentiableAt s)).const_mul (t : ℂ))

theorem deformation_norm_lower_sixHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : (253 / 8064 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_from_quartic_enclosure hx hx1
  have heq : deformation t s - reference s = (t : ℂ) * (poleNormalizedZeta s - reference s) := by
    unfold deformation; ring
  rw [heq, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (sixHeight_source_error hx hx1 hy)

theorem inverse_deformation_differentiableAt_sixHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_sixHeight hx hx1 hy ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- Height seven still requires the genuine next-shell proof. -/
theorem window_seven_of_shell (h : ShellRH 6) : WindowRH 7 :=
  (window_succ_iff 6).mpr ⟨windowRH_six, h⟩

theorem all_windows_of_above_six
    (hstep : ∀ N : ℕ, 6 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_six (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 6
    · exact windowRH_mono windowRH_six hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_six
    (hstep : ∀ N : ℕ, 6 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_six hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive
