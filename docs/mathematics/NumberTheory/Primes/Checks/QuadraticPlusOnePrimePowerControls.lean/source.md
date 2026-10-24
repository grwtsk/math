# Complete source: GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOnePrimePowerControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e2499c1ede4feba75b33e7865bc25ae6f16c923` · SHA-256 `a69ae666085e524f60cff5b9f54029daf8367bf9275c1a1935c4f624e370f75f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerCounts
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Hostile and positive controls for prime-power lifting

These fixtures distinguish the odd-prime simple-root lift from coprime CRT,
retain the exceptional 2-adic branch, and prevent local root data from being
reported as a prime-value or infinitude theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOnePrimePowerControls

open GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
open GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift
open GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerCounts

/-- The root `2 mod 5` uses digit one and lifts to `7 mod 25`. -/
theorem root_two_lifts_to_seven :
    quadraticLiftCandidate 5 1 2 1 = 7 ∧
      QuadraticLiftCoefficient 5 1 2 1 ∧
      25 ∣ 7 ^ 2 + 1 := by
  norm_num [quadraticLiftCandidate, QuadraticLiftCoefficient, quadraticLiftQuotient]

/-- The root `3 mod 5` uses digit three and lifts to `18 mod 25`. -/
theorem root_three_lifts_to_eighteen :
    quadraticLiftCandidate 5 1 3 3 = 18 ∧
      QuadraticLiftCoefficient 5 1 3 3 ∧
      25 ∣ 18 ^ 2 + 1 := by
  norm_num [quadraticLiftCandidate, QuadraticLiftCoefficient, quadraticLiftQuotient]

/-- A wrong lift digit fails the correction equation. -/
theorem wrong_lift_digit_rejected :
    ¬ QuadraticLiftCoefficient 5 1 2 0 := by
  norm_num [QuadraticLiftCoefficient, quadraticLiftQuotient]

/-- The two roots modulo twenty-five are exactly the canonical lifts. -/
theorem roots_mod_twenty_five :
    quadraticPlusOneResidues 25 = {7, 18} := by
  decide

/-- Odd-prime lifting preserves the two roots through the next power. -/
theorem roots_mod_one_hundred_twenty_five_count :
    quadraticPlusOneRootCount 125 = 2 := by
  have hp : Nat.Prime 5 := by decide
  simpa using
    quadraticPlusOneRootCount_primePower_mod_four_one
      hp (by decide) (k := 3) (by decide)

/-- The prime-two root disappears modulo four. -/
theorem two_adic_branch_is_exceptional :
    quadraticPlusOneRootCount 2 = 1 ∧
      quadraticPlusOneRootCount 4 = 0 ∧
      quadraticPlusOneRootCount 8 = 0 := by
  decide

/-- Noncoprime multiplicativity would give the wrong answer at `(2,2)`. -/
theorem noncoprime_multiplicativity_rejected :
    quadraticPlusOneRootCount 4 ≠
      quadraticPlusOneRootCount 2 *
        quadraticPlusOneRootCount 2 := by
  decide

/-- A congruent representative outside the canonical interval is not a
canonical root record. -/
theorem range_bound_is_not_optional :
    32 % 25 = 7 ∧ ¬ 32 < 25 := by
  decide

/-- Local roots do not make a composite polynomial value prime. -/
theorem lifted_local_data_does_not_detect_primality :
    5 ∣ 8 ^ 2 + 1 ∧
      13 ∣ 8 ^ 2 + 1 ∧
      ¬ Nat.Prime (8 ^ 2 + 1) := by
  decide

/-- One lifted root cannot be reused as an unbounded-index witness. -/
theorem one_lift_is_not_unbounded :
    ¬ ∀ B : ℕ, 7 > B := by
  intro h
  exact (Nat.lt_irrefl 7) (h 7)

/-- A finite local classification can coexist with no prime value in a
chosen index interval. -/
theorem local_roots_do_not_force_small_cutoff_prime :
    quadraticPlusOneRootCount 25 = 2 ∧
      GRWTSK.NumberTheory.Primes.ConfigurationCounts.quadraticCount 0 = 0 := by
  decide

end GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOnePrimePowerControls
```
