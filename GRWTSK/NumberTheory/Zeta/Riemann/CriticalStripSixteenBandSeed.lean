/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeWitness

set_option autoImplicit false

/-!
# A zero-free next band glued to the zero-PERMITTING height-fifteen window

The new half-plane estimate concerns only 15<=Im(s)<=16 on the right strip.
The preceding 14-to-15 zero region is retained as the unique isolation region
of an explicit ZeroPermittingCover. Neither the new band nor WindowRH16 says
that the preceding window contains no zeros. All four band edges are included.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SixteenBandJet
open Complex Set ZeroIsolation
noncomputable section

/-- Error is transported to the same real-linear functional used by the model. -/
theorem source_negative_real {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    (55/8 : ℝ) ≤ -(poleNormalizedZeta s).re := by
  have hp := Certificate.polynomial_projection hx hx1 ht ht1
  have he := source_enclosed hx hx1 ht ht1
  have hr := Complex.re_le_norm (poleNormalizedZeta s-polynomial s)
  simp only [Complex.sub_re] at hr
  linarith

theorem source_norm_lower {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    (55/8 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have h := Complex.re_le_norm (-poleNormalizedZeta s)
  simp only [Complex.neg_re,norm_neg] at h
  exact (source_negative_real hx hx1 ht ht1).trans h

theorem source_nonzero {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) : poleNormalizedZeta s ≠ 0 := by
  intro hzero
  have h := source_norm_lower hx hx1 ht ht1
  rw [hzero,norm_zero] at h
  norm_num at h

/-- Target locations, not arbitrary function values, are reflected. -/
def upperBand : Set ℂ := {z | (15 : ℝ) ≤ z.im ∧ z.im ≤ 16}

theorem noTargetZero_upperBand : NoTargetZero upperBand := by
  intro z hz hzero
  by_cases hx : (1/2 : ℝ) ≤ z.re
  · exact source_nonzero hx hzero.mem_critical_strip.2.le hz.1 hz.2
      (poleNormalizedZeta_zero_of_target hzero)
  · have hm := hzero.critical_reflection
    have hr : (1/2 : ℝ) ≤ (criticalReflection z).re := by
      simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re]
      have h := lt_of_not_ge hx
      linarith
    have hi : (criticalReflection z).im = z.im := by simp [criticalReflection]
    exact source_nonzero hr hm.mem_critical_strip.2.le
      (by simpa only [hi] using hz.1) (by simpa only [hi] using hz.2)
      (poleNormalizedZeta_zero_of_target hm)

/-- This signed band excludes no point below height15. -/
theorem noTargetZero_signedBand :
    NoTargetZero {z | (15 : ℝ) ≤ |ZetaCommutatorRoot.root.heightAt z| ∧
      |ZetaCommutatorRoot.root.heightAt z| ≤ 16} := by
  intro z hz hzero
  have hh : (15 : ℝ) ≤ |z.im| ∧ |z.im| ≤ 16 := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using hz
  by_cases hi : 0 ≤ z.im
  · exact noTargetZero_upperBand z (by simpa [upperBand,abs_of_nonneg hi] using hh) hzero
  · have hi' : z.im ≤ 0 := (lt_of_not_ge hi).le
    exact noTargetZero_upperBand (zeroConjugate z)
      (by simpa [upperBand,zeroConjugate,abs_of_nonpos hi'] using hh) hzero.conjugate

/-- The canonical shell excludes off-line zeros; the new band supplies a stronger
local statement without replacing the global target. -/
theorem shellRH_fifteen : ShellRH 15 := by
  apply (shellRH_iff_upperRight_exclusion 15).mpr
  intro z hz hzero
  have hh : (15 : ℝ) < z.im ∧ z.im ≤ 16 := by
    simpa only [upperHeightShell,Set.mem_setOf_eq,ZetaCommutatorRoot.heightAt_eq_im,
      Nat.cast_ofNat] using hz.1
  exact noTargetZero_upperBand z ⟨hh.1.le,hh.2⟩ hzero

/-- Consume the EXISTING live successor, including its zero-permitting earlier window. -/
theorem windowRH_sixteen : WindowRH 16 :=
  ZeroIsolation.FifteenWitness.window_sixteen_of_shell shellRH_fifteen

/-- Explicit mixed cover: one permitted-zero region, plus a separately proved clear band.
The overlap at height15 is intentional; it does not drop a boundary or add counts. -/
def twoBandCover : ZeroPermittingCover (mirrorBox 14 16 (1/2)) where
  count := 1
  zeroFree := upperBand
  regions := fun _ => fifteenBox
  zeroFree_sound := noTargetZero_upperBand
  mirror_stable := fun _ => mirrorBox_stable 14 15 (1/2)
  capacity := fun _ => FifteenWitness.fifteen_target_capacity
  covers := by
    intro z hz
    norm_num [mirrorBox] at hz
    by_cases ht : z.im ≤ 15
    · exact Or.inr ⟨0,mem_fifteenBox.mpr ⟨hz.1,hz.2.1,hz.2.2.1,ht⟩⟩
    · exact Or.inl ⟨(lt_of_not_ge ht).le,hz.2.2.2⟩

theorem twoBand_rhOn : RHOn (mirrorBox 14 16 (1/2)) := twoBandCover.rhOn

/-- Constant negative reference, defined independently of the older derivative path. -/
def deformation (t : ℝ) (s : ℂ) : ℂ :=
  (1-(t : ℂ))*(-1)+(t : ℂ)*poleNormalizedZeta s

@[simp] theorem deformation_zero (s : ℂ) : deformation 0 s = -1 := by simp [deformation]
@[simp] theorem deformation_one (s : ℂ) : deformation 1 s = poleNormalizedZeta s := by simp [deformation]

theorem deformation_joint_continuous : Continuous (fun p : ℝ × ℂ => deformation p.1 p.2) := by
  have hH : Continuous poleNormalizedZeta := differentiable_poleNormalizedZeta.continuous
  unfold deformation
  fun_prop

theorem deformation_differentiableAt (t : ℝ) (s : ℂ) : DifferentiableAt ℂ (deformation t) s :=
  differentiableAt_const.add ((differentiable_poleNormalizedZeta s).const_mul (t : ℂ))

/-- Nonvanishing is proved only on the new source band and real parameter interval. -/
theorem deformation_norm_lower {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) (hl : 0 ≤ t) (hu : t ≤ 1) :
    (1 : ℝ) ≤ ‖deformation t s‖ := by
  have h := source_negative_real hx hx1 ht ht1
  have heq : -(deformation t s).re = (1-t)+t*(-(poleNormalizedZeta s).re) := by
    simp only [deformation,Complex.add_re,Complex.mul_re,Complex.sub_re,Complex.ofReal_re,
      Complex.ofReal_im,Complex.one_re,Complex.one_im,Complex.neg_re,Complex.neg_im]
    ring
  have hp := mul_le_mul_of_nonneg_left h hl
  have hr := Complex.re_le_norm (-deformation t s)
  simp only [Complex.neg_re,norm_neg] at hr
  rw [heq] at hr
  nlinarith

theorem inverse_deformation_differentiableAt {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) (hl : 0 ≤ t) (hu : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower hx hx1 ht ht1 hl hu
  rw [hz,norm_zero] at h
  norm_num at h

/-- No claim for the next shell is implicit in a finite band certificate. -/
theorem window_seventeen_of_shell (h : ShellRH 16) : WindowRH 17 :=
  (window_succ_iff 16).mpr ⟨windowRH_sixteen,h⟩

theorem all_windows_of_above_sixteen
    (hstep : ∀ N : ℕ, 16 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_sixteen (by decide)
  | succ N ih =>
    by_cases hsmall : N+1 ≤ 16
    · exact windowRH_mono windowRH_sixteen hsmall
    · exact (window_succ_iff N).mpr ⟨ih,hstep N (by omega) ih⟩

theorem rh_of_above_sixteen
    (hstep : ∀ N : ℕ, 16 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_sixteen hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SixteenBandJet
