/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachAllCutoffWindowBoundary

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Target-dependent interior and boundary forecasts with exact signed
cross term. Forecast positivity and small error are not supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachBoundaryForecastMoment
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachFullCutoffBoundarySplit
open GoldbachAllCutoffWindowBoundary

theorem normalized_forecast_error (X N : ℕ) (hNX : N ≤ 2*X)
    (hN : 4<N) (he : N%2=0) (b β : ℝ) (hD : b+2*β ≠ 0) :
    goldbachLogMass N/(b+2*β)-1 =
      (truncatedOddMass X N-b)/(b+2*β)+
        2*(firstBoundaryMass X N-β)/(b+2*β) := by
  rw [full_even_source_any_cutoff X N hNX hN he]
  field_simp [hD]
  <;> ring

theorem weighted_window_forecast_moment (X : ℕ) (W : Finset ℕ)
    (hW : ∀ N ∈ W, N ≤ 2*X ∧ 4<N ∧ N%2=0)
    (b β w : ℕ → ℝ) (hD : ∀ N ∈ W, b N+2*β N ≠ 0) :
    (∑ N ∈ W, w N*(goldbachLogMass N/(b N+2*β N)-1)^2) =
      (∑ N ∈ W, w N*((truncatedOddMass X N-b N)/(b N+2*β N))^2)+
      4*(∑ N ∈ W, w N*((truncatedOddMass X N-b N)/(b N+2*β N))*
        ((firstBoundaryMass X N-β N)/(b N+2*β N)))+
      4*(∑ N ∈ W, w N*((firstBoundaryMass X N-β N)/(b N+2*β N))^2) := by
  simp only [Finset.mul_sum,← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro N hN
  rw [normalized_forecast_error X N (hW N hN).1 (hW N hN).2.1
    (hW N hN).2.2 (b N) (β N) (hD N hN)]
  ring

/- Even nonnegative weights do not fix the sign of the cross term.
A boundary forecast is not an arithmetic supplier. Per-target positivity
still requires a strictly positive baseline and adequate full error bounds. -/
end GRWTSK.NumberTheory.Primes.GoldbachBoundaryForecastMoment
