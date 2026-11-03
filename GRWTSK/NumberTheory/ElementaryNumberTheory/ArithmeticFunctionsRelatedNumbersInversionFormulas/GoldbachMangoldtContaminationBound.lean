/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.GoldbachMangoldtContamination
import Mathlib.Algebra.BigOperators.Intervals

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# A source-bound proper-power correction estimate

The correction is at most twice log(N+1) times the total actual
proper-power weight through N. This is a quantitative upper bound,
not an all-even correlation lower bound. Endpoints are retained.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachMangoldtContaminationBound
open GoldbachWeighted GoldbachMangoldtContamination

def properPowerMass (N : ℕ) : ℝ := ∑ n ∈ Finset.range (N + 1), properPowerWeight n

theorem mangoldt_le_log_cutoff (N n : ℕ) (hn : n ≤ N) :
    ArithmeticFunction.vonMangoldt n ≤ Real.log ((N : ℝ) + 1) := by
  by_cases hz : n = 0
  · subst n
    simp only [ArithmeticFunction.vonMangoldt_apply, not_isPrimePow_zero, if_false]
    exact Real.log_nonneg (by positivity)
  · exact ArithmeticFunction.vonMangoldt_le_log.trans
      (Real.log_le_log (by exact_mod_cast Nat.pos_of_ne_zero hz)
        (by exact_mod_cast (show n ≤ N + 1 by omega)))

theorem contamination_le_properPowerMass (N : ℕ) :
    contamination N ≤ 2 * Real.log ((N : ℝ) + 1) * properPowerMass N := by
  let L := Real.log ((N : ℝ) + 1)
  have hb : contamination N ≤ ∑ n ∈ Finset.range (N + 1),
      L * (properPowerWeight n + properPowerWeight (N - n)) := by
    apply Finset.sum_le_sum
    intro n hn
    have hnN : n ≤ N := by simpa only [Finset.mem_range, Nat.lt_succ_iff] using hn
    have hλ := mangoldt_le_log_cutoff N n hnN
    have hλ' := mangoldt_le_log_cutoff N (N - n) (Nat.sub_le _ _)
    have hr := properPowerWeight_nonneg n
    have hr' := properPowerWeight_nonneg (N - n)
    have hp := primeLogWeight_nonneg n
    have hp' := primeLogWeight_nonneg (N - n)
    have h1 := mul_nonneg hr (sub_nonneg.mpr hλ')
    have h2 := mul_nonneg hr' (sub_nonneg.mpr hλ)
    unfold properPowerWeight at hr hr' h1 h2 ⊢
    dsimp [L] at *
    nlinarith [mul_nonneg hr hr']
  have href : (∑ n ∈ Finset.range (N + 1), properPowerWeight (N - n)) =
      properPowerMass N := by
    simpa [properPowerMass] using Finset.sum_range_reflect properPowerWeight (N + 1)
  calc
    contamination N ≤ _ := hb
    _ = L * ((∑ n ∈ Finset.range (N + 1), properPowerWeight n) +
        ∑ n ∈ Finset.range (N + 1), properPowerWeight (N - n)) := by
      rw [← Finset.mul_sum, Finset.sum_add_distrib]
    _ = 2 * Real.log ((N : ℝ) + 1) * properPowerMass N := by
      rw [href]
      change L * (properPowerMass N + properPowerMass N) = _
      dsimp [L]
      ring

theorem prime_pair_of_correlation_lower_bound (N : ℕ)
    (h : 2 * Real.log ((N : ℝ) + 1) * properPowerMass N < mangoldtMass N) :
    ∃ p q : ℕ, p.Prime ∧ q.Prime ∧ p + q = N :=
  prime_pair_of_mass_exceeds_contamination N
    ((contamination_le_properPowerMass N).trans_lt h)

end GRWTSK.NumberTheory.Primes.GoldbachMangoldtContaminationBound
