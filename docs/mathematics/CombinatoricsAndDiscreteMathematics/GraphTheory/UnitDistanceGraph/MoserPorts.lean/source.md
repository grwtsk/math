# Complete source: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPorts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66e53a988d8900c8eef661d6d5965c209edc0a37` · SHA-256 `eaf5123c682694c0f77cb758bc25676cab1cbbaa5127d5c8f83db2e91e97b874`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser

namespace GRWTSK.Combinatorics.GraphTheory

universe u v w x

/-- A finite or infinite graph constraint with a selected typed boundary map. -/
structure ColorPortGadget (Vertex : Type u) (Boundary : Type v) where
  edge : Vertex → Vertex → Prop
  port : Boundary → Vertex

/-- A coloring separates every selected edge. -/
def ProperColoring {Vertex : Type u} {Color : Type w}
    (edge : Vertex → Vertex → Prop) (color : Vertex → Color) : Prop :=
  ∀ ⦃v₁ v₂⦄, edge v₁ v₂ → color v₁ ≠ color v₂

/-- A boundary state belongs to the extension relation when it has a proper internal extension. -/
def ColorPortGadget.Extends {Vertex : Type u} {Boundary : Type v} {Color : Type w}
    (G : ColorPortGadget Vertex Boundary) (state : Boundary → Color) : Prop :=
  ∃ color : Vertex → Color,
    ProperColoring G.edge color ∧ ∀ b, color (G.port b) = state b

/-- The gadget exposing every vertex as a boundary port. -/
def ColorPortGadget.fullBoundary {Vertex : Type u}
    (edge : Vertex → Vertex → Prop) : ColorPortGadget Vertex Vertex where
  edge := edge
  port := id

/-- On a full boundary, extension is exactly properness of the supplied state. -/
theorem ColorPortGadget.extends_fullBoundary_iff
    {Vertex : Type u} {Color : Type w} (edge : Vertex → Vertex → Prop)
    (state : Vertex → Color) :
    (ColorPortGadget.fullBoundary edge).Extends state ↔ ProperColoring edge state := by
  constructor
  · rintro ⟨color, hcolor, hboundary⟩
    intro v₁ v₂ hedge hstate
    apply hcolor hedge
    calc
      color v₁ = state v₁ := hboundary v₁
      _ = state v₂ := hstate
      _ = color v₂ := (hboundary v₂).symm
  · intro hstate
    exact ⟨state, hstate, fun _ ↦ rfl⟩

/-- Relational composition used for gluing compatible boundary-state interfaces. -/
def RelationComp {A : Type u} {B : Type v} {C : Type w}
    (R : A → B → Prop) (S : B → C → Prop) : A → C → Prop :=
  fun a c ↦ ∃ b, R a b ∧ S b c

/-- Boundary-state gluing is associative at the relation layer. -/
theorem relationComp_assoc {A : Type u} {B : Type v} {C : Type w} {D : Type x}
    (R : A → B → Prop) (S : B → C → Prop) (T : C → D → Prop) :
    RelationComp (RelationComp R S) T = RelationComp R (RelationComp S T) := by
  funext a d
  apply propext
  constructor
  · rintro ⟨c, ⟨b, hab, hbc⟩, hcd⟩
    exact ⟨b, hab, c, hbc, hcd⟩
  · rintro ⟨b, hab, c, hbc, hcd⟩
    exact ⟨c, ⟨b, hab, hbc⟩, hcd⟩

namespace HadwigerNelson

/-- The undirected edge relation determined by the eleven exact Moser edges. -/
def moserAdj (i j : Fin 7) : Prop :=
  (i, j) ∈ moserEdges ∨ (j, i) ∈ moserEdges

/-- The Moser spindle with every source vertex exposed as a color port. -/
def moserColorPortGadget : ColorPortGadget (Fin 7) (Fin 7) :=
  ColorPortGadget.fullBoundary moserAdj

/-- Properness for the undirected port relation is equivalent to separation of the listed edges. -/
theorem properColoring_moserAdj_iff {n : ℕ} (color : Fin 7 → Fin n) :
    ProperColoring moserAdj color ↔
      ∀ i j, (i, j) ∈ moserEdges → color i ≠ color j := by
  constructor
  · intro h i j hedge
    exact h (Or.inl hedge)
  · intro h i j hedge
    rcases hedge with hedge | hedge
    · exact h i j hedge
    · exact (h j i hedge).symm

/-- The full-boundary three-color extension relation is empty. -/
theorem moser_threeColor_extension_empty :
    ¬ ∃ state : Fin 7 → Fin 3, moserColorPortGadget.Extends state := by
  rintro ⟨state, hstate⟩
  have hproper : ProperColoring moserAdj state :=
    (ColorPortGadget.extends_fullBoundary_iff moserAdj state).mp hstate
  exact moser_not_three_colorable state
    ((properColoring_moserAdj_iff state).mp hproper)

/-- The displayed four-coloring supplies a nonempty full-boundary extension relation. -/
theorem moser_fourColor_extension_nonempty :
    ∃ state : Fin 7 → Fin 4, moserColorPortGadget.Extends state := by
  refine ⟨moserFourColor, ?_⟩
  apply (ColorPortGadget.extends_fullBoundary_iff moserAdj moserFourColor).mpr
  exact (properColoring_moserAdj_iff moserFourColor).mpr
    (fun _ _ hedge ↦ moserFourColor_proper hedge)

end HadwigerNelson

end GRWTSK.Combinatorics.GraphTheory
```
