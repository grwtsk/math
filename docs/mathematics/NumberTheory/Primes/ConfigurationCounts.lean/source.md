# Complete source: GRWTSK.NumberTheory.Primes.ConfigurationCounts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f70cf5c6ffbe9766fdd62048c54af9d7f9845996` · SHA-256 `4442a72111476c519a0dc44fc7047e337405751f5ede383c1d46980068ab140d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.Enumerative.BoundedWitnesses
import Mathlib.Data.Nat.Prime.Basic

set_option autoImplicit false

/-!
# Exact prime-configuration counts

All counts use `Nat.Prime`, rather than a sieve candidate predicate or a
von Mangoldt support predicate. Goldbach counts ordered first-prime choices;
twin counts retain shift two; intervals are open at both ends; quadratic
counts count indices `1 <= n <= X`. No distribution estimate is supplied.
-/

namespace GRWTSK.NumberTheory.Primes.ConfigurationCounts

open GRWTSK.Combinatorics.Enumerative.BoundedWitnesses

/-- Ordered first-prime choices; the cutoff protects natural subtraction. -/
def goldbachCount (N : ℕ) : ℕ :=
  count (fun p => Nat.Prime p ∧ Nat.Prime (N - p)) N

/-- The finite count is positive exactly when an actual two-prime sum exists. -/
theorem goldbachCount_pos_iff (N : ℕ) :
    0 < goldbachCount N ↔
      ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  rw [goldbachCount, count_pos_iff]
  constructor
  · rintro ⟨p, hpN, hp, hq⟩
    exact ⟨p, N - p, hp, hq, Nat.add_sub_of_le hpN⟩
  · rintro ⟨p, q, hp, hq, hpq⟩
    refine ⟨p, ?_, hp, ?_⟩
    · calc
        p ≤ p + q := Nat.le_add_right p q
        _ = N := hpq
    · simpa only [← hpq, Nat.add_sub_cancel_left] using hq

/-- Twin pairs are indexed by their smaller prime; the shift is literally two. -/
def twinCount (X : ℕ) : ℕ :=
  count (fun p => Nat.Prime p ∧ Nat.Prime (p + 2)) X

/-- Positive twin count at one cutoff is a finite existential statement only. -/
theorem twinCount_pos_iff (X : ℕ) :
    0 < twinCount X ↔ ∃ p, p ≤ X ∧ Nat.Prime p ∧ Nat.Prime (p + 2) := by
  exact count_pos_iff (fun p => Nat.Prime p ∧ Nat.Prime (p + 2)) X

/-- Twin pairs with a genuinely new smaller prime above the lower cutoff. -/
def twinTailCount (B X : ℕ) : ℕ :=
  tailCount (fun p => Nat.Prime p ∧ Nat.Prime (p + 2)) B X

/-- Prime count on the open interval `(a,b)`, including empty or reversed intervals. -/
def intervalCount (a b : ℕ) : ℕ :=
  count (fun p => a < p ∧ p < b ∧ Nat.Prime p) b

/-- Both strict endpoints survive extraction of an actual prime witness. -/
theorem intervalCount_pos_iff (a b : ℕ) :
    0 < intervalCount a b ↔ ∃ p, Nat.Prime p ∧ a < p ∧ p < b := by
  rw [intervalCount, count_pos_iff]
  constructor
  · rintro ⟨p, _, hap, hpb, hp⟩
    exact ⟨p, hp, hap, hpb⟩
  · rintro ⟨p, hp, hap, hpb⟩
    exact ⟨p, hpb.le, hap, hpb, hp⟩

/-- Actual primes strictly between consecutive squares. -/
def squareCount (n : ℕ) : ℕ :=
  intervalCount (n ^ 2) ((n + 1) ^ 2)

/-- No prime-power weighted quantity is silently substituted for this count. -/
theorem squareCount_pos_iff (n : ℕ) :
    0 < squareCount n ↔
      ∃ p, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  exact intervalCount_pos_iff (n ^ 2) ((n + 1) ^ 2)

/-- Count indices, not all integers up to `X^2+1`. -/
def quadraticCount (X : ℕ) : ℕ :=
  count (fun n => 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1)) X

/-- Positive finite quadratic count has only the bounded existential meaning. -/
theorem quadraticCount_pos_iff (X : ℕ) :
    0 < quadraticCount X ↔ ∃ n, n ≤ X ∧ 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1) := by
  exact count_pos_iff (fun n => 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1)) X

/-- A strict lower index cutoff prevents repeatedly reusing one prime value. -/
def quadraticTailCount (B X : ℕ) : ℕ :=
  tailCount (fun n => 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1)) B X

end GRWTSK.NumberTheory.Primes.ConfigurationCounts
```
