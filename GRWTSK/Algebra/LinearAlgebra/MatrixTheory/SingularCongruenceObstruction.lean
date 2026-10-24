/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Square congruence preserves a determinant obstruction


Any square real mixing matrix preserves singularity under congruence. A kernel
with a zero row therefore cannot become a positive definite matrix by a square
change of its finite label inventory. Rectangular maps, extra inputs, different
windows and inequalities require separate arguments.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SingularCongruenceObstruction

noncomputable section

theorem singular_square_congruence_ne_positive_definite {ι : Type*} [Fintype ι]
    [DecidableEq ι] (H G : Matrix ι ι ℝ) (singular : H.det = 0) (positive : G.PosDef)
    (B : Matrix ι ι ℝ) : B.transpose * H * B ≠ G := by
  intro equality
  have determinantZero : (B.transpose * H * B).det = 0 := by
    rw [Matrix.det_mul, Matrix.det_mul, singular, mul_zero, zero_mul]
  have determinantNonzero : G.det ≠ 0 :=
    (Matrix.isUnit_iff_isUnit_det G).mp positive.isUnit |>.ne_zero
  exact determinantNonzero (by rw [← equality]; exact determinantZero)

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
theorem zero_row_square_congruence_ne_positive_definite {ι : Type*} [Fintype ι]
    [DecidableEq ι] (H G : Matrix ι ι ℝ) (n : ι) (zeroRow : ∀ j, H n j = 0)
    (positive : G.PosDef) (B : Matrix ι ι ℝ) : B.transpose * H * B ≠ G :=
  singular_square_congruence_ne_positive_definite H G
    (Matrix.det_eq_zero_of_row_eq_zero n zeroRow) positive B

end

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SingularCongruenceObstruction
