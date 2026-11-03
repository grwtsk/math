/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicPrimePowerHeight
import GRWTSK.OperatorTheory.DeterminantSectorCoercivity

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Retained exponents as full-vector amplitudes

With zero hopping and potential log(p_i), amplitudes sqrt(k_i) give
energy sum k_i log(p_i). The same prime-power-blind matrix thus recovers
height only when the exponent-bearing vector is independently retained.
No uniform bound on that vector, additive-triple source supplier, or ABC
estimate is obtained by this encoding. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicRetainedExponentEnergy
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability
open ArithmeticCyclicPrimePowerBlindness
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity

variable (N : ℕ) [NeZero N]

def exponentVector (k : ZMod N → ℕ) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun i => (Real.sqrt (k i : ℝ) : ℂ))

theorem diagonal_exponent_energy (q : ZMod N → ℝ) (k : ZMod N → ℕ) :
    hamiltonianEnergy N 0 q (exponentVector N k) = ∑ i, q i * (k i : ℝ) := by
  have he : WithLp.ofLp (hamiltonianOperator N 0 q (exponentVector N k)) =
      fun i => (q i : ℂ) * (Real.sqrt (k i : ℝ) : ℂ) := by
    funext i
    rw [hamiltonianOperator_mulVec, hamiltonian_mulVec]
    simp [exponentVector]
  unfold hamiltonianEnergy
  rw [PiLp.inner_apply]
  simp only [map_sum]
  apply Finset.sum_congr rfl
  intro i _
  change (inner ℂ (Real.sqrt (k i : ℝ) : ℂ)
    (WithLp.ofLp (hamiltonianOperator N 0 q (exponentVector N k)) i)).re = _
  rw [he, RCLike.inner_apply]
  have hs := Real.sq_sqrt (show (0 : ℝ) ≤ (k i : ℝ) by positivity)
  simp only [Complex.conj_ofReal, ← Complex.ofReal_mul, Complex.ofReal_re]
  calc
    q i * Real.sqrt (k i : ℝ) * Real.sqrt (k i : ℝ) =
        q i * (Real.sqrt (k i : ℝ)) ^ 2 := by ring
    _ = q i * (k i : ℝ) := by rw [hs]

theorem actual_prime_power_exponent_energy (level : ℕ) (χ : DirichletCharacter ℂ level)
    (p k : ZMod N → ℕ) (hp : ∀ i, (p i).Prime) (hk : ∀ i, 0 < k i) :
    hamiltonianEnergy N 0
      (arithmeticPotential N level χ (fun i => p i ^ k i) 1 0 0)
      (exponentVector N k) = ∑ i, Real.log ((p i ^ k i : ℕ) : ℝ) := by
  rw [diagonal_exponent_energy]
  apply Finset.sum_congr rfl
  intro i _
  rw [potential_of_prime_power_labels N level χ p k hp hk 1 0]
  simp only [add_zero, one_mul, Nat.cast_pow, Real.log_pow]
  ring

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicRetainedExponentEnergy
