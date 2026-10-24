# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourteenHeightSeed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e8ab59ef5c235768e3045af4e123eab73225858` · SHA-256 `58d295cc972f7360db07d71c30566bf5d8b96a78018b45845c9dd3db2258dfe1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourteenHeightBernstein

set_option autoImplicit false

/-!
# The height-fourteen shell from a complete cutoff-four enclosure

Re(model)+Im(model)>=3/2 and |H-model|<=7/16 imply Re(H)+Im(H)>=5/8,
hence |H|>=5/16 on the POSITIVE 13-to-14 band. Both power errors and the
actual sextic integration tail occur in the source/model error. The old
height-thirteen theorem, conjugation and critical reflection retain every
zero location. No reflected norm equality or infinite-height nonvanishing
is asserted. The next shell still has to prove canonical RH, not no zeros.
SOURCE SCRIPTS / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffFour
open Complex Set
noncomputable section

lemma projection_le_twice_norm (z : ℂ) : z.re + z.im ≤ 2 * ‖z‖ := by
  have hr := Complex.re_le_norm z
  have hi := (le_abs_self z.im).trans (Complex.abs_im_le_norm z)
  linarith

/-- The linear functional is applied to the true source only after charging its error. -/
theorem source_projection {s : ℂ} (hs : Band s) :
    (5 / 8 : ℝ) ≤ (poleNormalizedZeta s).re + (poleNormalizedZeta s).im := by
  have hm := Certificate.model_projection_lower hs
  have he := source_model_error hs
  have hp := projection_le_twice_norm (model s - poleNormalizedZeta s)
  rw [norm_sub_rev] at hp
  simp only [Complex.sub_re, Complex.sub_im] at hp
  linarith

theorem poleNormalized_norm_lower_fourteenBand {s : ℂ} (hs : Band s) :
    (5 / 16 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have h := source_projection hs
  have h' := projection_le_twice_norm (poleNormalizedZeta s)
  linarith

theorem poleNormalized_nonzero_fourteenBand {s : ℂ} (hs : Band s) : poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_fourteenBand hs
  rw [hz, norm_zero] at h
  norm_num at h

/-- The previous mirror-descent interface already owns both zero symmetries. -/
theorem shellRH_thirteen : ShellRH 13 := by
  apply (shellRH_iff_upperRight_exclusion 13).mpr
  intro z hz hzero
  have hheight : (13 : ℝ) < z.im ∧ z.im ≤ 14 := by
    simpa only [upperHeightShell, Set.mem_setOf_eq, ZetaCommutatorRoot.heightAt_eq_im,
      Nat.cast_ofNat] using hz.1
  exact poleNormalized_nonzero_fourteenBand
    ⟨hz.2.le, hzero.mem_critical_strip.2.le, hheight.1.le, hheight.2⟩
    (poleNormalizedZeta_zero_of_target hzero)

/-- Consume the PREVIOUS exact next-step port, rather than replacing it. -/
theorem windowRH_fourteen : WindowRH 14 := CutoffTwo.window_fourteen_of_shell shellRH_thirteen

/-- Stronger bounded zero exclusion; no multiplicities or reflected H norms are inferred. -/
theorem nontrivialZetaZero_height_gt_fourteen {z : ℂ} (hz : NontrivialZetaZero z) :
    (14 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hn
  have hh : |z.im| ≤ (14 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hn
  have hlo : (13 : ℝ) < |z.im| := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using
      CutoffTwo.nontrivialZetaZero_height_gt_thirteen hz
  have upper_excluded {w : ℂ} (hw : NontrivialZetaZero w)
      (hl : (13 : ℝ) ≤ w.im) (hu : w.im ≤ 14) : False := by
    by_cases hr : (1 / 2 : ℝ) ≤ w.re
    · exact poleNormalized_nonzero_fourteenBand ⟨hr, hw.mem_critical_strip.2.le, hl, hu⟩
        (poleNormalizedZeta_zero_of_target hw)
    · have hm := hw.critical_reflection
      have hx : (1 / 2 : ℝ) ≤ (criticalReflection w).re := by
        simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
        have h := lt_of_not_ge hr
        linarith
      have him : (criticalReflection w).im = w.im := by simp [criticalReflection]
      exact poleNormalized_nonzero_fourteenBand
        ⟨hx, hm.mem_critical_strip.2.le, by simpa [him] using hl, by simpa [him] using hu⟩
        (poleNormalizedZeta_zero_of_target hm)
  by_cases hi : 0 ≤ z.im
  · rw [abs_of_nonneg hi] at hh hlo
    exact upper_excluded hz hlo.le hh
  · have hi' : z.im < 0 := lt_of_not_ge hi
    rw [abs_of_neg hi'] at hh hlo
    exact upper_excluded hz.conjugate (by simpa [zeroConjugate] using hlo.le)
      (by simpa [zeroConjugate] using hh)

theorem noTargetZero_fourteenHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (14 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_fourteen hzero)) hz

/-- A fixed nonzero reference with a separately proved positive-band homotopy. -/
def deformation (t : ℝ) (s : ℂ) : ℂ :=
  (1 - (t : ℂ)) * (1 + I) + (t : ℂ) * poleNormalizedZeta s

@[simp] theorem deformation_zero (s : ℂ) : deformation 0 s = 1 + I := by simp [deformation]
@[simp] theorem deformation_one (s : ℂ) : deformation 1 s = poleNormalizedZeta s := by simp [deformation]

theorem deformation_continuous (s : ℂ) : Continuous (fun t : ℝ => deformation t s) := by
  unfold deformation
  fun_prop

theorem deformation_differentiableAt (t : ℝ) (s : ℂ) : DifferentiableAt ℂ (deformation t) s :=
  differentiableAt_const.add ((differentiable_poleNormalizedZeta s).const_mul (t : ℂ))

theorem deformation_norm_lower {s : ℂ} {t : ℝ} (hs : Band s) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (5 / 16 : ℝ) ≤ ‖deformation t s‖ := by
  have heq : (deformation t s).re + (deformation t s).im =
      2 * (1 - t) + t * ((poleNormalizedZeta s).re + (poleNormalizedZeta s).im) := by
    simp [deformation, Complex.mul_re, Complex.mul_im] <;> ring
  have h := mul_le_mul_of_nonneg_left (source_projection hs) ht
  have hp := projection_le_twice_norm (deformation t s)
  rw [heq] at hp
  nlinarith

theorem inverse_deformation_differentiableAt {s : ℂ} {t : ℝ}
    (hs : Band s) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower hs ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- Endpoint agreement does not identify references or establish a chart cocycle. -/
theorem old_new_endpoint (s : ℂ) : CutoffTwo.deformation 1 s = deformation 1 s := by simp

/-- Later shells concern off-line zeros, not unbounded blanket nonvanishing. -/
theorem window_fifteen_of_shell (h : ShellRH 14) : WindowRH 15 :=
  (window_succ_iff 14).mpr ⟨windowRH_fourteen, h⟩

theorem all_windows_of_above_fourteen
    (hstep : ∀ N : ℕ, 14 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_fourteen (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 14
    · exact windowRH_mono windowRH_fourteen hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_fourteen
    (hstep : ∀ N : ℕ, 14 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_fourteen hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffFour
```
