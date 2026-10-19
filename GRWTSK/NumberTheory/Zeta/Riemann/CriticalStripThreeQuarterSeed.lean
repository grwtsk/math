/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCenteredMellin
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTaperedBoundary

set_option autoImplicit false

/-!
# A three-quarter-height seed through a centered Mellin quartic

The difference of two squared complex norms is the actual quartic
  4*x^3 - (x-1)^2*y^2 - y^4.
It has lower bound 11/256 on 1/2<=x<=1, |y|<=3/4. This algebraic comparison,
together with the source-derived centered Mellin bound, proves |H(s)|>=1/256
on that whole CLOSED right rectangle. Reflection transports target-zero exclusion,
not equality of H-values or their norms. The seed is still below height one.

The affine deformation retains its full centered tail for every t in [0,1].
Nonvanishing is proved BEFORE reciprocal holomorphy. The first-window remainder
keeps the old parabolic condition, the new quartic frontier, and top height one.
All declarations are source scripts; elaboration and axiom audit remain NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin

open Complex Set

noncomputable section

/-- Signed difference of squared analytic reference and error radii, not a Hodge metric. -/
def quarticGap (x y : ℝ) : ℝ := 4 * x ^ 3 - (x - 1) ^ 2 * y ^ 2 - y ^ 4

lemma quarticGap_norm_identity (s : ℂ) :
    (s.re * ‖s + 1‖) ^ 2 - (‖s‖ * ‖s - 1‖) ^ 2 = quarticGap s.re s.im := by
  simp only [mul_pow, Complex.sq_norm, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im, add_zero, sub_zero, quarticGap]
  ring

/-- Exact closed-box polynomial certificate. No integral or sample enters this lemma. -/
lemma quarticGap_lower {x y : ℝ} (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1)
    (hy : |y| ≤ (3 / 4 : ℝ)) : (11 / 256 : ℝ) ≤ quarticGap x y := by
  have hx0 : 0 ≤ x := by linarith
  have hx2 : (1 / 4 : ℝ) ≤ x ^ 2 := by nlinarith [sq_nonneg (x - 1 / 2)]
  have hx3 : (1 / 8 : ℝ) ≤ x ^ 3 := by
    have h := mul_le_mul hx hx2 (by norm_num : (0 : ℝ) ≤ 1 / 4) hx0
    nlinarith
  have hbetween := mul_nonneg (sub_nonneg.mpr hx) (sub_nonneg.mpr hx1)
  have hxm : (x - 1) ^ 2 ≤ (1 / 4 : ℝ) := by nlinarith
  have hy2 : y ^ 2 ≤ (9 / 16 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg y) (by norm_num : (0 : ℝ) ≤ 3 / 4)
    nlinarith [sq_abs y]
  have hy4 : y ^ 4 ≤ (81 / 256 : ℝ) := by
    have h := mul_le_mul hy2 hy2 (sq_nonneg y) (by norm_num : (0 : ℝ) ≤ 9 / 16)
    nlinarith
  have hmix : (x - 1) ^ 2 * y ^ 2 ≤ (9 / 64 : ℝ) := by
    have h := mul_le_mul hxm hy2 (sq_nonneg y) (by norm_num : (0 : ℝ) ≤ 1 / 4)
    nlinarith
  dsimp only [quarticGap]
  linarith

lemma norm_geometry {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ)) :
    ‖s‖ ≤ (5 / 4 : ℝ) ∧ ‖s - 1‖ ≤ 1 ∧ ‖s + 1‖ ≤ (9 / 4 : ℝ) := by
  have hy2 : s.im ^ 2 ≤ (9 / 16 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 3 / 4)
    nlinarith [sq_abs s.im]
  have hxprod := mul_le_mul hx1 hx1 (show 0 ≤ s.re by linarith) zero_le_one
  have hx2 : s.re ^ 2 ≤ 1 := by nlinarith
  have hbetween := mul_nonneg (sub_nonneg.mpr hx) (sub_nonneg.mpr hx1)
  have hxm : (s.re - 1) ^ 2 ≤ (1 / 4 : ℝ) := by nlinarith
  have hn : ‖s‖ ≤ (5 / 4 : ℝ) := by
    apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 5 / 4)).mp
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith
  have hm : ‖s - 1‖ ≤ (1 : ℝ) := by
    apply (sq_le_sq₀ (norm_nonneg _) zero_le_one).mp
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
      Complex.one_re, Complex.one_im, sub_zero]
    nlinarith
  refine ⟨hn, hm, ?_⟩
  calc
    ‖s + 1‖ ≤ ‖s‖ + ‖(1 : ℂ)‖ := norm_add_le _ _
    _ ≤ 9 / 4 := by rw [norm_one]; linarith

