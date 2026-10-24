# Complete source: GRWTSK.NumberTheory.Primes.QuadraticValuePowerExclusion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35c0e42816d744016b78af53067b9eb80800576c` · SHA-256 `fac04e1b1c959636668bf1687bf28ffb1acec0e89443568c45a3e1ebeb84f071`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Excluding even powers from positive quadratic values

The elementary square gap removes every even proper-prime-power exponent.
Odd exponents remain to be excluded or bounded in this packet; no claim
is made that such powers occur. Absence of even powers is no prime detector.
The quantitative odd-power counting correction is written in the note only.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticValuePowerExclusion

/-- n^2+1 lies strictly between consecutive squares for n>=1. -/
theorem quadraticValue_between_squares (n : ℕ) (hn : 1 ≤ n) :
    n ^ 2 < n ^ 2 + 1 ∧ n ^ 2 + 1 < (n + 1) ^ 2 := by
  constructor <;> nlinarith

/-- No positive index gives a square value. -/
theorem quadraticValue_not_square (n : ℕ) (hn : 1 ≤ n) (m : ℕ) :
    n ^ 2 + 1 ≠ m ^ 2 := by
  intro h
  have hg := quadraticValue_between_squares n hn
  by_cases hmn : m ≤ n
  · have hsq : m ^ 2 ≤ n ^ 2 := Nat.pow_le_pow_left hmn 2
    omega
  · have hnm : n + 1 ≤ m := by omega
    have hsq : (n + 1) ^ 2 ≤ m ^ 2 := Nat.pow_le_pow_left hnm 2
    omega

/-- All even exponents are excluded, with no primality assumption on the base. -/
theorem quadraticValue_ne_even_power (n : ℕ) (hn : 1 ≤ n) (a j : ℕ) :
    n ^ 2 + 1 ≠ a ^ (2 * j) := by
  rw [mul_comm 2 j, pow_mul]
  exact quadraticValue_not_square n hn (a ^ j)

end GRWTSK.NumberTheory.Primes.QuadraticValuePowerExclusion
```
