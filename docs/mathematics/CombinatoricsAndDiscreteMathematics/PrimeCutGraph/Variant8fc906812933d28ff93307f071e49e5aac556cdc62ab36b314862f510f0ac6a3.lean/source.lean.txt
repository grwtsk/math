import Mathematics.SemiLocalDefect.PrimeUniverse
import Mathlib.Data.Finset.Card

/-!
# Finite prime-cut insertion

One edge inserts one registered finite prime.  The archimedean anchor remains
present because it is structural rather than a mutable finite coordinate.
-/

namespace Mathematics.SemiLocalDefect

def AnchoredPrimeCut.insertPrime
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime)
    (prime_registered : prime ∈ cut.primeUniverse.primes) :
    AnchoredPrimeCut Prime where
  primeUniverse := cut.primeUniverse
  cutId := cut.cutId ++ "+prime"
  primes := insert prime cut.primes
  subset_universe :=
    Finset.insert_subset prime_registered cut.subset_universe

theorem insertPrime_preserves_archimedean_anchor
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime)
    (prime_registered : prime ∈ cut.primeUniverse.primes) :
    (cut.insertPrime prime prime_registered).contains
      (.archimedean : Place Prime) :=
  archimedean_anchor_present _

theorem insertPrime_finite_places
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime)
    (prime_registered : prime ∈ cut.primeUniverse.primes) :
    (cut.insertPrime prime prime_registered).primes =
      insert prime cut.primes := by
  simp [AnchoredPrimeCut.insertPrime]

theorem insertPrime_card
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime)
    (prime_registered : prime ∈ cut.primeUniverse.primes)
    (new_prime : prime ∉ cut.primes) :
    (cut.insertPrime prime prime_registered).primes.card =
      cut.primes.card + 1 := by
  simpa [AnchoredPrimeCut.insertPrime] using
    Finset.card_insert_of_notMem new_prime

end Mathematics.SemiLocalDefect
