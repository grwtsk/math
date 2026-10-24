# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.NonprimitiveObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0ab0ffa29af2b087aac45dbaea2bf53090da920` · SHA-256 `03b6ace36aba782f9d8005b740c0edffb7c3ee13a0c3fde2d6cb25fb9cfae666`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib radicals and Archimedean growth (Apache-2.0).
OpenAI Codex formalization assistance. The powers-of-two family shows why
omitting primitive coprimality changes the conjecture into a false statement. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms
import Mathlib.Algebra.Order.Archimedean.Real.Basic

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open UniqueFactorizationMonoid

/-- Every doubled power-of-two triple has radical two. -/
theorem radical_doubled_power_two (n : ℕ) :
    radical ((2 : ℕ) ^ n * 2 ^ n * (2 ^ n + 2 ^ n)) = 2 := by
  have heq : (2 : ℕ) ^ n * 2 ^ n * (2 ^ n + 2 ^ n) = 2 ^ (n + n + n + 1) := by
    rw [pow_succ, pow_add, pow_add]
    ring
  rw [heq, radical_pow _ (by omega), radical_of_prime (Nat.prime_iff.mp Nat.prime_two)]
  rfl

/-- For every real epsilon, positivity and the additive relation alone do not
admit any uniform radical-height constant. The unbounded powers-of-two family
is a counterexample; no abc conjecture or negation is used. -/
theorem no_uniform_bound_without_coprimality (ε : ℝ) :
    ¬∃ K : ℝ, 0 < K ∧ ∀ a b c : ℕ, 0 < a → 0 < b → a + b = c →
      (c : ℝ) ≤ K * Real.rpow
        ((UniqueFactorizationMonoid.radical (a * b * c) : ℕ) : ℝ) (1 + ε) := by
  rintro ⟨K, _hK, h⟩
  obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt
    (K * Real.rpow 2 (1 + ε)) (by norm_num : (1 : ℝ) < 2)
  have hp : 0 < (2 : ℕ) ^ n := pow_pos (by decide) _
  have hh := h (2 ^ n) (2 ^ n) (2 ^ n + 2 ^ n) hp hp rfl
  rw [radical_doubled_power_two] at hh
  have hpR : 0 < (2 : ℝ) ^ n := pow_pos (by norm_num) _
  push_cast at hh
  norm_num at hh
  simp only [Real.rpow_eq_pow] at hn
  linarith

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
