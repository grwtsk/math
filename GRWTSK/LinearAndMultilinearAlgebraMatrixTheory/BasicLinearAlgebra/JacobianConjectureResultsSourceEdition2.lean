import FormalResearch.JacobianConjecture.Polynomial
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# The explicit Alpöge–Fable polynomial certificate

These definitions are independently derived from the formula admitted in
`docs/research/jacobian-conjecture/formula.txt`. The exact rational collision
and the formal polynomial Jacobian are checked in Lean. External computation
is not used as a proof assumption. Rows of the Jacobian index output
coordinates and columns index input variables.
-/

namespace FormalResearch.JacobianConjecture

noncomputable section

open MvPolynomial

variable {R : Type*} [CommRing R]

/-- First coordinate, written directly in the admitted factored form. -/
def alpogeFable₁ (x y z : R) : R :=
  (1 + x * y) ^ 3 * z + y ^ 2 * (1 + x * y) * (4 + 3 * (x * y))

/-- Second coordinate, written directly in the admitted factored form. -/
def alpogeFable₂ (x y z : R) : R :=
  y + 3 * x * (1 + x * y) ^ 2 * z + 3 * x * y ^ 2 * (4 + 3 * (x * y))

/-- Third coordinate, written directly in the admitted factored form. -/
def alpogeFable₃ (x y z : R) : R :=
  2 * x - 3 * x ^ 2 * y - x ^ 3 * z

/-- The coordinate polynomials, with variables ordered `x`, `y`, `z`. -/
def alpogeFablePoly : Fin 3 → MvPolynomial (Fin 3) R :=
  ![alpogeFable₁ (X 0) (X 1) (X 2),
    alpogeFable₂ (X 0) (X 1) (X 2),
    alpogeFable₃ (X 0) (X 1) (X 2)]

/-- The explicit map over exact rational arithmetic. -/
def alpogeFable (x : Fin 3 → ℚ) : Fin 3 → ℚ :=
  ![alpogeFable₁ (x 0) (x 1) (x 2),
    alpogeFable₂ (x 0) (x 1) (x 2),
    alpogeFable₃ (x 0) (x 1) (x 2)]

/-- The coordinate expression is exactly evaluation of the defined polynomials. -/
theorem alpogeFable_eq_eval (x : Fin 3 → ℚ) :
    alpogeFable x = fun i ↦ eval x (alpogeFablePoly i) := by
  funext i
  fin_cases i <;>
    simp [alpogeFable, alpogeFablePoly, alpogeFable₁, alpogeFable₂, alpogeFable₃]

theorem alpogeFable_eq_polynomialMap :
    alpogeFable = polynomialMap (alpogeFablePoly (R := ℚ)) := by
  funext x
  exact alpogeFable_eq_eval x

/-- The first collision witness. -/
def pZero : Fin 3 → ℚ := ![0, 0, -1 / 4]

/-- The second collision witness. -/
def pPlus : Fin 3 → ℚ := ![1, -3 / 2, 13 / 2]

/-- The third collision witness. -/
def pMinus : Fin 3 → ℚ := ![-1, 3 / 2, 13 / 2]

/-- The common exact image. -/
def target : Fin 3 → ℚ := ![-1 / 4, 0, 0]

theorem p_zero_ne_p_plus : pZero ≠ pPlus := by
  intro h
  have := congrFun h 0
  norm_num [pZero, pPlus] at this

theorem p_zero_ne_p_minus : pZero ≠ pMinus := by
  intro h
  have := congrFun h 0
  norm_num [pZero, pMinus] at this

theorem p_plus_ne_p_minus : pPlus ≠ pMinus := by
  intro h
  have := congrFun h 0
  norm_num [pPlus, pMinus] at this

theorem alpogeFable_p_zero : alpogeFable pZero = target := by
  funext i
  fin_cases i <;>
    norm_num [alpogeFable, alpogeFable₁, alpogeFable₂, alpogeFable₃, pZero, target,
      Matrix.cons_val_two]

