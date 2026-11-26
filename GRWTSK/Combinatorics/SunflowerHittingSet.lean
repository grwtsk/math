/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
SPDX-License-Identifier: MIT
-/
import Mathlib.Data.Finset.Card

/-!
# Sunflower reduction for bounded hitting sets

A sunflower may be replaced by its core when the number of petals exceeds
the hitting-set budget. The reduction preserves the feasible hitting sets
pointwise, including their values under any fixed objective on hitting sets.
-/

namespace GRWTSK.Combinatorics.SunflowerHittingSet

universe u

variable {α : Type u} [DecidableEq α]

/-- Every edge of the family contains a chosen vertex. -/
def HitsEvery (H : Finset α) (F : Finset (Finset α)) : Prop :=
  ∀ A ∈ F, ∃ x ∈ H, x ∈ A

/-- Replacing the sunflower subfamily `G` by its core preserves a particular
hitting set smaller than `G`. The pairwise-intersection hypothesis uses the
same finite-set representation as the family 379 sunflower statement. -/
theorem hitsEvery_replaceCore_iff {F G : Finset (Finset α)} {H K : Finset α}
    (hG : G ⊆ F) (hPetals : 1 < G.card) (hBudget : H.card < G.card)
    (hCore : ∀ A ∈ G, ∀ B ∈ G, A ≠ B → A ∩ B = K) :
    HitsEvery H (insert K (F \ G)) ↔ HitsEvery H F := by
  have core_subset : ∀ A ∈ G, K ⊆ A := by
    obtain ⟨P, hP, Q, hQ, hPQ⟩ := Finset.one_lt_card.mp hPetals
    intro A hA
    by_cases hAP : A = P
    · rw [← hCore A hA Q hQ (hAP.trans_ne hPQ)]
      exact Finset.inter_subset_left
    · rw [← hCore A hA P hP hAP]
      exact Finset.inter_subset_left
  constructor
  · intro h A hA
    by_cases hAG : A ∈ G
    · obtain ⟨x, hxH, hxK⟩ := h K (Finset.mem_insert_self _ _)
      exact ⟨x, hxH, core_subset A hAG hxK⟩
    · exact h A (Finset.mem_insert_of_mem (Finset.mem_sdiff.mpr ⟨hA, hAG⟩))
  · intro h A hA
    rcases Finset.mem_insert.mp hA with rfl | hRemaining
    · by_contra! hAvoid
      classical
      have hChoose (A : G) : ∃ x ∈ H, x ∈ (A : Finset α) :=
        h A (hG A.property)
      choose f hfH hfEdge using hChoose
      let select : G → H := fun A => ⟨f A, hfH A⟩
      have hInjective : Function.Injective select := by
        intro A B hEq
        by_contra hNe
        have hEdgeNe : (A : Finset α) ≠ (B : Finset α) :=
          fun hVal => hNe (Subtype.ext hVal)
        have hx : f A = f B := congrArg Subtype.val hEq
        have hBoth : f A ∈ (A : Finset α) ∩ (B : Finset α) :=
          Finset.mem_inter.mpr ⟨hfEdge A, hx ▸ hfEdge B⟩
        rw [hCore A A.property B B.property hEdgeNe] at hBoth
        exact hAvoid (f A) (hfH A) hBoth
      exact hBudget.not_ge (Finset.card_le_card_of_injective hInjective)
    · exact h A (Finset.mem_sdiff.mp hRemaining).1

/-- A replacement strictly decreases the number of edges, even if the core
already occurs elsewhere in the family. -/
theorem card_replaceCore_lt {F G : Finset (Finset α)} (K : Finset α)
    (hG : G ⊆ F) (hPetals : 1 < G.card) :
    (insert K (F \ G)).card < F.card := by
  have hSplit := Finset.card_sdiff_add_card_eq_card hG
  have hInsert := Finset.card_insert_le K (F \ G)
  omega

