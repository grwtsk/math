/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTangentDefect
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTenHeightBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNineHeightSeed

set_option autoImplicit false

/-!
# Height ten from exact Bernstein moments and the SAME sextic source
The rational first-cell mass proof supplies factor5/7, at cutoff ONE only.
The joint geometry factor139/100 gives strict relative error139/140.
Inherited reference lower65/112 yields the conservative lower13/3136.
No source, primitive, endpoint, finite model, or deformation is redefined.
SOURCE SCRIPTS: exact Lean elaboration and transitive axiom audit NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
open Complex Set
noncomputable section

theorem tenHeight_joint_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ)) :
    jointNumerator s ≤ (139 / 100 : ℝ) * jointDenominator s := by
  have hy2 : s.im ^ 2 ≤ (100 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 10)
    nlinarith [sq_abs s.im]
  have hc := TenHeightCertificate.squared_ratio_bound hx hx1 (sq_nonneg s.im) hy2
  rw [← jointNumerator_sq, ← jointDenominator_sq] at hc
  have hn : 0 ≤ jointNumerator s := by unfold jointNumerator; positivity
  have hd : 0 ≤ (139 / 100 : ℝ) * jointDenominator s := by
    have h5 : 0 ≤ s.re + 5 := by linarith
    unfold jointDenominator
    positivity
  apply (sq_le_sq₀ hn hd).mp
  nlinarith

/-- Restore both shared factors before applying the original-source remainder. -/
theorem tenHeight_multiplier_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ)) :
    ‖multiplier s‖ ≤ (139 / 100 : ℝ) * (s.re + 5) * referenceFactors s := by
  have h := mul_le_mul_of_nonneg_right (tenHeight_joint_bound hx hx1 hy)
    (mul_nonneg (norm_nonneg (s + 2)) (norm_nonneg (s + 4)))
  calc
    ‖multiplier s‖ = jointNumerator s * (‖s + 2‖ * ‖s + 4‖) := by
      simp only [multiplier, QuarticPrimitive.multiplier, CubicPrimitive.multiplier,
        norm_mul, jointNumerator]
      ring
    _ ≤ ((139 / 100 : ℝ) * jointDenominator s) * (‖s + 2‖ * ‖s + 4‖) := h
    _ = _ := by unfold jointDenominator referenceFactors; ring

theorem tenHeight_source_error {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ)) :
    ‖poleNormalizedZeta s - reference s‖ ≤ (139 / 140 : ℝ) * ‖reference s‖ := by
  have hs : 0 < s.re := by linarith
  have hs5 : 0 < s.re + 5 := by linarith
  have ht := BernsteinMass.first_tail_improved hx hx1
  have heq : poleNormalizedZeta s - reference s = -multiplier s * tail 1 s := by
    rw [source_identity hs]
    ring
  rw [heq, norm_mul, norm_neg]
  calc
    _ ≤ ((139 / 100 : ℝ) * (s.re + 5) * referenceFactors s) *
        ((5 / 7 : ℝ) / (30240 * (s.re + 5))) :=
      mul_le_mul (tenHeight_multiplier_bound hx hx1 hy) ht (norm_nonneg _)
        (by unfold referenceFactors; positivity)
    _ = _ := by rw [reference_norm]; field_simp [hs5.ne'] <;> ring

lemma norm_lower_from_tenHeight_enclosure {s v : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (he : ‖v-reference s‖ ≤ (139/140 : ℝ)*‖reference s‖) :
    (13/3136 : ℝ) ≤ ‖v‖ := by
  have htri : ‖reference s‖ ≤ ‖v‖ + ‖v-reference s‖ := by
    calc
      _ = ‖v-(v-reference s)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  have hr := reference_norm_lower hx hx1
  nlinarith

theorem poleNormalized_norm_lower_tenHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ)) :
    (13 / 3136 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_tenHeight_enclosure hx hx1 (tenHeight_source_error hx hx1 hy)

theorem poleNormalized_nonzero_tenHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_tenHeight hx hx1 hy
  rw [hz, norm_zero] at h
  norm_num at h

theorem nontrivialZetaZero_height_gt_ten {z : ℂ} (hz : NontrivialZetaZero z) :
    (10 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hy : |z.im| ≤ (10 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_tenHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (10 : ℝ) := by simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_tenHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_tenHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (10 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_ten hzero)) hz

theorem windowRH_ten : WindowRH 10 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (10 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_ten hzero)) hh)

theorem shellRH_nine : ShellRH 9 := (window_succ_iff 9).mp windowRH_ten |>.2

theorem deformation_norm_lower_tenHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : (13 / 3136 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_from_tenHeight_enclosure hx hx1
  have heq : deformation t s - reference s = (t : ℂ) * (poleNormalizedZeta s - reference s) := by
    unfold deformation
    ring
  rw [heq, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (tenHeight_source_error hx hx1 hy)

theorem inverse_deformation_differentiableAt_tenHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_tenHeight hx hx1 hy ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- The newly measured first-cell saving has NOT been asserted at cutoff N>1.
This all-integer-cutoff estimate deliberately keeps the larger139/100 constant. -/
theorem finiteModel_relative_error_tenHeight {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      (139 / 100 : ℝ) * ‖reference s‖ * (N : ℝ) ^ (-(s.re + 5)) := by
  have hs : 0 < s.re := by linarith
  have hs5 : 0 < s.re + 5 := by linarith
  have hp : 0 ≤ (N : ℝ) ^ (-(s.re + 5)) := Real.rpow_nonneg (by positivity) _
  calc
    _ ≤ ‖multiplier s‖ * ((N : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
      finiteModel_error hN hs le_rfl
    _ ≤ ((139 / 100 : ℝ) * (s.re + 5) * referenceFactors s) *
        ((N : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
      mul_le_mul_of_nonneg_right (tenHeight_multiplier_bound hx hx1 hy)
        (div_nonneg hp (by positivity))
    _ = _ := by rw [reference_norm]; field_simp [hs5.ne'] <;> ring

/-- The established window feeds the exact next-shell port, without changing RH. -/
theorem window_eleven_of_shell (h : ShellRH 10) : WindowRH 11 :=
  (window_succ_iff 10).mpr ⟨windowRH_ten, h⟩

theorem all_windows_of_above_ten
    (hstep : ∀ N : ℕ, 10 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_ten (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 10
    · exact windowRH_mono windowRH_ten hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_ten
    (hstep : ∀ N : ℕ, 10 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_ten hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
