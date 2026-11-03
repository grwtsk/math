/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachBoundaryForecastMoment
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachTargetNormalizedMargin

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full-source finite-window consumer paying separate interior and boundary
error costs. No arithmetic budget supplier is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachBoundaryInteriorBudget
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachFullCutoffBoundarySplit
open GoldbachBoundaryForecastMoment GoldbachTargetNormalizedMargin

theorem full_error_le_split_budget (X N : ℕ) (hNX : N ≤ 2*X)
    (hN : 4<N) (he : N%2=0) (b β : ℝ) (hD : b+2*β ≠ 0) :
    (goldbachLogMass N/(b+2*β)-1)^2 ≤
      2*((truncatedOddMass X N-b)/(b+2*β))^2+
      8*((firstBoundaryMass X N-β)/(b+2*β))^2 := by
  rw [normalized_forecast_error X N hNX hN he b β hD]
  nlinarith [sq_nonneg ((truncatedOddMass X N-b)/(b+2*β)-
    2*((firstBoundaryMass X N-β)/(b+2*β)))]

theorem finite_prime_pairs_of_split_budget (X : ℕ) (W : Finset ℕ)
    (hW : ∀ N ∈ W, N ≤ 2*X ∧ 4<N ∧ N%2=0) (b β : ℕ → ℝ)
    (hD : ∀ N ∈ W, 0 < b N+2*β N)
    (hbudget : (∑ N ∈ W,
      2*((truncatedOddMass X N-b N)/(b N+2*β N))^2+
      8*((firstBoundaryMass X N-β N)/(b N+2*β N))^2)<1) :
    ∀ N ∈ W, ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p+q=N := by
  apply prime_pairs_of_normalized_error W (fun N => b N+2*β N) hD
  apply lt_of_le_of_lt _ hbudget
  apply Finset.sum_le_sum
  intro N hN
  exact full_error_le_split_budget X N (hW N hN).1 (hW N hN).2.1
    (hW N hN).2.2 (b N) (β N) (ne_of_gt (hD N hN))

/- This conclusion stays finite. An unrestricted claim needs actual
positive baselines and the strict full budget for a covering window family. -/
end GRWTSK.NumberTheory.Primes.GoldbachBoundaryInteriorBudget
