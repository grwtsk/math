/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib analytic and operator facts retain upstream authorship and licenses. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletAnalyticNullPatch
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicOperatorStability

set_option autoImplicit false
noncomputable section

/-!
# Simultaneous analytic-row and one-coordinate cyclic construction

The actual two-site analytic null patch has an explicitly computed
coefficient in the residue-zero cyclic equation. If it is nonzero,
division constructs a patch cancelling that equation while preserving
the analytic row. Untouched-sample nonvanishing remains explicit.
This solves ONE cyclic equation only; no complete residual or GRH
conclusion follows. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletAnalyticBoundaryConstruction
open DirichletSourceVectorConstruction DirichletAnalyticObservationError DirichletAnalyticNullPatch
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (level : ℕ) [NeZero level]

def boundaryCoefficient (s z : ℂ) (t : ℝ) (q : ZMod level → ℝ) : ℂ :=
  ((q 0 : ℂ) - z) * analyticRow level s 0 1 - (t : ℂ) * analyticRow level s 0 0

theorem repaired_boundary_formula (χ : DirichletCharacter ℂ level) (hl : level ≠ 1)
    (h01 : (0 : ZMod level) ≠ 1) (hm0 : (-1 : ZMod level) ≠ 0)
    (hm1 : (-1 : ZMod level) ≠ 1) (s u z : ℂ) (t : ℝ) (q : ZMod level → ℝ) :
    WithLp.ofLp (hamiltonianOperator level t q (repairedVector level χ s u) -
      z • repairedVector level χ s u) 0 =
      (t : ℂ) * (1 + χ (-1)) + u * boundaryCoefficient level s z t q := by
  rw [WithLp.ofLp_sub, WithLp.ofLp_smul, hamiltonianOperator_mulVec, hamiltonian_mulVec]
  simp [repairedVector, nullPatch, sourceVector, PiLp.single_apply, h01,
    Ne.symm h01, hm0, hm1, χ.map_zero' hl, boundaryCoefficient]
  ring

theorem analytic_zero_and_boundary_solution
    (χ : DirichletCharacter ℂ level) (hl : level ≠ 1)
    (h01 : (0 : ZMod level) ≠ 1) (hm0 : (-1 : ZMod level) ≠ 0)
    (hm1 : (-1 : ZMod level) ≠ 1) (s z : ℂ)
    (hz : DirichletStripZero level χ s) (t : ℝ) (q : ZMod level → ℝ)
    (hD : boundaryCoefficient level s z t q ≠ 0)
    (j : ZMod level) (hj0 : j ≠ 0) (hj1 : j ≠ 1) (hχ : χ j ≠ 0) :
    ∃ u : ℂ, repairedVector level χ s u ≠ 0 ∧
      (analyticRow level s).mulVec (WithLp.ofLp (repairedVector level χ s u)) 0 = 0 ∧
      WithLp.ofLp (hamiltonianOperator level t q (repairedVector level χ s u) -
        z • repairedVector level χ s u) 0 = 0 := by
  let u := -((t : ℂ) * (1 + χ (-1))) / boundaryCoefficient level s z t q
  refine ⟨u, repairedVector_ne_zero_of_untouched_sample level χ s u j hj0 hj1 hχ,
    repaired_row_at_zero level χ s u hz, ?_⟩
  rw [repaired_boundary_formula level χ hl h01 hm0 hm1]
  dsimp [u]
  rw [div_mul_cancel₀ _ hD]
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletAnalyticBoundaryConstruction
