/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib prime-power and operator facts retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PrimePowerCenteredGramSource

set_option autoImplicit false
noncomputable section

/-!
# Normalized centered null modes without an analytic-zero premise

On actual labels 2^k with positive retained exponents, the centered
potential is identically zero. Zero hopping therefore gives the zero
operator and unit-norm null vectors in every nonzero finite dimension.
This removes the previous coercive normalization floor by changing the
source, but supplies no information about zeta zeros or a fixed-family
analytic realization. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteredNullDiagnostic
open PrimePowerCenteredGramSource
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (N : ℕ) [NeZero N]

theorem centered_two_power_potential_zero (k : ZMod N → ℕ) (hk : ∀ i, 0 < k i)
    (i : ZMod N) :
    arithmeticPotential N 1 (1 : DirichletCharacter ℂ 1)
      (fun j => 2 ^ k j) 1 0 (-Real.log 2) i = 0 := by
  rw [level_one_centered_potential,
    ArithmeticFunction.vonMangoldt_apply_pow (ne_of_gt (hk i)),
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)]
  ring

theorem centered_two_power_operator_zero (k : ZMod N → ℕ) (hk : ∀ i, 0 < k i) :
    hamiltonianOperator N 0
      (arithmeticPotential N 1 (1 : DirichletCharacter ℂ 1)
        (fun j => 2 ^ k j) 1 0 (-Real.log 2)) = 0 := by
  apply ContinuousLinearMap.ext
  intro x
  apply WithLp.ofLp_injective 2
  funext i
  rw [hamiltonianOperator_mulVec, hamiltonian_mulVec]
  simp [centered_two_power_potential_zero N k hk]

theorem centered_two_power_normalized_null_vector
    (k : ZMod N → ℕ) (hk : ∀ i, 0 < k i) :
    ∃ x : EuclideanSpace ℂ (ZMod N), ‖x‖ = 1 ∧
      hamiltonianOperator N 0
        (arithmeticPotential N 1 (1 : DirichletCharacter ℂ 1)
          (fun j => 2 ^ k j) 1 0 (-Real.log 2)) x = 0 := by
  refine ⟨PiLp.single 2 (0 : ZMod N) 1, ?_, ?_⟩
  · simp [PiLp.norm_single]
  · rw [centered_two_power_operator_zero N k hk]
    rfl

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteredNullDiagnostic
