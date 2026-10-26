/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Imported Mathlib and GRWTSK source retain their licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcTrace
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact finite determinant of the source-derived quarter-turn

The *one-phase* geometric coordinate matrix Q represents the actual
quarter-turn of the four quadratic source arcs. Its finite determinant
is det(I-zQ) = 1+z^2, with zeros at ±i. These are finite matrix
determinant zeros, NOT zeros of the Riemann zeta function and not
infinite Fredholm zeros.

The complete four-phase return is identity; its determinant polynomial
has different zeros. The distinction between one phase and one full
geometric loop is preserved.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- This finite polynomial is attached to the actual complexified
geometric quarter-turn, not to an arbitrary supplied spectral map. -/
def quarterDeterminant (z : ℂ) : ℂ :=
  Matrix.det (1 - z • quarterComplex)

theorem quarterDeterminant_eq (z : ℂ) :
    quarterDeterminant z = 1 + z ^ 2 := by
  unfold quarterDeterminant
  rw [Matrix.det_fin_two]
  norm_num [quarterComplex_entries, Matrix.sub_apply,
    Matrix.smul_apply, Matrix.one_apply] <;> ring

theorem quarterDeterminant_at_I :
    quarterDeterminant Complex.I = 0 := by
  rw [quarterDeterminant_eq]
  simp

theorem quarterDeterminant_at_neg_I :
    quarterDeterminant (-Complex.I) = 0 := by
  rw [quarterDeterminant_eq]
  simp

theorem quarterDeterminant_at_zero :
    quarterDeterminant 0 = 1 := by
  rw [quarterDeterminant_eq]
  norm_num

/-- A finite root record with explicit algebraic identity, not any claim
about complete zeta zeros or arithmetic spectral identification. -/
theorem finite_quarter_roots :
    quarterDeterminant Complex.I = 0 ∧
      quarterDeterminant (-Complex.I) = 0 :=
  ⟨quarterDeterminant_at_I, quarterDeterminant_at_neg_I⟩

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
