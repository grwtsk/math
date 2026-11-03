/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachSurvivorFailureCrossMoment

set_option autoImplicit false
noncomputable section

/-! Exact forecast-centered full source margin; forecasts are not suppliers.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachCenteredFailureMargin
open GoldbachTruncatedOddAggregate GoldbachSieveCorrectedEvenSource
open GoldbachActualSurvivorDeficit GoldbachFullSurvivorDeficitMargin
open GoldbachDisjointSurvivorFailureSectors GoldbachSurvivorFailureCrossMoment

def failureForecastMargin (S : Finset ℕ) (X N : ℕ) (a b : ℝ) : ℝ :=
  survivorMass S X N+excludedMass S X N+truncatedOddMass X N/2-a-b

theorem actual_centered_failure_margin (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0)
    (a b : ℝ) :
    (∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p+q=N) ↔
      (leftFailureMass S X N-a)+(rightFailureMass S X N-b)<
        failureForecastMargin S X N a b := by
  rw [actual_full_target_deficit_margin S X N hprime hSX hSN hNX hN he,
    actual_failure_mass_split]
  unfold failureForecastMargin leftFailureMass rightFailureMass
  constructor <;> intro h <;> linarith

theorem actual_centered_failure_square_supplier (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0)
    (a b : ℝ) (hmargin : 0<failureForecastMargin S X N a b)
    (herror : ((leftFailureMass S X N-a)+(rightFailureMass S X N-b))^2<
      (failureForecastMargin S X N a b)^2) :
    ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p+q=N := by
  apply (actual_centered_failure_margin S X N hprime hSX hSN hNX hN he a b).mpr
  nlinarith [sq_nonneg ((leftFailureMass S X N-a)+(rightFailureMass S X N-b)-
    failureForecastMargin S X N a b)]

/- The signed sum is the exact criterion; the squared bound is stronger
and merely sufficient. Squaring retains the cross product of the two
centered actual sectors. Positive forecast margin and strict error control
are UNSUPPLIED, and choosing forecasts after the target supplies no uniform
arithmetic theorem. The full interior and exact excluded mass remain. -/
end GRWTSK.NumberTheory.Primes.GoldbachCenteredFailureMargin
