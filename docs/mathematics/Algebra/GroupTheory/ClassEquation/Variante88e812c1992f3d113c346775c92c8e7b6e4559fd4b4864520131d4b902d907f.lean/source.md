# Complete source: GRWTSK.Algebra.GroupTheory.ClassEquation.Variante88e812c1992f3d113c346775c92c8e7b6e4559fd4b4864520131d4b902d907f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `485f6c024f126c10bc5a1715bbbcc025826058f0` · SHA-256 `e88e812c1992f3d113c346775c92c8e7b6e4559fd4b4864520131d4b902d907f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Eric Rodriguez
-/
module

public import Mathlib.Algebra.BigOperators.Finprod
public import Mathlib.Algebra.Group.ConjFinite
public import Mathlib.Algebra.Group.Subgroup.Finite
public import Mathlib.Data.Set.Card
public import Mathlib.GroupTheory.Subgroup.Center

/-!
# Class Equation

This file establishes the class equation for finite groups.

## Main statements

* `Group.card_center_add_sum_card_noncenter_eq_card`: The **class equation** for finite groups.
  The cardinality of a group is equal to the size of its center plus the sum of the size of all its
  nontrivial conjugacy classes. Also `Group.nat_card_center_add_sum_card_noncenter_eq_card`.

-/

public section

open ConjClasses

variable (G : Type*) [Group G]

/-- Conjugacy classes form a partition of G, stated in terms of cardinality. -/
theorem sum_conjClasses_card_eq_card [Fintype <| ConjClasses G] [Fintype G]
    [∀ x : ConjClasses G, Fintype x.carrier] :
    ∑ x : ConjClasses G, x.carrier.toFinset.card = Fintype.card G := by
  suffices (Σ x : ConjClasses G, x.carrier) ≃ G by simpa using! (Fintype.card_congr this)
  simpa [carrier_eq_preimage_mk] using! Equiv.sigmaFiberEquiv ConjClasses.mk

/-- Conjugacy classes form a partition of G, stated in terms of cardinality. -/
theorem Group.sum_card_conj_classes_eq_card [Finite G] :
    ∑ᶠ x : ConjClasses G, x.carrier.ncard = Nat.card G := by
  classical
  cases nonempty_fintype G
  simp [← sum_conjClasses_card_eq_card, finsum_eq_sum_of_fintype]

set_option backward.isDefEq.respectTransparency false in
/-- The **class equation** for finite groups. The cardinality of a group is equal to the size
of its center plus the sum of the size of all its nontrivial conjugacy classes. -/
theorem Group.nat_card_center_add_sum_card_noncenter_eq_card [Finite G] :
    Nat.card (Subgroup.center G) + ∑ᶠ x ∈ noncenter G, Nat.card x.carrier = Nat.card G := by
  classical
  cases nonempty_fintype G
  rw [@Nat.card_eq_fintype_card G, ← sum_conjClasses_card_eq_card, ←
    Finset.sum_sdiff (ConjClasses.noncenter G).toFinset.subset_univ]
  simp only [Nat.card_eq_fintype_card, Set.toFinset_card]
  congr 1
  swap
  · convert! finsum_cond_eq_sum_of_cond_iff _ _
    simp [Set.mem_toFinset]
  calc
    Fintype.card (Subgroup.center G) = Fintype.card ((noncenter G)ᶜ : Set _) :=
      Fintype.card_congr ((mk_bijOn G).equiv _)
    _ = Finset.card (Finset.univ \ (noncenter G).toFinset) := by
      rw [← Set.toFinset_card, Set.toFinset_compl, Finset.compl_eq_univ_sdiff]
    _ = _ := ?_
  rw [Finset.card_eq_sum_ones]
  refine Finset.sum_congr rfl ?_
  rintro ⟨g⟩ hg
  simp only [noncenter, Set.toFinset_ofPred, Finset.mem_univ, true_and,
             Finset.mem_sdiff, Finset.mem_filter, Set.not_nontrivial_iff] at hg
  rw [eq_comm, ← Set.toFinset_card, Finset.card_eq_one]
  exact ⟨g, Finset.coe_injective <| by simpa using hg.eq_singleton_of_mem mem_carrier_mk⟩

theorem Group.card_center_add_sum_card_noncenter_eq_card (G) [Group G]
    [∀ x : ConjClasses G, Fintype x.carrier] [Fintype G] [Fintype <| Subgroup.center G]
    [Fintype <| noncenter G] : Fintype.card (Subgroup.center G) +
    ∑ x ∈ (noncenter G).toFinset, x.carrier.toFinset.card = Fintype.card G := by
  convert! Group.nat_card_center_add_sum_card_noncenter_eq_card G using 2
  · simp
  · rw [← finsum_set_coe_eq_finsum_mem (noncenter G), finsum_eq_sum_of_fintype,
      ← Finset.sum_set_coe]
    simp
  · simp
```
