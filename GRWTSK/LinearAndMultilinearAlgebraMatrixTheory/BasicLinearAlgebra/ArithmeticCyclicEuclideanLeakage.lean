/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicSectorLeakage
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicOperatorStability

set_option autoImplicit false
noncomputable section

/-!
# Full Euclidean leakage from the actual asymmetric diagonal

The output uses the complex Euclidean norm on every coordinate. The real
potential uses its finite sup norm. No selected coordinate or real-part
compression replaces either norm. Input reflection parity is explicit.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No sector lower bound, continuum construction or Yang–Mills mass gap follows.
-/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicEuclideanLeakage
open ArithmeticCyclicHamiltonian ArithmeticCyclicReflection
open ArithmeticCyclicSectorLeakage ArithmeticCyclicOperatorStability

variable (N : ℕ) [NeZero N]

def evenOutput (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (evenPart N a
    (WithLp.ofLp (hamiltonianOperator N t q x)))

def oddOutput (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (oddPart N a
    (WithLp.ofLp (hamiltonianOperator N t q x)))

theorem oddOutput_eq_diagonal_of_even (a : ZMod N) (t : ℝ)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : reflection N a (WithLp.ofLp x) = WithLp.ofLp x) :
    oddOutput N a t q x = diagonalOperator N (asymmetricPotential N a q) x := by
  apply WithLp.ofLp_injective 2
  rw [diagonalOperator_mulVec]
  change oddPart N a (WithLp.ofLp (hamiltonianOperator N t q x)) = _
  rw [hamiltonianOperator_mulVec]
  funext i
  exact even_input_leakage N a t q (WithLp.ofLp x) hx i

theorem evenOutput_eq_diagonal_of_odd (a : ZMod N) (t : ℝ)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : reflection N a (WithLp.ofLp x) = -WithLp.ofLp x) :
    evenOutput N a t q x = diagonalOperator N (asymmetricPotential N a q) x := by
  apply WithLp.ofLp_injective 2
  rw [diagonalOperator_mulVec]
  change evenPart N a (WithLp.ofLp (hamiltonianOperator N t q x)) = _
  rw [hamiltonianOperator_mulVec]
  funext i
  exact odd_input_leakage N a t q (WithLp.ofLp x) hx i

theorem oddOutput_norm_le_of_even (a : ZMod N) (t : ℝ)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : reflection N a (WithLp.ofLp x) = WithLp.ofLp x) :
    ‖oddOutput N a t q x‖ ≤ ‖asymmetricPotential N a q‖ * ‖x‖ := by
  rw [oddOutput_eq_diagonal_of_even N a t q x hx]
  have h := (diagonalOperator N (asymmetricPotential N a q)).le_opNorm x
  rwa [diagonalOperator_norm] at h

theorem evenOutput_norm_le_of_odd (a : ZMod N) (t : ℝ)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : reflection N a (WithLp.ofLp x) = -WithLp.ofLp x) :
    ‖evenOutput N a t q x‖ ≤ ‖asymmetricPotential N a q‖ * ‖x‖ := by
  rw [evenOutput_eq_diagonal_of_odd N a t q x hx]
  have h := (diagonalOperator N (asymmetricPotential N a q)).le_opNorm x
  rwa [diagonalOperator_norm] at h

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicEuclideanLeakage
