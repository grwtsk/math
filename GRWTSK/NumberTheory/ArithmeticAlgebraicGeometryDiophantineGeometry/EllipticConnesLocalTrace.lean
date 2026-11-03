/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
The elliptic record and point counts retain the original mathematical
attribution of Record4239Curve.lean.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticFiniteEulerWindow
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Source-bound finite elliptic local trace for a Connes-style comparison

For an actual finite good-reduction count N_q, let a_q=q+1-N_q.
The integer companion A_q = [[a_q,-q],[1,0]] records the same
degree-two reciprocal Euler polynomial as the original curve:

  det(1-T*A_q) = 1-a_q*T+q*T^2.

This is a FINITE companion matrix determined by the original source
count, NOT a construction of geometric Frobenius on etale cohomology,
a global automorphic representation, a Connes dilation generator, a
spectral zero space, or a Birch--Swinnerton-Dyer bridge.

The trace at prime powers, unlike a positive Gram norm, can have a
negative first coefficient. In the record curve, a_7=-5 and a_19=-7.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ConnesLocalTrace

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow

/-- Algebraic companion of the ACTUAL count-derived Frobenius trace.
It must not be silently relabelled as etale-cohomological Frobenius. -/
def companionMatrix (q pointCount : ℕ) : Matrix (Fin 2) (Fin 2) ℤ :=
  !![frobeniusTrace q pointCount, -(q : ℤ); 1, 0]

theorem companionMatrix_trace (q pointCount : ℕ) :
    (companionMatrix q pointCount).trace =
      frobeniusTrace q pointCount := by
  simp [companionMatrix, Matrix.trace_fin_two]

theorem companionMatrix_det (q pointCount : ℕ) :
    (companionMatrix q pointCount).det = (q : ℤ) := by
  simp [companionMatrix, Matrix.det_fin_two] <;> ring

/-- Explicit rational matrix 1-T*A_q. The original source q and N_q
remain arguments, rather than being inferred from an arbitrary spectrum. -/
def reciprocalMatrix (q pointCount : ℕ) (T : ℚ) :
    Matrix (Fin 2) (Fin 2) ℚ :=
  !![1 - (frobeniusTrace q pointCount : ℚ) * T, (q : ℚ) * T;
     -T, 1]

/-- Exact determinant/real arithmetic-local-factor comparison.
This does not construct the global Hasse--Weil L-function. -/
theorem reciprocalMatrix_det (q pointCount : ℕ) (T : ℚ) :
    (reciprocalMatrix q pointCount T).det =
      goodReciprocal q pointCount T := by
  simp [reciprocalMatrix, Matrix.det_fin_two, goodReciprocal] <;> ring

/-- Prime-square coefficient of the local companion trace. -/
theorem companionMatrix_square_trace (q pointCount : ℕ) :
    (companionMatrix q pointCount * companionMatrix q pointCount).trace =
      frobeniusTrace q pointCount ^ 2 - 2 * (q : ℤ) := by
  simp [companionMatrix, Matrix.trace_fin_two,
    Matrix.mul_apply, Fin.sum_univ_two] <;> ring

theorem recordSeven_trace :
    (companionMatrix 7 (Record4239.reducedPointCount 7)).trace = -5 := by
  rw [companionMatrix_trace, record_trace_seven]

theorem recordNineteen_trace :
    (companionMatrix 19 (Record4239.reducedPointCount 19)).trace = -7 := by
  rw [companionMatrix_trace, record_trace_nineteen]

theorem recordSeven_square_trace :
    (companionMatrix 7 (Record4239.reducedPointCount 7) *
      companionMatrix 7 (Record4239.reducedPointCount 7)).trace = 11 := by
  rw [companionMatrix_square_trace, record_trace_seven]
  norm_num

theorem recordNineteen_square_trace :
    (companionMatrix 19 (Record4239.reducedPointCount 19) *
      companionMatrix 19 (Record4239.reducedPointCount 19)).trace = 11 := by
  rw [companionMatrix_square_trace, record_trace_nineteen]
  norm_num

theorem recordSeven_reciprocal (T : ℚ) :
    (reciprocalMatrix 7 (Record4239.reducedPointCount 7) T).det =
      1 + 5 * T + 7 * T ^ 2 := by
  rw [reciprocalMatrix_det, record_factor_seven]

theorem recordNineteen_reciprocal (T : ℚ) :
    (reciprocalMatrix 19 (Record4239.reducedPointCount 19) T).det =
      1 + 7 * T + 19 * T ^ 2 := by
  rw [reciprocalMatrix_det, record_factor_nineteen]

/-- Hostile sign test: positive Gram-operator trace cannot be substituted
for this signed local first Frobenius trace. -/
theorem recordSeven_negative_trace :
    (companionMatrix 7 (Record4239.reducedPointCount 7)).trace < 0 := by
  rw [recordSeven_trace]
  norm_num

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ConnesLocalTrace
