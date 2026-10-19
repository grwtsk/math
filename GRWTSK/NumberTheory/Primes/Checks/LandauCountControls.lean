/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.LandauStatements

set_option autoImplicit false

/-!
# Finite controls for exact count and scope boundaries

Small `decide` proof terms are intended for later kernel elaboration; no
native evaluator is used. These source controls have not been executed.
The cutoff countermodel concerns arbitrary predicates, not a refutation
of any arithmetic conjecture.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.LandauCountControls

open GRWTSK.Combinatorics.Enumerative.BoundedWitnesses
open GRWTSK.NumberTheory.Primes.ConfigurationCounts

/-- Ordered Goldbach choices for ten are 3, 5 and 7. -/
theorem goldbach_ten : goldbachCount 10 = 3 := by decide

/-- Smaller primes 3 and 5 are the twin-pair indices through ten. -/
theorem twins_ten : twinCount 10 = 2 := by decide

/-- The first open square interval contains 2 and 3. -/
theorem first_square : squareCount 1 = 2 := by decide

/-- The second open square interval contains 5 and 7. -/
theorem second_square : squareCount 2 = 2 := by decide

/-- The thin-source indices through ten are 1, 2, 4, 6 and 10. -/
theorem quadratics_ten : quadraticCount 10 = 5 := by decide

/-- A prime upper endpoint is excluded. -/
theorem strict_upper_endpoint : intervalCount 1 3 = 1 := by decide

/-- Equal endpoints do not make an interval. -/
theorem empty_interval : intervalCount 3 3 = 0 := by decide

/-- Reversing endpoints does not produce an unsigned width count. -/
theorem reversed_interval : intervalCount 10 8 = 0 := by decide

/-- A prime square may occur where the actual prime count is zero. -/
theorem prime_power_is_not_prime :
    Nat.Prime 3 ∧ 8 < (3 : ℕ) ^ 2 ∧ (3 : ℕ) ^ 2 < 10 ∧
      intervalCount 8 10 = 0 := by decide

/-- Nonempty odd candidates in an interval need not contain a prime. -/
theorem upper_sieve_is_not_lower :
    0 < count (fun n => 8 < n ∧ n < 10 ∧ n % 2 = 1) 10 ∧
      intervalCount 8 10 = 0 := by decide

/-- A pair at shift six need not be a pair at shift two. -/
theorem fixed_shift_control :
    Nat.Prime 7 ∧ Nat.Prime (7 + 6) ∧ ¬ Nat.Prime (7 + 2) := by decide

/-- Two predicates can have identical counts on an arbitrarily chosen finite prefix. -/
theorem finite_agreement (B : ℕ) :
    count (fun n => n ≤ B) B = count (fun _ => True) B := by
  apply count_congr_on
  intro n hn
  exact ⟨fun _ => trivial, fun _ => hn⟩

/-- The cutoff predicate nevertheless has no unbounded supply of witnesses. -/
theorem bounded_predicate_not_unbounded (B : ℕ) :
    ¬ UnboundedWitnesses (fun n => n ≤ B) := by
  intro h
  rcases h B with ⟨n, hnB, hn⟩
  exact (not_lt_of_ge hn) hnB

/-- The comparison predicate does have witnesses beyond every cutoff. -/
theorem true_predicate_unbounded : UnboundedWitnesses (fun _ : ℕ => True) := by
  intro B
  exact ⟨B + 1, Nat.lt_succ_self B, trivial⟩

end GRWTSK.NumberTheory.Primes.Checks.LandauCountControls