theorem alpogeFable_p_plus : alpogeFable pPlus = target := by
  funext i
  fin_cases i <;>
    norm_num [alpogeFable, alpogeFable₁, alpogeFable₂, alpogeFable₃, pPlus, target,
      Matrix.cons_val_two]

theorem alpogeFable_p_minus : alpogeFable pMinus = target := by
  funext i
  fin_cases i <;>
    norm_num [alpogeFable, alpogeFable₁, alpogeFable₂, alpogeFable₃, pMinus, target,
      Matrix.cons_val_two]

/-- Noninjectivity follows only from two exactly evaluated distinct witnesses. -/
theorem alpogeFable_not_injective : ¬ Function.Injective alpogeFable := by
  intro h
  exact p_zero_ne_p_plus (h (alpogeFable_p_zero.trans alpogeFable_p_plus.symm))

/-- The algebraic Jacobian is evaluated formal differentiation of the coordinates. -/
def alpogeFableJacobian (x : Fin 3 → ℚ) : Matrix (Fin 3) (Fin 3) ℚ :=
  polynomialJacobian alpogeFablePoly x

private theorem pderiv_ofNat (i : Fin 3) (n : ℕ) [n.AtLeastTwo] :
    pderiv i (ofNat(n) : MvPolynomial (Fin 3) R) = 0 :=
  Derivation.map_natCast _ n

/-- All nine entries are derived from the coordinate polynomials by the formal
product and power rules, before computing a determinant. -/
theorem alpogeFablePoly_jacobian_eq (x : Fin 3 → R) :
    polynomialJacobian alpogeFablePoly x =
      !![3 * x 1 * (1 + x 0 * x 1) ^ 2 * x 2 + (x 1) ^ 3 * (7 + 6 * x 0 * x 1),
         3 * x 0 * (1 + x 0 * x 1) ^ 2 * x 2 +
           x 1 * (8 + 21 * x 0 * x 1 + 12 * (x 0 * x 1) ^ 2),
         (1 + x 0 * x 1) ^ 3;
         3 * (1 + x 0 * x 1) * (1 + 3 * x 0 * x 1) * x 2 +
           12 * (x 1) ^ 2 + 18 * x 0 * (x 1) ^ 3,
         1 + 6 * (x 0) ^ 2 * (1 + x 0 * x 1) * x 2 +
           24 * x 0 * x 1 + 27 * (x 0 * x 1) ^ 2,
         3 * x 0 * (1 + x 0 * x 1) ^ 2;
         2 - 6 * x 0 * x 1 - 3 * (x 0) ^ 2 * x 2,
         -3 * (x 0) ^ 2,
         -(x 0) ^ 3] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [polynomialJacobian, alpogeFablePoly, alpogeFable₁, alpogeFable₂,
      alpogeFable₃, pderiv_ofNat] <;> ring

/-- Exact determinant identity over any commutative ring. -/
theorem alpogeFablePoly_jacobian_det (x : Fin 3 → R) :
    Matrix.det (polynomialJacobian alpogeFablePoly x) = -2 := by
  rw [alpogeFablePoly_jacobian_eq, Matrix.det_fin_three]
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons, Matrix.of_apply]
  ring

/-- The decisive rational Jacobian identity. -/
theorem alpogeFable_jacobian_det (x : Fin 3 → ℚ) :
    Matrix.det (alpogeFableJacobian x) = -2 :=
  alpogeFablePoly_jacobian_det x

theorem alpogeFable_jacobian_ne_zero (x : Fin 3 → ℚ) :
    Matrix.det (alpogeFableJacobian x) ≠ 0 := by
  rw [alpogeFable_jacobian_det]
  norm_num

/-- An exact entry-level convention check: this matrix is not symmetric,
although transposing it would preserve its determinant. -/
theorem alpogeFable_jacobian_p_zero :
    alpogeFableJacobian pZero = !![0, 0, 1; -3 / 4, 1, 0; 2, 0, 0] := by
  rw [alpogeFableJacobian, alpogeFablePoly_jacobian_eq]
  norm_num [pZero, Matrix.cons_val_two]

end

end FormalResearch.JacobianConjecture
