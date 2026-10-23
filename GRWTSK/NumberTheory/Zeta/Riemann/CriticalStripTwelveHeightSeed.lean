/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoPhase
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightSeed

set_option autoImplicit false

/-!
# Height twelve by retaining the actual cutoff-two phase

On the CLOSED band 11 <= |Im(s)| <= 12 the finite power term has nonnegative
Hermitian projection on s-1. The model therefore cannot shorten that reference.
Only the actual cutoff-two tail is charged, by 9/16 of |s-1|. This gives
|H| >= 77/16 on the new band, and the inherited 1/1000 on the full height12
right rectangle. The SAME affine-reference homotopy stays in a positive
half-plane on this band; a two-term relative error disk is not required.
SOURCE SCRIPTS: exact elaboration and transitive axiom audit are NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
open Complex Set
open TwelveHeightCertificate
noncomputable section

lemma twelve_height_squares {s : ℂ} (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) :
    (121 : ℝ) ≤ s.im^2 ∧ s.im^2 ≤ (144 : ℝ) := by
  have h1 := mul_le_mul hlo hlo (by norm_num : (0 : ℝ) ≤ 11) (abs_nonneg s.im)
  have h2 := mul_le_mul hhi hhi (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 12)
  constructor <;> nlinarith [sq_abs s.im]

/-- Real and imaginary parts of the ACTUAL source coefficient, with no phase fit. -/
lemma scaled_projection_re (s : ℂ) :
    (scaledCoefficient s*(starRingEnd ℂ) (s-1)).re = projectionReal s.re (s.im^2) := by
  simp only [scaledCoefficient, projectionReal, pow_succ, pow_zero, mul_one, one_mul,
    Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
    Complex.sub_re, Complex.sub_im, Complex.conj_re, Complex.conj_im,
    Complex.one_re, Complex.one_im, Complex.ofNat_re, Complex.ofNat_im,
    zero_mul, mul_zero, add_zero, sub_zero]
  ring

lemma scaled_projection_im (s : ℂ) :
    (scaledCoefficient s*(starRingEnd ℂ) (s-1)).im =
      s.im*projectionSlope s.re (s.im^2) := by
  simp only [scaledCoefficient, projectionSlope, pow_succ, pow_zero, mul_one, one_mul,
    Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
    Complex.sub_re, Complex.sub_im, Complex.conj_re, Complex.conj_im,
    Complex.one_re, Complex.one_im, Complex.ofNat_re, Complex.ofNat_im,
    zero_mul, mul_zero, add_zero, sub_zero]
  ring

lemma coefficient_projection (s : ℂ) :
    967680*(coefficient s*(starRingEnd ℂ) (s-1)).re = projectionReal s.re (s.im^2) ∧
    967680*(coefficient s*(starRingEnd ℂ) (s-1)).im = s.im*projectionSlope s.re (s.im^2) := by
  have he : scaledCoefficient s = (967680 : ℂ)*coefficient s := by
    rw [coefficient_eq_scaled]
    ring
  have hr := scaled_projection_re s
  have hi := scaled_projection_im s
  rw [he, mul_assoc] at hr hi
  norm_num only [Complex.mul_re, Complex.mul_im, Complex.ofNat_re, Complex.ofNat_im,
    zero_mul, sub_zero, add_zero] at hr hi
  exact ⟨hr, hi⟩

theorem finite_term_projection_nonneg {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) :
    0 ≤ ((power s*coefficient s)*(starRingEnd ℂ) (s-1)).re := by
  have hy := twelve_height_squares hlo hhi
  have hc := TwelveHeightCertificate.bounds hx hx1 hy.1 hy.2
  have he := coefficient_projection s
  let q : ℝ := projectionSlope s.re (s.im^2)/967680
  have hq0 : 0 ≤ projectionSlope s.re (s.im^2) := by nlinarith [hc.1, hc.2.1]
  have hp : 0 ≤ (coefficient s*(starRingEnd ℂ) (s-1)).re := by nlinarith [hc.1, he.1]
  have hq : 0 ≤ q := by dsimp only [q]; positivity
  have hcone : 7*(coefficient s*(starRingEnd ℂ) (s-1)).re ≤ 132*q := by
    dsimp only [q]
    nlinarith [he.1, hc.2.1]
  have him : (coefficient s*(starRingEnd ℂ) (s-1)).im = s.im*q := by
    dsimp only [q]
    nlinarith [he.2]
  have hphase := Phase.cone_nonneg hp hq hcone hlo hhi
  rw [mul_assoc, Complex.mul_re, Phase.power_re, Phase.power_im, him]
  calc
    _ = Real.exp (-s.re*Real.log 2) *
        (Real.cos (s.im*Real.log 2)*(coefficient s*(starRingEnd ℂ) (s-1)).re +
          s.im*Real.sin (s.im*Real.log 2)*q) := by ring
    _ ≥ 0 := mul_nonneg (Real.exp_pos _).le hphase

lemma power_norm_le_three_quarters {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) :
    ‖power s‖ ≤ (3/4 : ℝ) := by
  have h := power_weight hx
  have hmul := mul_nonneg (sq_nonneg ‖power s‖) (show 0 ≤ 2*s.re-1 by linarith)
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 3/4)).mp
  nlinarith

lemma twelve_tailCoefficient_bound {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) :
    tailCoefficient s ≤ (3/4 : ℝ) := by
  have hy := twelve_height_squares hlo hhi
  have hc := (TwelveHeightCertificate.bounds hx hx1 hy.1 hy.2).2.2
  rw [← shiftedProduct_sq] at hc
  have hs5 : 0 < s.re+5 := by linarith
  have hden : 0 < 967680*(s.re+5) := by positivity
  have hp : shiftedProduct s ≤ (3/4 : ℝ)*(967680*(s.re+5)) := by
    apply (sq_le_sq₀ (by unfold shiftedProduct; positivity) (by positivity)).mp
    nlinarith
  exact (div_le_iff₀ hden).mpr hp

/-- General-cutoff tail only. No saving from cutoff one has been transferred. -/
theorem twelve_tail_error {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) :
    ‖poleNormalizedZeta s-finiteModel 2 s‖ ≤ (9/16 : ℝ)*‖s-1‖ := by
  have hp := power_norm_le_three_quarters hx
  have ht := twelve_tailCoefficient_bound hx hx1 hlo hhi
  have hs5 : 0 < s.re+5 := by linarith
  have hq : 0 ≤ tailCoefficient s := by unfold tailCoefficient shiftedProduct; positivity
  have hb := mul_le_mul hp ht hq (by norm_num : (0 : ℝ) ≤ 3/4)
  exact (source_error (by linarith)).trans
    (by nlinarith [mul_le_mul_of_nonneg_right hb (norm_nonneg (s-1))])

lemma self_projection (d : ℂ) : (d*(starRingEnd ℂ) d).re = ‖d‖^2 := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [Complex.mul_re, Complex.conj_re, Complex.conj_im]
  ring

/-- This is one-sided Hermitian control, not |H-(s-1)| < |s-1|. -/
theorem twelve_source_projection {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) :
    (7/16 : ℝ)*‖s-1‖^2 ≤ (poleNormalizedZeta s*(starRingEnd ℂ) (s-1)).re := by
  have hmodel : ‖s-1‖^2 ≤ (finiteModel 2 s*(starRingEnd ℂ) (s-1)).re := by
    rw [finiteModel_two, add_mul, Complex.add_re, self_projection]
    have h := finite_term_projection_nonneg hx hx1 hlo hhi
    linarith
  have herr := twelve_tail_error hx hx1 hlo hhi
  have hneg := Complex.re_le_norm (-((poleNormalizedZeta s-finiteModel 2 s)*
    (starRingEnd ℂ) (s-1)))
  simp only [Complex.neg_re, norm_neg, norm_mul, norm_star] at hneg
  have heq : (poleNormalizedZeta s*(starRingEnd ℂ) (s-1)).re =
      (finiteModel 2 s*(starRingEnd ℂ) (s-1)).re +
      ((poleNormalizedZeta s-finiteModel 2 s)*(starRingEnd ℂ) (s-1)).re := by
    rw [← Complex.add_re]
    congr 1
    ring
  have hb := mul_le_mul_of_nonneg_right herr (norm_nonneg (s-1))
  nlinarith

lemma high_reference_norm {s : ℂ} (hlo : (11 : ℝ) ≤ |s.im|) :
    (11 : ℝ) ≤ ‖s-1‖ := by
  exact hlo.trans (by simpa only [Complex.sub_im, Complex.one_im, sub_zero]
    using Complex.abs_im_le_norm (s-1))

theorem poleNormalized_norm_lower_twelveBand {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) :
    (77/16 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have hd := high_reference_norm hlo
  have h := Phase.projection_lower (by linarith : 0 < ‖s-1‖)
    (twelve_source_projection hx hx1 hlo hhi)
  nlinarith

/-- Glue bounds for the same H, retaining the exact old lower region and the seam. -/
theorem poleNormalized_norm_lower_twelveHeight {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hhi : |s.im| ≤ (12 : ℝ)) :
    (1/1000 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  by_cases hlo : |s.im| ≤ (11 : ℝ)
  · exact poleNormalized_norm_lower_elevenHeight hx hx1 hlo
  · exact (by norm_num : (1/1000 : ℝ) ≤ 77/16).trans
      (poleNormalized_norm_lower_twelveBand hx hx1 (le_of_lt (lt_of_not_ge hlo)) hhi)

theorem poleNormalized_nonzero_twelveHeight {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hhi : |s.im| ≤ (12 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_twelveHeight hx hx1 hhi
  rw [hz, norm_zero] at h
  norm_num at h

theorem nontrivialZetaZero_height_gt_twelve {z : ℂ} (hz : NontrivialZetaZero z) :
    (12 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hn
  have hy : |z.im| ≤ (12 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hn
  by_cases hx : (1/2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_twelveHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1/2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (12 : ℝ) := by simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_twelveHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_twelveHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (12 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_twelve hzero)) hz

theorem windowRH_twelve : WindowRH 12 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (12 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_twelve hzero)) hh)

theorem shellRH_eleven : ShellRH 11 := (window_succ_iff 11).mp windowRH_twelve |>.2

/-- The existing affine deformation uses half-plane control on this new band. -/
theorem deformation_projection_twelveBand {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (7/16 : ℝ)*‖s-1‖^2 ≤ (deformation t s*(starRingEnd ℂ) (s-1)).re := by
  have hs := twelve_source_projection hx hx1 hlo hhi
  have heq : (deformation t s*(starRingEnd ℂ) (s-1)).re =
      (1-t)*‖s-1‖^2+t*(poleNormalizedZeta s*(starRingEnd ℂ) (s-1)).re := by
    unfold deformation
    rw [add_mul, Complex.add_re, self_projection]
    rw [mul_assoc, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im]
    rw [sub_mul, Complex.sub_re, self_projection]
    ring
  rw [heq]
  have h1 := mul_le_mul_of_nonneg_left hs ht
  have h2 := mul_nonneg (sub_nonneg.mpr ht1) (sq_nonneg ‖s-1‖)
  nlinarith

theorem deformation_norm_lower_twelveBand {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (77/16 : ℝ) ≤ ‖deformation t s‖ := by
  have hd := high_reference_norm hlo
  have h := Phase.projection_lower (by linarith : 0 < ‖s-1‖)
    (deformation_projection_twelveBand hx hx1 hlo hhi ht ht1)
  nlinarith

theorem inverse_deformation_differentiableAt_twelveBand {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_twelveBand hx hx1 hlo hhi ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

theorem window_thirteen_of_shell (h : ShellRH 12) : WindowRH 13 :=
  (window_succ_iff 12).mpr ⟨windowRH_twelve, h⟩

theorem all_windows_of_above_twelve
    (hstep : ∀ N : ℕ, 12 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_twelve (by decide)
  | succ N ih =>
    by_cases hsmall : N+1 ≤ 12
    · exact windowRH_mono windowRH_twelve hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_twelve
    (hstep : ∀ N : ℕ, 12 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_twelve hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
