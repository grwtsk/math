/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
import Mathlib.Tactic.Omega

set_option autoImplicit false

/-!
# Two unrecorded points must fit beyond the already credited mass

Reuse `WeightedPairBudget.mass` and its distinct-pair bound. A known subset
and its complement partition the SAME complete finite source. A lower credit
for the known subset cannot be spent again on two unrecorded points. All
inequalities are additive: truncated natural subtraction cannot hide a
negative budget. Neither exact weights nor completeness of the known subset
is assumed. This is not another positive-mass exhaustion constructor.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedInventoryDeficit

open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open scoped BigOperators

variable {α : Type*} [DecidableEq α]

/-- Subset membership is required before any known mass can be credited. -/
theorem mass_partition (source known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ source) :
    mass known weight + mass (source \ known) weight = mass source weight := by
  have disjoint : Disjoint known (source \ known) := by
    apply Finset.disjoint_left.mpr
    intro x hx hrest
    exact (Finset.mem_sdiff.mp hrest).2 hx
  have union : known ∪ (source \ known) = source := by
    ext x
    constructor
    · intro hx
      rcases Finset.mem_union.mp hx with hk | hr
      · exact subset hk
      · exact (Finset.mem_sdiff.mp hr).1
    · intro hx
      by_cases hk : x ∈ known
      · exact Finset.mem_union.mpr (Or.inl hk)
      · exact Finset.mem_union.mpr (Or.inr (Finset.mem_sdiff.mpr ⟨hx, hk⟩))
  unfold mass
  rw [← Finset.sum_union disjoint, union]

/-- Distinct missing points contribute in addition to, not instead of, the known mass. -/
theorem known_add_pair_le_mass (source known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ source) (a b : α)
    (memberA : a ∈ source) (memberB : b ∈ source)
    (missingA : a ∉ known) (missingB : b ∉ known) (distinct : a ≠ b) :
    mass known weight + weight a + weight b ≤ mass source weight := by
  have pair := pair_le_mass (source \ known) weight a b
    (Finset.mem_sdiff.mpr ⟨memberA, missingA⟩)
    (Finset.mem_sdiff.mpr ⟨memberB, missingB⟩) distinct
  have partition := mass_partition source known weight subset
  omega

/-- Independent lower credits and a complete-source upper bound exclude a missing pair.
Both missing memberships and strictness remain explicit. -/
theorem no_room_for_unrecorded_pair (source known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ source) (a b : α)
    (memberA : a ∈ source) (memberB : b ∈ source)
    (missingA : a ∉ known) (missingB : b ∉ known) (distinct : a ≠ b)
    (credit left right upper : ℕ)
    (creditLower : credit ≤ mass known weight)
    (leftLower : left ≤ weight a) (rightLower : right ≤ weight b)
    (totalUpper : mass source weight ≤ upper)
    (strict : upper < credit + left + right) : False := by
  have bound := known_add_pair_le_mass source known weight subset a b
    memberA memberB missingA missingB distinct
  omega

/-- One unrecorded fixed point is compatible with a strict two-unit deficit test.
Hence this test must NOT be advertised as completeness of the known inventory. -/
theorem one_missing_fixed_point_fixture :
    mass ({0, 3} : Finset ℕ) (fun _ => 1) < mass ({0} : Finset ℕ) (fun _ => 1) + 2 ∧
      (3 : ℕ) ∉ ({0} : Finset ℕ) ∧ modelReflection 3 = 3 := by
  norm_num [mass, modelReflection]

/-- At deficit TWO an exchanged pair can be hidden; non-strict acceptance is invalid. -/
theorem two_unit_deficit_fixture :
    mass ({0, 1, 2} : Finset ℕ) (fun _ => 1) = mass ({0} : Finset ℕ) (fun _ => 1) + 2 ∧
      modelReflection 1 = 2 ∧ modelReflection 2 = 1 ∧ (1 : ℕ) ≠ 2 := by
  norm_num [mass, modelReflection]

/-- Repeating a known identity does not increase the certified mass. -/
theorem duplicate_credit_fixture :
    mass ({0, 0} : Finset ℕ) (fun _ => 1) = 1 ∧
      ¬ (2 : ℕ) ≤ mass ({0, 0} : Finset ℕ) (fun _ => 1) := by
  norm_num [mass]

/-- A zero-weight hidden pair would evade the threshold. The analytic adapter must
supply positive multiplicities for EVERY actual zero, not only the known ones. -/
theorem zero_weight_pair_fixture :
    mass ({0, 1, 2} : Finset ℕ) (fun x => if x = 0 then 1 else 0) <
        mass ({0} : Finset ℕ) (fun x => if x = 0 then 1 else 0) + 2 ∧
      modelReflection 1 ≠ 1 := by
  norm_num [mass, modelReflection]

/-- Crediting a source point that lies outside the target cutoff has no subset proof. -/
theorem outside_source_credit_fixture :
    ¬ ({0, 3} : Finset ℕ) ⊆ ({0} : Finset ℕ) := by
  intro subset
  have impossible := subset (by simp : (3 : ℕ) ∈ ({0, 3} : Finset ℕ))
  norm_num at impossible

end GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedInventoryDeficit
