# Complete source: GRWTSK.NumberTheory.Prime.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6783b38f132cd19e7671e82c1402f824496b443e` · SHA-256 `eb90a4decd0e5142e6117a51d963224991bfa1ee4ae895cf94a750c94e3fb894`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.FirstPrime

-- The expected type is specified separately from the implementation.
example : Nat.Prime 2 ∧ ∀ p : ℕ, Nat.Prime p → 2 ≤ p :=
  GRWTSK.NumberTheory.two_is_first_prime
example : Nat.Prime 2 := GRWTSK.NumberTheory.two_is_first_prime.1
example (p : ℕ) (hp : Nat.Prime p) : 2 ≤ p :=
  GRWTSK.NumberTheory.two_is_first_prime.2 p hp
-- Independent concrete refutation of a purported universal lower bound of three.
example (h : ∀ p : ℕ, Nat.Prime p → 3 ≤ p) : False := by
  have h32 : 3 ≤ 2 := h 2 Nat.prime_two
  exact (by decide : ¬ (3 ≤ 2)) h32

#check GRWTSK.NumberTheory.two_is_first_prime
#print axioms Nat.prime_two
#print axioms Nat.Prime.two_le
#print axioms GRWTSK.NumberTheory.two_is_first_prime
```
