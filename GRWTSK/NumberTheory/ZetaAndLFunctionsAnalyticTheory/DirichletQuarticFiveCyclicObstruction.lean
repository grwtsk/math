/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib character and self-adjoint operator facts retain upstream authorship and licenses. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletSourceVectorConstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ArithmeticCyclicZetaResidualCriterion

set_option autoImplicit false
noncomputable section

/-!
# A genuine odd nonreal character still obstructs the raw cyclic seed

The explicit modulo-five character has values (0,1,I,-I,-1).
Oddness cancels the residue-zero equation, but residue one forces
Im(lambda)=t. Self-adjointness forces Im(lambda)=0 for a nonzero full
eigenvector, so nonzero hopping is impossible for this raw seed.
This is not an analytic-zero assertion or a counterexample to GRH.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletQuarticFiveCyclicObstruction
open DirichletSourceVectorConstruction ArithmeticCyclicZetaResidualCriterion
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

def quarticValue (x : ZMod 5) : ℂ :=
  if x = 0 then 0 else if x = 1 then 1 else if x = 2 then Complex.I
    else if x = 3 then -Complex.I else -1

def quarticFive : DirichletCharacter ℂ 5 where
  toFun := quarticValue
  map_one' := by norm_num [quarticValue]
  map_mul' := by
    intro x y
    fin_cases x <;> fin_cases y <;> norm_num [quarticValue]
  map_nonunit' := by
    intro x hx
    fin_cases x <;> norm_num [quarticValue, ZMod.isUnit_iff_coprime] at hx ⊢

theorem quarticFive_odd_nonreal_samples :
    quarticFive (-1) = -1 ∧ quarticFive 2 = Complex.I := by
  norm_num [quarticFive, quarticValue]

theorem quarticFive_residual_at_one (t : ℝ) (q : ZMod 5 → ℝ) (z : ℂ) :
    WithLp.ofLp (hamiltonianOperator 5 t q (sourceVector 5 quarticFive) -
      z • sourceVector 5 quarticFive) (1 : ZMod 5) =
      (t : ℂ) * Complex.I + (q 1 : ℂ) - z := by
  rw [WithLp.ofLp_sub, WithLp.ofLp_smul, hamiltonianOperator_mulVec, hamiltonian_mulVec]
  norm_num [sourceVector, quarticFive, quarticValue]

theorem quarticFive_raw_seed_not_eigenvector (t : ℝ) (ht : t ≠ 0)
    (q : ZMod 5 → ℝ) (z : ℂ) :
    hamiltonianOperator 5 t q (sourceVector 5 quarticFive) ≠ z • sourceVector 5 quarticFive := by
  intro h
  have him := parameter_im_le_of_residual 5 t q z 0 (sourceVector 5 quarticFive)
    (by norm_num) (sourceVector_ne_zero 5 quarticFive) (by rw [h]; simp)
  have hz : z.im = 0 := abs_nonpos_iff.mp him
  have he := quarticFive_residual_at_one t q z
  rw [h, sub_self] at he
  have hi := congrArg Complex.im he
  simp [Complex.mul_im, hz] at hi
  exact ht (by linarith)

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletQuarticFiveCyclicObstruction
