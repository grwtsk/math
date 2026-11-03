/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PrimePowerCenteredExponentialSamples
import Mathlib.Analysis.Complex.Trigonometric

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full finite sample norms and exact diagonal eigen-residual mass.
Pairing convergence does not assert a shrinking eigen-residual.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExponentialVectorNorms
open PrimePowerCenteredExponentialSamples
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

theorem rightSample_norm_sq (s : ℂ) (L : ℝ) :
    ‖rightSample s L‖ ^ 2 = Real.exp (-s.re * L) := by
  have he : (-s * (L : ℂ) / 2).re = -s.re * L / 2 := by simp
  rw [rightSample, Complex.norm_exp, he, pow_two, ← Real.exp_add]
  congr 1
  ring

theorem leftSample_norm_sq (s : ℂ) (L : ℝ) :
    ‖leftSample s L‖ ^ 2 = Real.exp (-s.re * L) := by
  simpa only [leftSample, norm_star] using rightSample_norm_sq s L

variable (N : ℕ) [NeZero N]

theorem full_right_vector_norm_sq (L : ZMod N → ℝ) (s : ℂ) :
    ‖(WithLp.toLp 2 (fun i => rightSample s (L i)) : EuclideanSpace ℂ (ZMod N))‖ ^ 2 =
      ∑ i, Real.exp (-s.re * L i) := by
  rw [PiLp.norm_sq_eq_of_L2]
  apply Finset.sum_congr rfl
  intro i _
  exact rightSample_norm_sq s (L i)

theorem full_diagonal_residual_norm_sq (L q : ZMod N → ℝ) (s λ : ℂ) :
    ‖hamiltonianOperator N 0 q (WithLp.toLp 2 (fun i => rightSample s (L i))) -
      λ • WithLp.toLp 2 (fun i => rightSample s (L i))‖ ^ 2 =
      ∑ i, ‖(q i : ℂ) - λ‖ ^ 2 * Real.exp (-s.re * L i) := by
  have he : WithLp.ofLp
      (hamiltonianOperator N 0 q (WithLp.toLp 2 (fun i => rightSample s (L i))) -
        λ • WithLp.toLp 2 (fun i => rightSample s (L i))) =
      fun i => ((q i : ℂ) - λ) * rightSample s (L i) := by
    funext i
    simp only [WithLp.ofLp_sub, WithLp.ofLp_smul]
    rw [hamiltonianOperator_mulVec, hamiltonian_mulVec]
    simp
    <;> ring
  rw [PiLp.norm_sq_eq_of_L2]
  apply Finset.sum_congr rfl
  intro i _
  change ‖WithLp.ofLp
    (hamiltonianOperator N 0 q (WithLp.toLp 2 (fun j => rightSample s (L j))) -
      λ • WithLp.toLp 2 (fun j => rightSample s (L j))) i‖ ^ 2 = _
  rw [he, norm_mul, mul_pow, rightSample_norm_sq]

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExponentialVectorNorms
