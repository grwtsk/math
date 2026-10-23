/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalLinePositivityCriterion
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Algebraic mirror-pairing criterion

This module isolates the orbitwise algebra behind Weil positivity.  A local test carries
one value at a point and one at its mirror; when the point is mirror-fixed those values
must agree.  The symmetric cross-pairing is nonnegative on every local test exactly when
every point is mirror-fixed.  Applied to nontrivial zeta zeros and critical-line
reflection, this is equivalent to Mathlib's canonical `RiemannHypothesis`.

This proves the finite/orbitwise algebraic criterion.  It is not yet the classical
analytic Weil criterion: realizing these local tests by one exact admissible
Fourier/Mellin test class, proving the explicit-formula identity, convergence, density,
and tail control remain separate suppliers.
-/

namespace GRWTSK.RiemannHypothesis

/-- A local pair of test values compatible with collision of a point and its mirror. -/
structure MirrorTest {Z : Type*} (mirror : Z → Z) where
  point : Z
  left : ℝ
  right : ℝ
  fixed_consistency : mirror point = point → left = right

/-- The symmetric local cross-pairing. -/
def mirrorPairingForm {Z : Type*} {mirror : Z → Z}
    (v w : MirrorTest mirror) : ℝ :=
  v.left * w.right + v.right * w.left

/-- The local mirror pairing is positive on every test exactly when every point is fixed. -/
theorem mirrorPairing_positive_iff_fixed {Z : Type*} (mirror : Z → Z) :
    (∀ v : MirrorTest mirror, 0 ≤ mirrorPairingForm v v) ↔
      ∀ z : Z, mirror z = z := by
  constructor
  · intro hpositive z
    by_contra hnot
    let hostile : MirrorTest mirror :=
      { point := z
        left := 1
        right := -1
        fixed_consistency := by
          intro hfixed
          exact (hnot hfixed).elim }
    have hhostile := hpositive hostile
    norm_num [hostile, mirrorPairingForm] at hhostile
  · intro hfixed v
    have hsame : v.left = v.right := v.fixed_consistency (hfixed v.point)
    rw [mirrorPairingForm, hsame]
    nlinarith [sq_nonneg v.right]

/-- Critical-line reflection acting on the exact subtype of nontrivial zeta zeros. -/
def criticalLineMirror (z : CriticalLineTest) : CriticalLineTest :=
  ⟨criticalReflection z.1, z.2.critical_reflection⟩

/-- A nontrivial zero is fixed by the critical-line mirror exactly on `re s = 1/2`. -/
theorem criticalLineMirror_eq_self_iff (z : CriticalLineTest) :
    criticalLineMirror z = z ↔ z.1.re = 1 / 2 := by
  constructor
  · intro hfixed
    have hvalue : criticalReflection z.1 = z.1 := congrArg Subtype.val hfixed
    have hreal := congrArg Complex.re hvalue
    simp [criticalReflection] at hreal
    linarith
  · intro hreal
    apply Subtype.ext
    apply Complex.ext
    · simp [criticalLineMirror, criticalReflection, hreal]
      norm_num
    · simp [criticalLineMirror, criticalReflection]

/-- All nontrivial zeros are mirror-fixed exactly when the canonical RH proposition holds. -/
theorem all_criticalLineMirror_fixed_iff_rh :
    (∀ z : CriticalLineTest, criticalLineMirror z = z) ↔
      _root_.RiemannHypothesis := by
  constructor
  · intro hfixed s hz htrivial hpole
    exact (criticalLineMirror_eq_self_iff
      ⟨s, ⟨hz, htrivial, hpole⟩⟩).mp
        (hfixed ⟨s, ⟨hz, htrivial, hpole⟩⟩)
  · intro hrh z
    exact (criticalLineMirror_eq_self_iff z).mpr
      (hrh z.1 z.2.1 z.2.2.1 z.2.2.2)

/-- Exact algebraic mirror-pairing positivity criterion for canonical RH. -/
theorem criticalLineMirrorPairingPositivity_iff_rh :
    (∀ v : MirrorTest criticalLineMirror, 0 ≤ mirrorPairingForm v v) ↔
      _root_.RiemannHypothesis :=
  (mirrorPairing_positive_iff_fixed criticalLineMirror).trans
    all_criticalLineMirror_fixed_iff_rh

/-- Package the exact algebraic mirror criterion for the generic positive-limit endpoint. -/
def criticalLineMirrorPairingCriterion :
    ExactPositivityCriterion (MirrorTest criticalLineMirror) mirrorPairingForm where
  positivity_iff_rh := criticalLineMirrorPairingPositivity_iff_rh

end GRWTSK.RiemannHypothesis
