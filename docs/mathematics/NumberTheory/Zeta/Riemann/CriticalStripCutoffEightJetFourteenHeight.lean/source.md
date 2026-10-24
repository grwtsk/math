# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetFourteenHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd585412f3ec903fa2d0502ce529096d625221b1` · SHA-256 `f999d2c129243f6b50cc215e7ab76a3bea89d9d376bb23d03411d88fb22b13e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightSourceEnclosure
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenHeightSeed

set_option autoImplicit false

/-!
# The explicit 13-to-14 upper-band interface

The positive projection is onto -i(s-1), not onto the prior affine reference.
The polynomial gap, whole-domain source error and nonzero reference are separately
proved before they are composed. Conjugation and critical reflection transport
canonical zero locations; no equality of reflected H norms is needed. The endpoint
still uses the maintained WindowRH and ShellRH propositions.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CutoffEightJet
open Complex Set
noncomputable section

def direction (s : ℂ) : ℂ := -I*(s-1)

lemma direction_norm (s : ℂ) : ‖direction s‖=‖s-1‖ := by
  simp [direction,norm_mul]

lemma rotated_projection (v s : ℂ) :
    (v*(starRingEnd ℂ) (direction s)).re=-(v*(starRingEnd ℂ) (s-1)).im := by
  simp only [direction,map_mul,map_neg,Complex.conj_I,neg_neg,Complex.mul_re,
    Complex.mul_im,Complex.I_re,Complex.I_im,zero_mul,one_mul]
  ring

