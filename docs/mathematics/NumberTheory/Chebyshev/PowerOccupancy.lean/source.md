# Complete source: GRWTSK.NumberTheory.Chebyshev.PowerOccupancy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95e7281beff83923aeb18c63b214979729281e5a` · SHA-256 `fc08ea99180e89cb4f80be98fe021e5ae92eaa515292f0dc5937efca140a72a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.Order.Ring.Pow
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Integer power occupancy between consecutive squares

The #189/#256 occupancy argument is entirely over natural numbers. No real root,
mean-value theorem, prime-distribution statement or analytic source is used.
The lower endpoint is strict; the exponent is at least two. Both restrictions
have explicit counterexamples below. Source draft; elaboration and audit pending.
-/

namespace GRWTSK.NumberTheory.Chebyshev.PowerOccupancy

/-- A successor base separates powers by an explicit integer amount. -/
theorem successor_power_gap (p j : ℕ) :
    p ^ (j + 2) + 2 * p ^ (j + 1) + 1 ≤ (p + 1) ^ (j + 2) := by
  induction j with
  | zero => simp only [zero_add, pow_one]; nlinarith
  | succ j ih =>
    calc
      p ^ (j.succ + 2) + 2 * p ^ (j.succ + 1) + 1 ≤
          (p ^ (j.succ + 2) + 2 * p ^ (j.succ + 1) + 1) +
            (p ^ (j + 2) + 2 * p ^ (j + 1) + p) := Nat.le_add_right _ _
      _ = (p ^ (j + 2) + 2 * p ^ (j + 1) + 1) * (p + 1) := by
        simp only [Nat.succ_eq_add_one, pow_succ]
        ring
      _ ≤ (p + 1) ^ (j + 2) * (p + 1) :=
        mul_le_mul_of_nonneg_right ih (Nat.zero_le _)
      _ = (p + 1) ^ (j.succ + 2) := by
        exact (pow_succ (p + 1) (j + 2)).symm

/-- The next integer base lies strictly beyond the current square interval. -/
theorem successor_power_above_square (n p k : ℕ) (hp : 1 ≤ p) (hk : 2 ≤ k)
    (hlower : n ^ 2 < p ^ k) : (n + 1) ^ 2 < (p + 1) ^ k := by
  obtain ⟨j, rfl⟩ : ∃ j, k = j + 2 := ⟨k - 2, by omega⟩
  have hpower : p ^ (j + 2) ≤ (p ^ (j + 1)) ^ 2 := by
    calc
      p ^ (j + 2) = p ^ (j + 1) * p := by
        rw [show j + 2 = (j + 1) + 1 by omega, pow_succ]
      _ ≤ p ^ (j + 1) * p ^ (j + 1) :=
        mul_le_mul_of_nonneg_left (le_self_pow₀ hp (by omega)) (Nat.zero_le _)
      _ = (p ^ (j + 1)) ^ 2 := (pow_two _).symm
  have hn : n < p ^ (j + 1) := by
    apply lt_of_not_ge
    intro hle
    exact (not_le_of_gt (hlower.trans_le hpower))
      (pow_le_pow_left₀ (Nat.zero_le _) hle 2)
  have hgap := successor_power_gap p j
  nlinarith

/-- At a fixed exponent at least two there is at most one positive integer base.
This is an at-most-one theorem, not an existence theorem. -/
theorem square_interval_power_base_unique (n p q k : ℕ)
    (hp : 1 ≤ p) (hq : 1 ≤ q) (hk : 2 ≤ k)
    (hpl : n ^ 2 < p ^ k) (hpu : p ^ k ≤ (n + 1) ^ 2)
    (hql : n ^ 2 < q ^ k) (hqu : q ^ k ≤ (n + 1) ^ 2) : p = q := by
  rcases lt_trichotomy p q with hpq | heq | hqp
  · have hgap := successor_power_above_square n p k hp hk hpl
    have hmono := pow_le_pow_left₀ (Nat.zero_le (p + 1))
      (Nat.succ_le_of_lt hpq) k
    exact False.elim ((not_le_of_gt hgap) (hmono.trans hqu))
  · exact heq
  · have hgap := successor_power_above_square n q k hq hk hql
    have hmono := pow_le_pow_left₀ (Nat.zero_le (q + 1))
      (Nat.succ_le_of_lt hqp) k
    exact False.elim ((not_le_of_gt hgap) (hmono.trans hpu))

/-- Closing the left endpoint admits two distinct square bases. -/
theorem closed_left_endpoint_control :
    (2 : ℕ) ^ 2 ≤ 2 ^ 2 ∧ 2 ^ 2 ≤ 3 ^ 2 ∧
      2 ^ 2 ≤ 3 ^ 2 ∧ 3 ^ 2 ≤ 3 ^ 2 ∧ (2 : ℕ) ≠ 3 := by
  norm_num

/-- Exponent one admits distinct prime bases in the same square interval. -/
theorem exponent_one_control :
    (2 : ℕ) ^ 2 < 5 ^ 1 ∧ 5 ^ 1 ≤ 3 ^ 2 ∧
      2 ^ 2 < 7 ^ 1 ∧ 7 ^ 1 ≤ 3 ^ 2 ∧ (5 : ℕ) ≠ 7 ∧
      Nat.Prime 5 ∧ Nat.Prime 7 := by
  norm_num

/-- Different exponents can both contribute; uniqueness is not across exponents. -/
theorem different_exponents_control :
    (2 : ℕ) ^ 2 < 2 ^ 3 ∧ 2 ^ 3 ≤ 3 ^ 2 ∧
      2 ^ 2 < 3 ^ 2 ∧ 3 ^ 2 ≤ 3 ^ 2 ∧ (2 : ℕ) ^ 3 ≠ 3 ^ 2 := by
  norm_num

/-- The right-hand square contributes when its base is prime. -/
theorem right_square_endpoint_control :
    Nat.Prime 3 ∧ (2 : ℕ) ^ 2 < 3 ^ 2 ∧ 3 ^ 2 ≤ (2 + 1) ^ 2 := by
  norm_num

end GRWTSK.NumberTheory.Chebyshev.PowerOccupancy
```
