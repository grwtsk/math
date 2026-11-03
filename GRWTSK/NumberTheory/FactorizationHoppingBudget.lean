/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.FactorizationOperatorEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerGramHoppingError

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Height-scaled hopping budget with unbounded exponents

The retained vector has squared norm sum v_p(n), which is at most
log(n)/log(2), without an exponent cap. Its nonzero-hopping height energy
therefore differs from log(n) by at most 2 abs(t) log(n)/log(2).
This is a relative-height budget, not a uniform additive constant and
not an ABC support-credit estimate. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.ABC.FactorizationHoppingBudget
open FactorizationOperatorEnergy
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicRetainedExponentEnergy
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
open GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerGramHoppingError

variable (N : ℕ) [NeZero N]

theorem exponentVector_norm_sq (k : ZMod N → ℕ) :
    ‖exponentVector N k‖ ^ 2 = ∑ i, (k i : ℝ) := by
  rw [PiLp.norm_sq_eq_of_L2]
  apply Finset.sum_congr rfl
  intro i _
  simp [exponentVector, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Real.sqrt_nonneg _), Real.sq_sqrt]

theorem factorization_vector_norm_budget (n : ℕ) (hn : n ≠ 0)
    (e : ZMod N ≃ {p : ℕ // p ∈ n.primeFactors})
    (level : ℕ) (χ : DirichletCharacter ℂ level) :
    Real.log 2 * ‖exponentVector N (fun i => n.factorization (e i).1)‖ ^ 2 ≤
      Real.log (n : ℝ) := by
  rw [← factorization_height_energy N n hn e level χ,
    diagonal_exponent_energy, exponentVector_norm_sq, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  have hp := Nat.prime_of_mem_primeFactors (e i).2
  have hl : Real.log 2 ≤ Real.log ((e i).1 : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hp.two_le)
  rw [factorPotential_eq_log]
  exact mul_le_mul_of_nonneg_right hl (by positivity)

theorem actual_factorization_hopping_budget (n : ℕ) (hn : n ≠ 0)
    (e : ZMod N ≃ {p : ℕ // p ∈ n.primeFactors})
    (level : ℕ) (χ : DirichletCharacter ℂ level) (t : ℝ) :
    |hamiltonianEnergy N t (factorPotential N n e level χ)
        (exponentVector N (fun i => n.factorization (e i).1)) - Real.log (n : ℝ)| ≤
      2 * |t| * (Real.log (n : ℝ) / Real.log 2) := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hb : ‖exponentVector N (fun i => n.factorization (e i).1)‖ ^ 2 ≤
      Real.log (n : ℝ) / Real.log 2 := by
    apply (le_div_iff₀ hl).mpr
    simpa only [mul_comm] using factorization_vector_norm_budget N n hn e level χ
  conv_lhs => rw [← factorization_height_energy N n hn e level χ]
  have he := energy_hopping_change_le N t 0 (factorPotential N n e level χ)
    (exponentVector N (fun i => n.factorization (e i).1))
  simp only [sub_zero] at he
  exact he.trans (mul_le_mul_of_nonneg_left hb (by positivity))

end GRWTSK.NumberTheory.ABC.FactorizationHoppingBudget
