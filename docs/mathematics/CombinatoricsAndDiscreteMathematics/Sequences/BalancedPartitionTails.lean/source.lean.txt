/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
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


/-- The conditional law in the normalization used by the proved
hypergeometric estimates. -/
theorem conditional_currentPart_probability_eq_lowerTail (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (a : A) (i : Fin m) (hi : 0 < sizes i)
    (G : Finset A) (ha : a ∉ G) (q : ℝ) :
    conditionedEventProbabilityReal sizes a i (currentPartCountBad sizes a G q) =
      lowerTailProbability ((Finset.univ : Finset A).erase a) G (sizes i - 1) q := by
  rw [conditional_currentPart_probability_eq sizes hsum a i hi G ha q]
  simp only [lowerTailProbability, Finset.card_powersetCard]

omit [Fintype A] in
/-- With no ambient elements the strict lower-tail event is empty, including
sample size zero. This handles the degenerate population without a new
nonemptiness assumption in the partition theorems. -/
theorem lowerTailProbability_empty (G : Finset A) (k : ℕ) (q : ℝ) :
    lowerTailProbability (∅ : Finset A) G k q = 0 := by
  by_cases hk : k = 0
  · subst k
    simp [lowerTailProbability]
  · have hspace : (∅ : Finset A).powersetCard k = ∅ :=
      Finset.powersetCard_eq_empty.mpr (by simp; omega)
    simp [lowerTailProbability, hspace]

/-- A quarter-density set is underrepresented in the part containing a fixed
retained element with probability at most `exp(-K/32)`, where every part
retains at least `K` other members. The statement concerns the actual uniform
space of all prescribed-size ordered partitions. -/
theorem partition_currentPart_quarter_lowerTail (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (hpos : ∀ j, 0 < sizes j)
    (a : A) (G : Finset A) (hG : G ⊆ (Finset.univ : Finset A).erase a)
    (hdensity : (((Fintype.card A - 1 : ℕ) : ℝ) / 4) ≤ G.card)
    (K : ℝ) (hK : ∀ j, K ≤ ((sizes j - 1 : ℕ) : ℝ)) :
    partitionProbabilityReal sizes (currentPartCountBad sizes a G (1 / 8)) ≤
      Real.exp (-K / 32) := by
  apply partition_event_le_of_conditional sizes hsum hpos a
  intro i
  have ha : a ∉ G := fun h => Finset.notMem_erase a Finset.univ (hG h)
  rw [conditional_currentPart_probability_eq_lowerTail sizes hsum a i (hpos i) G ha]
  by_cases hpopulation : ((Finset.univ : Finset A).erase a).Nonempty
  · have hdensity' : ((((Finset.univ : Finset A).erase a).card : ℝ) / 4) ≤ G.card := by
      simpa only [Finset.card_erase_of_mem (Finset.mem_univ a), Finset.card_univ] using hdensity
    have htail := lowerTailProbability_quarter ((Finset.univ : Finset A).erase a) G hG
      hpopulation (sizes i - 1) (remainder_size_le_population sizes hsum a i (hpos i)) hdensity'
    exact htail.trans (Real.exp_le_exp.mpr (by linarith [hK i]))
  · have hempty := Finset.not_nonempty_iff_eq_empty.mp hpopulation
    rw [hempty, lowerTailProbability_empty]
    exact (Real.exp_pos _).le

/-- The corresponding three-quarter-density estimate, with the source's
one-half threshold and the proved rate `exp(-K/24)`. -/
theorem partition_currentPart_threeQuarters_lowerTail (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (hpos : ∀ j, 0 < sizes j)
    (a : A) (G : Finset A) (hG : G ⊆ (Finset.univ : Finset A).erase a)
    (hdensity : (3 / 4 : ℝ) * ((Fintype.card A - 1 : ℕ) : ℝ) ≤ G.card)
    (K : ℝ) (hK : ∀ j, K ≤ ((sizes j - 1 : ℕ) : ℝ)) :
    partitionProbabilityReal sizes (currentPartCountBad sizes a G (1 / 2)) ≤
      Real.exp (-K / 24) := by
  apply partition_event_le_of_conditional sizes hsum hpos a
  intro i
  have ha : a ∉ G := fun h => Finset.notMem_erase a Finset.univ (hG h)
  rw [conditional_currentPart_probability_eq_lowerTail sizes hsum a i (hpos i) G ha]
  by_cases hpopulation : ((Finset.univ : Finset A).erase a).Nonempty
  · have hdensity' : (3 / 4 : ℝ) * (((Finset.univ : Finset A).erase a).card : ℝ) ≤ G.card := by
      simpa only [Finset.card_erase_of_mem (Finset.mem_univ a), Finset.card_univ] using hdensity
    have htail := lowerTailProbability_threeQuarters ((Finset.univ : Finset A).erase a) G hG
      hpopulation (sizes i - 1) (remainder_size_le_population sizes hsum a i (hpos i)) hdensity'
    exact htail.trans (Real.exp_le_exp.mpr (by linarith [hK i]))
  · have hempty := Finset.not_nonempty_iff_eq_empty.mp hpopulation
    rw [hempty, lowerTailProbability_empty]
    exact (Real.exp_pos _).le

end
end GRWTSK.BalancedPartitionTails
