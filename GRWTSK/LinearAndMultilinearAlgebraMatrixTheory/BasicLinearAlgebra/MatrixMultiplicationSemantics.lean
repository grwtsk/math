/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import OAI.LinearAlgebra.SpectralBooks.FormalCircuit
import Mathlib.Algebra.MvPolynomial.Funext

/-! # Formal and pointwise matrix multiplication programs

The arithmetic model used by the earlier complex-field bounds and the formal
model used by the rectangular exponent evaluate the same registers. Evaluation
of a polynomial at a ground-field assignment commutes with every gate.
Over an infinite field, testing all matrix pairs recovers the polynomial
identity. Both directions keep the same program and its exact gate cost.
-/

namespace GRWTSK.LinearAlgebra.MatrixMultiplication

open OAI.MatrixMultiplication.Arithmetic
open OAI.LinearAlgebra.SpectralBooks
open MvPolynomial

variable {F I R : Type*} [Field F]

private theorem eval_gatePolynomial (g : Gate F I R) (values : R → MvPolynomial I F)
    (inputs : I → F) :
    eval inputs (gatePolynomial g values) = g.eval inputs (fun i => eval inputs (values i)) := by
  cases g <;> simp only [gatePolynomial, Gate.eval, eval_C, eval_X, map_add, map_sub, map_mul]

/-- Evaluating the formal polynomial in a register gives its operational value. -/
theorem eval_registerPolynomial {r : ℕ} (p : Program F I r) (inputs : I → F) (i : Fin r) :
    eval inputs (registerPolynomial p i) = p.eval inputs i := by
  induction p with
  | nil => exact i.elim0
  | step p g ih =>
    refine Fin.cases ?_ (fun j => ?_) i
    · simp only [registerPolynomial_zero, Program.eval_step_zero, eval_gatePolynomial, ih]
    · simpa only [registerPolynomial_succ, Program.eval_step_succ] using ih j

/-- A formal product identity implies pointwise matrix correctness over any field. -/
theorem correct_of_formalCorrect {a b c : ℕ} {P : MatrixAlgorithm F a b c}
    (h : FormalCorrect P) : P.Correct := by
  apply (MatrixAlgorithm.correct_iff_entries P).mpr
  intro A B i k
  simpa only [eval_registerPolynomial, map_sum, map_mul, eval_X, matrixInputs] using
    congrArg (eval (matrixInputs A B)) (h i k)

/-- For an infinite field, formal and pointwise correctness select exactly the same programs. -/
theorem formalCorrect_iff_correct [Infinite F] {a b c : ℕ} (P : MatrixAlgorithm F a b c) :
    FormalCorrect P ↔ P.Correct := by
  refine ⟨correct_of_formalCorrect, fun h i k => MvPolynomial.funext (fun inputs => ?_)⟩
  let A : Matrix (Fin a) (Fin b) F := fun i j => inputs (Sum.inl (i, j))
  let B : Matrix (Fin b) (Fin c) F := fun j k => inputs (Sum.inr (j, k))
  have hInputs : matrixInputs A B = inputs := by
    funext input
    rcases input with ⟨i, j⟩ | ⟨j, k⟩ <;> rfl
  have hPointwise := (MatrixAlgorithm.correct_iff_entries P).mp h A B i k
  rw [hInputs] at hPointwise
  simpa only [eval_registerPolynomial, map_sum, map_mul, eval_X, A, B] using hPointwise

end GRWTSK.LinearAlgebra.MatrixMultiplication
