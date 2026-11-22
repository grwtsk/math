/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean elaboration, axiom audit and fresh replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.HierarchicalPrimeDirectory16
import Mathlib.NumberTheory.PrimeCounting

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

/-- A factor certificate is a genuine exact product of actual primes. -/
structure FactorCertificate (n : ℕ) where
  factors : List ℕ
  factors_prime : ∀ p ∈ factors, Nat.Prime p
  factors_product : factors.prod = n

/-- A shared memo is an interface, not an unchecked raw prime object. -/
structure VerifiedFactorMemo where
  lookup : (n : ℕ) → Option (FactorCertificate n)

/-- Cached certificates remain correct by type, including after reuse. -/
theorem verifiedMemo_sound (M : VerifiedFactorMemo) (n : ℕ)
    (cert : FactorCertificate n)
    (_h : M.lookup n = some cert) : cert.factors.prod = n :=
  cert.factors_product

theorem verifiedMemo_all_prime (M : VerifiedFactorMemo) (n : ℕ)
    (cert : FactorCertificate n) (_h : M.lookup n = some cert)
    (p : ℕ) (hp : p ∈ cert.factors) : Nat.Prime p :=
  cert.factors_prime p hp

/-- An empty memo is valid but offers no factorization information. -/
def VerifiedFactorMemo.empty : VerifiedFactorMemo where
  lookup := fun _ => none

theorem empty_memo_returns_none (n : ℕ) :
    VerifiedFactorMemo.empty.lookup n = none := rfl

/-- A certified factorization of the multiplicative identity. -/
def factorOne : FactorCertificate 1 where
  factors := []
  factors_prime := by simp
  factors_product := by simp

/-- A verified factor may be attached to a verified factorization
without a search or an unproved primality assumption. -/
def FactorCertificate.prepend {n : ℕ}
    (C : FactorCertificate n) (p : ℕ) (hp : Nat.Prime p) :
    FactorCertificate (p * n) where
  factors := p :: C.factors
  factors_prime := by
    intro q hq
    rcases List.mem_cons.mp hq with h | h
    · simpa [h] using hp
    · exact C.factors_prime q h
  factors_product := by
    simp [C.factors_product]

/-- A partial recursive factoring trace retains its original number.
The residual may not be declared prime until it is actually proved. -/
structure FactorCursor (n : ℕ) where
  factors : List ℕ
  residual : ℕ
  factors_prime : ∀ p ∈ factors, Nat.Prime p
  product_residual : factors.prod * residual = n

/-- Initial state before testing any prime. -/
def FactorCursor.start (n : ℕ) : FactorCursor n where
  factors := []
  residual := n
  factors_prime := by simp
  product_residual := by simp

/-- A certified factoring step records the exact multiplicative equality. -/
def FactorCursor.step {n : ℕ} (C : FactorCursor n)
    (p q : ℕ) (hp : Nat.Prime p) (hfactor : p * q = C.residual) :
    FactorCursor n where
  factors := C.factors ++ [p]
  residual := q
  factors_prime := by
    intro z hz
    rcases List.mem_append.mp hz with h | h
    · exact C.factors_prime z h
    · have heq : z = p := by simpa using h
      simpa [heq] using hp
  product_residual := by
    simp only [List.prod_append, List.prod_singleton]
    calc
      (C.factors.prod * p) * q = C.factors.prod * (p * q) := by ac_rfl
      _ = C.factors.prod * C.residual := by rw [hfactor]
      _ = n := C.product_residual

/-- A complete state yields a genuine certificate only at residual 1. -/
def FactorCursor.finish {n : ℕ} (C : FactorCursor n)
    (h : C.residual = 1) : FactorCertificate n where
  factors := C.factors
  factors_prime := C.factors_prime
  factors_product := by
    calc
      C.factors.prod = C.factors.prod * 1 := by simp
      _ = C.factors.prod * C.residual := by rw [h]
      _ = n := C.product_residual

/-- A cached certificate cannot change its original integer. -/
theorem factorCursor_finished_product {n : ℕ}
    (C : FactorCursor n) (h : C.residual = 1) :
    (C.finish h).factors.prod = n :=
  (C.finish h).factors_product

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotFactorMemo
