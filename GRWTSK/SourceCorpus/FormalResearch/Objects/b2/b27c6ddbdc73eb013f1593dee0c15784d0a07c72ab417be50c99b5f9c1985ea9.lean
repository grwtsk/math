import FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector
import Mathlib.Data.Nat.Prime.Int

set_option autoImplicit false
namespace HigherPowerSourceScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource
noncomputable section

/-- Prime powers of exponent at least three, with no zero-weight non-prime indices included. -/
def IsHigherPrimePower (n : ℕ) : Prop := ∃ p k : ℕ, p.Prime ∧ 3 ≤ k ∧ p ^ k = n

/-- The exact higher-power restriction of the source's original strict cutoff. -/
def higherPrimePowerIndices (A : ℝ) : Finset ℕ := by
  classical
  exact (Cutoff.primeIndices A).filter IsHigherPrimePower

/-- The original source weights and normalization restricted to the higher-power sector. -/
def higherPrimePowerContribution (A : ℝ) : ℝ :=
  ∑ n ∈ higherPrimePowerIndices A,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log n)

/-- Uniqueness of positive-exponent prime-power representations is proved arithmetically. -/
theorem prime_power_representation_unique (p q k l : ℕ)
    (hp : p.Prime) (hq : q.Prime) (hk : k ≠ 0) (hl : l ≠ 0)
    (h : p ^ k = q ^ l) : p = q ∧ k = l :=
  hp.pow_inj' hq hk hl h

/-- Prime squares and powers of exponent at least three are disjoint. -/
theorem primeSquare_not_higher (n : ℕ) (hs : IsPrimeSquare n) : ¬IsHigherPrimePower n := by
  rintro ⟨q, k, hq, hk, hqn⟩
  obtain ⟨p, hp, hpn⟩ := hs
  have h := prime_power_representation_unique p q 2 k hp hq (by norm_num) (by omega)
    (hpn.trans hqn.symm)
  omega

/-- A genuine prime square is composite. -/
theorem primeSquare_not_prime (n : ℕ) (hs : IsPrimeSquare n) : ¬n.Prime := by
  obtain ⟨p, _, rfl⟩ := hs
  exact Nat.Prime.not_prime_pow (by norm_num)

/-- Every higher prime power is composite. -/
theorem higher_not_prime (n : ℕ) (hh : IsHigherPrimePower n) : ¬n.Prime := by
  obtain ⟨p, k, _, hk, rfl⟩ := hh
  exact Nat.Prime.not_prime_pow (by omega)

/-- The non-prime support of Mangoldt splits into exactly the square and higher sectors. -/
theorem nonprime_primePower_iff (n : ℕ) :
    (¬n.Prime ∧ IsPrimePow n) ↔ IsPrimeSquare n ∨ IsHigherPrimePower n := by
  constructor
  · rintro ⟨hn, p, k, hp, hk, hpn⟩
    have hkp : k ≠ 1 := by
      intro he
      rw [he, pow_one] at hpn
      exact hn (hpn ▸ hp.nat_prime)
    by_cases hk2 : k = 2
    · exact Or.inl ⟨p, hp.nat_prime, by simpa [hk2] using hpn⟩
    · exact Or.inr ⟨p, k, hp.nat_prime, by omega, hpn⟩
  · rintro (hs | hh)
    · refine ⟨primeSquare_not_prime n hs, ?_⟩
      obtain ⟨p, hp, hpn⟩ := hs
      exact ⟨p, 2, hp.prime, by norm_num, hpn⟩
    · refine ⟨higher_not_prime n hh, ?_⟩
      obtain ⟨p, k, hp, hk, hpn⟩ := hh
      exact ⟨p, k, hp.prime, by omega, hpn⟩

/-- Composite indices outside the two proper-power sectors have exactly zero Mangoldt weight. -/
theorem nonprime_weight_zero_of_outside (n : ℕ) (hn : ¬n.Prime)
    (hs : ¬IsPrimeSquare n) (hh : ¬IsHigherPrimePower n) :
    ArithmeticFunction.vonMangoldt n = 0 := by
  apply ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr
  intro hp
  exact (nonprime_primePower_iff n).mp ⟨hn, hp⟩ |>.elim hs hh

/-- The two exact source subindices are disjoint; no multiplicity is duplicated. -/
theorem primeSquare_higher_indices_disjoint (A : ℝ) :
    Disjoint (primeSquareIndices A) (higherPrimePowerIndices A) := by
  classical
  apply Finset.disjoint_left.mpr
  intro n hs hh
  exact primeSquare_not_higher n (Finset.mem_filter.mp hs).2 (Finset.mem_filter.mp hh).2

