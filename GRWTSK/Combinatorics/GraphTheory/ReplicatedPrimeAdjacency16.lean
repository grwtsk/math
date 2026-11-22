/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean elaboration, axiom audit and
fresh independent proof replay: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeBeaconCardinality

/-!
# Correct two-reference prime adjacency on a sixteen-dimensional binary cube

Mathematical scope correction:

* The original 4096 *occupied* zero-syndrome positions have EXACTLY ONE
  face-adjacent prime position at every cell, not two.
* To obtain two distinct face-adjacent prime *identities* at every cell,
  this module uses two disjoint syndrome layers, each containing 4096
  positions, and assigns each base prime identity to a neighboring
  replica. This occupies 8192 positions while retaining 4096 distinct
  identifiers. It does NOT model a permutation of 1..65536 into cells.
* A separate longer-range routing graph would be needed if physical
  occupancy is restricted to the original 4096 addresses.

The two-syndrome property is independent of any permutation used later
to optimize the assignment of prime identities to base addresses.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReplicatedPrimeAdjacency16

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality

/-- The second syndrome, with its low bit set. -/
def secondarySyndrome : Port 4 :=
  fun i => if i = 0 then 1 else 0

theorem secondarySyndrome_ne_zero :
    secondarySyndrome ≠ (0 : Port 4) := by
  intro h
  have h0 := congrArg (fun f : Port 4 => f (0 : Fin 4)) h
  norm_num [secondarySyndrome] at h0

theorem secondarySyndrome_add_self :
    secondarySyndrome + secondarySyndrome = 0 := by
  funext i
  fin_cases i <;> decide

/-- The unique face neighbor in any prescribed syndrome class. -/
def layerNeighbor (t : Port 4) (x : Cell 4) : Cell 4 :=
  neighbor x (t - syndrome x)

theorem layerNeighbor_syndrome (t : Port 4) (x : Cell 4) :
    syndrome (layerNeighbor t x) = t := by
  unfold layerNeighbor
  rw [syndrome_neighbor]
  abel

/-- Exact face adjacency, with exactly one changed binary coordinate. -/
def FaceAdjacent (x y : Cell 4) : Prop :=
  ∃ i : Port 4, y = neighbor x i

theorem layerNeighbor_adjacent (t : Port 4) (x : Cell 4) :
    FaceAdjacent x (layerNeighbor t x) :=
  ⟨t - syndrome x, rfl⟩

theorem layerNeighbor_unique (t : Port 4) (x y : Cell 4)
    (hxy : FaceAdjacent x y) (hy : syndrome y = t) :
    y = layerNeighbor t x := by
  rcases hxy with ⟨i, rfl⟩
  have hs : syndrome x + i = t := by
    simpa only [syndrome_neighbor] using hy
  have hi : i = t - syndrome x := by
    calc
      i = (syndrome x + i) - syndrome x := by abel
      _ = t - syndrome x := congrArg (fun s : Port 4 => s - syndrome x) hs
  exact congrArg (neighbor x) hi

/-- Every cell has precisely one face neighbor in each syndrome class. -/
theorem existsUnique_layerNeighbor (t : Port 4) (x : Cell 4) :
    ∃! y : Cell 4, FaceAdjacent x y ∧ syndrome y = t := by
  refine ⟨layerNeighbor t x,
    ⟨layerNeighbor_adjacent t x, layerNeighbor_syndrome t x⟩, ?_⟩
  intro y hy
  exact layerNeighbor_unique t x y hy.1 hy.2

/-- Primary and secondary syndrome classes are disjoint. -/
theorem primary_secondary_disjoint (y : Cell 4) :
    ¬ (syndrome y = 0 ∧ syndrome y = secondarySyndrome) := by
  rintro ⟨h0, h1⟩
  exact secondarySyndrome_ne_zero (h1.symm.trans h0)

/-- The two selected physical prime positions are distinct face neighbors. -/
theorem two_distinct_face_neighbors (x : Cell 4) :
    layerNeighbor 0 x ≠ layerNeighbor secondarySyndrome x := by
  intro h
  have hs := congrArg syndrome h
  rw [layerNeighbor_syndrome, layerNeighbor_syndrome] at hs
  exact secondarySyndrome_ne_zero hs.symm

/-- The complete marked occupation is the UNION of two syndrome layers. -/
def Marked (y : Cell 4) : Prop :=
  syndrome y = 0 ∨ syndrome y = secondarySyndrome

/-- No extra marked face-neighbor exists beyond the two listed ones. -/
theorem marked_face_neighbor_classification (x y : Cell 4)
    (hface : FaceAdjacent x y) (hmark : Marked y) :
    y = layerNeighbor 0 x ∨ y = layerNeighbor secondarySyndrome x := by
  rcases hmark with h0 | h1
  · exact Or.inl (layerNeighbor_unique 0 x y hface h0)
  · exact Or.inr (layerNeighbor_unique secondarySyndrome x y hface h1)

/-- Construct two distinct real face neighbors in the two marked layers. -/
theorem two_face_neighbors (x : Cell 4) :
    ∃ y z : Cell 4, y ≠ z ∧
      FaceAdjacent x y ∧ FaceAdjacent x z ∧
      syndrome y = 0 ∧ syndrome z = secondarySyndrome := by
  refine ⟨layerNeighbor 0 x, layerNeighbor secondarySyndrome x,
    two_distinct_face_neighbors x,
    layerNeighbor_adjacent 0 x,
    layerNeighbor_adjacent secondarySyndrome x,
    layerNeighbor_syndrome 0 x,
    layerNeighbor_syndrome secondarySyndrome x⟩

/-- The old one-layer layout cannot give two distinct prime face neighbors. -/
theorem original_layout_not_two (x : Cell 4) :
    ¬ ∃ y z : Cell 4,
      y ≠ z ∧ FaceAdjacent x y ∧ FaceAdjacent x z ∧
      Frozen 4 y ∧ Frozen 4 z := by
  rintro ⟨y, z, hne, hy, hz, hfy, hfz⟩
  have h1 : y = guidepost x :=
    unique_frozen_neighbor x y hy hfy
  have h2 : z = guidepost x :=
    unique_frozen_neighbor x z hz hfz
  exact hne (h1.trans h2.symm)

/-- The physical replica of a base beacon is one actual face-step away. -/
def replicaPosition (b : Beacon 4) : Cell 4 :=
  neighbor b.1 secondarySyndrome

theorem replicaPosition_syndrome (b : Beacon 4) :
    syndrome (replicaPosition b) = secondarySyndrome := by
  have hb : syndrome b.1 = 0 := beacon_is_frozen b
  simp only [replicaPosition, syndrome_neighbor, hb, zero_add]

theorem replicaPosition_injective : Function.Injective replicaPosition := by
  intro b c h
  have hh : b.1 + impulse secondarySyndrome =
      c.1 + impulse secondarySyndrome := h
  exact Subtype.ext (add_right_cancel hh)

/-- Parity is the sum of all sixteen binary coordinates. -/
def parity (x : Cell 4) : ZMod 2 :=
  ∑ i : Port 4, x i

theorem parity_impulse (i : Port 4) :
    parity (impulse i) = 1 := by
  classical
  simp [parity, impulse, Pi.single_apply]

theorem parity_add (x y : Cell 4) :
    parity (x + y) = parity x + parity y := by
  classical
  simp [parity, Finset.sum_add_distrib]

theorem parity_neighbor (x : Cell 4) (i : Port 4) :
    parity (neighbor x i) = parity x + 1 := by
  rw [neighbor, parity_add, parity_impulse]

theorem parity_two_flips (x : Cell 4) (i j : Port 4) :
    parity (neighbor (neighbor x i) j) = parity x := by
  rw [parity_neighbor, parity_neighbor]
  have htwo : (1 : ZMod 2) + 1 = 0 := by decide
  rw [← add_assoc, htwo, add_zero]

/-- A two-face-step endpoint is not any one-face-step endpoint.
This is the triangle-free property of the actual binary cube. -/
theorem no_two_flips_as_one (x : Cell 4) (i j k : Port 4) :
    neighbor (neighbor x i) j ≠ neighbor x k := by
  intro h
  have hp := congrArg parity h
  rw [parity_two_flips, parity_neighbor] at hp
  have h01 : (0 : ZMod 2) = 1 :=
    add_left_cancel (by simpa only [add_zero] using hp)
  exact (by decide : (0 : ZMod 2) ≠ 1) h01

/-- The primary frozen beacon of the current vertex. -/
def primaryBase (x : Cell 4) : Beacon 4 :=
  ⟨layerNeighbor 0 x, by
    change syndrome (layerNeighbor 0 x) = 0
    exact layerNeighbor_syndrome 0 x⟩

/-- Undo the physical replica step to recover its original beacon. -/
def secondaryBase (x : Cell 4) : Beacon 4 :=
  ⟨neighbor (layerNeighbor secondarySyndrome x) secondarySyndrome, by
    change syndrome
      (neighbor (layerNeighbor secondarySyndrome x) secondarySyndrome) = 0
    rw [syndrome_neighbor, layerNeighbor_syndrome,
      secondarySyndrome_add_self]⟩

/-- The two adjacent prime positions encode DIFFERENT base identities. -/
theorem primaryBase_ne_secondaryBase (x : Cell 4) :
    primaryBase x ≠ secondaryBase x := by
  intro h
  have hh := congrArg Subtype.val h
  change neighbor x ((0 : Port 4) - syndrome x) =
    neighbor (neighbor x (secondarySyndrome - syndrome x))
      secondarySyndrome at hh
  exact (no_two_flips_as_one x
    (secondarySyndrome - syndrome x) secondarySyndrome
    ((0 : Port 4) - syndrome x)) hh.symm

/-- This label-disjointness survives ANY optimized injective assignment. -/
theorem distinct_labels_under_any_injection {Label : Type*}
    (assign : Beacon 4 → Label)
    (hinj : Function.Injective assign) (x : Cell 4) :
    assign (primaryBase x) ≠ assign (secondaryBase x) :=
  hinj.ne (primaryBase_ne_secondaryBase x)

/-- Specialization to the previously checked actual prime-label function. -/
theorem distinct_actual_prime_labels (x : Cell 4) :
    beaconPrimeLabel (primaryBase x) ≠
      beaconPrimeLabel (secondaryBase x) :=
  distinct_labels_under_any_injection
    beaconPrimeLabel beaconPrimeLabel_injective x

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReplicatedPrimeAdjacency16
