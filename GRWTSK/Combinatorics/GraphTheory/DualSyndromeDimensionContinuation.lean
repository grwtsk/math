/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean compilation, axioms and fresh replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeBeaconCardinality

/-!
# All-dimension combinatorial continuation of the two-syndrome cover

This is an exact binary-cube theorem for every parameter m. The
hypercube has 2^m one-bit coordinate ports and 2^(2^m) vertices.
For any two distinct target syndromes, each vertex has exactly one
one-bit neighbor in each target fiber, hence exactly two marked
neighbors in the union.

A specific 64-dimensional instantiation is provided, along with a
finite-group kernel count. This is combinatorial continuation, NOT
analytic continuation of an automorphic/motivic L-function, and it
does not imply 4096 labels suffice for the whole 64D cube.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DualSyndromeDimensionContinuation

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality

/-- Unique neighboring position whose syndrome has the chosen target. -/
def targetNeighbor {m : ℕ} (t : Port m) (x : Cell m) : Cell m :=
  neighbor x (t - syndrome x)

theorem targetNeighbor_syndrome {m : ℕ}
    (t : Port m) (x : Cell m) :
    syndrome (targetNeighbor t x) = t := by
  unfold targetNeighbor
  rw [syndrome_neighbor]
  abel

theorem targetNeighbor_is_face {m : ℕ}
    (t : Port m) (x : Cell m) :
    ∃ i : Port m, targetNeighbor t x = neighbor x i :=
  ⟨t - syndrome x, rfl⟩

theorem targetNeighbor_unique {m : ℕ}
    (t : Port m) (x y : Cell m)
    (hface : ∃ i : Port m, y = neighbor x i)
    (hsyndrome : syndrome y = t) :
    y = targetNeighbor t x := by
  rcases hface with ⟨i, rfl⟩
  have hsum : syndrome x + i = t := by
    simpa only [syndrome_neighbor] using hsyndrome
  have hport : i = t - syndrome x := by
    calc
      i = (syndrome x + i) - syndrome x := by abel
      _ = t - syndrome x :=
        congrArg (fun s : Port m => s - syndrome x) hsum
  exact congrArg (neighbor x) hport

/-- Each syndrome class contributes precisely one open face neighbor. -/
theorem existsUnique_targetNeighbor {m : ℕ}
    (t : Port m) (x : Cell m) :
    ∃! y : Cell m,
      (∃ i : Port m, y = neighbor x i) ∧
      syndrome y = t := by
  refine ⟨targetNeighbor t x,
    ⟨targetNeighbor_is_face t x, targetNeighbor_syndrome t x⟩, ?_⟩
  intro y h
  exact targetNeighbor_unique t x y h.1 h.2

theorem distinct_targetNeighbors {m : ℕ}
    (t u : Port m) (htu : t ≠ u) (x : Cell m) :
    targetNeighbor t x ≠ targetNeighbor u x := by
  intro h
  have hh := congrArg syndrome h
  rw [targetNeighbor_syndrome, targetNeighbor_syndrome] at hh
  exact htu hh

/-- Complete exact two-class cover at every admissible dimension. -/
theorem two_target_face_neighbors {m : ℕ}
    (t u : Port m) (htu : t ≠ u) (x : Cell m) :
    ∃ y z : Cell m, y ≠ z ∧
      (∃ i : Port m, y = neighbor x i) ∧
      (∃ j : Port m, z = neighbor x j) ∧
      syndrome y = t ∧ syndrome z = u := by
  refine ⟨targetNeighbor t x, targetNeighbor u x,
    distinct_targetNeighbors t u htu x,
    targetNeighbor_is_face t x,
    targetNeighbor_is_face u x,
    targetNeighbor_syndrome t x,
    targetNeighbor_syndrome u x⟩

/-- A 6-bit target syndrome supplies a real 64D second layer. -/
def target64 : Port 6 :=
  fun j => if j = 0 then 1 else 0

theorem target64_ne_zero : target64 ≠ (0 : Port 6) := by
  intro h
  have hh := congrArg (fun p : Port 6 => p (0 : Fin 6)) h
  norm_num [target64] at hh

theorem two_face_neighbors_64 (x : Cell 6) :
    ∃ y z : Cell 6, y ≠ z ∧
      (∃ i : Port 6, y = neighbor x i) ∧
      (∃ j : Port 6, z = neighbor x j) ∧
      syndrome y = 0 ∧ syndrome z = target64 :=
  two_target_face_neighbors 0 target64
    (by intro h; exact target64_ne_zero h.symm) x

/-- A 64D cube has 64 distinct one-bit directions. -/
theorem port_card_six : Fintype.card (Port 6) = 64 := by
  norm_num [Port, Fintype.card_fun]

/-- The 64D binary universe has 2^64 actual vertices. -/
theorem cell_card_six : Fintype.card (Cell 6) = 2 ^ 64 := by
  norm_num [Cell, Port, Fintype.card_fun]

/-- The 64D primary syndrome kernel contains 2^58 beacons, not 4096.
A whole-space two-syndrome cover therefore occupies 2^59 positions. -/
theorem beacon_card_six :
    Fintype.card (Beacon 6) = 2 ^ 58 := by
  classical
  have hindex :
      (syndromeHom 6).ker.index = Nat.card (Port 6) := by
    calc
      (syndromeHom 6).ker.index =
          Nat.card (syndromeHom 6).range :=
        AddSubgroup.index_ker (syndromeHom 6)
      _ = Nat.card (Port 6) := by
        simpa [(syndromeHom 6).range_eq_top_of_surjective
          (syndromeHom_surjective 6)]
  have hkernel :
      Nat.card (Beacon 6) * Nat.card (Port 6) = Nat.card (Cell 6) := by
    calc
      Nat.card (Beacon 6) * Nat.card (Port 6) =
          Nat.card (Beacon 6) * (syndromeHom 6).ker.index := by rw [hindex]
      _ = Nat.card (Cell 6) :=
        (syndromeHom 6).ker.card_mul_index
  have hcount :
      Fintype.card (Beacon 6) * 64 = 2 ^ 64 := by
    simpa only [Nat.card_eq_fintype_card, port_card_six, cell_card_six]
      using hkernel
  norm_num at hcount ⊢
  omega

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DualSyndromeDimensionContinuation
