# Least-prime proof and reuse

The least prime natural number is two:

```lean
Nat.Prime 2 ∧ ∀ p : ℕ, Nat.Prime p → 2 ≤ p
```

Mathlib supplies primality as `Nat.prime_two` and the lower bound as `Nat.Prime.two_le`. The library combines them in `GRWTSK.NumberTheory.two_is_first_prime`.

To prove uniqueness, let `q` be prime and assume it is at most every natural prime. Applying this assumption to two gives `q ≤ 2`; primality gives `2 ≤ q`. Antisymmetry proves `q = 2`.

```lean
import GRWTSK.NumberTheory.Prime.LeastPrime

example (q : ℕ) (hq : Nat.Prime q)
    (hmin : ∀ p : ℕ, Nat.Prime p → q ≤ p) : q = 2 :=
  GRWTSK.NumberTheory.Prime.least_prime_eq_two hq hmin
```

Both hypotheses matter: zero satisfies the stated lower-bound property without being prime, while three is prime without being least. Two also refutes the claim that every prime is at least three; one is not prime.

The [object guide](../mathematics/NumberTheory/Primes/least-prime.md) retains the exact sources, selected verification scope and author credit. Its source-bound receipt records a check of those inputs; it does not strengthen the theorem's hypotheses or establish whole-library acceptance.
