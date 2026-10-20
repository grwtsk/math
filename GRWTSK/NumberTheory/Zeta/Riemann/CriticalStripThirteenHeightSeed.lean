/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoTailDefect
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenHeightBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightSeed

set_option autoImplicit false

/-!
# Height thirteen allowing a quantified adverse finite-term projection

The source, cutoff-two finite model and affine deformation are unchanged.
The new signed phase cone permits a finite-term loss 2/5 of the reference norm
squared. The SEPARATELY proved cutoff-two saving gives a tail loss 33/56.
Their remaining margin is 3/280, not a nonnegative finite-term assertion.
The new closed band has |H|>=9/70 and glues to the old 1/1000 lower seed.
SOURCE SCRIPTS: exact Lean elaboration and transitive axiom audit NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
open Complex Set TwelveHeightCertificate
noncomputable section

lemma thirteen_height_squares {s : ℂ} (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) :
    (144 : ℝ) ≤ s.im ^ 2 ∧ s.im ^ 2 ≤ (169 : ℝ) := by
  have h1 := mul_le_mul hlo hlo (by norm_num : (0 : ℝ) ≤ 12) (abs_nonneg s.im)
  have h2 := mul_le_mul hhi hhi (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 13)
  constructor <;> nlinarith [sq_abs s.im]

/-- The finite term may point adversely; its exact loss is bounded, not erased. -/
theorem finite_term_projection_lower_thirteen {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) :
    -(2 / 5 : ℝ) * ‖s - 1‖ ^ 2 ≤ ((power s * coefficient s) * (starRingEnd ℂ) (s - 1)).re := by
  have hy := thirteen_height_squares hlo hhi
  have hc := ThirteenHeightCertificate.bounds hx hx1 hy.1 hy.2
  have ht := ThirteenPhase.signed_height_bounds hlo hhi
  have hch := ThirteenPhase.height_chord hlo hhi
  have hcos := mul_le_mul_of_nonneg_right ht.1 hc.1
  have hsin := mul_le_mul_of_nonneg_right ht.2 hc.2.1
  have hchQ := mul_le_mul_of_nonneg_right hch hc.2.1
  have hraw : -ThirteenHeightCertificate.adverse s.re (s.im ^ 2) ≤
      Real.cos (s.im * Real.log 2) * projectionReal s.re (s.im ^ 2) +
        s.im * Real.sin (s.im * Real.log 2) * projectionSlope s.re (s.im ^ 2) := by
    unfold ThirteenHeightCertificate.adverse
    nlinarith
  have he := coefficient_projection s
  have hr : (coefficient s * (starRingEnd ℂ) (s - 1)).re =
      projectionReal s.re (s.im ^ 2) / 967680 := by nlinarith [he.1]
  have hi : (coefficient s * (starRingEnd ℂ) (s - 1)).im =
      s.im * projectionSlope s.re (s.im ^ 2) / 967680 := by nlinarith [he.2]
  have hscaled : 967680 * ((power s * coefficient s) * (starRingEnd ℂ) (s - 1)).re =
      ‖power s‖ * (Real.cos (s.im * Real.log 2) * projectionReal s.re (s.im ^ 2) +
        s.im * Real.sin (s.im * Real.log 2) * projectionSlope s.re (s.im ^ 2)) := by
    rw [mul_assoc, Complex.mul_re, Phase.power_re, Phase.power_im,
      ThirteenPhase.amplitude_eq_norm, hr, hi]
    ring
  have hd : ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
    simp [Complex.sq_norm, Complex.normSq_apply]
  have h1 := mul_le_mul_of_nonneg_left hraw (norm_nonneg (power s))
  have h2 := mul_le_mul_of_nonneg_left hc.2.2.1 (norm_nonneg (power s))
  have h3 := mul_le_mul_of_nonneg_right (ThirteenPhase.weighted_root hx hx1)
    (show 0 ≤ (2 / 5 : ℝ) * 967680 * ‖s - 1‖ ^ 2 by positivity)
  rw [← hd] at h2
  nlinarith

lemma thirteen_tailCoefficient_bound {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) :
    tailCoefficient s ≤ (10 / 9 : ℝ) := by
  have hy := thirteen_height_squares hlo hhi
  have hc := (ThirteenHeightCertificate.bounds hx hx1 hy.1 hy.2).2.2.2
  rw [← shiftedProduct_sq] at hc
  have hs5 : 0 < s.re + 5 := by linarith
  have hden : 0 < 967680 * (s.re + 5) := by positivity
  have hp : shiftedProduct s ≤ (10 / 9 : ℝ) * (967680 * (s.re + 5)) := by
    apply (sq_le_sq₀ (by unfold shiftedProduct; positivity) (by positivity)).mp
    nlinarith
  exact (div_le_iff₀ hden).mpr hp

/-- Only the newly derived cutoff-two saving is used here. -/
theorem thirteen_tail_error {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel 2 s‖ ≤ (33 / 56 : ℝ) * ‖s - 1‖ := by
  have hp := ThirteenPhase.power_norm_le hx
  have ht := thirteen_tailCoefficient_bound hx hx1 hlo hhi
  have hs5 : 0 < s.re + 5 := by linarith
  have hq : 0 ≤ tailCoefficient s := by unfold tailCoefficient shiftedProduct; positivity
  have hb := mul_le_mul hp ht hq (by norm_num : (0 : ℝ) ≤ 99 / 140)
  have hc := mul_le_mul_of_nonneg_right hb (norm_nonneg (s - 1))
  have herr := SecondCell.source_error_improved hx hx1
  nlinarith

/-- A strict positive remainder survives both independently charged losses. -/
theorem thirteen_source_projection {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) :
    (3 / 280 : ℝ) * ‖s - 1‖ ^ 2 ≤ (poleNormalizedZeta s * (starRingEnd ℂ) (s - 1)).re := by
  have hmodel : (3 / 5 : ℝ) * ‖s - 1‖ ^ 2 ≤
      (finiteModel 2 s * (starRingEnd ℂ) (s - 1)).re := by
    rw [finiteModel_two, add_mul, Complex.add_re, self_projection]
    have h := finite_term_projection_lower_thirteen hx hx1 hlo hhi
    linarith
  have herr := thirteen_tail_error hx hx1 hlo hhi
  have hneg := Complex.re_le_norm (-((poleNormalizedZeta s - finiteModel 2 s) *
    (starRingEnd ℂ) (s - 1)))
  simp only [Complex.neg_re, norm_neg, norm_mul, norm_star] at hneg
  have heq : (poleNormalizedZeta s * (starRingEnd ℂ) (s - 1)).re =
      (finiteModel 2 s * (starRingEnd ℂ) (s - 1)).re +
      ((poleNormalizedZeta s - finiteModel 2 s) * (starRingEnd ℂ) (s - 1)).re := by
    rw [← Complex.add_re]
    congr 1
    ring
  have hb := mul_le_mul_of_nonneg_right herr (norm_nonneg (s - 1))
  nlinarith

theorem poleNormalized_norm_lower_thirteenBand {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) :
    (9 / 70 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have hd : (12 : ℝ) ≤ ‖s - 1‖ := hlo.trans (by
    simpa only [Complex.sub_im, Complex.one_im, sub_zero] using Complex.abs_im_le_norm (s - 1))
  have h := Phase.projection_lower (by linarith : 0 < ‖s - 1‖)
    (thirteen_source_projection hx hx1 hlo hhi)
  nlinarith

/-- Exact old/new domain gluing, including the height-twelve seam. -/
theorem poleNormalized_norm_lower_thirteenHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hhi : |s.im| ≤ (13 : ℝ)) :
    (1 / 1000 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  by_cases hlo : |s.im| ≤ (12 : ℝ)
  · exact poleNormalized_norm_lower_twelveHeight hx hx1 hlo
  · exact (by norm_num : (1 / 1000 : ℝ) ≤ 9 / 70).trans
      (poleNormalized_norm_lower_thirteenBand hx hx1 (le_of_lt (lt_of_not_ge hlo)) hhi)

theorem poleNormalized_nonzero_thirteenHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hhi : |s.im| ≤ (13 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_thirteenHeight hx hx1 hhi
  rw [hz, norm_zero] at h
  norm_num at h

theorem nontrivialZetaZero_height_gt_thirteen {z : ℂ} (hz : NontrivialZetaZero z) :
    (13 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hn
  have hy : |z.im| ≤ (13 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hn
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_thirteenHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (13 : ℝ) := by simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_thirteenHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_thirteenHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (13 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_thirteen hzero)) hz

theorem windowRH_thirteen : WindowRH 13 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (13 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_thirteen hzero)) hh)

theorem shellRH_twelve : ShellRH 12 := (window_succ_iff 12).mp windowRH_thirteen |>.2

/-- The SAME affine homotopy is controlled on this band only. -/
theorem deformation_projection_thirteenBand {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (3 / 280 : ℝ) * ‖s - 1‖ ^ 2 ≤ (deformation t s * (starRingEnd ℂ) (s - 1)).re := by
  have heq : (deformation t s * (starRingEnd ℂ) (s - 1)).re =
      (1 - t) * ‖s - 1‖ ^ 2 + t * (poleNormalizedZeta s * (starRingEnd ℂ) (s - 1)).re := by
    have hc : deformation t s * (starRingEnd ℂ) (s - 1) =
        ((1 - t : ℝ) : ℂ) * ((s - 1) * (starRingEnd ℂ) (s - 1)) +
          (t : ℂ) * (poleNormalizedZeta s * (starRingEnd ℂ) (s - 1)) := by
      unfold deformation
      push_cast
      ring
    rw [hc, Complex.add_re]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero,
      self_projection]
  rw [heq]
  have h := mul_le_mul_of_nonneg_left (thirteen_source_projection hx hx1 hlo hhi) ht
  have hrem := mul_nonneg (sub_nonneg.mpr ht1) (sq_nonneg ‖s - 1‖)
  nlinarith

theorem deformation_norm_lower_thirteenBand {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (9 / 70 : ℝ) ≤ ‖deformation t s‖ := by
  have hd : (12 : ℝ) ≤ ‖s - 1‖ := hlo.trans (by
    simpa only [Complex.sub_im, Complex.one_im, sub_zero] using Complex.abs_im_le_norm (s - 1))
  have h := Phase.projection_lower (by linarith : 0 < ‖s - 1‖)
    (deformation_projection_thirteenBand hx hx1 hlo hhi ht ht1)
  nlinarith

theorem inverse_deformation_differentiableAt_thirteenBand {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_thirteenBand hx hx1 hlo hhi ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- Higher windows retain canonical RH, not an unbounded no-zero assertion. -/
theorem window_fourteen_of_shell (h : ShellRH 13) : WindowRH 14 :=
  (window_succ_iff 13).mpr ⟨windowRH_thirteen, h⟩

theorem all_windows_of_above_thirteen
    (hstep : ∀ N : ℕ, 13 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_thirteen (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 13
    · exact windowRH_mono windowRH_thirteen hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_thirteen
    (hstep : ∀ N : ℕ, 13 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_thirteen hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
