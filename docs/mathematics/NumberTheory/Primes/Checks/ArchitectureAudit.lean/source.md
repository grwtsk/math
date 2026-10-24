# Complete source: GRWTSK.NumberTheory.Prime.Checks.ArchitectureAudit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb69693d1362dcc5ea5f6ca496190e5c434a07b0` · SHA-256 `44266c221b17af7e01219a5c18e6c79dd0b3d39777e61201a596e520c0fb2ac4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Prime.LeastPrime

-- Exact types frozen independently in the implementation packet.
example : Nat.Prime 2 ∧ ∀ p : ℕ, Nat.Prime p → 2 ≤ p :=
  GRWTSK.NumberTheory.two_is_first_prime
example (q : ℕ) (hq : Nat.Prime q)
    (hmin : ∀ p : ℕ, Nat.Prime p → q ≤ p) : q = 2 :=
  GRWTSK.NumberTheory.Prime.least_prime_eq_two hq hmin
example : (2 : ℕ) = 2 :=
  GRWTSK.NumberTheory.Prime.least_prime_eq_two Nat.prime_two
    (fun p hp => GRWTSK.NumberTheory.two_is_first_prime.2 p hp)
example (h : ∀ p : ℕ, Nat.Prime p → 3 ≤ p) : False := by
  exact (by decide : ¬ (3 ≤ 2)) (h 2 Nat.prime_two)
#print axioms GRWTSK.NumberTheory.two_is_first_prime
#print axioms GRWTSK.NumberTheory.Prime.least_prime_eq_two
```
