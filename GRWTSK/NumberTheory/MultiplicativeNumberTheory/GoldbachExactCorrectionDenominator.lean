/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachExcludedMassSupportBound

set_option autoImplicit false
noncomputable section

/-! Exact nonnegative correction increases a supplied positive denominator.
The complete regular/interior error remains. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachExactCorrectionDenominator
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachSieveCorrectedEvenSource
open GoldbachExcludedMassSupportBound

theorem corrected_denominator_square_contraction (r B E : ℝ) (hB : 0<B) (hE : 0≤E) :
    (r/(B+2*E))^2≤(r/B)^2 := by
  rw [div_pow,div_pow]
  apply div_le_div_of_nonneg_left (sq_nonneg r) (sq_pos_of_pos hB)
  nlinarith

theorem actual_corrected_error_contraction (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0)
    (b β : ℝ) (hB : 0<b+2*β) :
    (goldbachLogMass N/(b+2*(β+excludedMass S X N))-1)^2 ≤
      ((truncatedOddMass X N-b+2*(regularMass S X N-β))/(b+2*β))^2 := by
  have hE := excluded_mass_nonneg S X N
  have hD : 0<b+2*(β+excludedMass S X N) := by linarith
  rw [actual_corrected_normalized_error S X N hprime hSX hSN hNX hN he b β (ne_of_gt hD)]
  have hh := corrected_denominator_square_contraction
    (truncatedOddMass X N-b+2*(regularMass S X N-β))
    (b+2*β) (excludedMass S X N) hB hE
  convert hh using 1 <;> ring

/- The exact source correction can only improve this squared normalized
error for fixed centered numerator. Predicting or omitting the correction
would change that numerator. Neither baseline positivity nor a strict
regular/interior error bound is supplied by this denominator comparison. -/
end GRWTSK.NumberTheory.Primes.GoldbachExactCorrectionDenominator