/-- Finite projection >=4 minus at most (1/20)*15 of source projection error. -/
theorem source_projection {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    (13/4 : ℝ) ≤ (poleNormalizedZeta s*(starRingEnd ℂ) (direction s)).re := by
  have hp := polynomial_projection_lower hx hx1 ht ht1
  have he := source_enclosed hx hx1 ht ht1
  have hd := (parameter_products hx hx1 ht ht1).1
  have hneg := Complex.re_le_norm (-((poleNormalizedZeta s-polynomial s)*
    (starRingEnd ℂ) (direction s)))
  simp only [Complex.neg_re,norm_neg,norm_mul,norm_star,direction_norm] at hneg
  have herr := mul_le_mul he hd (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1/20)
  have hid : (poleNormalizedZeta s*(starRingEnd ℂ) (direction s)).re =
      projection s+((poleNormalizedZeta s-polynomial s)*
        (starRingEnd ℂ) (direction s)).re := by
    rw [projection,←rotated_projection]
    rw [←Complex.add_re]
    congr 1
    ring
  linarith

lemma norm_lower_from_projection {s v : ℂ} (hd : ‖direction s‖ ≤ (15 : ℝ))
    (hp : (13/4 : ℝ) ≤ (v*(starRingEnd ℂ) (direction s)).re) :
    (1/5 : ℝ) ≤ ‖v‖ := by
  have h := Complex.re_le_norm (v*(starRingEnd ℂ) (direction s))
  rw [norm_mul,norm_star] at h
  have hm := mul_le_mul_of_nonneg_left hd (norm_nonneg v)
  nlinarith

theorem poleNormalized_norm_lower_fourteenUpperBand {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    (1/5 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_projection (by simpa only [direction_norm] using
    (parameter_products hx hx1 ht ht1).1) (source_projection hx hx1 ht ht1)

theorem poleNormalized_nonzero_fourteenUpperBand {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) : poleNormalizedZeta s ≠ 0 := by
  intro hzero
  have h := poleNormalized_norm_lower_fourteenUpperBand hx hx1 ht ht1
  rw [hzero,norm_zero] at h
  norm_num at h

/-- The upper-side witness is connected to the existing full signed off-line shell. -/
theorem shellRH_thirteen : ShellRH 13 := by
  apply (shellRH_iff_upperRight_exclusion 13).mpr
  intro s hs hzero
  have ht : (13 : ℝ) < s.im ∧ s.im ≤ (14 : ℝ) := by
    simpa only [upperHeightShell,Set.mem_setOf_eq,ZetaCommutatorRoot.heightAt_eq_im,
      Nat.cast_ofNat,show (13+1 : ℕ)=14 by decide] using hs.1
  exact poleNormalized_nonzero_fourteenUpperBand hs.2.le
    hzero.mem_critical_strip.2.le ht.1.le ht.2 (poleNormalizedZeta_zero_of_target hzero)

/-- This specifically inhabits the PREVIOUS next-height interface. -/
theorem windowRH_fourteen : WindowRH 14 :=
  CenteredMellin.SexticPrimitive.CutoffTwo.window_fourteen_of_shell shellRH_thirteen

lemma no_upper_target {s : ℂ} (hs : NontrivialZetaZero s)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) : False := by
  by_cases hx : (1/2 : ℝ) ≤ s.re
  · exact poleNormalized_nonzero_fourteenUpperBand hx hs.mem_critical_strip.2.le ht ht1
      (poleNormalizedZeta_zero_of_target hs)
  · have hm := hs.critical_reflection
    have hre : (1/2 : ℝ) ≤ (criticalReflection s).re := by
      simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re]
      linarith [lt_of_not_ge hx]
    have hti : (criticalReflection s).im=s.im := by simp [criticalReflection]
    exact poleNormalized_nonzero_fourteenUpperBand hre hm.mem_critical_strip.2.le
      (hti.symm ▸ ht) (hti.symm ▸ ht1) (poleNormalizedZeta_zero_of_target hm)

/-- A bounded no-zero seed, not a claim that all higher shells are zero-free. -/
theorem nontrivialZetaZero_height_gt_fourteen {s : ℂ} (hs : NontrivialZetaZero s) :
    (14 : ℝ) < |ZetaCommutatorRoot.root.heightAt s| := by
  by_contra hn
  have htop : |s.im| ≤ (14 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hn
  have hbottom : (13 : ℝ) < |s.im| := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using
      CenteredMellin.SexticPrimitive.CutoffTwo.nontrivialZetaZero_height_gt_thirteen hs
  by_cases ht : 0 ≤ s.im
  · rw [abs_of_nonneg ht] at htop hbottom
    exact no_upper_target hs hbottom.le htop
  · have hm := hs.conjugate
    have hti : (zeroConjugate s).im = -s.im := by simp [zeroConjugate]
    have hneg := lt_of_not_ge ht
    rw [abs_of_neg hneg] at htop hbottom
    exact no_upper_target hm (by simpa only [hti] using hbottom.le)
      (by simpa only [hti] using htop)

/-- A different reference on the new band; it is not the old affine deformation. -/
def deformation (t : ℝ) (s : ℂ) : ℂ :=
  direction s+(t : ℂ)*(poleNormalizedZeta s-direction s)

@[simp] lemma deformation_zero (s : ℂ) : deformation 0 s=direction s := by simp [deformation]
@[simp] lemma deformation_one (s : ℂ) : deformation 1 s=poleNormalizedZeta s := by simp [deformation]

lemma direction_self_projection (s : ℂ) :
    (direction s*(starRingEnd ℂ) (direction s)).re=‖direction s‖^2 := by
  rw [Complex.sq_norm,Complex.normSq_apply]
  simp only [Complex.mul_re,Complex.conj_re,Complex.conj_im]
  ring

theorem deformation_projection {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) (hl : 0 ≤ t) (hu : t ≤ 1) :
    (13/4 : ℝ) ≤ (deformation t s*(starRingEnd ℂ) (direction s)).re := by
  have hd : (13 : ℝ) ≤ ‖direction s‖ := by
    rw [direction_norm]
    have h := Complex.abs_im_le_norm (s-1)
    simp only [Complex.sub_im,Complex.one_im,sub_zero] at h
    rw [abs_of_nonneg (by linarith : 0 ≤ s.im)] at h
    exact ht.trans h
  have hp := source_projection hx hx1 ht ht1
  have hid : (deformation t s*(starRingEnd ℂ) (direction s)).re =
      (1-t)*‖direction s‖^2+t*(poleNormalizedZeta s*(starRingEnd ℂ) (direction s)).re := by
    unfold deformation
    rw [add_mul,Complex.add_re,direction_self_projection]
    rw [mul_assoc,Complex.mul_re,Complex.ofReal_re,Complex.ofReal_im]
    rw [sub_mul,Complex.sub_re,direction_self_projection]
    ring
  have h0 : (13/4 : ℝ) ≤ ‖direction s‖^2 := by nlinarith
  have ha := mul_le_mul_of_nonneg_left h0 (sub_nonneg.mpr hu)
  have hb := mul_le_mul_of_nonneg_left hp hl
  rw [hid]
  nlinarith

theorem deformation_norm_lower {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) (hl : 0 ≤ t) (hu : t ≤ 1) :
    (1/5 : ℝ) ≤ ‖deformation t s‖ :=
  norm_lower_from_projection (by simpa only [direction_norm] using
    (parameter_products hx hx1 ht ht1).1) (deformation_projection hx hx1 ht ht1 hl hu)

theorem deformation_continuous (s : ℂ) : Continuous (fun t : ℝ => deformation t s) := by
  unfold deformation
  fun_prop

theorem deformation_differentiable (t : ℝ) (s : ℂ) :
    DifferentiableAt ℂ (deformation t) s := by
  have hd : DifferentiableAt ℂ direction s := by unfold direction; fun_prop
  exact hd.add (((differentiable_poleNormalizedZeta s).sub hd).const_mul (t : ℂ))

theorem inverse_deformation_differentiable {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) (hl : 0 ≤ t) (hu : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiable t s).inv
  intro hz
  have h := deformation_norm_lower hx hx1 ht ht1 hl hu
  rw [hz,norm_zero] at h
  norm_num at h

/-- Height fifteen is canonical RH-through-height, NOT total zero exclusion. -/
theorem window_fifteen_of_shell (h : ShellRH 14) : WindowRH 15 :=
  (window_succ_iff 14).mpr ⟨windowRH_fourteen,h⟩

theorem all_windows_of_above_fourteen
    (hstep : ∀ N : ℕ, 14 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_fourteen (by decide)
  | succ N ih =>
    by_cases hsmall : N+1 ≤ 14
    · exact windowRH_mono windowRH_fourteen hsmall
    · exact (window_succ_iff N).mpr ⟨ih,hstep N (by omega) ih⟩

theorem rh_of_above_fourteen
    (hstep : ∀ N : ℕ, 14 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_fourteen hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CutoffEightJet
```
