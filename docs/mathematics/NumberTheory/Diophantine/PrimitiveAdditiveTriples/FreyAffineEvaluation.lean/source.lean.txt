/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's finite vectors and affine Weierstrass-point coordinates
(Apache-2.0). OpenAI Codex formalization assistance.

This module binds the actual marked rational points of the Frey Weierstrass
model to the finite affine-linear evaluation formula `u + v*x`. It does not
identify these coordinates with the complete section space
`H⁰(E, O_E(2O))`; that line-bundle theorem remains a separate obligation. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCurveGeometry

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Rational coefficient coordinates in the ordered formal basis `(1,x)`. -/
abbrev FreyRationalSectionCoordinates := Fin 2 → ℚ

/-- Rational values at the three ordered marked Frey ports. -/
abbrev FreyRationalThreePortValues := Fin 3 → ℚ

/-- Evaluate the affine-linear expression `u + v*x` at an actual affine Frey
point, reading its `x`-coordinate from Mathlib's projective representative
`[x,1]`. The point at infinity is not used by the three-port construction. -/
def PrimitiveAdditiveTriple.freyAffineLinearValue
    (t : PrimitiveAdditiveTriple)
    (v : FreyRationalSectionCoordinates)
    (P : t.freyCurve.toAffine.Point) : ℚ :=
  v 0 * P.xRep 1 + v 1 * P.xRep 0

/-- Evaluate affine-linear coordinates at the ordered actual Frey ports
`(0,0)`, `(a,0)`, and `(-b,0)`. -/
def PrimitiveAdditiveTriple.freyAffinePortEval
    (t : PrimitiveAdditiveTriple)
    (v : FreyRationalSectionCoordinates) : FreyRationalThreePortValues :=
  fun i => t.freyAffineLinearValue v (t.freyTorsionPorts i)

/-- The actual point evaluation has the same explicit matrix as the formal
three-port frame, now over `ℚ`. -/
theorem PrimitiveAdditiveTriple.freyAffinePortEval_eq
    (t : PrimitiveAdditiveTriple)
    (v : FreyRationalSectionCoordinates) :
    t.freyAffinePortEval v =
      ![v 0,
        v 0 + (t.a : ℚ) * v 1,
        v 0 - (t.b : ℚ) * v 1] := by
  ext i
  unfold PrimitiveAdditiveTriple.freyAffinePortEval
    PrimitiveAdditiveTriple.freyAffineLinearValue
  rw [t.freyTorsionPorts_xRep i]
  fin_cases i <;> simp <;> ring

/-- Cast integral source coordinates into the rational affine coordinate
space. -/
def freySectionCoordinatesToRat
    (v : FreySectionCoordinates) : FreyRationalSectionCoordinates :=
  fun i => (v i : ℚ)

/-- Cast integral three-port values into rational values. -/
def freyThreePortValuesToRat
    (y : FreyThreePortValues) : FreyRationalThreePortValues :=
  fun i => (y i : ℚ)

@[simp] theorem freySectionCoordinatesToRat_apply
    (v : FreySectionCoordinates) (i : Fin 2) :
    freySectionCoordinatesToRat v i = (v i : ℚ) :=
  rfl

@[simp] theorem freyThreePortValuesToRat_apply
    (y : FreyThreePortValues) (i : Fin 3) :
    freyThreePortValuesToRat y i = (y i : ℚ) :=
  rfl

/-- The actual rational affine-point evaluation is the scalar extension of the
same exact integral three-port map. This theorem prevents the geometry layer
from drifting to a different evaluation function. -/
theorem PrimitiveAdditiveTriple.freyAffinePortEval_intCast
    (t : PrimitiveAdditiveTriple)
    (v : FreySectionCoordinates) :
    t.freyAffinePortEval (freySectionCoordinatesToRat v) =
      freyThreePortValuesToRat (t.threePortEval v) := by
  rw [t.freyAffinePortEval_eq]
  ext i
  fin_cases i <;>
    simp [freySectionCoordinatesToRat, freyThreePortValuesToRat,
      PrimitiveAdditiveTriple.threePortEval, freyThreePortEvalLinear,
      freyThreePortEval] <;> ring

/-- The rational affine-coordinate vector representing `x`. -/
def freyXRationalSection : FreyRationalSectionCoordinates :=
  ![0, 1]

/-- Evaluating the actual affine function `x` at the actual three ports yields
exactly `(0,a,-b)`. -/
theorem PrimitiveAdditiveTriple.freyAffinePortEval_x
    (t : PrimitiveAdditiveTriple) :
    t.freyAffinePortEval freyXRationalSection =
      ![0, (t.a : ℚ), -(t.b : ℚ)] := by
  rw [t.freyAffinePortEval_eq]
  ext i
  fin_cases i <;> simp [freyXRationalSection]

/-- The affine-point evaluation is injective because it is the rational scalar
extension of the primitive triple's saturated integral frame. This remains a
statement about the selected two-coordinate affine-linear subspace, not yet a
complete line-bundle section-space theorem. -/
theorem PrimitiveAdditiveTriple.freyAffinePortEval_injective
    (t : PrimitiveAdditiveTriple) :
    Function.Injective t.freyAffinePortEval := by
  intro v w h
  have h0 := congrFun h (0 : Fin 3)
  have h1 := congrFun h (1 : Fin 3)
  rw [t.freyAffinePortEval_eq, t.freyAffinePortEval_eq] at h0 h1
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at h0 h1
  ext i
  fin_cases i
  · exact h0
  · have ha : (t.a : ℚ) ≠ 0 := by
      exact_mod_cast (Nat.ne_of_gt t.a_pos)
    apply mul_left_cancel₀ ha
    linear_combination h1 - h0

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
