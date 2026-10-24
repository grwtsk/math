import FormalResearch.JacobianConjecture.Basic
import Mathlib.Algebra.MvPolynomial.PDeriv
import Mathlib.Data.Matrix.Basic

/-!
# Algebraic Jacobians and polynomial correction

Rows index output coordinates; columns index input variables. Every Jacobian
entry is the evaluation of a formal partial derivative. These algebraic
definitions make no claims about analytic inverse functions or dynamics.
-/

namespace FormalResearch.JacobianConjecture

noncomputable section

open MvPolynomial

variable {n : ℕ} {R : Type*} [CommRing R]

/-- Evaluate the coordinate polynomials of a finite-dimensional self-map. -/
def polynomialMap (P : Fin n → MvPolynomial (Fin n) R) (x : Fin n → R) : Fin n → R :=
  fun i ↦ eval x (P i)

/-- The algebraic Jacobian: output coordinate first, input variable second. -/
def polynomialJacobian (P : Fin n → MvPolynomial (Fin n) R) (x : Fin n → R) :
    Matrix (Fin n) (Fin n) R :=
  fun i j ↦ eval x (pderiv j (P i))

/-- Coordinate polynomials for `x ↦ x - A (P(x) - y)` in standard coordinates. -/
def correctionPoly (A : Matrix (Fin n) (Fin n) R)
    (P : Fin n → MvPolynomial (Fin n) R) (y : Fin n → R) :
    Fin n → MvPolynomial (Fin n) R :=
  fun i ↦ X i - ∑ k, C (A i k) * (P k - C (y k))

theorem correction_poly_eval (A : Matrix (Fin n) (Fin n) R)
    (P : Fin n → MvPolynomial (Fin n) R) (y x : Fin n → R) :
    polynomialMap (correctionPoly A P y) x = x - A.mulVec (polynomialMap P x - y) := by
  ext i
  simp [polynomialMap, correctionPoly, Matrix.mulVec, dotProduct]

/-- Identity correction agrees with the abstract module transformation. -/
theorem correction_poly_eval_id (P : Fin n → MvPolynomial (Fin n) R) (y : Fin n → R) :
    polynomialMap (correctionPoly 1 P y) =
      fixedPointTransform (LinearMap.id : (Fin n → R) →ₗ[R] (Fin n → R))
        (polynomialMap P) y := by
  funext x
  simp [correction_poly_eval, fixedPointTransform]

/-- The derivative of the correction is derived from its polynomials. -/
theorem correction_poly_jacobian (A : Matrix (Fin n) (Fin n) R)
    (P : Fin n → MvPolynomial (Fin n) R) (y x : Fin n → R) :
    polynomialJacobian (correctionPoly A P y) x = 1 - A * polynomialJacobian P x := by
  ext i j
  simp [polynomialJacobian, correctionPoly, Matrix.mul_apply, Matrix.one_apply, Pi.single_apply]

/-- The algebraic relation `I - JT = A * JF` needs no injectivity hypothesis. -/
theorem one_sub_correction_poly_jacobian (A : Matrix (Fin n) (Fin n) R)
    (P : Fin n → MvPolynomial (Fin n) R) (y x : Fin n → R) :
    1 - polynomialJacobian (correctionPoly A P y) x = A * polynomialJacobian P x := by
  rw [correction_poly_jacobian, sub_sub_cancel]

end

end FormalResearch.JacobianConjecture
