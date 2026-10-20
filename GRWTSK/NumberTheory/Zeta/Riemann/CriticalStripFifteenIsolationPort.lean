/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorIsolation
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffFourEightOverlap

set_option autoImplicit false

/-!
# A zero-permitting port from the height-fourteen seed to height fifteen

The remaining supplier is explicit uniform control of the ACTUAL first derivative
on [0,1] x [14,15], or a valid mirror-stable zero-permitting cover. The theorems
below do NOT construct that supplier and do NOT assert WindowRH15 or zero absence.
The previous cutoff-four and cutoff-eight proofs and their exact overlap remain
independent inputs to the bounded height-fourteen seed.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
open Complex Set
noncomputable section

/-- Includes both real boundaries and both height seams; it is mirror-stable. -/
def fifteenBox : Set ℂ := mirrorBox 14 15 (1 / 2)

lemma mem_fifteenBox {z : ℂ} : z ∈ fifteenBox ↔
    (0 : ℝ) ≤ z.re ∧ z.re ≤ 1 ∧ (14 : ℝ) ≤ z.im ∧ z.im ≤ 15 := by
  norm_num [fifteenBox, mirrorBox]

lemma fifteenBox_nonempty : fifteenBox.Nonempty :=
  mirrorBox_nonempty (by norm_num) (by norm_num)

lemma upper_target_in_fifteenBox {z : ℂ}
    (hz : z ∈ upperHeightShell 14) (hzero : NontrivialZetaZero z) : z ∈ fifteenBox := by
  have ht : (14 : ℝ) < z.im ∧ z.im ≤ 15 := by
    simpa only [upperHeightShell, Set.mem_setOf_eq, ZetaCommutatorRoot.heightAt_eq_im,
      Nat.cast_ofNat] using hz
  exact mem_fifteenBox.mpr ⟨hzero.mem_critical_strip.1.le,
    hzero.mem_critical_strip.2.le, ht.1.le, ht.2⟩

/-- Uniqueness, not blanket nonvanishing, feeds the existing off-line shell. -/
theorem shell_fourteen_of_capacity (h : AtMostOneTarget fifteenBox) : ShellRH 14 := by
  apply (shellRH_iff_upperHeightShell 14).mpr
  intro z hz hzero
  exact rhOn_of_mirror_capacity (mirrorBox_stable 14 15 (1 / 2)) h z
    (upper_target_in_fifteenBox hz hzero) hzero

/-- The exact maintained successor theorem consumes the new kind of supplier. -/
theorem window_fifteen_of_capacity (h : AtMostOneTarget fifteenBox) : WindowRH 15 :=
  CutoffEightJet.window_fifteen_of_shell (shell_fourteen_of_capacity h)

theorem window_fifteen_of_derivative_disk
    (C : DerivativeDisk poleNormalizedZeta fifteenBox) : WindowRH 15 :=
  window_fifteen_of_capacity (target_capacity_of_source C.atMostOneZero)

/-- Concrete quantitative target, not an admitted estimate. Values or derivatives
on a sample grid cannot inhabit this universally quantified input. -/
def FifteenDerivativeBound : Prop :=
  ∀ z ∈ fifteenBox, ‖deriv poleNormalizedZeta z - (12 * I)‖ ≤ (23 / 2 : ℝ)

def derivativeDiskOfBound (h : FifteenDerivativeBound) :
    DerivativeDisk poleNormalizedZeta fifteenBox where
  linearPart := 12 * I
  radius := 23 / 2
  radius_nonneg := by norm_num
  convex := mirrorBox_convex 14 15 (1 / 2)
  differentiable := fun z hz => differentiable_poleNormalizedZeta z
  encloses := h
  strict_margin := by norm_num [norm_mul]

/-- This lower separation allows a source zero; it controls uniqueness and conditioning. -/
theorem source_separation_of_bound (h : FifteenDerivativeBound)
    {z w : ℂ} (hz : z ∈ fifteenBox) (hw : w ∈ fifteenBox) :
    (1 / 2 : ℝ) * ‖z - w‖ ≤ ‖poleNormalizedZeta z - poleNormalizedZeta w‖ := by
  have hb := (derivativeDiskOfBound h).lower_lipschitz hz hw
  norm_num [derivativeDiskOfBound, norm_mul] at hb
  exact hb

theorem shell_fourteen_of_derivative_bound (h : FifteenDerivativeBound) : ShellRH 14 :=
  shell_fourteen_of_capacity (target_capacity_of_source (derivativeDiskOfBound h).atMostOneZero)

theorem window_fifteen_of_derivative_bound (h : FifteenDerivativeBound) : WindowRH 15 :=
  CutoffEightJet.window_fifteen_of_shell (shell_fourteen_of_derivative_bound h)

/-- A finite derivative model must pay its approximation error separately.
No differentiation of the old 1/20 value-error bound is performed. -/
theorem window_fifteen_of_derivative_model (P : ℂ → ℂ) (a : ℂ) (eModel eSource : ℝ)
    (heModel : 0 ≤ eModel) (heSource : 0 ≤ eSource)
    (hP : ∀ z ∈ fifteenBox, DifferentiableAt ℂ P z)
    (hmodel : ∀ z ∈ fifteenBox, ‖deriv P z - a‖ ≤ eModel)
    (hsource : ∀ z ∈ fifteenBox, ‖deriv poleNormalizedZeta z - deriv P z‖ ≤ eSource)
    (hmargin : eModel + eSource < ‖a‖) : WindowRH 15 :=
  window_fifteen_of_derivative_disk (DerivativeDisk.ofDerivativeModel a eModel eSource
    heModel heSource (mirrorBox_convex 14 15 (1 / 2))
    (fun z hz => differentiable_poleNormalizedZeta z) hP hmodel hsource hmargin)

/-- An alternative cover may accommodate several different critical-line zeros. -/
theorem shell_fourteen_of_zero_permitting_cover (C : ZeroPermittingCover fifteenBox) :
    ShellRH 14 := by
  apply (shellRH_iff_upperHeightShell 14).mpr
  intro z hz hzero
  exact C.rhOn z (upper_target_in_fifteenBox hz hzero) hzero

theorem window_fifteen_of_zero_permitting_cover (C : ZeroPermittingCover fifteenBox) :
    WindowRH 15 := CutoffEightJet.window_fifteen_of_shell (shell_fourteen_of_zero_permitting_cover C)

/-- Advancing the interface still retains BOTH the derivative and next-shell premises. -/
theorem window_sixteen_of_bound_and_shell (h : FifteenDerivativeBound) (hs : ShellRH 15) :
    WindowRH 16 := (window_succ_iff 15).mpr ⟨window_fifteen_of_derivative_bound h, hs⟩

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
