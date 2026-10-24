# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandSeed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `843b8c553eae297aa122a750ad46c23183dcf2e6` · SHA-256 `7c03aefb318b0ec4dd28eeb70a397f12c8c4ad93701113e411305511636e2f30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandSeed
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripZeroPermittingExtension
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeWitness

set_option autoImplicit false

/-!
# Height seventeen and composable zero-permitting coverage

A fresh polynomial projection on [1/2,1] x [16,17] is transported to the SAME H.
The existing height-sixteen window is retained. Generic extension preserves the
actual fourteen-to-fifteen isolation region, rather than replacing it with a
blanket nonvanishing claim. Every closed height seam remains covered.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SeventeenBandJet
open Complex Set ZeroIsolation
noncomputable section

/-- Error is transported to the same real-linear functional used by the model. -/
theorem source_negative_real {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) :
    (71/8 : ℝ) ≤ -(poleNormalizedZeta s).re := by
  have hp := Certificate.polynomial_projection hx hx1 ht ht1
  have he := source_enclosed hx hx1 ht ht1
  have hr := Complex.re_le_norm (poleNormalizedZeta s-polynomial s)
  simp only [Complex.sub_re] at hr
  linarith

theorem source_norm_lower {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) :
    (71/8 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have h := Complex.re_le_norm (-poleNormalizedZeta s)
  simp only [Complex.neg_re,norm_neg] at h
  exact (source_negative_real hx hx1 ht ht1).trans h

theorem source_nonzero {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) : poleNormalizedZeta s ≠ 0 := by
  intro hzero
  have h := source_norm_lower hx hx1 ht ht1
  rw [hzero,norm_zero] at h
  norm_num at h

/-- Target locations, not arbitrary function values, are reflected. -/
def upperBand : Set ℂ := {z | (16 : ℝ) ≤ z.im ∧ z.im ≤ 17}

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

/-- This signed band excludes no point below height16. -/
theorem noTargetZero_signedBand :
    NoTargetZero {z | (16 : ℝ) ≤ |ZetaCommutatorRoot.root.heightAt z| ∧
      |ZetaCommutatorRoot.root.heightAt z| ≤ 17} := by
  intro z hz hzero
  have hh : (16 : ℝ) ≤ |z.im| ∧ |z.im| ≤ 17 := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using hz
  by_cases hi : 0 ≤ z.im
  · exact noTargetZero_upperBand z (by simpa [upperBand,abs_of_nonneg hi] using hh) hzero
  · have hi' : z.im ≤ 0 := (lt_of_not_ge hi).le
    exact noTargetZero_upperBand (zeroConjugate z)
      (by simpa [upperBand,zeroConjugate,abs_of_nonpos hi'] using hh) hzero.conjugate

/-- The canonical shell excludes off-line zeros; the new band supplies a stronger
local statement without replacing the global target. -/
theorem shellRH_sixteen : ShellRH 16 := by
  apply (shellRH_iff_upperRight_exclusion 16).mpr
  intro z hz hzero
  have hh : (16 : ℝ) < z.im ∧ z.im ≤ 17 := by
    simpa only [upperHeightShell,Set.mem_setOf_eq,ZetaCommutatorRoot.heightAt_eq_im,
      Nat.cast_ofNat] using hz.1
  exact noTargetZero_upperBand z ⟨hh.1.le,hh.2⟩ hzero

/-- Consume the EXISTING live successor, including its zero-permitting earlier window. -/
theorem windowRH_seventeen : WindowRH 17 :=
  SixteenBandJet.window_seventeen_of_shell shellRH_sixteen

/-- Extend the old cover by the new clear band, then restrict by an actual inclusion. -/
def threeBandCover : ZeroPermittingCover (mirrorBox 14 17 (1/2)) :=
  (SixteenBandJet.twoBandCover.extendZeroFree upperBand noTargetZero_upperBand).restrict (by
    intro z hz
    norm_num [mirrorBox] at hz
    by_cases ht : z.im ≤ 16
    · exact Or.inl (by norm_num [mirrorBox]; exact ⟨hz.1,hz.2.1,hz.2.2.1,ht⟩)
    · exact Or.inr ⟨(lt_of_not_ge ht).le,hz.2.2.2⟩)

@[simp] theorem threeBandCover_count : threeBandCover.count = 1 := rfl

/-- The isolation region and its source/mirror proof are literally unchanged. -/
theorem threeBandCover_region (i : Fin 1) : threeBandCover.regions i = fifteenBox := rfl

theorem threeBand_rhOn : RHOn (mirrorBox 14 17 (1/2)) := threeBandCover.rhOn

/-- Capacity on the full box follows from the mixed cover, NOT global injectivity. -/
theorem threeBand_target_capacity : AtMostOneTarget (mirrorBox 14 17 (1/2)) :=
  threeBandCover.atMostOneTarget_of_count_one rfl

/-- The old nonzero deformation is reused exactly, not relabeled from the
zero-permitting injective deformation on the earlier region. -/
abbrev deformation : ℝ → ℂ → ℂ := SixteenBandJet.deformation

theorem deformation_norm_lower {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) (hl : 0 ≤ t) (hu : t ≤ 1) :
    (1 : ℝ) ≤ ‖deformation t s‖ := by
  have h := source_negative_real hx hx1 ht ht1
  have heq : -(deformation t s).re = (1-t)+t*(-(poleNormalizedZeta s).re) := by
    simp only [deformation,SixteenBandJet.deformation,Complex.add_re,Complex.mul_re,
      Complex.sub_re,Complex.ofReal_re,Complex.ofReal_im,Complex.one_re,Complex.one_im,
      Complex.neg_re,Complex.neg_im]
    ring
  have hp := mul_le_mul_of_nonneg_left h hl
  have hr := Complex.re_le_norm (-deformation t s)
  simp only [Complex.neg_re,norm_neg] at hr
  rw [heq] at hr
  nlinarith

/-- Identical homotopies glue on the closed seam because they are the same function. -/
theorem deformation_norm_lower_clear_union {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) (hl : 0 ≤ t) (hu : t ≤ 1) :
    (1 : ℝ) ≤ ‖deformation t s‖ := by
  by_cases hm : s.im ≤ 16
  · exact SixteenBandJet.deformation_norm_lower hx hx1 ht hm hl hu
  · exact deformation_norm_lower hx hx1 (lt_of_not_ge hm).le ht1 hl hu

theorem inverse_deformation_differentiableAt {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) (hl : 0 ≤ t) (hu : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (SixteenBandJet.deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_clear_union hx hx1 ht ht1 hl hu
  rw [hz,norm_zero] at h
  norm_num at h

/-- Every higher shell, including the next one, is still an explicit supplier. -/
theorem window_eighteen_of_shell (h : ShellRH 17) : WindowRH 18 :=
  (window_succ_iff 17).mpr ⟨windowRH_seventeen,h⟩

theorem all_windows_of_above_seventeen
    (hstep : ∀ N : ℕ, 17 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_seventeen (by decide)
  | succ N ih =>
    by_cases hsmall : N+1 ≤ 17
    · exact windowRH_mono windowRH_seventeen hsmall
    · exact (window_succ_iff N).mpr ⟨ih,hstep N (by omega) ih⟩

theorem rh_of_above_seventeen
    (hstep : ∀ N : ℕ, 17 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_seventeen hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SeventeenBandJet
```
