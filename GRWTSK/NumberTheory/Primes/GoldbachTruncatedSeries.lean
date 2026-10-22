/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachLocalFactors
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite Goldbach singular-series truncations

This module packages the exact prime-modulus factors from
`GoldbachLocalFactors` into finite cutoff products. The factor at two is
retained separately, and the remaining odd-prime product is split into its
universal and target-divisor components.

Every product here is finite. No infinite product, convergence theorem,
quantitative tail, major-arc approximation, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachLocalFactors

/-- All prime moduli at most the declared cutoff. -/
def goldbachPrimeCutoff (Q : ℕ) : Finset ℕ :=
  (Finset.range (Q + 1)).filter Nat.Prime

/-- The odd-prime portion of the cutoff, represented by removing two. -/
def goldbachOddPrimeCutoff (Q : ℕ) : Finset ℕ :=
  (goldbachPrimeCutoff Q).erase 2

/-- Exact membership in the prime cutoff. -/
theorem mem_goldbachPrimeCutoff {Q p : ℕ} :
    p ∈ goldbachPrimeCutoff Q ↔ Nat.Prime p ∧ p ≤ Q := by
  rw [goldbachPrimeCutoff, Finset.mem_filter, Finset.mem_range]
  constructor
  · rintro ⟨hpQ, hp⟩
    exact ⟨hp, Nat.lt_succ_iff.mp hpQ⟩
  · rintro ⟨hp, hpQ⟩
    exact ⟨Nat.lt_succ_iff.mpr hpQ, hp⟩

/-- Exact membership in the odd-prime cutoff. -/
theorem mem_goldbachOddPrimeCutoff {Q p : ℕ} :
    p ∈ goldbachOddPrimeCutoff Q ↔
      Nat.Prime p ∧ p ≤ Q ∧ p ≠ 2 := by
  rw [goldbachOddPrimeCutoff, Finset.mem_erase, mem_goldbachPrimeCutoff]
  aesop

/-- The modulus two occurs in every cutoff at least two. -/
theorem two_mem_goldbachPrimeCutoff {Q : ℕ} (hQ : 2 ≤ Q) :
    2 ∈ goldbachPrimeCutoff Q := by
  exact mem_goldbachPrimeCutoff.mpr ⟨Nat.prime_two, hQ⟩

/-- Every member of the odd cutoff is prime. -/
theorem prime_of_mem_goldbachOddPrimeCutoff {Q p : ℕ}
    (hp : p ∈ goldbachOddPrimeCutoff Q) : Nat.Prime p :=
  (mem_goldbachOddPrimeCutoff.mp hp).1

/-- The odd cutoff contains no modulus two. -/
theorem ne_two_of_mem_goldbachOddPrimeCutoff {Q p : ℕ}
    (hp : p ∈ goldbachOddPrimeCutoff Q) : p ≠ 2 :=
  (mem_goldbachOddPrimeCutoff.mp hp).2.2

/-- The finite universal odd-prime core through `Q`. -/
def goldbachTruncatedUniversalCore (Q : ℕ) : ℚ :=
  ∏ p ∈ goldbachOddPrimeCutoff Q, goldbachUniversalOddFactor p

/-- The finite target-dependent divisor correction through `Q`. -/
def goldbachTruncatedDivisorCorrection (Q N : ℕ) : ℚ :=
  ∏ p ∈ goldbachOddPrimeCutoff Q, goldbachDivisorCorrection p N

/-- The finite two-normalized local product through the odd-prime cutoff `Q`.
For `Q ≥ 2`, this equals the product over all primes at most `Q`. -/
def goldbachTruncatedSeries (Q N : ℕ) : ℚ :=
  goldbachPrimeLocalFactor 2 N *
    finiteGoldbachLocalProduct (goldbachOddPrimeCutoff Q) N

/-- Once the cutoff contains two, the two-normalized definition is exactly the
finite product over all primes at most the cutoff. -/
theorem goldbachTruncatedSeries_eq_cutoffProduct {Q N : ℕ}
    (hQ : 2 ≤ Q) :
    goldbachTruncatedSeries Q N =
      finiteGoldbachLocalProduct (goldbachPrimeCutoff Q) N := by
  have h2 : 2 ∈ goldbachPrimeCutoff Q :=
    two_mem_goldbachPrimeCutoff hQ
  simpa [goldbachTruncatedSeries, goldbachOddPrimeCutoff,
    finiteGoldbachLocalProduct] using
    (Finset.mul_prod_erase (goldbachPrimeCutoff Q)
      (fun p => goldbachPrimeLocalFactor p N) h2)

/-- The finite truncation splits exactly into the modulus-two factor, the
universal odd-prime core, and the target-divisor correction. -/
theorem goldbachTruncatedSeries_factorization (Q N : ℕ) :
    goldbachTruncatedSeries Q N =
      goldbachPrimeLocalFactor 2 N *
        goldbachTruncatedUniversalCore Q *
        goldbachTruncatedDivisorCorrection Q N := by
  have hfactor :=
    finiteGoldbachLocalProduct_factorization
      (P := goldbachOddPrimeCutoff Q) (N := N)
      (fun p hp => prime_of_mem_goldbachOddPrimeCutoff hp)
      (fun p hp => ne_two_of_mem_goldbachOddPrimeCutoff hp)
  unfold goldbachTruncatedSeries goldbachTruncatedUniversalCore
    goldbachTruncatedDivisorCorrection
  rw [hfactor]
  ring

/-- On an even target, the modulus-two contribution is exactly two. -/
theorem goldbachTruncatedSeries_eq_two_mul {Q N : ℕ}
    (hN : Even N) :
    goldbachTruncatedSeries Q N =
      2 * goldbachTruncatedUniversalCore Q *
        goldbachTruncatedDivisorCorrection Q N := by
  rw [goldbachTruncatedSeries_factorization,
    goldbachPrimeLocalFactor_two, if_pos hN]

/-- Every finite truncation is positive on an even target. This is local
admissibility only. -/
theorem goldbachTruncatedSeries_pos {Q N : ℕ}
    (hN : Even N) :
    0 < goldbachTruncatedSeries Q N := by
  unfold goldbachTruncatedSeries
  apply mul_pos
  · rw [goldbachPrimeLocalFactor_two, if_pos hN]
    norm_num
  · exact finiteGoldbachLocalProduct_pos
      (fun p hp => prime_of_mem_goldbachOddPrimeCutoff hp) hN

/-- Every finite truncation vanishes on an odd target because the factor at two
is retained. -/
theorem goldbachTruncatedSeries_eq_zero_of_not_even {Q N : ℕ}
    (hN : ¬ Even N) :
    goldbachTruncatedSeries Q N = 0 := by
  unfold goldbachTruncatedSeries
  rw [goldbachPrimeLocalFactor_two, if_neg hN, zero_mul]

end GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries
