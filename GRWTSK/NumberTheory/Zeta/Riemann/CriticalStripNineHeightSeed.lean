/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTailDefect
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNineHeightBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightSeed

set_option autoImplicit false

/-!
# Height nine from the SAME sextic source and its integrated absolute-kernel defect

No new primitive, source, finite model, or endpoint correction is introduced.
Only the cutoff-one tail gains33/40. The joint geometric bound155/132 combines
with it to yield31/32. Inherited reference lower65/112 gives65/3584. The old
height-nine failure fixture remains valid for its OLD, weaker tail comparison.
Exact Lean elaboration and the transitive axiom audit are NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
open Complex Set
noncomputable section

theorem nineHeight_joint_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    jointNumerator s ≤ (155 / 132 : ℝ) * jointDenominator s := by
  have hy2 : s.im ^ 2 ≤ (81 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 9)
    nlinarith [sq_abs s.im]
  have hc := NineHeightCertificate.squared_ratio_bound hx hx1 (sq_nonneg s.im) hy2
  rw [← jointNumerator_sq, ← jointDenominator_sq] at hc
  have hn : 0 ≤ jointNumerator s := by unfold jointNumerator; positivity
  have hd : 0 ≤ (155 / 132 : ℝ) * jointDenominator s := by
    have h5 : 0 ≤ s.re + 5 := by linarith
    unfold jointDenominator
    positivity
  apply (sq_le_sq₀ hn hd).mp
  nlinarith

/-- Restore both shared factors before applying the original-source remainder. -/
theorem nineHeight_multiplier_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    ‖multiplier s‖ ≤ (155 / 132 : ℝ) * (s.re + 5) * referenceFactors s := by
  have h := mul_le_mul_of_nonneg_right (nineHeight_joint_bound hx hx1 hy)
    (mul_nonneg (norm_nonneg (s + 2)) (norm_nonneg (s + 4)))
  calc
    ‖multiplier s‖ = jointNumerator s * (‖s + 2‖ * ‖s + 4‖) := by
      simp only [multiplier, QuarticPrimitive.multiplier, CubicPrimitive.multiplier,
        norm_mul, jointNumerator]
      ring
    _ ≤ ((155 / 132 : ℝ) * jointDenominator s) * (‖s + 2‖ * ‖s + 4‖) := h
    _ = _ := by unfold jointDenominator referenceFactors; ring

theorem nineHeight_source_error {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    ‖poleNormalizedZeta s - reference s‖ ≤ (31 / 32 : ℝ) * ‖reference s‖ := by
  have hs : 0 < s.re := by linarith
  have hs5 : 0 < s.re + 5 := by linarith
  have ht := KernelDefect.first_tail_improved hx hx1
  have heq : poleNormalizedZeta s - reference s = -multiplier s * tail 1 s := by
    rw [source_identity hs]
    ring
  rw [heq, norm_mul, norm_neg]
  calc
    _ ≤ ((155 / 132 : ℝ) * (s.re + 5) * referenceFactors s) *
        ((33 / 40 : ℝ) / (30240 * (s.re + 5))) :=
      mul_le_mul (nineHeight_multiplier_bound hx hx1 hy) ht (norm_nonneg _)
        (by unfold referenceFactors; positivity)
    _ = _ := by rw [reference_norm]; field_simp [hs5.ne'] <;> ring

theorem poleNormalized_norm_lower_nineHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    (65 / 3584 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_eightHeight_enclosure hx hx1 (nineHeight_source_error hx hx1 hy)

theorem poleNormalized_nonzero_nineHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_nineHeight hx hx1 hy
  rw [hz, norm_zero] at h
  norm_num at h

theorem nontrivialZetaZero_height_gt_nine {z : ℂ} (hz : NontrivialZetaZero z) :
    (9 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hy : |z.im| ≤ (9 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_nineHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (9 : ℝ) := by simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_nineHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_nineHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (9 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_nine hzero)) hz

theorem windowRH_nine : WindowRH 9 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (9 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_nine hzero)) hh)

theorem shellRH_eight : ShellRH 8 := (window_succ_iff 8).mp windowRH_nine |>.2

theorem deformation_norm_lower_nineHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : (65 / 3584 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_from_eightHeight_enclosure hx hx1
  have heq : deformation t s - reference s = (t : ℂ) * (poleNormalizedZeta s - reference s) := by
    unfold deformation
    ring
  rw [heq, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (nineHeight_source_error hx hx1 hy)

theorem inverse_deformation_differentiableAt_nineHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_nineHeight hx hx1 hy ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- The newly measured first-cell saving has NOT been asserted at cutoff N>1.
This all-integer-cutoff estimate deliberately keeps the larger155/132 constant. -/
theorem finiteModel_relative_error_nineHeight {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      (155 / 132 : ℝ) * ‖reference s‖ * (N : ℝ) ^ (-(s.re + 5)) := by
  have hs : 0 < s.re := by linarith
  have hs5 : 0 < s.re + 5 := by linarith
  have hp : 0 ≤ (N : ℝ) ^ (-(s.re + 5)) := Real.rpow_nonneg (by positivity) _
  calc
    _ ≤ ‖multiplier s‖ * ((N : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
      finiteModel_error hN hs le_rfl
    _ ≤ ((155 / 132 : ℝ) * (s.re + 5) * referenceFactors s) *
        ((N : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
      mul_le_mul_of_nonneg_right (nineHeight_multiplier_bound hx hx1 hy)
        (div_nonneg hp (by positivity))
    _ = _ := by rw [reference_norm]; field_simp [hs5.ne'] <;> ring

/-- The established window feeds the exact next-shell port, without changing RH. -/
theorem window_ten_of_shell (h : ShellRH 9) : WindowRH 10 :=
  (window_succ_iff 9).mpr ⟨windowRH_nine, h⟩

theorem all_windows_of_above_nine
    (hstep : ∀ N : ℕ, 9 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_nine (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 9
    · exact windowRH_mono windowRH_nine hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_nine
    (hstep : ∀ N : ℕ, 9 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_nine hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
