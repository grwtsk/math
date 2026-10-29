/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib prime facts (Apache-2.0). OpenAI Codex formalization assistance.
The local contribution is explicit reuse, not a new discovery. -/
import GRWTSK.NumberTheory.FirstPrime

namespace GRWTSK.NumberTheory.Primes

/-- A natural prime satisfying the stated leastness condition is exactly two.
The premises are mathematical propositions; observations and receipts are not
proof premises or operational credentials. -/
theorem least_prime_eq_two {q : ℕ} (hq : Nat.Prime q)
    (hmin : ∀ p : ℕ, Nat.Prime p → q ≤ p) : q = 2 := by
  exact Nat.le_antisymm (hmin 2 Nat.prime_two)
    (GRWTSK.NumberTheory.two_is_first_prime.2 q hq)

end GRWTSK.NumberTheory.Primes