/-- Scale a reference-disk enclosure without losing its strictly positive denominator. -/
lemma scaled_reference_inequality {s v : ℂ} (hs : 0 < s.re)
    (he : ‖v - (s + 1) / 2‖ ≤ ‖s‖ * ‖s - 1‖ / (2 * s.re)) :
    s.re * ‖s + 1‖ - ‖s‖ * ‖s - 1‖ ≤ 2 * s.re * ‖v‖ := by
  have htri : ‖(s + 1) / 2‖ ≤ ‖v‖ + ‖v - (s + 1) / 2‖ := by
    calc
      _ = ‖v - (v - (s + 1) / 2)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  have ht : ‖s + 1‖ / 2 ≤ ‖v‖ + ‖s‖ * ‖s - 1‖ / (2 * s.re) := by
    have h := htri.trans (add_le_add_left he ‖v‖)
    norm_num [norm_div] at h
    exact h
  have hden : (2 : ℝ) * s.re ≠ 0 := by positivity
  have hcancel : (2 * s.re) * (‖s‖ * ‖s - 1‖ / (2 * s.re)) =
      ‖s‖ * ‖s - 1‖ := by field_simp
  have hscaled := mul_le_mul_of_nonneg_left ht (show 0 ≤ 2 * s.re by positivity)
  rw [mul_add, hcancel] at hscaled
  nlinarith

/-- The same lower bound applies to every value in the sourced error disk. -/
theorem norm_lower_of_centered_enclosure {s v : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ))
    (he : ‖v - (s + 1) / 2‖ ≤ ‖s‖ * ‖s - 1‖ / (2 * s.re)) :
    (1 / 256 : ℝ) ≤ ‖v‖ := by
  have hs : 0 < s.re := by linarith
  let L : ℝ := s.re * ‖s + 1‖
  let R : ℝ := ‖s‖ * ‖s - 1‖
  have hL : 0 ≤ L := mul_nonneg hs.le (norm_nonneg _)
  have hR : 0 ≤ R := mul_nonneg (norm_nonneg _) (norm_nonneg _)
  have hquad : (11 / 256 : ℝ) ≤ L ^ 2 - R ^ 2 := by
    dsimp only [L, R]
    rw [quarticGap_norm_identity]
    exact quarticGap_lower hx hx1 hy
  have hgeo := norm_geometry hx hx1 hy
  have hLu : L ≤ (9 / 4 : ℝ) := by
    have h := mul_le_mul hx1 hgeo.2.2 (norm_nonneg _) zero_le_one
    dsimp only [L]
    nlinarith
  have hRu : R ≤ (5 / 4 : ℝ) := by
    have h := mul_le_mul hgeo.1 hgeo.2.1 (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 5 / 4)
    dsimp only [R]
    nlinarith
  have hsum : L + R ≤ (7 / 2 : ℝ) := by linarith
  have hstrict : R < L := (sq_lt_sq₀ hR hL).mp (by linarith)
  have hgap : (1 / 128 : ℝ) ≤ L - R := by
    by_contra hnot
    have hp := mul_le_mul_of_nonneg_right hsum (sub_nonneg.mpr hstrict.le)
    nlinarith [lt_of_not_ge hnot]
  have hscaled := scaled_reference_inequality hs he
  have hupper : 2 * s.re * ‖v‖ ≤ 2 * ‖v‖ := by
    have h := mul_le_mul_of_nonneg_right hx1 (norm_nonneg v)
    nlinarith
  change L - R ≤ 2 * s.re * ‖v‖ at hscaled
  linarith

theorem poleNormalized_norm_lower_threeQuarter {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ)) :
    (1 / 256 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_of_centered_enclosure hx hx1 hy (source_error (by linarith) le_rfl)

theorem poleNormalized_nonzero_threeQuarter {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ)) : poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_threeQuarter hx hx1 hy
  rw [hz, norm_zero] at h
  norm_num at h

/-- A source zero must make the signed reference-radius separation nonpositive. -/
theorem quarticGap_nonpos_of_source_zero {z : ℂ} (hs : 0 < z.re)
    (hz : poleNormalizedZeta z = 0) : quarticGap z.re z.im ≤ 0 := by
  have he := source_error hs (le_refl z.re)
  rw [hz] at he
  have hscaled := scaled_reference_inequality hs he
  simp only [norm_zero, mul_zero] at hscaled
  have hle : z.re * ‖z + 1‖ ≤ ‖z‖ * ‖z - 1‖ := by linarith
  have hnonneg : 0 ≤ z.re * ‖z + 1‖ := mul_nonneg hs.le (norm_nonneg _)
  have hsq := mul_le_mul hle hle hnonneg (mul_nonneg (norm_nonneg _) (norm_nonneg _))
  rw [← quarticGap_norm_identity]
  nlinarith

theorem poleNormalized_nonzero_of_quartic {s : ℂ} (hs : 0 < s.re)
    (hq : 0 < quarticGap s.re s.im) : poleNormalizedZeta s ≠ 0 := by
  intro hz
  exact (not_le_of_gt hq) (quarticGap_nonpos_of_source_zero hs hz)

/-- This is a necessary zero-location constraint, not an RH equivalence. -/
theorem target_quartic_constraint {z : ℂ} (hz : NontrivialZetaZero z) :
    quarticGap z.re z.im ≤ 0 :=
  quarticGap_nonpos_of_source_zero hz.mem_critical_strip.1
    (poleNormalizedZeta_zero_of_target hz)

/-- The mirror transports the target zero predicate, not values or lower bounds. -/
theorem nontrivialZetaZero_height_gt_three_quarters {z : ℂ}
    (hz : NontrivialZetaZero z) :
    (3 / 4 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hy : |z.im| ≤ (3 / 4 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_threeQuarter hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (3 / 4 : ℝ) := by
      simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_threeQuarter hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_threeQuarter_seed :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (3 / 4 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_three_quarters hzero)) hz

/-- The reference is affine, not the constant unit of a different homotopy. -/
def deformation (t : ℝ) (s : ℂ) : ℂ :=
  (s + 1) / 2 - (t : ℂ) * s * (s - 1) * value s

@[simp] theorem deformation_zero (s : ℂ) : deformation 0 s = (s + 1) / 2 := by
  simp [deformation]

theorem deformation_one {s : ℂ} (hs : 0 < s.re) : deformation 1 s = poleNormalizedZeta s := by
  rw [source_identity hs]
  simp [deformation]

theorem deformation_norm_lower {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (1 / 256 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_of_centered_enclosure hx hx1 hy
  have hs : 0 < s.re := by linarith
  have heq : deformation t s - (s + 1) / 2 =
      -(t : ℂ) * (s * (s - 1) * value s) := by unfold deformation; ring
  rw [heq, norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  have herror : ‖s * (s - 1) * value s‖ ≤ ‖s‖ * ‖s - 1‖ / (2 * s.re) := by
    rw [norm_mul, norm_mul]
    exact (mul_le_mul_of_nonneg_left (value_norm_le hs le_rfl)
      (mul_nonneg (norm_nonneg _) (norm_nonneg _))).trans_eq (by ring)
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans herror

theorem deformation_continuous (s : ℂ) : Continuous (fun t : ℝ => deformation t s) := by
  unfold deformation
  fun_prop

theorem deformation_differentiableAt (t : ℝ) {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ (deformation t) s := by
  exact ((differentiableAt_id.add_const 1).div_const 2).sub
    (((differentiableAt_const.mul differentiableAt_id).mul
      (differentiableAt_id.sub_const 1)).mul (value_differentiableAt hs))

/-- An analytic inverse is constructed only after the quantitative nonzero proof. -/
theorem inverse_deformation_differentiableAt {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  have hn : deformation t s ≠ 0 := by
    intro hz
    have h := deformation_norm_lower hx hx1 hy ht ht1
    rw [hz, norm_zero] at h
    norm_num at h
  exact (deformation_differentiableAt t (by linarith)).inv hn

/-- The old and new zero-locality constraints are both retained in the next carrier. -/
def firstWindowRemainder : Set ℂ :=
  {z | z ∈ MellinParabolic.firstRemainder ∧ (3 / 4 : ℝ) < z.im ∧
    quarticGap z.re z.im ≤ 0}

theorem window_one_iff_centered_remainder :
    WindowRH 1 ↔ NoTargetZero firstWindowRemainder := by
  constructor
  · intro h z hz hzero
    exact MellinParabolic.window_one_iff_firstRemainder.mp h z hz.1 hzero
  · intro h
    apply MellinParabolic.window_one_iff_firstRemainder.mpr
    intro z hz hzero
    have hypos : 0 < z.im := by linarith [hz.1]
    have hy : (3 / 4 : ℝ) < z.im := by
      simpa only [ZetaCommutatorRoot.heightAt_eq_im, abs_of_pos hypos] using
        nontrivialZetaZero_height_gt_three_quarters hzero
    exact h z ⟨hz, hy, target_quartic_constraint hzero⟩ hzero

theorem window_one_of_centered_remainder_cover
    (cover : FiniteVariationCover poleNormalizedZeta firstWindowRemainder) : WindowRH 1 := by
  apply window_one_iff_centered_remainder.mpr
  intro z hz hzero
  exact cover.nonzero hz (poleNormalizedZeta_zero_of_target hzero)

/-- This ambient top-edge point is NOT asserted to be a zeta zero. -/
theorem centered_remainder_nonempty : (firstWindowRemainder).Nonempty := by
  refine ⟨⟨5 / 8, 1⟩, ?_⟩
  norm_num [firstWindowRemainder, MellinParabolic.firstRemainder, quarticGap]

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin
