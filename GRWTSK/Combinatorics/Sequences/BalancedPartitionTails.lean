/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Combinatorics.Sequences.ConditionalPartitionExposure
import GRWTSK.Combinatorics.Sequences.HypergeometricLowerTail

/-!
# Local intersection tails in uniform prescribed-size partitions

Expose the part containing a retained element. Its other elements obey the
proved fixed-size subset law, so the hypergeometric lower-tail estimates apply.
Averaging the actual conditional partition strata gives unconditional event
bounds, without treating the random parts as independent.
-/

namespace GRWTSK.BalancedPartitionTails
open scoped BigOperators
open GRWTSK.BalancedPartitionSampling GRWTSK.ConditionalPartitionExposure
open GRWTSK.HypergeometricLowerTail
noncomputable section
attribute [local instance] Classical.propDecidable

variable {A : Type*} [Fintype A] {m : ℕ}

/-- The local deficit event for the entire part containing the retained element.
The threshold uses the number of other members of that part. -/
def currentPartCountBad (sizes : Fin m → ℕ) (a : A) (G : Finset A) (q : ℝ)
    (P : Partition (A := A) sizes) : Prop :=
  ((part P (P.val a) ∩ G).card : ℝ) < q * ((sizes (P.val a) - 1 : ℕ) : ℝ)

/-- Removing the retained element changes no intersection with a set that
excludes it. -/
theorem remainder_inter_eq {sizes : Fin m → ℕ} {a : A} {i : Fin m}
    (P : ConditionedPartition sizes a i) (G : Finset A) (ha : a ∉ G) :
    remainder P ∩ G = part P.val i ∩ G := by
  ext b
  simp only [remainder, Finset.mem_inter, Finset.mem_erase]
  constructor
  · exact fun h => ⟨h.1.2, h.2⟩
  · intro h
    exact ⟨⟨fun hba => ha (hba ▸ h.2), h.1⟩, h.2⟩

/-- The source sample size is feasible because an actual conditional partition
has been constructed and its remainder is a subset of the other elements. -/
theorem remainder_size_le_population (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (a : A) (i : Fin m) (hi : 0 < sizes i) :
    sizes i - 1 ≤ ((Finset.univ : Finset A).erase a).card := by
  obtain ⟨P⟩ := conditionedPartition_nonempty sizes hsum a i hi
  obtain ⟨hsub, hcard⟩ := Finset.mem_powersetCard.mp (remainder_mem_space P)
  rw [← hcard]
  exact Finset.card_le_card hsub

/-- Exact comparison of a containing-part event with the exposed fixed-size
subset event, before invoking any concentration estimate. -/
theorem conditional_currentPart_probability_eq (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (a : A) (i : Fin m) (hi : 0 < sizes i)
    (G : Finset A) (ha : a ∉ G) (q : ℝ) :
    conditionedEventProbabilityReal sizes a i (currentPartCountBad sizes a G q) =
      (((((Finset.univ : Finset A).erase a).powersetCard (sizes i - 1)).filter
        (fun R => ((R ∩ G).card : ℝ) < q * ((sizes i - 1 : ℕ) : ℝ))).card : ℝ) /
          ((((Finset.univ : Finset A).erase a).powersetCard (sizes i - 1)).card : ℝ) := by
  have hcard : Fintype.card {P : ConditionedPartition sizes a i //
        currentPartCountBad sizes a G q P.val} =
      Fintype.card {P : ConditionedPartition sizes a i //
        ((remainder P ∩ G).card : ℝ) < q * ((sizes i - 1 : ℕ) : ℝ)} := by
    apply Fintype.card_congr
    apply Equiv.subtypeEquivRight
    intro P
    unfold currentPartCountBad
    rw [P.property, remainder_inter_eq P G ha]
  unfold conditionedEventProbabilityReal
  rw [hcard]
  exact conditional_event_probability_real sizes hsum a i hi
    (fun R => ((R ∩ G).card : ℝ) < q * ((sizes i - 1 : ℕ) : ℝ))

end
end GRWTSK.BalancedPartitionTails
