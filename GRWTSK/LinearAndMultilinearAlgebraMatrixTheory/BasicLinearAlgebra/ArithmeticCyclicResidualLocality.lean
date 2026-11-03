/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicOperatorStability

set_option autoImplicit false
noncomputable section

/-! Exact locality of the actual nearest-neighbor residual.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicResidualLocality
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability

theorem residual_coordinate_unchanged (N : ℕ) [NeZero N]
    (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (x d : EuclideanSpace ℂ (ZMod N)) (j : ZMod N)
    (hd : d j = 0) (hdp : d (j + 1) = 0) (hdm : d (j - 1) = 0) :
    WithLp.ofLp (hamiltonianOperator N t q (x + d) - z • (x + d)) j =
      WithLp.ofLp (hamiltonianOperator N t q x - z • x) j := by
  simp only [WithLp.ofLp_sub, WithLp.ofLp_smul, hamiltonianOperator_mulVec,
    hamiltonian_mulVec, WithLp.ofLp_add, Pi.add_apply, Pi.sub_apply,
    Pi.smul_apply, smul_eq_mul]
  simp [hd, hdp, hdm]

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicResidualLocality
