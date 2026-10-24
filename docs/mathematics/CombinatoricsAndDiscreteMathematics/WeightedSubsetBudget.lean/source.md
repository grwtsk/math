# Complete source: GRWTSK.Combinatorics.WeightedSubsetBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `496eb3818250efda875c99d11533d8f72fa4b2a0` · SHA-256 `33087b9ceb5b9cd1fa79b4b2b3b81bd938ff26547d88089ebdac5cbe45d40e13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.WeightedPairBudget
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact remaining mass after removing a certified subset

Use the existing natural-weight mass. Subset membership precedes subtraction;
two distinct remaining points contribute in addition to the entire known mass.
A zero remaining mass proves exhaustion only with positive weights. Lower/upper
bounds are not exact counts. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Combinatorics.WeightedSubsetBudget

open GRWTSK.Combinatorics.WeightedPairBudget
open scoped BigOperators

variable {α : Type*} [DecidableEq α]

/-- Nonnegative natural weights make the existing mass monotone in its support. -/
theorem mass_mono (known whole : Finset α) (weight : α → ℕ)
    (subset : known ⊆ whole) : mass known weight ≤ mass whole weight :=
  Finset.sum_le_sum_of_subset_of_nonneg subset (fun x _ _ => Nat.zero_le (weight x))

/-- Exact partition, including the overlap exclusion and every multiplicity. -/
theorem remaining_add_known (whole known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ whole) :
    mass (whole \ known) weight + mass known weight = mass whole weight := by
  exact Finset.sum_sdiff subset

/-- Truncated subtraction has the intended meaning only after subset alignment. -/
theorem remaining_eq_sub (whole known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ whole) :
    mass (whole \ known) weight = mass whole weight - mass known weight := by
  have partition := remaining_add_known whole known weight subset
  omega

/-- Separate lower and upper certificates must be consistent at the same scope. -/
theorem lower_le_upper (whole known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ whole) (lower upper : ℕ)
    (knownBound : lower ≤ mass known weight) (wholeBound : mass whole weight ≤ upper) :
    lower ≤ upper := knownBound.trans ((mass_mono known whole weight subset).trans wholeBound)

/-- An upper residual budget, not an asserted exact residual count. -/
theorem remaining_le_budget (whole known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ whole) (lower upper : ℕ)
    (knownBound : lower ≤ mass known weight) (wholeBound : mass whole weight ≤ upper) :
    mass (whole \ known) weight ≤ upper - lower := by
  have partition := remaining_add_known whole known weight subset
  omega

/-- Per-point certified lower weights can be summed without promoting them to equality. -/
theorem lower_weights_le_mass (known : Finset α) (lower weight : α → ℕ)
    (bounds : ∀ x ∈ known, lower x ≤ weight x) : mass known lower ≤ mass known weight :=
  Finset.sum_le_sum bounds

/-- Known mass and two distinct OUTSIDE points are disjoint contributions. -/
theorem known_add_pair_le_mass (whole known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ whole) (a b : α)
    (ha : a ∈ whole) (hb : b ∈ whole) (haKnown : a ∉ known) (hbKnown : b ∉ known)
    (distinct : a ≠ b) :
    mass known weight + weight a + weight b ≤ mass whole weight := by
  have pair := pair_le_mass (whole \ known) weight a b
    (Finset.mem_sdiff.mpr ⟨ha, haKnown⟩) (Finset.mem_sdiff.mpr ⟨hb, hbKnown⟩) distinct
  have partition := remaining_add_known whole known weight subset
  omega

/-- One existing member's weight is bounded by the whole mass. -/
theorem weight_le_mass (whole : Finset α) (weight : α → ℕ) (a : α) (ha : a ∈ whole) :
    weight a ≤ mass whole weight := by
  have subset : ({a} : Finset α) ⊆ whole := by simpa using ha
  simpa [mass] using mass_mono ({a} : Finset α) whole weight subset

/-- With positive weights, equal mass and subset membership force exact exhaustion. -/
theorem eq_of_mass_eq (whole known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ whole) (positive : ∀ x ∈ whole, 0 < weight x)
    (sameMass : mass known weight = mass whole weight) : known = whole := by
  apply Finset.Subset.antisymm subset
  intro x hx
  by_contra missing
  have member : x ∈ whole \ known := Finset.mem_sdiff.mpr ⟨hx, missing⟩
  have bound := weight_le_mass (whole \ known) weight x member
  have partition := remaining_add_known whole known weight subset
  have pos := positive x hx
  omega

/-- One unlisted fixed point shows that a gap below two need not mean enumeration completeness. -/
theorem one_missing_fixed_point_fixture :
    mass (({0, 3} : Finset ℕ) \ {0}) (fun _ => 1) = 1 ∧
      ({0} : Finset ℕ) ≠ {0, 3} ∧ modelReflection 3 = 3 := by
  norm_num [mass, modelReflection]

/-- The sharp two-point boundary admits a genuine exchanged pair. -/
theorem two_missing_exchanged_points_fixture :
    mass (({0, 1, 2} : Finset ℕ) \ {0}) (fun _ => 1) = 2 ∧
      modelReflection 1 = 2 ∧ modelReflection 2 = 1 ∧ modelReflection 1 ≠ 1 := by
  norm_num [mass, modelReflection]

/-- Removing a nonfixed point can fake a small gap; the known-locus certificate fails. -/
theorem contaminated_known_set_fixture :
    mass (({0, 1, 2} : Finset ℕ) \ {0, 1}) (fun _ => 1) = 1 ∧
      (1 : ℕ) ∈ ({0, 1} : Finset ℕ) ∧ modelReflection 1 ≠ 1 := by
  norm_num [mass, modelReflection]

/-- Natural subtraction can hide unrelated records, unlike the actual set complement. -/
theorem outside_known_set_fixture :
    mass ({0} : Finset ℕ) (fun _ => 1) - mass ({1, 2} : Finset ℕ) (fun _ => 1) = 0 ∧
      mass (({0} : Finset ℕ) \ {1, 2}) (fun _ => 1) = 1 ∧
      ¬ ({1, 2} : Finset ℕ) ⊆ {0} := by
  norm_num [mass]

/-- Two reports of the same point do not provide twice the certified mass. -/
theorem overlapping_reports_fixture :
    mass ({0} : Finset ℕ) (fun _ => 1) + mass ({0} : Finset ℕ) (fun _ => 1) = 2 ∧
      mass (({0} : Finset ℕ) ∪ {0}) (fun _ => 1) = 1 := by norm_num [mass]

/-- Zero-weight points refute mass-only exhaustion without positivity. -/
theorem zero_weight_exhaustion_fixture :
    mass ({0} : Finset ℕ) (fun _ => 0) = mass ({0, 1} : Finset ℕ) (fun _ => 0) ∧
      ({0} : Finset ℕ) ≠ {0, 1} := by norm_num [mass]

/-- A claimed known lower bound exceeding actual known mass is not a certificate. -/
theorem overclaimed_lower_fixture :
    mass ({0, 1, 2} : Finset ℕ) (fun _ => 1) < 2 + 2 ∧
      ¬ 2 ≤ mass ({0} : Finset ℕ) (fun _ => 1) ∧ modelReflection 1 ≠ 1 := by
  norm_num [mass, modelReflection]

/-- Failure of the sufficient gap test does not establish an off-line point. -/
theorem repeated_fixed_point_inconclusive_fixture :
    mass (({0, 3} : Finset ℕ) \ {0}) (fun _ => 2) = 2 ∧
      modelReflection 0 = 0 ∧ modelReflection 3 = 3 := by norm_num [mass, modelReflection]

end GRWTSK.Combinatorics.WeightedSubsetBudget
```
