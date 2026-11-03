/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.RetainedFactorization
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicRetainedExponentEnergy

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Same-source factorization energies

Enumerating the actual prime support of n, one Mangoldt-only diagonal
operator has log(n) energy on retained sqrt(v_p(n)) amplitudes and
log(rad(n)) energy on unit amplitudes. No exponent information is
recovered from the matrix alone. The explicit bijection requires a
nonempty support; n=1 is not silently represented by a nonempty cycle.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No uniform additive-triple inequality is supplied.
-/
namespace GRWTSK.NumberTheory.ABC.FactorizationOperatorEnergy
open RetainedFactorization
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicRetainedExponentEnergy
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity

variable (N : ℕ) [NeZero N]

def factorPotential (n : ℕ) (e : ZMod N ≃ {p : ℕ // p ∈ n.primeFactors})
    (level : ℕ) (χ : DirichletCharacter ℂ level) : ZMod N → ℝ :=
  arithmeticPotential N level χ (fun i => (e i).1) 1 0 0

theorem factorPotential_eq_log (n : ℕ)
    (e : ZMod N ≃ {p : ℕ // p ∈ n.primeFactors})
    (level : ℕ) (χ : DirichletCharacter ℂ level) (i : ZMod N) :
    factorPotential N n e level χ i = Real.log ((e i).1 : ℝ) := by
  simp only [factorPotential, arithmeticPotential, one_mul, zero_mul, add_zero]
  exact ArithmeticFunction.vonMangoldt_apply_prime (Nat.prime_of_mem_primeFactors (e i).2)

theorem factorization_height_energy (n : ℕ) (hn : n ≠ 0)
    (e : ZMod N ≃ {p : ℕ // p ∈ n.primeFactors})
    (level : ℕ) (χ : DirichletCharacter ℂ level) :
    hamiltonianEnergy N 0 (factorPotential N n e level χ)
      (exponentVector N (fun i => n.factorization (e i).1)) = Real.log (n : ℝ) := by
  rw [diagonal_exponent_energy, log_factorization n hn]
  calc
    _ = ∑ p : {p : ℕ // p ∈ n.primeFactors},
        (n.factorization p.1 : ℝ) * Real.log (p.1 : ℝ) := by
      apply Fintype.sum_equiv e
      intro i
      rw [factorPotential_eq_log]
      ring
    _ = _ := Finset.sum_coe_sort _ _

theorem factorization_radical_energy (n : ℕ)
    (e : ZMod N ≃ {p : ℕ // p ∈ n.primeFactors})
    (level : ℕ) (χ : DirichletCharacter ℂ level) :
    hamiltonianEnergy N 0 (factorPotential N n e level χ)
      (exponentVector N (fun _ => 1)) =
        Real.log (UniqueFactorizationMonoid.radical n : ℝ) := by
  rw [diagonal_exponent_energy, log_radical_support]
  calc
    _ = ∑ p : {p : ℕ // p ∈ n.primeFactors}, Real.log (p.1 : ℝ) := by
      apply Fintype.sum_equiv e
      intro i
      simp [factorPotential_eq_log]
    _ = _ := Finset.sum_coe_sort _ _

end GRWTSK.NumberTheory.ABC.FactorizationOperatorEnergy