/-- Exact finite decomposition retains the original strict cutoff and every nonzero weight. -/
theorem properPrimePowerContribution_eq_square_add_higher (A : ℝ) :
    properPrimePowerContribution A = primeSquareContribution A + higherPrimePowerContribution A := by
  classical
  unfold properPrimePowerContribution primeSquareContribution higherPrimePowerContribution
  unfold primeSquareIndices higherPrimePowerIndices
  rw [Finset.sum_filter, Finset.sum_filter, Finset.sum_filter, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hs : IsPrimeSquare n
  · have hn := primeSquare_not_prime n hs
    have hh := primeSquare_not_higher n hs
    simp only [hs, hn, hh, not_false_eq_true, if_pos, if_false, add_zero]
  · by_cases hh : IsHigherPrimePower n
    · have hn := higher_not_prime n hh
      simp only [hs, hn, hh, not_false_eq_true, if_pos, if_false, zero_add]
    · by_cases hn : n.Prime
      · simp only [hs, hh, hn, not_true_eq_false, if_false, add_zero]
      · rw [nonprime_weight_zero_of_outside n hn hs hh]
        simp only [zero_div, zero_mul, ite_self, add_zero]

/-- The complete original prime-power term has exactly three arithmetic sectors. -/
theorem primePowerContribution_eq_prime_square_higher (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      PrimeSector.primeContribution A + primeSquareContribution A + higherPrimePowerContribution A := by
  rw [PrimeSector.prime_power_contribution_eq,
    properPrimePowerContribution_eq_square_add_higher]
  ring

/-- Prime two's cube belongs to the higher sector, rather than the square sector. -/
theorem eight_higher_not_square : IsHigherPrimePower 8 ∧ ¬IsPrimeSquare 8 := by
  have hh : IsHigherPrimePower 8 := ⟨2, 3, Nat.prime_two, le_rfl, by norm_num⟩
  exact ⟨hh, fun hs ↦ primeSquare_not_higher 8 hs hh⟩

/-- The original strict boundary at the cube of prime two is preserved exactly. -/
theorem eight_mem_higherPrimePowerIndices_iff (A : ℝ) :
    8 ∈ higherPrimePowerIndices A ↔ (8 : ℝ) < Real.exp (2 * A) := by
  classical
  simp only [higherPrimePowerIndices, Finset.mem_filter, Cutoff.mem_primeIndices_iff,
    eight_higher_not_square.1, and_true]
  norm_num

end
end HigherPowerSourceScratch

set_option autoImplicit false
section HigherPowerSourceExactStatements
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource
noncomputable section

open HigherPowerSourceScratch

example (n : ℕ) : IsHigherPrimePower n ↔ ∃ p k : ℕ, p.Prime ∧ 3 ≤ k ∧ p ^ k = n := Iff.rfl

example (A : ℝ) : higherPrimePowerIndices A =
    (by classical exact (Cutoff.primeIndices A).filter IsHigherPrimePower) := rfl

example (A : ℝ) : higherPrimePowerContribution A =
  ∑ n ∈ higherPrimePowerIndices A,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log n) := rfl

example (p q k l : ℕ)
    (hp : p.Prime) (hq : q.Prime) (hk : k ≠ 0) (hl : l ≠ 0)
    (h : p ^ k = q ^ l) : p = q ∧ k = l :=
  prime_power_representation_unique p q k l hp hq hk hl h

example (n : ℕ) (hs : IsPrimeSquare n) : ¬IsHigherPrimePower n :=
  primeSquare_not_higher n hs

example (n : ℕ) (hs : IsPrimeSquare n) : ¬n.Prime :=
  primeSquare_not_prime n hs

example (n : ℕ) (hh : IsHigherPrimePower n) : ¬n.Prime :=
  higher_not_prime n hh

example (n : ℕ) :
    (¬n.Prime ∧ IsPrimePow n) ↔ IsPrimeSquare n ∨ IsHigherPrimePower n :=
  nonprime_primePower_iff n

example (n : ℕ) (hn : ¬n.Prime)
    (hs : ¬IsPrimeSquare n) (hh : ¬IsHigherPrimePower n) :
    ArithmeticFunction.vonMangoldt n = 0 :=
  nonprime_weight_zero_of_outside n hn hs hh

example (A : ℝ) :
    Disjoint (primeSquareIndices A) (higherPrimePowerIndices A) :=
  primeSquare_higher_indices_disjoint A

example (A : ℝ) :
    properPrimePowerContribution A = primeSquareContribution A + higherPrimePowerContribution A :=
  properPrimePowerContribution_eq_square_add_higher A

example (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      PrimeSector.primeContribution A + primeSquareContribution A + higherPrimePowerContribution A :=
  primePowerContribution_eq_prime_square_higher A

example : IsHigherPrimePower 8 ∧ ¬IsPrimeSquare 8 :=
  eight_higher_not_square

example (A : ℝ) :
    8 ∈ higherPrimePowerIndices A ↔ (8 : ℝ) < Real.exp (2 * A) :=
  eight_mem_higherPrimePowerIndices_iff A

end
end HigherPowerSourceExactStatements
