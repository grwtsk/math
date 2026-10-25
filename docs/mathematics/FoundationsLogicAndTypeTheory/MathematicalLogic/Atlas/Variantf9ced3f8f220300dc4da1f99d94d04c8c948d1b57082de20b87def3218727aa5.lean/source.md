# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Atlas.Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5a20192601620f9a4f84987f46b7b2d9910db18` · SHA-256 `812a190e80de62aea3c8c07125dabb1da6ccb004dbb2ba5ed3bdd9932257b40d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvertibleEdge.Variant6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.InvertibleEdge.Variant6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb","mathematical_subject":"Logic.Foundations","original_sha256":"6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Semantics.Atlas.Bridge
import Mathlib.Logic.Relation
import Mathlib.Data.Fintype.EquivFin


/-!
# Finite leaves under admitted invertible transport

A leaf is a connected component of the explicitly admitted invertible edges.
Directional edges do not contribute. This quotient is distinct from a target
quotient: a target is leaf-invariant only when its bridge contract is proved.
No manifold or differentiable structure is asserted.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvertibleEdge.Variant6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

universe u v w

namespace FiniteBridgeGraph

variable {V : Type v} {E : Type w}
variable [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]
variable (G : FiniteBridgeGraph.{u} V E)

/-- Only selected edges with invertible checked evidence generate leaves. -/
def InvertibleEdge (x y : V) : Prop :=
  ∃ e ∈ G.bridges, (G.admitted e).source = x ∧ (G.admitted e).target = y ∧
    (G.admitted e).evidence.IsInvertible

instance : DecidableRel G.InvertibleEdge := fun _ _ =>
  inferInstanceAs (Decidable (∃ e ∈ G.bridges, _ ∧ _ ∧ _))

/-- An admitted edge supplies an actual equivalence, not just a matching kind. -/
theorem invertible_edge_equiv {x y : V} (h : G.InvertibleEdge x y) :
    Nonempty ((G.interface x).Carrier ≃ (G.interface y).Carrier) := by
  obtain ⟨e, _, hs, ht, hi⟩ := h
  subst x y
  cases hb : (G.admitted e).evidence with
  | invertible b => exact ⟨b.toEquiv⟩
  | directional b => simp [hb, BridgeEvidence.IsInvertible] at hi

/-- A finite path can use admitted invertible edges in either direction. -/
def SameLeaf : V → V → Prop := Relation.EqvGen G.InvertibleEdge

/-- Connectedness under invertible transport is an equivalence relation. -/
theorem leaf_equivalence : Equivalence G.SameLeaf :=
  Relation.EqvGen.is_equivalence G.InvertibleEdge

/-- Actual equivalences compose along the entire witnessed path. -/
theorem same_leaf_equiv {x y : V} (h : G.SameLeaf x y) :
    Nonempty ((G.interface x).Carrier ≃ (G.interface y).Carrier) := by
  induction h with
  | rel x y hxy => exact G.invertible_edge_equiv hxy
  | refl x => exact ⟨Equiv.refl _⟩
  | symm x y _ ih =>
      obtain ⟨e⟩ := ih
      exact ⟨e.symm⟩
  | trans x y z _ _ ih₁ ih₂ =>
      obtain ⟨e⟩ := ih₁
      obtain ⟨f⟩ := ih₂
      exact ⟨e.trans f⟩

