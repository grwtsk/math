/-!
# Search-led graph sandwich: finite certified core

This finite, deterministic abstraction is distinct from the probabilistic
Kim--Vu coupling. A candidate edge is not a kernel-verified theorem.
Reference interfaces: Kim--Vu (2004), Nechaev--Polovnikov (2017),
Sawin--Shusterman (2019), and Bombieri's RH survey.
Verification: NOT_RUN. No claim about RH or integer Chowla.
-/
import Mathlib

namespace GRWTSK.GraphSandwichSearch

variable {Vertex : Type*} [DecidableEq Vertex]

/-- Three search-edge sets on a common finite vertex universe. -/
structure SearchSandwich (Vertex : Type*) where
  lower : Finset (Vertex × Vertex)
  candidate : Finset (Vertex × Vertex)
  upper : Finset (Vertex × Vertex)
  lower_le : lower ⊆ candidate
  candidate_le : candidate ⊆ upper

/-- Every certified connection remains admissible in the upper search graph. -/
theorem certified_admissible (S : SearchSandwich Vertex) :
    S.lower ⊆ S.upper :=
  Finset.Subset.trans S.lower_le S.candidate_le

/-- Search enlargement preserves every certified edge. -/
theorem certified_in_candidate (S : SearchSandwich Vertex)
    (e : Vertex × Vertex) (he : e ∈ S.lower) : e ∈ S.candidate :=
  S.lower_le he

/-- A height cap restricts the search to edges whose endpoints both qualify. -/
def heightEdges (height : Vertex → Nat) (cap : Nat)
    (edges : Finset (Vertex × Vertex)) : Finset (Vertex × Vertex) :=
  edges.filter (fun e => height e.1 ≤ cap ∧ height e.2 ≤ cap)

/-- The height filtration respects graph inclusion. -/
theorem heightEdges_mono (height : Vertex → Nat) (cap : Nat)
    {a b : Finset (Vertex × Vertex)} (hab : a ⊆ b) :
    heightEdges height cap a ⊆ heightEdges height cap b := by
  intro e he
  simp only [heightEdges, Finset.mem_filter] at he ⊢
  exact ⟨hab he.1, he.2⟩

/-- A finite search sandwich remains a sandwich at every height. -/
theorem height_sandwich (S : SearchSandwich Vertex)
    (height : Vertex → Nat) (cap : Nat) :
    heightEdges height cap S.lower ⊆
      heightEdges height cap S.candidate ∧
    heightEdges height cap S.candidate ⊆
      heightEdges height cap S.upper :=
  ⟨heightEdges_mono height cap S.lower_le,
   heightEdges_mono height cap S.candidate_le⟩

end GRWTSK.GraphSandwichSearch
