/-!
Graph Sandwich spectral diffusion: finite process interface.
This file defines search-graph data and conditional comparison, not a new analytic theorem.
Paper-derived interfaces: Kim–Vu (2004), Nechaev–Polovnikov (2017),
Sawin–Shusterman (2019), Bombieri (Riemann Hypothesis survey).
Verification: NOT_RUN. No claim of kernel acceptance.
-/
import Mathlib

namespace GRWTSK.GraphSandwichDiffusion

structure FiniteSearchGraph (Vertex Label : Type) where
  edge : Vertex → Vertex → Prop
  label : Vertex → Vertex → Label → Prop

/- A finite searchable universe is explicit; completeness is relative to this inventory,
   not to all mathematical propositions. -/
structure SearchInventory (Vertex Label : Type) where
  vertices : List Vertex
  labels : List Label
  candidate : Vertex → Vertex → Label → Prop
  certified : Vertex → Vertex → Label → Prop
  certified_candidate : ∀ u v l, certified u v l → candidate u v l

def CandidateEdge {V L : Type} (s : SearchInventory V L) (u v : V) : Prop :=
  ∃ l, s.candidate u v l

def CertifiedEdge {V L : Type} (s : SearchInventory V L) (u v : V) : Prop :=
  ∃ l, s.certified u v l

theorem certified_is_candidate {V L : Type} (s : SearchInventory V L)
    (u v : V) (h : CertifiedEdge s u v) : CandidateEdge s u v := by
  rcases h with ⟨l, hl⟩
  exact ⟨l, s.certified_candidate u v l hl⟩

/- Labeled finite walks are proof-carrying paths, independent of probabilistic
   or arithmetic cancellation claims. -/
inductive LabeledWalk {V L : Type} (edge : V → V → L → Prop) :
    V → V → Type where
  | nil (v : V) : LabeledWalk edge v v
  | cons {u v w : V} (l : L) (h : edge u v l)
      (tail : LabeledWalk edge v w) : LabeledWalk edge u w

def LabeledWalk.map {V L : Type} {e f : V → V → L → Prop}
    (h : ∀ u v l, e u v l → f u v l) {u v : V}
    (walk : LabeledWalk e u v) : LabeledWalk f u v :=
  match walk with
  | .nil x => .nil x
  | .cons l he tail => .cons l (h _ _ _ he) (LabeledWalk.map h tail)

def certifiedWalkToCandidate {V L : Type} (s : SearchInventory V L)
    {u v : V} (walk : LabeledWalk s.certified u v) :
    LabeledWalk s.candidate u v :=
  LabeledWalk.map s.certified_candidate walk

structure GraphSandwich (Vertex : Type) where
  lower : Vertex → Vertex → Prop
  middle : Vertex → Vertex → Prop
  upper : Vertex → Vertex → Prop
  lower_le_middle : ∀ u v, lower u v → middle u v
  middle_le_upper : ∀ u v, middle u v → upper u v

theorem lower_le_upper {V : Type} (s : GraphSandwich V) (u v : V)
    (h : s.lower u v) : s.upper u v :=
  s.middle_le_upper u v (s.lower_le_middle u v h)

structure SpectralHeight (Vertex : Type) where
  height : Vertex → ℕ
  diffusionWeight : Vertex → Vertex → ℝ

structure CompressionCertificate where
  original : ℚ
  compressed : ℚ
  original_le : original ≤ 9 / 16
  compressed_le : compressed ≤ 1 / 2
  justified : compressed ≤ original

theorem compression_bound (c : CompressionCertificate) :
    3 / 4 + c.compressed ≤ (5 / 4 : ℚ) := by
  linarith [c.compressed_le]

end GRWTSK.GraphSandwichDiffusion
