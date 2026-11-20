/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.Hypothesis
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ZetaZeroFreeHalfPlaneAdapter

/-!
# Exact Riemann-hypothesis target and its open-strip formulation

The protected challenge is the existing `Target.Statement` in `Hypothesis.lean`.
It imports only Mathlib's Riemann-zeta definitions and is definitionally equal
to `_root_.RiemannHypothesis`. This module is separate from that challenge.

The open-strip formulation is equivalent because unconditional Mathlib
nonvanishing on `re(s) ≥ 1`, the completed functional equation and the
nonvanishing Gamma factor place every nontrivial zero in `0 < re(s) < 1`.
Those steps are reused from `RiemannZeroSymmetry.lean`. Conversely, a zero in
the open strip is neither a negative even integer nor the pole.

The strict right-half-plane equivalence reuses
`ZetaZeroFreeHalfPlaneAdapter.lean`; its value at `s = 1` is handled by
Mathlib's `riemannZeta_one_ne_zero`. No zero-free estimate to the right of
`1/2`, universal positivity premise, or proof of RH is supplied here.

Upstream foundation: Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`,
`Mathlib/NumberTheory/LSeries/RiemannZeta.lean` and
`Mathlib/NumberTheory/LSeries/Nonvanishing.lean`.
These are source/target comparisons, not new analytic estimates.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Target

/-- The user-facing open-strip assertion for the actual Mathlib zeta function. -/
def OpenStripStatement : Prop :=
  ∀ s : ℂ, riemannZeta s = 0 → 0 < s.re → s.re < 1 → s.re = 1 / 2

/-- The remaining nonvanishing region after the unconditional theorem on
`re(s) ≥ 1` has been used. This is an obligation, not an assumed instance. -/
def RightOpenStripNonvanishing : Prop :=
  ∀ s : ℂ, (1 / 2 : ℝ) < s.re → s.re < 1 → riemannZeta s ≠ 0

/-- The independently fixed target is equivalent to the exact open-strip assertion.
The unconditional strip localization is used in the reverse direction. -/
theorem statement_iff_openStrip : Statement ↔ OpenStripStatement := by
  rw [statement_eq_mathlib]
  constructor
  · intro h s hz hpos hlt
    apply h s hz
    · rintro ⟨n, rfl⟩
      have hnonpos := negativeEven_realPart_nonpos n
      linarith
    · intro hs
      subst s
      norm_num at hlt
  · intro h s hz htrivial hpole
    have hs : NontrivialZetaZero s := ⟨hz, htrivial, hpole⟩
    exact h s hz hs.mem_critical_strip.1 hs.mem_critical_strip.2

/-- Direct comparison with the unmodified upstream acceptance proposition. -/
theorem openStrip_iff_mathlib : OpenStripStatement ↔ _root_.RiemannHypothesis := by
  rw [← statement_eq_mathlib]
  exact statement_iff_openStrip.symm

/-- The strip formulation and strict right-half-plane nonvanishing have
exactly the same strength. Neither side is established by this equivalence. -/
theorem openStrip_iff_zeroFreeRightHalfPlane :
    OpenStripStatement ↔ RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ) :=
  openStrip_iff_mathlib.trans
    riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis.symm

/-- Standard nonvanishing on the closed half-plane `re(s) ≥ 1` removes that
region from the outstanding strict-half-plane obligation. -/
theorem rightOpenStripNonvanishing_iff_zeroFreeRightHalfPlane :
    RightOpenStripNonvanishing ↔ RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ) := by
  constructor
  · intro h s hhalf
    rcases lt_or_ge s.re 1 with hlt | hge
    · exact h s hhalf hlt
    · exact riemannZeta_ne_zero_of_one_le_re hge
  · intro h s hhalf _
    exact h s hhalf

/-- The precise remaining right-strip nonvanishing premise is equivalent to
the protected RH target. No construction of this premise occurs here. -/
theorem statement_iff_rightOpenStripNonvanishing :
    Statement ↔ RightOpenStripNonvanishing :=
  statement_iff_riemannZetaZeroFreeRightHalfPlane_half.trans
    rightOpenStripNonvanishing_iff_zeroFreeRightHalfPlane.symm

end GRWTSK.RiemannHypothesis.Target
