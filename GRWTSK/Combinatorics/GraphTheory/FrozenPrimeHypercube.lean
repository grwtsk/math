/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE.
Lean compilation: NOT_RUN. Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN. Independent mathematical review: NOT_RUN.
-/
import Mathlib

/-!
# Perfect open-neighborhood beacons in binary hypercubes

For each natural m, the coordinate directions are the 2^m vectors of
(ZMod 2)^m. A cell is a binary word indexed by those directions.
The syndrome is the linear sum of the active direction labels.

The construction selects the kernel of the syndrome as primary beacon
addresses, and proves that every cell has exactly one adjacent beacon.
Adjacency means a *single coordinate flip*, never self-incidence.

The m=4 specialization has 16 directions and 65536 cells.
Prime labels, physical memory locations, topological chain complexes,
cohomological realizations, and arithmetic L-function identities are
separate structures. In particular, no RH/GRH statement is inferred.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube

/-- A coordinate direction has an m-bit label. -/
abbrev Port (m : ℕ) := Fin m → ZMod 2

/-- An address is one binary coordinate for every direction. -/
abbrev Cell (m : ℕ) := Port m → ZMod 2

/-- The unit word selecting one coordinate direction. -/
def impulse {m : ℕ} (i : Port m) : Cell m := by
  classical
  exact Pi.single i (1 : ZMod 2)

/-- The linear binary syndrome of an address. -/
def syndrome {m : ℕ} (x : Cell m) : Port m :=
  ∑ i : Port m, (x i) • i

/-- Flip exactly the coordinate named by the port. -/
def neighbor {m : ℕ} (x : Cell m) (i : Port m) : Cell m :=
  x + impulse i

/-- A primary beacon is a word with zero syndrome. -/
def Frozen (m : ℕ) (x : Cell m) : Prop :=
  syndrome x = 0

/-- Each cell's canonical adjacent primary beacon. -/
def guidepost {m : ℕ} (x : Cell m) : Cell m :=
  neighbor x (-syndrome x)

/-- A single coordinate contributes its exact binary label. -/
theorem syndrome_impulse {m : ℕ} (i : Port m) :
    syndrome (impulse i) = i := by
  classical
  simp [syndrome, impulse, Pi.single_apply]

/-- Syndrome is additive on complete binary addresses. -/
theorem syndrome_add {m : ℕ} (x y : Cell m) :
    syndrome (x + y) = syndrome x + syndrome y := by
  classical
  simp [syndrome, add_smul, Finset.sum_add_distrib]

/-- A one-coordinate flip changes the syndrome by precisely that label. -/
theorem syndrome_neighbor {m : ℕ} (x : Cell m) (i : Port m) :
    syndrome (neighbor x i) = syndrome x + i := by
  rw [neighbor, syndrome_add, syndrome_impulse]

/-- Different coordinate ports yield different adjacent words. -/
theorem neighbor_injective {m : ℕ} (x : Cell m) :
    Function.Injective (neighbor x) := by
  intro i j hij
  have hs := congrArg syndrome hij
  rw [syndrome_neighbor, syndrome_neighbor] at hs
  exact add_left_cancel hs

/-- The canonical guidepost really has frozen syndrome zero. -/
theorem guidepost_frozen {m : ℕ} (x : Cell m) :
    Frozen m (guidepost x) := by
  simp [Frozen, guidepost, syndrome_neighbor]

/-- A guidepost is reached by exactly one coordinate flip. -/
theorem guidepost_is_neighbor {m : ℕ} (x : Cell m) :
    ∃ i : Port m, guidepost x = neighbor x i :=
  ⟨-syndrome x, rfl⟩

/-- The only coordinate that reaches a frozen cell is minus the syndrome. -/
theorem neighbor_frozen_iff {m : ℕ} (x : Cell m) (i : Port m) :
    Frozen m (neighbor x i) ↔ i = -syndrome x := by
  constructor
  · intro h
    have hs : syndrome x + i = 0 := by
      simpa [Frozen, syndrome_neighbor] using h
    calc
      i = 0 + i := by simp
      _ = (-syndrome x + syndrome x) + i := by simp
      _ = -syndrome x + (syndrome x + i) := by simp
      _ = -syndrome x := by rw [hs]; simp
  · intro hi
    subst i
    simp [Frozen, syndrome_neighbor]

/-- Every frozen adjacent cell equals the canonical guidepost. -/
theorem unique_frozen_neighbor {m : ℕ} (x y : Cell m)
    (hadj : ∃ i : Port m, y = neighbor x i)
    (hy : Frozen m y) : y = guidepost x := by
  rcases hadj with ⟨i, rfl⟩
  have hi := (neighbor_frozen_iff x i).mp hy
  simp [guidepost, hi]

/-- Every cell has exactly one frozen *open* neighbor. -/
theorem existsUnique_frozen_neighbor {m : ℕ} (x : Cell m) :
    ∃! y : Cell m,
      (∃ i : Port m, y = neighbor x i) ∧ Frozen m y := by
  refine ⟨guidepost x, ⟨guidepost_is_neighbor x, guidepost_frozen x⟩, ?_⟩
  intro y hy
  exact unique_frozen_neighbor x y hy.1 hy.2

/-- Every frozen guidepost has another frozen neighbor at the zero port. -/
theorem frozen_neighbor_zero_port {m : ℕ} (c : Cell m)
    (hc : Frozen m c) : Frozen m (neighbor c 0) := by
  change syndrome (neighbor c 0) = 0
  rw [syndrome_neighbor, add_zero]
  exact hc

/-- The four syndrome bits label exactly sixteen coordinate ports. -/
theorem port_card_four : Fintype.card (Port 4) = 16 := by
  norm_num [Port, Fintype.card_fun]

/-- The sixteen binary coordinates define precisely 65536 logical cells. -/
theorem cell_card_four : Fintype.card (Cell 4) = 65536 := by
  norm_num [Cell, Port, Fintype.card_fun]

/-- The geometric neighborhood in 16D has sixteen distinct vertices. -/
noncomputable def neighborSetFour (x : Cell 4) : Finset (Cell 4) := by
  classical
  exact Finset.univ.image (neighbor x)

theorem neighborSetFour_card (x : Cell 4) :
    (neighborSetFour x).card = 16 := by
  classical
  calc
    (neighborSetFour x).card =
      (Finset.univ : Finset (Port 4)).card := by
        exact Finset.card_image_of_injective _ (neighbor_injective x)
    _ = 16 := by
      simpa only [Finset.card_univ] using port_card_four

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
