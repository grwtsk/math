/-
Copyright (c) 2026 grwtsk contributors.
Released under Apache 2.0 license as described in the upstream file LICENSE.
Authors: grwtsk contributors
-/
import Solution
import Mathlib.Data.Finset.Card
import Mathlib.Order.Interval.Finset.Nat

/-!
# Consecutive-square prime witnesses from an explicit theta-error bound

IEANTN's proved numerical criterion returns a prime in the real interval
`(x, x + h]`. For consecutive natural squares, the right endpoint is composite,
so this is an actual prime in the open natural interval. Its prime-filtered
cardinality is therefore positive. This is the same mathematical observation as
the root `ConfigurationCounts.squareCount`, without importing or duplicating
that root definition across incompatible versions.

The joint analytic premises remain explicit: a uniform bound on `IEANTN.Eθ`
above `x₀`, applicability at `n²`, and the strict error-margin inequality. No
numerical error bound is supplied here, and no global assertion about primes
between consecutive squares is made.

Upstream: `teorth/IEANTN` commit
`ec66e388e6e117c6881367f38665f310edf7cacf`, Apache 2.0.
The proof endpoint is
`PrimeInterval.v1.Dev.numericalBound_hasPrimeInInterval` in
`Solutions/PrimeInterval.v1/Solution.lean`, Git blob
`e1a89e5f31e5263353b0bc63a68ff99e020b7710`; its source byline is
IEANTN contributors. The interval and error vocabulary preserve the upstream
Terence Tao byline. The solution cites the PrimeNumberTheoremAnd prime-interval
argument as its source; no paper-specific bound is imported by this consumer.

This file imports the proved `Solution` module, never the challenge module.
Source inspection found explicit proofs and no admitted declarations in this
IEANTN project import closure. Compilation, fresh kernel replay and complete
transitive axiom auditing are NOT_RUN. The isolated package retains upstream
Lean 4.34.0-rc2 and Mathlib `71a80585ee495fc24472fd0eaffc89d94e4fd8d6`;
this source is not a port into the root package.
-/

namespace GRWTSK.NumberTheory.MultiplicativeNumberTheory.ConsecutiveSquarePrimeWitness

/-- A nonprime natural upper endpoint removes IEANTN's closed-right endpoint.
No order hypothesis on `a` and `b` is needed: an empty interval has no witness
on either side. -/
theorem hasPrimeInInterval_nat_iff_exists_prime_mem_Ioo (a b : ℕ)
    (hb : ¬ Nat.Prime b) :
    IEANTN.HasPrimeInInterval (a : ℝ) ((b : ℝ) - a) ↔
      ∃ p ∈ Finset.Ioo a b, Nat.Prime p := by
  constructor
  · rintro ⟨p, hp, hap, hpb⟩
    have hap_nat : a < p := by exact_mod_cast hap
    have hpb_real : (p : ℝ) ≤ (b : ℝ) := by linarith
    have hpb_nat : p ≤ b := by exact_mod_cast hpb_real
    have hpb_strict : p < b := by
      by_contra hnot
      have heq : p = b := by omega
      exact hb (heq ▸ hp)
    exact ⟨p, Finset.mem_Ioo.mpr ⟨hap_nat, hpb_strict⟩, hp⟩
  · rintro ⟨p, hmem, hp⟩
    obtain ⟨hap, hpb⟩ := Finset.mem_Ioo.mp hmem
    refine ⟨p, hp, ?_, ?_⟩
    · exact_mod_cast hap
    · have hpb_real : (p : ℝ) ≤ (b : ℝ) := by exact_mod_cast hpb.le
      linarith

/-- The numerical theta-error criterion produces an actual natural prime in
`Finset.Ioo (n²) ((n+1)²)`. The margin is exactly `(2*x+h)*ε < h` at
`x=n²`, `h=2*n+1`; every analytic premise is retained. -/
theorem prime_in_consecutive_square_interval_of_numerical_bound
    (n : ℕ) (hn : 1 ≤ n) (x₀ ε : ℝ)
    (hEθ : IEANTN.HasNumericalBound IEANTN.Eθ ε x₀)
    (hx₀ : x₀ ≤ (n : ℝ) ^ 2)
    (hmargin : (2 * (n : ℝ) ^ 2 + (2 * (n : ℝ) + 1)) * ε <
      2 * (n : ℝ) + 1) :
    ∃ p ∈ Finset.Ioo (n ^ 2) ((n + 1) ^ 2), Nat.Prime p := by
  have hn_pos : (0 : ℝ) < (n : ℝ) := by
    exact_mod_cast (show 0 < n by omega)
  have hx_pos : (0 : ℝ) < (n : ℝ) ^ 2 := pow_pos hn_pos 2
  have hh_pos : (0 : ℝ) < 2 * (n : ℝ) + 1 := by positivity
  have hinter := PrimeInterval.v1.Dev.numericalBound_hasPrimeInInterval
    x₀ ((n : ℝ) ^ 2) (2 * (n : ℝ) + 1) ε hEθ hh_pos hx₀ hx_pos hmargin
  have hn_succ_ne_one : n + 1 ≠ 1 := by omega
  have hupper_not_prime : ¬ Nat.Prime ((n + 1) ^ 2) := by
    simpa only [pow_two] using Nat.not_prime_mul hn_succ_ne_one hn_succ_ne_one
  have hgap : (((n + 1) ^ 2 : ℕ) : ℝ) - ((n ^ 2 : ℕ) : ℝ) =
      2 * (n : ℝ) + 1 := by
    push_cast
    ring
  apply (hasPrimeInInterval_nat_iff_exists_prime_mem_Ioo
    (n ^ 2) ((n + 1) ^ 2) hupper_not_prime).mp
  rw [hgap, Nat.cast_pow]
  exact hinter

/-- The same witness makes the open interval's actual prime-filtered cardinality
positive. This supplies the finite counting observation, not a prime-density
estimate or a root-package version-port. -/
theorem consecutive_square_prime_filter_card_pos_of_numerical_bound
    (n : ℕ) (hn : 1 ≤ n) (x₀ ε : ℝ)
    (hEθ : IEANTN.HasNumericalBound IEANTN.Eθ ε x₀)
    (hx₀ : x₀ ≤ (n : ℝ) ^ 2)
    (hmargin : (2 * (n : ℝ) ^ 2 + (2 * (n : ℝ) + 1)) * ε <
      2 * (n : ℝ) + 1) :
    0 < ((Finset.Ioo (n ^ 2) ((n + 1) ^ 2)).filter Nat.Prime).card := by
  obtain ⟨p, hmem, hp⟩ :=
    prime_in_consecutive_square_interval_of_numerical_bound n hn x₀ ε hEθ hx₀ hmargin
  exact Finset.card_pos.mpr ⟨p, Finset.mem_filter.mpr ⟨hmem, hp⟩⟩

end GRWTSK.NumberTheory.MultiplicativeNumberTheory.ConsecutiveSquarePrimeWitness
