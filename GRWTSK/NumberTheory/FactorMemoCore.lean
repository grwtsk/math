/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Data.Nat.Factors

/-!
# Verified factor certificates, cursors and memo lookups

Extracted from `PrimeKnotFactorMemo.lean` at
`1f0dd586be640ebe72642977bba7acd0e1aeb7c3`, blob
`ba51828c57e38d059a771470880c2aa111ddcd5f`. The original module imports
this file. The declarations retain their names and arithmetic meanings so the
certificate checker can consume them independently of the finite prime atlas.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotFactorMemo

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
