/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightSeed

set_option autoImplicit false

/-!
# Height eight from the exact sextic reference and joint error

All five remaining numerator factors and the real-part denominator are retained
in the degree-(10,5) certificate. The two shared complex factors are restored
before the analytic tail bound is consumed. A relative error31/32 and explicit
reference lower65/112 give |H|>=65/3584 on the CLOSED right rectangle.
The canonical zero mirror supplies left-side exclusion, not an H norm identity.
SOURCE SCRIPTS: Lean elaboration and transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive

open Complex Set
noncomputable section

def referenceFactors (s : ℂ) : ℝ :=
  ‖s + 2‖ * ‖s + 4‖ * ‖s + 6‖ * ‖s + 7‖ * ‖quadraticFactor s‖

lemma reference_norm (s : ℂ) : ‖reference s‖ = referenceFactors s / 30240 := by
  norm_num [reference, referenceFactors, norm_div, norm_mul]

lemma quadraticFactor_sq (s : ℂ) :
    ‖quadraticFactor s‖ ^ 2 = EightHeightCertificate.quadraticNormSq s.re (s.im ^ 2) := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [quadraticFactor, pow_two, Complex.sub_re, Complex.add_re, Complex.mul_re,
    Complex.sub_im, Complex.add_im, Complex.mul_im, Complex.ofNat_re, Complex.ofNat_im,
    zero_mul, mul_zero, sub_zero, add_zero, EightHeightCertificate.quadraticNormSq]
  ring

/-- The quadratic factor's complex roots do not lie in Re(s)<=1. This estimate
uses an exact completed square, not a claim that its real part stays positive. -/
lemma quadraticFactor_norm_lower {s : ℂ} (hx1 : s.re ≤ 1) :
    (32 : ℝ) ≤ ‖quadraticFactor s‖ := by
  have ha : (16 : ℝ) ≤ (s.re - 5) ^ 2 := by nlinarith [sq_nonneg (s.re - 1)]
  have heq : ‖quadraticFactor s‖ ^ 2 =
      (s.im ^ 2 + (s.re - 5) ^ 2 - 20) ^ 2 + 80 * (s.re - 5) ^ 2 := by
    rw [quadraticFactor_sq]
    unfold EightHeightCertificate.quadraticNormSq
    ring
  apply (sq_le_sq₀ (by norm_num : (0 : ℝ) ≤ 32) (norm_nonneg _)).mp
  rw [heq]
  nlinarith [sq_nonneg (s.im ^ 2 + (s.re - 5) ^ 2 - 20)]

lemma reference_norm_lower {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    (65 / 112 : ℝ) ≤ ‖reference s‖ := by
  have h2 : (5 / 2 : ℝ) ≤ ‖s + 2‖ := by
    have h := Complex.re_le_norm (s + 2)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h4 : (9 / 2 : ℝ) ≤ ‖s + 4‖ := by
    have h := Complex.re_le_norm (s + 4)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h6 : (13 / 2 : ℝ) ≤ ‖s + 6‖ := by
    have h := Complex.re_le_norm (s + 6)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h7 : (15 / 2 : ℝ) ≤ ‖s + 7‖ := by
    have h := Complex.re_le_norm (s + 7)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have hp2 := mul_le_mul h2 h4 (by norm_num : (0 : ℝ) ≤ 9 / 2) (norm_nonneg _)
  have hp3 := mul_le_mul hp2 h6 (by norm_num : (0 : ℝ) ≤ 13 / 2) (by positivity)
  have hp4 := mul_le_mul hp3 h7 (by norm_num : (0 : ℝ) ≤ 15 / 2) (by positivity)
  have hp5 := mul_le_mul hp4 (quadraticFactor_norm_lower hx1)
    (by norm_num : (0 : ℝ) ≤ 32) (by positivity)
  rw [reference_norm]
  unfold referenceFactors
  nlinarith

def jointNumerator (s : ℂ) : ℝ := ‖s‖ * ‖s - 1‖ * ‖s + 1‖ * ‖s + 3‖ * ‖s + 5‖
def jointDenominator (s : ℂ) : ℝ := (s.re + 5) * ‖s + 6‖ * ‖s + 7‖ * ‖quadraticFactor s‖

lemma jointNumerator_sq (s : ℂ) :
    jointNumerator s ^ 2 = EightHeightCertificate.numerator s.re (s.im ^ 2) := by
  simp only [jointNumerator, mul_pow, Complex.sq_norm, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im, Complex.ofNat_re, Complex.ofNat_im,
    add_zero, sub_zero, EightHeightCertificate.numerator]
  ring

lemma jointDenominator_sq (s : ℂ) :
    jointDenominator s ^ 2 = EightHeightCertificate.denominator s.re (s.im ^ 2) := by
  simp only [jointDenominator, mul_pow, quadraticFactor_sq]
  simp only [Complex.sq_norm, Complex.normSq_apply, Complex.add_re, Complex.add_im,
    Complex.ofNat_re, Complex.ofNat_im, add_zero, EightHeightCertificate.denominator]
  ring

theorem eightHeight_joint_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ)) :
    jointNumerator s ≤ (31 / 32 : ℝ) * jointDenominator s := by
  have hy2 : s.im ^ 2 ≤ (64 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 8)
    nlinarith [sq_abs s.im]
  have hc := EightHeightCertificate.squared_ratio_bound hx hx1 (sq_nonneg s.im) hy2
  rw [← jointNumerator_sq, ← jointDenominator_sq] at hc
  have hn : 0 ≤ jointNumerator s := by unfold jointNumerator; positivity
  have hd : 0 ≤ (31 / 32 : ℝ) * jointDenominator s := by
    have h5 : 0 ≤ s.re + 5 := by linarith
    unfold jointDenominator
    positivity
  apply (sq_le_sq₀ hn hd).mp
  nlinarith

/-- Restore both shared factors before applying the original-source remainder. -/
theorem eightHeight_multiplier_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ)) :
    ‖multiplier s‖ ≤ (31 / 32 : ℝ) * (s.re + 5) * referenceFactors s := by
  have h := mul_le_mul_of_nonneg_right (eightHeight_joint_bound hx hx1 hy)
    (mul_nonneg (norm_nonneg (s + 2)) (norm_nonneg (s + 4)))
  calc
    ‖multiplier s‖ = jointNumerator s * (‖s + 2‖ * ‖s + 4‖) := by
      simp only [multiplier, QuarticPrimitive.multiplier, CubicPrimitive.multiplier,
        norm_mul, jointNumerator]
      ring
    _ ≤ ((31 / 32 : ℝ) * jointDenominator s) * (‖s + 2‖ * ‖s + 4‖) := h
    _ = _ := by unfold jointDenominator referenceFactors; ring

theorem eightHeight_source_error {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ)) :
    ‖poleNormalizedZeta s - reference s‖ ≤ (31 / 32 : ℝ) * ‖reference s‖ := by
  have hs : 0 < s.re := by linarith
  have hs5 : 0 < s.re + 5 := by linarith
  have ht : ‖tail 1 s‖ ≤ 1 / (30240 * (s.re + 5)) := by
    simpa only [Real.one_rpow] using (tail_norm_le (T := 1) (σ := s.re) le_rfl hs le_rfl)
  have heq : poleNormalizedZeta s - reference s = -multiplier s * tail 1 s := by
    rw [source_identity hs]
    ring
  rw [heq, norm_mul, norm_neg]
  calc
    _ ≤ ((31 / 32 : ℝ) * (s.re + 5) * referenceFactors s) *
        (1 / (30240 * (s.re + 5))) :=
      mul_le_mul (eightHeight_multiplier_bound hx hx1 hy) ht (norm_nonneg _)
        (by unfold referenceFactors; positivity)
    _ = _ := by rw [reference_norm]; field_simp [hs5.ne'] <;> ring

lemma norm_lower_from_eightHeight_enclosure {s v : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (he : ‖v - reference s‖ ≤ (31 / 32 : ℝ) * ‖reference s‖) :
    (65 / 3584 : ℝ) ≤ ‖v‖ := by
  have htri : ‖reference s‖ ≤ ‖v‖ + ‖v - reference s‖ := by
    calc
      _ = ‖v - (v - reference s)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  have hr := reference_norm_lower hx hx1
  nlinarith

theorem poleNormalized_norm_lower_eightHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ)) :
    (65 / 3584 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_eightHeight_enclosure hx hx1 (eightHeight_source_error hx hx1 hy)

theorem poleNormalized_nonzero_eightHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_eightHeight hx hx1 hy
  rw [hz, norm_zero] at h
  norm_num at h

theorem nontrivialZetaZero_height_gt_eight {z : ℂ} (hz : NontrivialZetaZero z) :
    (8 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hy : |z.im| ≤ (8 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_eightHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (8 : ℝ) := by simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_eightHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_eightHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (8 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_eight hzero)) hz

theorem windowRH_eight : WindowRH 8 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (8 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_eight hzero)) hh)

theorem shellRH_seven : ShellRH 7 := (window_succ_iff 7).mp windowRH_eight |>.2

/-- New reference, actual H and an explicitly bounded homotopy parameter. -/
def deformation (t : ℝ) (s : ℂ) : ℂ := reference s + (t : ℂ) * (poleNormalizedZeta s - reference s)
@[simp] theorem deformation_zero (s : ℂ) : deformation 0 s = reference s := by simp [deformation]
@[simp] theorem deformation_one (s : ℂ) : deformation 1 s = poleNormalizedZeta s := by simp [deformation]

theorem deformation_continuous (s : ℂ) : Continuous (fun t : ℝ => deformation t s) := by
  unfold deformation
  fun_prop

theorem reference_differentiableAt (s : ℂ) : DifferentiableAt ℂ reference s := by
  unfold reference quadraticFactor
  fun_prop

theorem deformation_differentiableAt (t : ℝ) (s : ℂ) : DifferentiableAt ℂ (deformation t) s :=
  (reference_differentiableAt s).add (((differentiable_poleNormalizedZeta s).sub
    (reference_differentiableAt s)).const_mul (t : ℂ))

theorem deformation_norm_lower_eightHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : (65 / 3584 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_from_eightHeight_enclosure hx hx1
  have heq : deformation t s - reference s = (t : ℂ) * (poleNormalizedZeta s - reference s) := by
    unfold deformation
    ring
  rw [heq, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (eightHeight_source_error hx hx1 hy)

theorem inverse_deformation_differentiableAt_eightHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_eightHeight hx hx1 hy ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- Cutoff convergence is for the correctly adjusted model, not increasing order. -/
theorem finiteModel_relative_error_eightHeight {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      (31 / 32 : ℝ) * ‖reference s‖ * (N : ℝ) ^ (-(s.re + 5)) := by
  have hs : 0 < s.re := by linarith
  have hs5 : 0 < s.re + 5 := by linarith
  have hp : 0 ≤ (N : ℝ) ^ (-(s.re + 5)) := Real.rpow_nonneg (by positivity) _
  calc
    _ ≤ ‖multiplier s‖ * ((N : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
      finiteModel_error hN hs le_rfl
    _ ≤ ((31 / 32 : ℝ) * (s.re + 5) * referenceFactors s) *
        ((N : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
      mul_le_mul_of_nonneg_right (eightHeight_multiplier_bound hx hx1 hy)
        (div_nonneg hp (by positivity))
    _ = _ := by rw [reference_norm]; field_simp [hs5.ne'] <;> ring

theorem window_nine_of_shell (h : ShellRH 8) : WindowRH 9 :=
  (window_succ_iff 8).mpr ⟨windowRH_eight, h⟩

theorem all_windows_of_above_eight
    (hstep : ∀ N : ℕ, 8 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_eight (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 8
    · exact windowRH_mono windowRH_eight hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_eight
    (hstep : ∀ N : ℕ, 8 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_eight hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
