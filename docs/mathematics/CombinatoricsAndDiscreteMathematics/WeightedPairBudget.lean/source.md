# Complete source: GRWTSK.Combinatorics.WeightedPairBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `973a7b477216f2b15197564142e860e45032035f` · SHA-256 `9a8b0e900adbe0e1abce960ea85d953f7ec0e47e368cd09135418b1ca70c698b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Distinct-point lower bounds for a finite natural-weight sum

Two distinct members contribute separately. Strict upper and lower budgets
therefore force equality, without an exact total, equal weights, or simplicity.
Membership in the SAME finite set is essential. No analytic, zero-existence,
completeness, implementation, or execution claim follows from this finite lemma.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Combinatorics.WeightedPairBudget

open scoped BigOperators

variable {α : Type*}

/-- Natural weights retain multiplicity; a finite set removes duplicate identities. -/
def mass (S : Finset α) (weight : α → ℕ) : ℕ := ∑ x ∈ S, weight x

/-- Two distinct points already present in the set contribute disjoint summands. -/
theorem pair_le_mass [DecidableEq α] (S : Finset α) (weight : α → ℕ)
    (a b : α) (ha : a ∈ S) (hb : b ∈ S) (distinct : a ≠ b) :
    weight a + weight b ≤ mass S weight := by
  have pairSubset : ({a, b} : Finset α) ⊆ S := by
    intro x hx
    rcases Finset.mem_insert.mp hx with hxa | hxb
    · subst x
      exact ha
    · have hxb' : x = b := Finset.mem_singleton.mp hxb
      subst x
      exact hb
  have bound : (∑ x ∈ ({a, b} : Finset α), weight x) ≤ ∑ x ∈ S, weight x :=
    Finset.sum_le_sum_of_subset_of_nonneg pairSubset
      (fun x _ _ => Nat.zero_le (weight x))
  simpa [mass, distinct] using bound

/-- Lower bounds for the two weights and an upper bound for the SAME sum suffice.
Neither bound is silently promoted to an exact value. -/
theorem eq_of_upper_lt_lower_sum [DecidableEq α]
    (S : Finset α) (weight : α → ℕ) (a b : α) (left right upper : ℕ)
    (ha : a ∈ S) (hb : b ∈ S)
    (leftBound : left ≤ weight a) (rightBound : right ≤ weight b)
    (totalBound : mass S weight ≤ upper) (strict : upper < left + right) : a = b := by
  by_contra distinct
  have lower : left + right ≤ upper :=
    (Nat.add_le_add leftBound rightBound).trans
      ((pair_le_mass S weight a b ha hb distinct).trans totalBound)
  exact (not_le_of_gt strict) lower

/-- A common lower bound is a specialization, not a proof that the weights agree. -/
theorem eq_of_upper_lt_twice_lower [DecidableEq α]
    (S : Finset α) (weight : α → ℕ) (a b : α) (lower upper : ℕ)
    (ha : a ∈ S) (hb : b ∈ S)
    (leftBound : lower ≤ weight a) (rightBound : lower ≤ weight b)
    (totalBound : mass S weight ≤ upper) (strict : upper < 2 * lower) : a = b := by
  exact eq_of_upper_lt_lower_sum S weight a b lower lower upper ha hb
    leftBound rightBound totalBound (by simpa only [two_mul] using strict)

/-- A zero common lower bound cannot pass a strict natural-count budget. -/
theorem zero_lower_cannot_pass (upper : ℕ) : ¬ upper < 2 * (0 : ℕ) := by simp

/-- The strict inequality cannot be replaced by a non-strict one. -/
theorem nonstrict_pair_fixture :
    mass ({0, 1} : Finset ℕ) (fun _ => 1) = 2 ∧
      mass ({0, 1} : Finset ℕ) (fun _ => 1) ≤ 2 * 1 ∧
      ¬ mass ({0, 1} : Finset ℕ) (fun _ => 1) < 2 * 1 ∧ (0 : ℕ) ≠ 1 := by
  norm_num [mass]

/-- One point of weight two passes the repeated-root numerical profile. -/
theorem double_weight_singleton_fixture :
    mass ({0} : Finset ℕ) (fun _ => 2) = 2 ∧
      mass ({0} : Finset ℕ) (fun _ => 2) < 2 * 2 := by
  norm_num [mass]

/-- Repeated identity is not a second point or a second multiplicity contribution. -/
theorem repeated_identity_fixture :
    mass ({0, 0} : Finset ℕ) (fun _ => 2) = 2 := by norm_num [mass]

/-- Omitting the partner can make the numerical test look strict; membership fails. -/
theorem omitted_partner_fixture :
    mass ({0} : Finset ℕ) (fun _ => 1) < 2 * 1 ∧
      (1 : ℕ) ∉ ({0} : Finset ℕ) ∧ (0 : ℕ) ≠ 1 := by norm_num [mass]

/-- Unequal positive weights still contribute their full sum. -/
theorem unequal_weights_fixture :
    mass ({0, 1} : Finset ℕ) (fun x => if x = 0 then 1 else 3) = 4 ∧
      ¬ mass ({0, 1} : Finset ℕ) (fun x => if x = 0 then 1 else 3) < 1 + 3 := by
  norm_num [mass]

/-- Synthetic reflection: zero is fixed, while one and two are exchanged.
This is a finite-model control, not an action on actual zeta zeros. -/
def modelReflection (x : ℕ) : ℕ := if x = 1 then 2 else if x = 2 then 1 else x

/-- The synthetic map really is an involution, including points outside the example. -/
theorem modelReflection_involutive : Function.Involutive modelReflection := by
  intro x
  by_cases h1 : x = 1
  · subst x
    norm_num [modelReflection]
  · by_cases h2 : x = 2
    · subst x
      norm_num [modelReflection]
    · simp [modelReflection, h1, h2]

/-- An odd regional mass can coexist with an exchanged off-fixed-locus pair. -/
theorem odd_mass_with_nonfixed_pair_fixture :
    mass ({0, 1, 2} : Finset ℕ) (fun _ => 1) = 3 ∧
      modelReflection 0 = 0 ∧ modelReflection 1 = 2 ∧ modelReflection 2 = 1 ∧
      modelReflection 1 ≠ 1 := by norm_num [mass, modelReflection]

/-- The budget is local to the selected point: a heavy fixed point may coexist
with a distinct exchanged pair. This identity does not classify the other points. -/
theorem selected_weight_only_fixture :
    mass ({0, 1, 2} : Finset ℕ) (fun x => if x = 0 then 3 else 1) = 5 ∧
      mass ({0, 1, 2} : Finset ℕ) (fun x => if x = 0 then 3 else 1) < 2 * 3 ∧
      ¬ mass ({0, 1, 2} : Finset ℕ) (fun x => if x = 0 then 3 else 1) < 2 * 1 ∧
      modelReflection 0 = 0 ∧ modelReflection 1 ≠ 1 := by
  norm_num [mass, modelReflection]

end GRWTSK.Combinatorics.WeightedPairBudget
```
