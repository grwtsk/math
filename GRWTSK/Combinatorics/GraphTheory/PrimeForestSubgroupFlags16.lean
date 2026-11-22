/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean elaboration and axiom audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeBeaconCardinality

/-!
# Actual binary group/subgroup flags behind hierarchical prime forests

The 16-bit address carrier is the additive group (ZMod 2)^(Port 4).
The zero-syndrome set is an additive subgroup. Requiring any chosen
set of coordinates to be zero gives a further additive subgroup.
Nested coordinate conditions yield genuine nested subgroups, and
agreement on selected coordinates means precisely membership in a
coset of that subgroup.

A numerical sorting/ranking of the same addresses is NOT automatically
a subgroup isomorphism. Proving a particular 12-bit systematic forest
directory agrees with this chain is a separate source-return theorem.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeForestSubgroupFlags16

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality

/-- Frozen addresses with a selected family of further zero coordinates. -/
def fixedCoordinateSubgroup (J : Finset (Port 4)) : AddSubgroup (Cell 4) where
  carrier := {x | Frozen 4 x ∧ ∀ i ∈ J, x i = 0}
  zero_mem' := by
    constructor
    · change syndrome (0 : Cell 4) = 0
      simp [syndrome]
    · intro i _
      rfl
  add_mem' := by
    intro x y hx hy
    rcases hx with ⟨hsx, hcx⟩
    rcases hy with ⟨hsy, hcy⟩
    constructor
    · change syndrome (x + y) = 0
      change syndrome x = 0 at hsx
      change syndrome y = 0 at hsy
      rw [syndrome_add, hsx, hsy, zero_add]
    · intro i hi
      change (x + y) i = 0
      simp [hcx i hi, hcy i hi]
  neg_mem' := by
    intro x hx
    rcases hx with ⟨hsx, hcx⟩
    constructor
    · change syndrome (-x) = 0
      have hmap := (syndromeHom 4).map_neg x
      change syndrome (-x) = -(syndrome x) at hmap
      change syndrome x = 0 at hsx
      rw [hmap, hsx, neg_zero]
    · intro i hi
      change (-x) i = 0
      simp [hcx i hi]

theorem fixedCoordinateSubgroup_antitone
    {J K : Finset (Port 4)} (hJK : J ⊆ K) :
    fixedCoordinateSubgroup K ≤ fixedCoordinateSubgroup J := by
  intro x hx
  change (Frozen 4 x ∧ ∀ i ∈ K, x i = 0) at hx
  change Frozen 4 x ∧ ∀ i ∈ J, x i = 0
  exact ⟨hx.1, fun i hi => hx.2 i (hJK hi)⟩

/-- Coordinate equality between two frozen beacons in a selected family. -/
def AgreeOn (J : Finset (Port 4)) (a b : Beacon 4) : Prop :=
  ∀ i ∈ J, a.1 i = b.1 i

/-- Agreement in J is exactly membership of the difference in the
corresponding additive subgroup: the basic coset-law for forest flags. -/
theorem agreeOn_iff_subgroup_difference
    (J : Finset (Port 4)) (a b : Beacon 4) :
    AgreeOn J a b ↔ a.1 - b.1 ∈ fixedCoordinateSubgroup J := by
  constructor
  · intro h
    change Frozen 4 (a.1 - b.1) ∧
      ∀ i ∈ J, (a.1 - b.1) i = 0
    constructor
    · change syndrome (a.1 - b.1) = 0
      have ha : syndrome a.1 = 0 := beacon_is_frozen a
      have hb : syndrome b.1 = 0 := beacon_is_frozen b
      have hmap := (syndromeHom 4).map_sub a.1 b.1
      change syndrome (a.1 - b.1) =
        syndrome a.1 - syndrome b.1 at hmap
      rw [hmap, ha, hb, sub_self]
    · intro i hi
      change (a.1 - b.1) i = 0
      simpa only [Pi.sub_apply, sub_eq_zero] using h i hi
  · intro h
    change Frozen 4 (a.1 - b.1) ∧
      ∀ i ∈ J, (a.1 - b.1) i = 0 at h
    intro i hi
    have hc := h.2 i hi
    change (a.1 - b.1) i = 0 at hc
    simpa only [Pi.sub_apply, sub_eq_zero] using hc

/-- A source-identified nested chain of true mathematical subgroups. -/
structure ForestFlag where
  forestFixed : Finset (Port 4)
  treeFixed : Finset (Port 4)
  neighborhoodFixed : Finset (Port 4)
  forest_le_tree : forestFixed ⊆ treeFixed
  tree_le_neighborhood : treeFixed ⊆ neighborhoodFixed

theorem forestFlag_subgroups_nested (F : ForestFlag) :
    fixedCoordinateSubgroup F.neighborhoodFixed ≤
      fixedCoordinateSubgroup F.treeFixed ∧
    fixedCoordinateSubgroup F.treeFixed ≤
      fixedCoordinateSubgroup F.forestFixed := by
  exact ⟨fixedCoordinateSubgroup_antitone F.tree_le_neighborhood,
    fixedCoordinateSubgroup_antitone F.forest_le_tree⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeForestSubgroupFlags16
