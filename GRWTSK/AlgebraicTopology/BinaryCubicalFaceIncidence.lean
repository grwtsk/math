/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean, fresh kernel and axiom audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeHypercube
import Mathlib.Data.Finset.Card

/-!
# All-rank cubical faces of the source binary hypercube

An m-indexed finite atlas has 2^m binary port directions. Each
cubical face assigns each port either a fixed bit (some 0 / some 1)
or a free interval direction (none). This is the actual cell carrier
of the 2^(2^m)-vertex cubical atlas, not its graph clique complex.

The immediate face maps fix one formerly free direction. Distinct
direction restrictions commute; every restriction decreases the
dimension exactly by one. These combinatorial relations are the
building blocks of the signed all-degree boundary identity.
The oriented all-degree chain complex remains the next proof target.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicTopology.BinaryCubicalFaceIncidence

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube

/-- A face has 0, 1, or a free interval in every binary port direction. -/
abbrev Face (m : ℕ) := Port m → Option (ZMod 2)

/-- Actual free port coordinates of a cubical face. -/
def freePorts {m : ℕ} (f : Face m) : Finset (Port m) := by
  classical
  exact Finset.univ.filter (fun i => f i = none)

/-- Cubical dimension, the number of unfixed interval coordinates. -/
def dimension {m : ℕ} (f : Face m) : ℕ :=
  (freePorts f).card

/-- Restrict one direction to an endpoint. -/
def restrictPort {m : ℕ} (f : Face m) (i : Port m) (b : ZMod 2) : Face m :=
  Function.update f i (some b)

/-- The whole cube, with every coordinate free. -/
def topFace (m : ℕ) : Face m :=
  fun _ => none

theorem restrictPort_at {m : ℕ} (f : Face m) (i : Port m)
    (b : ZMod 2) : restrictPort f i b i = some b := by
  simp [restrictPort]

theorem restrictPort_other {m : ℕ} (f : Face m) (i j : Port m)
    (b : ZMod 2) (hij : j ≠ i) :
    restrictPort f i b j = f j := by
  simp [restrictPort, hij]

/-- Exactly the chosen formerly free port is removed from the free set. -/
theorem freePorts_restrictPort {m : ℕ} (f : Face m)
    (i : Port m) (b : ZMod 2) :
    freePorts (restrictPort f i b) = (freePorts f).erase i := by
  classical
  ext j
  by_cases hji : j = i
  · subst j
    simp [freePorts, restrictPort]
  · simp [freePorts, restrictPort, hji]

/-- On an actual facet, restricting one free direction reduces rank
by exactly one, with no geometric adjacency shortcut. -/
theorem dimension_restrictPort {m : ℕ} (f : Face m)
    (i : Port m) (b : ZMod 2)
    (hi : i ∈ freePorts f) :
    dimension (restrictPort f i b) + 1 = dimension f := by
  unfold dimension
  rw [freePorts_restrictPort]
  exact Finset.card_erase_add_one hi

/-- Two distinct coordinate-face restrictions commute. -/
theorem restrictPort_commute {m : ℕ} (f : Face m)
    (i j : Port m) (a b : ZMod 2) (hij : i ≠ j) :
    restrictPort (restrictPort f i a) j b =
      restrictPort (restrictPort f j b) i a := by
  classical
  unfold restrictPort
  exact Function.update_comm hij (some a) (some b) f

/-- The two endpoint choices define genuinely different facets. -/
theorem restrictPort_zero_ne_one {m : ℕ} (f : Face m)
    (i : Port m) :
    restrictPort f i 0 ≠ restrictPort f i 1 := by
  intro h
  have hi := congrArg (fun g : Face m => g i) h
  simpa [restrictPort] using hi

/-- The top face in the original four-syndrome-bit model has rank 16. -/
theorem topFace_dimension_four : dimension (topFace 4) = 16 := by
  simp [dimension, freePorts, topFace, port_card_four]

/-- Exactly 3^16 faces, of all ranks, exist in the complete 16-cube.
They are not all vertices and must not all be materialized in RAM. -/
theorem face_card_four :
    Fintype.card (Face 4) = 43046721 := by
  norm_num [Face, Fintype.card_fun, port_card_four]

end GRWTSK.AlgebraicTopology.BinaryCubicalFaceIncidence
