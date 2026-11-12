/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Basic.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Reflection-difference control of the literal endpoint-pair form

Consumer: WEDT-v1-1 in `WeilEndpointDensityTail.md`, using the actual polarized
transforms in WEPD-v1-1. The correction is SUBTRACTED to recover the signed
pair form; the sum of squares is not a substitute Weil-positivity proof.
For a reflected zero pair, substitute the written endpoint transforms for
`a`, `b`, the two coefficients for `z`, `w`, and `exp (I * tau * L)` for the
unit phase. Multiply by the actual analytic multiplicity. Reflection-fixed
zeros are counted once separately, not as two distinct interpolation nodes.

These are only complex-algebra SOURCE_PROOF_CANDIDATE declarations.
The transform derivative bound, Simonic density input, dyadic summation,
form-domain extension and pole-inclusive arithmetic return remain WRITTEN.
No external zero-free result or new research axiom is imported.
Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit and independent analytical review: NOT_RUN. Originality: UNASSESSED.
Individual records are in `WeilEndpointDensityTail.provenance/`.
Local mathematical attribution: grwtsk contributors.
Inspected main: 05c3158365036f6eaa025d78cf2586dbbfb81f20.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: grwtsk/math#1801, scope comment 6831263879.
-/

set_option autoImplicit false

open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilEndpointPairDefect

/-- The unweighted reflected endpoint-pair value after absorbing the unit
phase into the second coefficient. This is algebra, not a new arithmetic source. -/
noncomputable def pairValue (a b z w : ℂ) : ℝ :=
  2 * (a * b).re * (Complex.normSq z + Complex.normSq w) +
    2 * (conj z * w * (a ^ 2 + (conj b) ^ 2)).re

/-- Exact source-pair identity: positivity requires paying the displayed
reflection-difference error, which vanishes when `a = conj b`. -/
theorem reflection_difference_identity (a b z w : ℂ) :
    pairValue a b z w +
        Complex.normSq (a - conj b) * (Complex.normSq z + Complex.normSq w) =
      Complex.normSq (conj a * z + a * w) +
        Complex.normSq (b * z + conj b * w) := by
  simp only [pairValue, Complex.normSq_apply, pow_two,
    Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im,
    Complex.mul_re, Complex.mul_im, Complex.conj_re, Complex.conj_im]
  ring

/-- A lower bound for the signed pair, not an assertion of its nonnegativity. -/
theorem pairValue_lower_bound (a b z w : ℂ) :
    -(Complex.normSq (a - conj b) * (Complex.normSq z + Complex.normSq w)) ≤
      pairValue a b z w := by
  have hid := reflection_difference_identity a b z w
  have h₁ := Complex.normSq_nonneg (conj a * z + a * w)
  have h₂ := Complex.normSq_nonneg (b * z + conj b * w)
  linarith

/-- Retain the actual unit phase and nonnegative analytic multiplicity. -/
theorem phased_multiplicity_lower_bound (a b phase z w : ℂ) (m : ℝ)
    (hm : 0 ≤ m) (hphase : Complex.normSq phase = 1) :
    -(m * Complex.normSq (a - conj b) *
        (Complex.normSq z + Complex.normSq w)) ≤
      m * pairValue a b z (phase * w) := by
  have h := mul_le_mul_of_nonneg_left
    (pairValue_lower_bound a b z (phase * w)) hm
  simpa only [Complex.normSq_mul, hphase, one_mul, mul_neg, mul_assoc] using h

end GRWTSK.NumberTheory.WeilEndpointPairDefect
