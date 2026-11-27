/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean elaboration, axiom audit and fresh replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.HierarchicalPrimeDirectory16
import Mathlib.NumberTheory.PrimeCounting
import GRWTSK.NumberTheory.FactorMemoCore

/-!
# Source-identified predecessor/current/successor prime knots and factor memo

Arithmetic prime identity is indexed by the unbounded natural index
k, through the ACTUAL Mathlib `Nat.nth Nat.Prime k`. The successor
always exists mathematically, even if the next knot is not yet
materialized in a tile. The previous knot is absent only at k=0.

Atlas placement is a separate, versioned map for the first 4096 prime
identities. Ordinal shortest-path length is not Hamming distance.

An indexed memo returns only proof-carrying factorizations: every
listed divisor is mathematically prime and the product is exactly
the original input. It can cache verified work but cannot infer a
prime from missing finite coverage.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotFactorMemo

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HierarchicalPrimeDirectory16

/-- Genuine unbounded nth-prime identity, independent of placement. -/
def primeAt (k : ℕ) : ℕ := Nat.nth Nat.Prime k

/-- Mathematical predecessor; only 2 (ordinal 0) has no predecessor. -/
def previousPrime : ℕ → Option ℕ
  | 0 => none
  | k + 1 => some (primeAt k)

/-- Every mathematical prime ordinal has a successor. -/
def nextPrime (k : ℕ) : ℕ := primeAt (k + 1)

/-- The user's prime knot is an exact triple, not a free-form JS object. -/
structure PrimeTriplet where
  ordinal : ℕ
  previous : Option ℕ
  current : ℕ
  next : ℕ
  previous_eq : previous = previousPrime ordinal
  current_eq : current = primeAt ordinal
  next_eq : next = nextPrime ordinal

/-- A canonical prime knot exists at every arithmetic ordinal. -/
def knot (k : ℕ) : PrimeTriplet where
  ordinal := k
  previous := previousPrime k
  current := primeAt k
  next := nextPrime k
  previous_eq := rfl
  current_eq := rfl
  next_eq := rfl

theorem primeAt_prime (k : ℕ) : Nat.Prime (primeAt k) := by
  simpa only [primeAt] using Nat.prime_nth_prime k

theorem firstPrime : primeAt 0 = 2 := by
  simp [primeAt]

theorem firstPrime_no_previous : previousPrime 0 = none := rfl

theorem previous_of_successor (k : ℕ) :
    previousPrime (k + 1) = some (primeAt k) := rfl

theorem nextPrime_prime (k : ℕ) : Nat.Prime (nextPrime k) :=
  primeAt_prime (k + 1)

/-- A genuinely ordered knot: each next prime is strictly larger. -/
theorem primeAt_lt_next (k : ℕ) : primeAt k < nextPrime k := by
  exact Nat.nth_strictMono Nat.infinite_setOfPred_prime (Nat.lt_succ_self k)

theorem primeAt_injective : Function.Injective primeAt :=
  (Nat.nth_strictMono Nat.infinite_setOfPred_prime).injective

theorem knot_previous (k : ℕ) :
    (knot (k + 1)).previous = some (primeAt k) := rfl

theorem knot_current_prime (k : ℕ) :
    Nat.Prime (knot k).current := primeAt_prime k

theorem knot_next_prime (k : ℕ) :
    Nat.Prime (knot k).next := nextPrime_prime k

/-- Exact separation of arithmetic prime identity and atlas coordinates. -/
def atlasKnot (P : PlacedAtlas) (i : Fin 4096) :
    PrimeTriplet × PrimeAddress :=
  (knot i.val, locate P i false)

theorem atlasKnot_ordinal (P : PlacedAtlas) (i : Fin 4096) :
    (atlasKnot P i).1.ordinal = i.val := rfl

theorem atlasKnot_location_id (P : PlacedAtlas) (i : Fin 4096) :
    (atlasKnot P i).2.primeIndex = i := rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotFactorMemo
