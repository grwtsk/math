/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort
import GRWTSK.NumberTheory.Zeta.Riemann.ExternalSevenEighthsBand
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Quasi-Riemann seven-eighths bound as a quantitative critical-line defect

The exact squared defect is already defined in GRWTSK. The equivalence below
is a new, one-theorem source comparison, not a duplicate of the existing
reflection band or residual-gap equivalence in OpenAISevenEighthsPort.

This file neither imports OAI code nor proves the seven-eighths zero-free
statement. The upstream theorem remains blocked by source admission, binary
toolchain, dependency-closure, and trust checks. The full remaining defect
gap is an independent analytic supplier and is not inferred from a cap.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis

/-- Uniform squared critical-line displacement cap 9/16 on actual
nontrivial zeta zeros, retaining their exact pole and trivial-zero exclusions. -/
def SevenEighthsDefectBound : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → rhDefect s ≤ (9 / 16 : ℝ)

/-- The selected OAI-style strict zero-free half-plane at 7/8 is exactly
equivalent to the native quantitative squared-defect bound 9/16.

Forward: reuse the previously formalized reflection band [1/8, 7/8].
Reverse: use the exact square formula and the existing theorem that
discharges trivial zeros and the totalized zeta point at 1. There is no
conditional toolchain or admitted port in this pure-proposition equivalence. -/
theorem sevenEighthsZeroFree_iff_defectBound :
    RiemannZetaZeroFreeRightHalfPlane (7 / 8 : ℝ) ↔
      SevenEighthsDefectBound := by
  constructor
  · intro hfree s hs
    have hseven : SevenEighthsZeroFree := by
      simpa only [SevenEighthsZeroFree, RiemannZetaZeroFreeRightHalfPlane] using hfree
    obtain ⟨hleft, hright⟩ := hs.mem_closed_seven_eighths_band hseven
    have hprod :
        0 ≤ (s.re - (1 / 8 : ℝ)) * ((7 / 8 : ℝ) - s.re) :=
      mul_nonneg (sub_nonneg.mpr hleft) (sub_nonneg.mpr hright)
    rw [rh_defect_eq_square]
    nlinarith
  · intro hdef
    apply riemannZetaZeroFreeRightHalfPlane_of_nontrivial (by norm_num : (0 : ℝ) ≤ 7 / 8)
    intro s hsright hs
    have hbound := hdef s hs
    rw [rh_defect_eq_square] at hbound
    have hgap : (3 / 4 : ℝ) < 2 * s.re - 1 := by linarith
    have hplus : (0 : ℝ) < 2 * s.re - 1 + 3 / 4 := by linarith
    have hprod :
        0 < (2 * s.re - 1 - (3 / 4 : ℝ)) *
          (2 * s.re - 1 + (3 / 4 : ℝ)) :=
      mul_pos (sub_pos.mpr hgap) hplus
    nlinarith

/-- A *supplied and accepted* external port yields this quantitative cap;
the current OpenAI review record is provably not admission-ready. -/
theorem acceptedPort_defectBound
    (port : AcceptedExternalRawHalfPlanePort (7 / 8 : ℝ)) :
    SevenEighthsDefectBound :=
  sevenEighthsZeroFree_iff_defectBound.mp port.rawTheorem

/-- The number 9/16 is sharp as an algebraic consequence of the claimed
7/8 threshold. The fixture is not asserted to be a zeta zero. -/
theorem defect_at_sevenEighths_fixture :
    rhDefect (((7 / 8 : ℝ) : ℂ)) = (9 / 16 : ℝ) := by
  norm_num [rh_defect_eq_square]

/-- Uniform defect control from the seven-eighths source and the *separate*
already declared full residual-band defect supplier imply canonical RH.
Neither premise is discharged by this theorem. -/
theorem rh_of_defectBound_and_remaining
    (hbound : SevenEighthsDefectBound)
    (hremaining : RemainingSevenEighthsDefectGap) :
    _root_.RiemannHypothesis := by
  apply riemann_hypothesis_iff_defect_zero.mpr
  intro s hs
  have hraw := sevenEighthsZeroFree_iff_defectBound.mpr hbound
  have hseven : SevenEighthsZeroFree := hraw
  have hband := hs.mem_closed_seven_eighths_band hseven
  exact hremaining s hs hband.1 hband.2

/-- The remaining defect supplier is equivalent to the unchanged RH target
under the explicit quantitative seven-eighths premise. -/
theorem remainingDefectGap_iff_rh_of_defectBound
    (hbound : SevenEighthsDefectBound) :
    RemainingSevenEighthsDefectGap ↔ _root_.RiemannHypothesis := by
  constructor
  · intro hremaining
    exact rh_of_defectBound_and_remaining hbound hremaining
  · intro hrh s hs _ _
    exact (riemann_hypothesis_iff_defect_zero.mp hrh) s hs

end GRWTSK.RiemannHypothesis