/-- Only the selected nodes inhabit the finite semantic leaf quotient. -/
def leafSetoid : Setoid {x : V // x ∈ G.nodes} where
  r x y := G.SameLeaf x.val y.val
  iseqv := ⟨fun _ => G.leaf_equivalence.refl _,
    fun h => G.leaf_equivalence.symm h,
    fun h h' => G.leaf_equivalence.trans h h'⟩

/-- A semantic leaf is precisely a component under verified invertible transport. -/
def Leaf := Quotient G.leafSetoid

instance : Finite G.Leaf := inferInstanceAs (Finite (Quotient G.leafSetoid))

/-- A target contract concerns every selected invertible edge; it does not
require invariance under transverse maps, or under arbitrary type equivalences. -/
def TargetInvariant {Y : Sort*} (target : V → Y) : Prop :=
  ∀ x y, G.InvertibleEdge x y → target x = target y

/-- Leafwise target preservation follows exactly from the admitted contracts. -/
theorem leaf_transport_preserves_targets {Y : Sort*} (target : V → Y)
    (contract : G.TargetInvariant target) {x y : V} (h : G.SameLeaf x y) :
    target x = target y := by
  induction h with
  | rel x y hxy => exact contract x y hxy
  | refl x => rfl
  | symm x y _ ih => exact ih.symm
  | trans x y z _ _ ih₁ ih₂ => exact ih₁.trans ih₂

/-- Every invariant target descends to the selected finite leaf quotient. -/
def leafTarget {Y : Sort*} (target : V → Y) (contract : G.TargetInvariant target) :
    G.Leaf → Y :=
  Quotient.lift (fun x : {x : V // x ∈ G.nodes} => target x.val)
    (fun _ _ h => G.leaf_transport_preserves_targets target contract h)

/-- In the absence of selected invertible edges, leaf membership is identity,
regardless of how many directional bridges the graph contains. -/
theorem same_leaf_iff_eq_of_no_invertible
    (hempty : ∀ x y, ¬ G.InvertibleEdge x y) (x y : V) : G.SameLeaf x y ↔ x = y := by
  constructor
  · intro h
    induction h with
    | rel x y hxy => exact (hempty x y hxy).elim
    | refl x => rfl
    | symm x y _ ih => exact ih.symm
    | trans x y z _ _ ih₁ ih₂ => exact ih₁.trans ih₂
  · intro h
    subst y
    exact Relation.EqvGen.refl x

end FiniteBridgeGraph

namespace BridgeSelection

variable {V : Type v} {E : Type w}
variable [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]
variable {catalog : BridgeCatalog.{u} V E}

/-- Union adds exactly the chosen invertible edges from either selection. -/
theorem invertible_edge_union (A B : BridgeSelection catalog) (x y : V) :
    (A.union B).toGraph.InvertibleEdge x y ↔
      A.toGraph.InvertibleEdge x y ∨ B.toGraph.InvertibleEdge x y := by
  simp only [FiniteBridgeGraph.InvertibleEdge, toGraph, union, Finset.mem_union]
  constructor
  · rintro ⟨e, hA | hB, h⟩
    · exact Or.inl ⟨e, hA, h⟩
    · exact Or.inr ⟨e, hB, h⟩
  · rintro (⟨e, he, h⟩ | ⟨e, he, h⟩)
    · exact ⟨e, Or.inl he, h⟩
    · exact ⟨e, Or.inr he, h⟩

/-- Existing invertible paths survive conservative union. -/
theorem same_leaf_union_left (A B : BridgeSelection catalog) {x y : V}
    (h : A.toGraph.SameLeaf x y) : (A.union B).toGraph.SameLeaf x y :=
  Relation.EqvGen.mono (fun a b hab =>
    (invertible_edge_union A B a b).mpr (Or.inl hab)) x y h

/-- A newly attached selection preserves a target on every new leaf exactly
when the target's contract is supplied for its added invertible edges too. -/
theorem union_target_invariant (A B : BridgeSelection catalog) {Y : Sort*}
    (target : V → Y) (hA : A.toGraph.TargetInvariant target)
    (hB : B.toGraph.TargetInvariant target) :
    (A.union B).toGraph.TargetInvariant target := by
  intro x y hxy
  rcases (invertible_edge_union A B x y).mp hxy with h | h
  · exact hA x y h
  · exact hB x y h

end BridgeSelection

end FormalResearch.MathematicalTooling.Semantics.Atlas
```
