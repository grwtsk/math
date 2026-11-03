/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Chebyshev estimates by Alastair Irving, Terry Tao and Ruben Van de Velde
retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.GoldbachMangoldtContaminationBound
import Mathlib.NumberTheory.Chebyshev

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Explicit Chebyshev bound for actual prime-power contamination

The complete proper-power weight equals psi(N)-theta(N), including
the zero endpoint (whose contribution is zero). The imported estimate
gives contamination <= 4 sqrt(N) log(N) log(N+1) for N>=1.
No uniform binary Mangoldt correlation lower bound is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachChebyshevContamination
open GoldbachWeighted GoldbachMangoldtContamination GoldbachMangoldtContaminationBound

theorem properPowerMass_eq_chebyshev_difference (N : ℕ) :
    properPowerMass N = Chebyshev.psi (N : ℝ) - Chebyshev.theta (N : ℝ) := by
  have hi : Finset.Ioc 0 N ⊆ Finset.range (N + 1) := by
    intro n hn
    exact Finset.mem_range.mpr (by have := (Finset.mem_Ioc.mp hn).2; omega)
  have hs : (∑ n ∈ Finset.Ioc 0 N, properPowerWeight n) = properPowerMass N := by
    apply Finset.sum_subset hi
    intro n hn hnot
    have hzero : n = 0 := by
      have hnN : n < N + 1 := Finset.mem_range.mp hn
      have hni : ¬ (0 < n ∧ n ≤ N) := by
        simpa only [Finset.mem_Ioc] using hnot
      omega
    subst n
    simp [properPowerWeight, primeLogWeight, ArithmeticFunction.vonMangoldt_apply,
      not_isPrimePow_zero]
  rw [← hs, Chebyshev.psi, Chebyshev.theta, Nat.floor_natCast,
    Finset.sum_filter, ← Finset.sum_sub_distrib]
  rfl

theorem contamination_le_explicit_sqrt_bound (N : ℕ) (hN : 1 ≤ N) :
    contamination N ≤ 4 * Real.sqrt (N : ℝ) * Real.log (N : ℝ) *
      Real.log ((N : ℝ) + 1) := by
  have hlog : 0 ≤ 2 * Real.log ((N : ℝ) + 1) := by positivity
  calc
    contamination N ≤ 2 * Real.log ((N : ℝ) + 1) * properPowerMass N :=
      contamination_le_properPowerMass N
    _ = 2 * Real.log ((N : ℝ) + 1) *
        (Chebyshev.psi (N : ℝ) - Chebyshev.theta (N : ℝ)) := by
      rw [properPowerMass_eq_chebyshev_difference]
    _ ≤ 2 * Real.log ((N : ℝ) + 1) *
        (2 * Real.sqrt (N : ℝ) * Real.log (N : ℝ)) :=
      mul_le_mul_of_nonneg_left (Chebyshev.psi_sub_theta_le (by exact_mod_cast hN)) hlog
    _ = _ := by ring

theorem prime_pair_of_explicit_correlation_margin (N : ℕ) (hN : 1 ≤ N)
    (h : 4 * Real.sqrt (N : ℝ) * Real.log (N : ℝ) *
      Real.log ((N : ℝ) + 1) < mangoldtMass N) :
    ∃ p q : ℕ, p.Prime ∧ q.Prime ∧ p + q = N :=
  prime_pair_of_mass_exceeds_contamination N
    ((contamination_le_explicit_sqrt_bound N hN).trans_lt h)

end GRWTSK.NumberTheory.Primes.GoldbachChebyshevContamination