/-- Repeated replacement terminates in an `r`-sunflower-free family with
exactly the same hitting sets up to budget `b`. Each final edge is contained
in an original edge, so a uniform upper bound on edge size is preserved. -/
theorem exists_sunflowerFree_hittingEquivalent
    (r b : ℕ) (hPetals : 1 < r) (hBudget : b < r)
    (F : Finset (Finset α)) :
    ∃ F' : Finset (Finset α),
      (∀ A ∈ F', ∃ B ∈ F, A ⊆ B) ∧
      (∀ H : Finset α, H.card ≤ b → (HitsEvery H F' ↔ HitsEvery H F)) ∧
      ¬ ∃ G ⊆ F', G.card = r ∧ ∃ K : Finset α,
        ∀ A ∈ G, ∀ B ∈ G, A ≠ B → A ∩ B = K := by
  classical
  generalize hF : F.card = n
  induction n using Nat.strongRecOn generalizing F with
  | ind n ih =>
    by_cases h : ∃ G ⊆ F, G.card = r ∧ ∃ K : Finset α,
        ∀ A ∈ G, ∀ B ∈ G, A ≠ B → A ∩ B = K
    · obtain ⟨G, hG, hCard, K, hCore⟩ := h
      have hMany : 1 < G.card := hCard.symm ▸ hPetals
      obtain ⟨F', hWithin, hEquivalent, hFree⟩ :=
        ih _ (hF ▸ card_replaceCore_lt K hG hMany) _ rfl
      refine ⟨F', ?_, ?_, hFree⟩
      · intro A hA
        obtain ⟨B, hB, hAB⟩ := hWithin A hA
        rcases Finset.mem_insert.mp hB with hBK | hB'
        · rw [hBK] at hAB
          obtain ⟨P, hP, Q, hQ, hPQ⟩ := Finset.one_lt_card.mp hMany
          have hKP : K ⊆ P := by
            rw [← hCore P hP Q hQ hPQ]
            exact Finset.inter_subset_left
          exact ⟨P, hG hP, hAB.trans hKP⟩
        · exact ⟨B, (Finset.mem_sdiff.mp hB').1, hAB⟩
      · intro H hH
        have hSmall : H.card < G.card := hCard.symm ▸ lt_of_le_of_lt hH hBudget
        exact (hEquivalent H hH).trans (hitsEvery_replaceCore_iff hG hMany hSmall hCore)
    · exact ⟨F, fun A hA => ⟨A, hA, Finset.Subset.refl _⟩, fun _ _ => Iff.rfl, h⟩

private def padEdge (k : ℕ) (A : Finset α) :
    Finset (α ⊕ (Finset α × ℕ)) :=
  A.image Sum.inl ∪ (Finset.range (k - A.card)).image (fun i => Sum.inr (A, i))

private theorem mem_padEdge_inl (k : ℕ) (A : Finset α) (x : α) :
    Sum.inl x ∈ padEdge k A ↔ x ∈ A := by
  simp [padEdge]

private theorem padEdge_injective (k : ℕ) :
    Function.Injective (padEdge (α := α) k) := by
  intro A B hAB
  ext x
  have h := congrArg (fun s : Finset (α ⊕ (Finset α × ℕ)) => Sum.inl x ∈ s) hAB
  simpa only [mem_padEdge_inl] using Iff.of_eq h

private theorem card_padEdge (k : ℕ) (A : Finset α) (hA : A.card ≤ k) :
    (padEdge k A).card = k := by
  have hDisjoint : Disjoint
      (A.image (Sum.inl : α → α ⊕ (Finset α × ℕ)))
      ((Finset.range (k - A.card)).image (fun i => Sum.inr (A, i))) := by
    rw [Finset.disjoint_left]
    intro x hLeft hRight
    obtain ⟨a, _, rfl⟩ := Finset.mem_image.mp hLeft
    obtain ⟨i, _, hi⟩ := Finset.mem_image.mp hRight
    cases hi
  have hPrivate :
      Function.Injective (fun i : ℕ => (Sum.inr (A, i) : α ⊕ (Finset α × ℕ))) :=
    fun _ _ h => congrArg Prod.snd (Sum.inr.inj h)
  rw [padEdge, Finset.card_union_of_disjoint hDisjoint,
    Finset.card_image_of_injective _ Sum.inl_injective,
    Finset.card_image_of_injective _ hPrivate, Finset.card_range]
  exact Nat.add_sub_of_le hA

open scoped Classical in
/-- A uniform fixed-petal bound gives the same bound for arbitrary families
of bounded width. The tags used to pad an edge are private to that edge. -/
theorem exists_sunflower_of_widthBound
    (r C k : ℕ) (hPetals : 1 < r)
    (findUniform : ∀ (d : ℕ) (β : Type u) (F : Finset (Finset β)),
      (∀ A ∈ F, A.card = d) → C ^ d < F.card →
      ∃ G ⊆ F, G.card = r ∧ ∃ K : Finset β,
        ∀ A ∈ G, ∀ B ∈ G, A ≠ B → A ∩ B = K)
    (F : Finset (Finset α)) (hWidth : ∀ A ∈ F, A.card ≤ k)
    (hLarge : C ^ k < F.card) :
    ∃ G ⊆ F, G.card = r ∧ ∃ K : Finset α,
      ∀ A ∈ G, ∀ B ∈ G, A ≠ B → A ∩ B = K := by
  let : DecidableEq (α ⊕ (Finset α × ℕ)) := Classical.decEq _
  let padded := F.image (padEdge k)
  have hPaddedLarge : C ^ k < padded.card := by
    simpa only [padded, Finset.card_image_of_injective F (padEdge_injective k)]
      using hLarge
  have hPaddedUniform : ∀ A ∈ padded, A.card = k := by
    intro A hA
    obtain ⟨B, hB, rfl⟩ := Finset.mem_image.mp hA
    exact card_padEdge k B (hWidth B hB)
  obtain ⟨G', hG', hCard', K', hCore'⟩ :=
    findUniform k (α ⊕ (Finset α × ℕ)) padded hPaddedUniform hPaddedLarge
  let G := F.filter (fun A => padEdge k A ∈ G')
  have hG : G ⊆ F := Finset.filter_subset _ _
  have hImage : G.image (padEdge k) = G' := by
    ext A
    constructor
    · intro hA
      obtain ⟨B, hB, rfl⟩ := Finset.mem_image.mp hA
      exact (Finset.mem_filter.mp hB).2
    · intro hA
      obtain ⟨B, hB, hBA⟩ := Finset.mem_image.mp (hG' hA)
      exact Finset.mem_image.mpr ⟨B, Finset.mem_filter.mpr ⟨hB, hBA ▸ hA⟩, hBA⟩
  have hCard : G.card = r := by
    rw [← hImage, Finset.card_image_of_injective _ (padEdge_injective k)] at hCard'
    exact hCard'
  have hMany : 1 < G.card := hCard.symm ▸ hPetals
  obtain ⟨P, hP, Q, hQ, hPQ⟩ := Finset.one_lt_card.mp hMany
  have hPaddedCore (A : Finset α) (hA : A ∈ G) (B : Finset α) (hB : B ∈ G)
      (hAB : A ≠ B) : padEdge k A ∩ padEdge k B = K' :=
    hCore' _ (Finset.mem_filter.mp hA).2 _ (Finset.mem_filter.mp hB).2
      (fun h => hAB (padEdge_injective k h))
  refine ⟨G, hG, hCard, P ∩ Q, ?_⟩
  intro A hA B hB hAB
  ext x
  have h := congrArg (fun s : Finset (α ⊕ (Finset α × ℕ)) => Sum.inl x ∈ s)
    ((hPaddedCore A hA B hB hAB).trans (hPaddedCore P hP Q hQ hPQ).symm)
  simpa only [Finset.mem_inter, mem_padEdge_inl] using Iff.of_eq h

open scoped Classical in
/-- The exact uniform bound supplies an edge cap for the pointwise-equivalent
bounded search instance. The theorem supplies an existence bound. -/
theorem exists_bounded_hittingEquivalent
    (r b C k : ℕ) (hPetals : 1 < r) (hBudget : b < r)
    (findUniform : ∀ (d : ℕ) (β : Type u) (F : Finset (Finset β)),
      (∀ A ∈ F, A.card = d) → C ^ d < F.card →
      ∃ G ⊆ F, G.card = r ∧ ∃ K : Finset β,
        ∀ A ∈ G, ∀ B ∈ G, A ≠ B → A ∩ B = K)
    (F : Finset (Finset α)) (hWidth : ∀ A ∈ F, A.card ≤ k) :
    ∃ F' : Finset (Finset α), F'.card ≤ C ^ k ∧
      (∀ A ∈ F', ∃ B ∈ F, A ⊆ B) ∧
      (∀ H : Finset α, H.card ≤ b → (HitsEvery H F' ↔ HitsEvery H F)) := by
  obtain ⟨F', hWithin, hEquivalent, hFree⟩ :=
    exists_sunflowerFree_hittingEquivalent r b hPetals hBudget F
  refine ⟨F', ?_, hWithin, hEquivalent⟩
  have hWidth' : ∀ A ∈ F', A.card ≤ k := by
    intro A hA
    obtain ⟨B, hB, hAB⟩ := hWithin A hA
    exact (Finset.card_le_card hAB).trans (hWidth B hB)
  by_contra! hLarge
  exact hFree (exists_sunflower_of_widthBound r C k hPetals findUniform F' hWidth' hLarge)

end GRWTSK.Combinatorics.SunflowerHittingSet
