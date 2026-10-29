import Mathlib.LinearAlgebra.Determinant
import Mathlib.Tactic

/-! Local determinant comparison from an actual supplied intertwiner.
No Satake parameters, automorphic transfer, or infinite Euler product is constructed. -/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory

variable {R n : Type*} [CommRing R] [Fintype n] [DecidableEq n]

/-- An invertible intertwiner transports the entire local matrix pencil. -/
theorem pencil_conjugate (A B U V : Matrix n n R) (uv : U * V = 1)
    (intertwines : A * U = U * B) (t : R) :
    1 - t • A = U * (1 - t • B) * V := by
  have ha : A = U * B * V := by
    calc
      A = A * (U * V) := by rw [uv, Matrix.mul_one]
      _ = (A * U) * V := by rw [Matrix.mul_assoc]
      _ = U * B * V := by rw [intertwines]
  rw [Matrix.mul_sub, Matrix.mul_one, Matrix.sub_mul,
    Matrix.mul_smul, Matrix.smul_mul, uv, ← ha]

/-- Equality at every local parameter t; both inverse identities are explicit. -/
theorem det_pencil_eq (A B U V : Matrix n n R) (uv : U * V = 1)
    (vu : V * U = 1) (intertwines : A * U = U * B) (t : R) :
    Matrix.det (1 - t • A) = Matrix.det (1 - t • B) := by
  rw [pencil_conjugate A B U V uv intertwines t]
  exact Matrix.det_conj_of_mul_eq_one uv vu
end GRWTSK.Algebra.LinearAlgebra.MatrixTheory
