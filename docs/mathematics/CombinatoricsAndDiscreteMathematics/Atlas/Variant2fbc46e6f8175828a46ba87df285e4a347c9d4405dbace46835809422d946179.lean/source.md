# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Atlas.Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `587f6324971c126614a14de3290f949678351a7b` · SHA-256 `2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Logic.Equiv.Defs

/-!
# Proof-bearing bridge interfaces

A bridge is an explicitly selected, typed mathematical witness. Declaration and
source strings annotate that witness; resolving a string is never a proof.
`Interface` distinguishes statements from objects. Object equivalence concerns
its declared carrier only; preservation of additional semantic targets requires
an additional contract. No equivalence is automatically admitted to a graph.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

universe u v w

/-- The ten admitted bridge roles remain distinct in exported finite data. -/
inductive BridgeKind where
  | definitionalEquality
  | provedEquality
  | logicalEquivalence
  | isomorphism
  | equivalence
  | specialization
  | forgetful
  | implication
  | computes
  | quotientDescent
  deriving DecidableEq, Repr

instance : Fintype BridgeKind where
  elems := {.definitionalEquality, .provedEquality, .logicalEquivalence, .isomorphism,
    .equivalence, .specialization, .forgetful, .implication, .computes, .quotientDescent}
  complete := by intro k; cases k <;> simp

/-- A mathematical interface, independent of source names and provenance. -/
inductive Interface where
  | object (carrier : Type u)
  | statement (claim : Prop)

/-- Statements use lifted proof types so object and proposition interfaces can
coexist in one finite graph. Lifting does not assert the proposition. -/
def Interface.Carrier : Interface.{u} → Type u
  | .object α => α
  | .statement P => ULift.{u} (PLift P)

/-- Invertibility is carried by equality, two maps with inverse laws, or an iff.
An isomorphism additionally preserves the explicitly supplied binary relation. -/
inductive InvertibleBridge : Interface.{u} → Interface.{u} → Type (u + 1) where
  | definitionalEquality (I : Interface) : InvertibleBridge I I
  | provedEquality {I J : Interface} (proof : I = J) : InvertibleBridge I J
  | logicalEquivalence {P Q : Prop} (proof : P ↔ Q) :
      InvertibleBridge (.statement P) (.statement Q)
  | isomorphism {I J : Interface} (equiv : I.Carrier ≃ J.Carrier)
      (sourceRelation : I.Carrier → I.Carrier → Prop)
      (targetRelation : J.Carrier → J.Carrier → Prop)
      (preserves : ∀ x y, sourceRelation x y ↔ targetRelation (equiv x) (equiv y)) :
      InvertibleBridge I J
  | equivalence {I J : Interface} (equiv : I.Carrier ≃ J.Carrier) :
      InvertibleBridge I J

/-- Every invertible bridge supplies an actual carrier equivalence. -/
def InvertibleBridge.toEquiv {I J : Interface} :
    InvertibleBridge I J → (I.Carrier ≃ J.Carrier)
  | .definitionalEquality _ => Equiv.refl _
  | .provedEquality h => h ▸ Equiv.refl _
  | .logicalEquivalence h =>
      { toFun := fun x => ⟨⟨h.mp x.down.down⟩⟩
        invFun := fun x => ⟨⟨h.mpr x.down.down⟩⟩
        left_inv := fun _ => rfl
        right_inv := fun _ => rfl }
  | .isomorphism e _ _ _ => e
  | .equivalence e => e

/-- The original role is retained even when several roles induce equivalences. -/
def InvertibleBridge.kind {I J : Interface} : InvertibleBridge I J → BridgeKind
  | .definitionalEquality _ => .definitionalEquality
  | .provedEquality _ => .provedEquality
  | .logicalEquivalence _ => .logicalEquivalence
  | .isomorphism _ _ _ _ => .isomorphism
  | .equivalence _ => .equivalence

/-- Reverse and composite witnesses are explicitly certified carrier equivalences.
They do not automatically retain a more specialized relational contract. -/
def InvertibleBridge.symm {I J : Interface} (b : InvertibleBridge I J) :
    InvertibleBridge J I := .equivalence b.toEquiv.symm

/-- Compose checked invertible bridges through their shared middle interface. -/
def InvertibleBridge.trans {I J K : Interface}
    (b : InvertibleBridge I J) (c : InvertibleBridge J K) :
    InvertibleBridge I K := .equivalence (b.toEquiv.trans c.toEquiv)

/-- Identity is available without naming or asserting an external theorem. -/
theorem invertibleBridge_refl (I : Interface) : Nonempty (InvertibleBridge I I) :=
  ⟨.definitionalEquality I⟩

theorem invertibleBridge_symm {I J : Interface}
    (h : Nonempty (InvertibleBridge I J)) : Nonempty (InvertibleBridge J I) := by
  obtain ⟨b⟩ := h
  exact ⟨b.symm⟩

theorem invertibleBridge_trans {I J K : Interface}
    (h : Nonempty (InvertibleBridge I J)) (h' : Nonempty (InvertibleBridge J K)) :
    Nonempty (InvertibleBridge I K) := by
  obtain ⟨b⟩ := h
  obtain ⟨c⟩ := h'
  exact ⟨b.trans c⟩

/-- Specialization is a typed map of proof or object carriers. Any stronger
interpretation (such as a chosen parameter substitution) must be in its type. -/
structure Specialization (I J : Interface.{u}) where
  /-- The typed forward specialization map. -/
  toFun : I.Carrier → J.Carrier

/-- Typed specializations compose only when their middle interface agrees. -/
def Specialization.comp {I J K : Interface}
    (g : Specialization J K) (f : Specialization I J) : Specialization I K :=
  ⟨g.toFun ∘ f.toFun⟩

/-- Directional bridges carry constructive maps, never assumed inverses.
Computation includes its declared correctness predicate; quotient descent
includes a proof of invariance under the declared equivalence relation. -/
inductive DirectionalBridge : Interface.{u} → Interface.{u} → Type (u + 1) where
  | specialization {I J : Interface} (map : Specialization I J) : DirectionalBridge I J
  | forgetful {α : Type u} (P : α → Prop) :
      DirectionalBridge (.object {x : α // P x}) (.object α)
  | implication {P Q : Prop} (proof : P → Q) :
      DirectionalBridge (.statement P) (.statement Q)
  | computes {I J : Interface} (map : I.Carrier → J.Carrier)
      (specification : I.Carrier → J.Carrier → Prop)
      (correct : ∀ x, specification x (map x)) : DirectionalBridge I J
  | quotientDescent {α β : Type u} (relation : Setoid α) (map : α → β)
      (respects : ∀ x y, relation x y → map x = map y) :
      DirectionalBridge (.object (Quotient relation)) (.object β)

/-- Extract the checked forward map without supplying or assuming an inverse. -/
def DirectionalBridge.toFun {I J : Interface} :
    DirectionalBridge I J → (I.Carrier → J.Carrier)
  | .specialization f => f.toFun
  | .forgetful _ => Subtype.val
  | .implication h => fun x => ⟨⟨h x.down.down⟩⟩
  | .computes f _ _ => f
  | .quotientDescent _ f h => Quotient.lift f h

/-- Retain the directional role of the checked mathematical witness. -/
def DirectionalBridge.kind {I J : Interface} : DirectionalBridge I J → BridgeKind
  | .specialization _ => .specialization
  | .forgetful _ => .forgetful
  | .implication _ => .implication
  | .computes _ _ _ => .computes
  | .quotientDescent _ _ _ => .quotientDescent

/-- Checked bridges and untrusted candidate metadata are different types. -/
inductive BridgeEvidence (I J : Interface.{u}) where
  | invertible (proof : InvertibleBridge I J)
  | directional (proof : DirectionalBridge I J)

/-- Read the bridge role from its checked evidence constructor. -/
def BridgeEvidence.kind {I J : Interface} : BridgeEvidence I J → BridgeKind
  | .invertible b => b.kind
  | .directional b => b.kind

/-- This test examines the evidence constructor, not the string annotation. -/
def BridgeEvidence.IsInvertible {I J : Interface} : BridgeEvidence I J → Prop
  | .invertible _ => True
  | .directional _ => False

instance {I J : Interface} (b : BridgeEvidence I J) : Decidable b.IsInvertible := by
  cases b <;> simp only [BridgeEvidence.IsInvertible] <;> infer_instance

/-- Direction is relative to the record's checked source and target endpoints. -/
inductive BridgeOrientation where
  | forward
  | bidirectional
  deriving DecidableEq, Repr

/-- Derive orientation from actual invertible or directional evidence. -/
def BridgeEvidence.orientation {I J : Interface} : BridgeEvidence I J → BridgeOrientation
  | .invertible _ => .bidirectional
  | .directional _ => .forward

/-- Provenance annotations. They do not confer proof validity. -/
structure BridgeMetadata where
  /-- Source declaration annotation; the bridge evidence supplies mathematical authority. -/
  proofDeclaration : String
  /-- Source scope annotation retained independently of semantic equivalence. -/
  sourceScope : String
  deriving DecidableEq, Repr

/-- The endpoints are bound to the types of the checked evidence. -/
structure VerifiedBridge {V : Type v} (interface : V → Interface.{u}) where
  /-- Source node whose interface types the checked forward input. -/
  source : V
  /-- Target node whose interface types the checked forward output. -/
  target : V
  /-- Mathematical witness bound to these exact source and target interfaces. -/
  evidence : BridgeEvidence (interface source) (interface target)
  /-- Declaration and provenance annotations accompanying the checked witness. -/
  metadata : BridgeMetadata

/-- A nomination cannot be used where checked bridge evidence is required. -/
structure CandidateBridge (V : Type v) where
  /-- Proposed source node, without an admitted transport witness. -/
  source : V
  /-- Proposed target node, without an admitted transport witness. -/
  target : V
  /-- Proposed bridge role; this label does not certify the relationship. -/
  kind : BridgeKind
  /-- Proposed orientation requiring corresponding checked evidence before admission. -/
  orientation : BridgeOrientation
  /-- Untrusted declaration and provenance annotations for the nomination. -/
  metadata : BridgeMetadata

/-- A finite selected graph. Edge identities, rather than proof terms, have
computable membership; validity is guaranteed by the checked object at that ID. -/
structure FiniteBridgeGraph (V : Type v) (E : Type w)
    [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E] where
  /-- Selected finite node inventory. -/
  nodes : Finset V
  /-- Selected finite edge identities whose checked records are admitted. -/
  bridges : Finset E
  /-- Mathematical interface assigned to each node identity. -/
  interface : V → Interface.{u}
  /-- Checked bridge record associated with each edge identity. -/
  admitted : E → VerifiedBridge interface
  /-- Every selected edge has both endpoints in the selected node inventory. -/
  endpoints_mem : ∀ e ∈ bridges,
    (admitted e).source ∈ nodes ∧ (admitted e).target ∈ nodes

/-- A fixed checked signature binds each finite edge ID to its interfaces,
endpoints, evidence and provenance. Attachments select from this catalog;
changing its semantics requires a new checked catalog. -/
structure BridgeCatalog (V : Type v) (E : Type w) where
  /-- Fixed mathematical interface for each node identity. -/
  interface : V → Interface.{u}
  /-- Fixed checked record for each edge identity, shared by all selections. -/
  admitted : E → VerifiedBridge interface

/-- A finite selection within a shared checked catalog. Two selections can be
united without overwriting the meaning of a node or edge identifier. -/
structure BridgeSelection {V : Type v} {E : Type w}
    [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]
    (catalog : BridgeCatalog.{u} V E) where
  /-- Finite node identities selected from the shared catalog. -/
  nodes : Finset V
  /-- Finite checked edge identities selected from the shared catalog. -/
  bridges : Finset E
  /-- Selected edges refer only to selected nodes. -/
  endpoints_mem : ∀ e ∈ bridges,
    (catalog.admitted e).source ∈ nodes ∧ (catalog.admitted e).target ∈ nodes

namespace BridgeSelection

variable {V : Type v} {E : Type w}
variable [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]
variable {catalog : BridgeCatalog.{u} V E}

/-- Expose a catalog selection through the finite graph interface. -/
def toGraph (selection : BridgeSelection catalog) : FiniteBridgeGraph V E where
  nodes := selection.nodes
  bridges := selection.bridges
  interface := catalog.interface
  admitted := catalog.admitted
  endpoints_mem := selection.endpoints_mem

/-- Union preserves the shared catalog's exact checked meanings. -/
def union (A B : BridgeSelection catalog) : BridgeSelection catalog where
  nodes := A.nodes ∪ B.nodes
  bridges := A.bridges ∪ B.bridges
  endpoints_mem := by
    intro e he
    rcases Finset.mem_union.mp he with hA | hB
    · obtain ⟨hs, ht⟩ := A.endpoints_mem e hA
      exact ⟨Finset.mem_union_left _ hs, Finset.mem_union_left _ ht⟩
    · obtain ⟨hs, ht⟩ := B.endpoints_mem e hB
      exact ⟨Finset.mem_union_right _ hs, Finset.mem_union_right _ ht⟩

theorem nodes_subset_union (A B : BridgeSelection catalog) :
    A.nodes ⊆ (A.union B).nodes := Finset.subset_union_left

theorem bridges_subset_union (A B : BridgeSelection catalog) :
    A.bridges ⊆ (A.union B).bridges := Finset.subset_union_left

/-- Every old edge retains precisely the same evidence and metadata. -/
theorem union_preserves_admitted (A B : BridgeSelection catalog) (e : E) :
    (A.union B).toGraph.admitted e = A.toGraph.admitted e := rfl

end BridgeSelection

/-- The finite composition language names only the following sound grammars.
A rule name is metadata; an application must supply its typed witness below. -/
inductive CompositionRuleKind where
  | identity
  | invertibleComposition
  | implicationTransitivity
  | specializationComposition
  | propertyTransport
  | quotientDescentComposition
  deriving DecidableEq, Repr

instance : Fintype CompositionRuleKind where
  elems := {.identity, .invertibleComposition, .implicationTransitivity,
    .specializationComposition, .propertyTransport, .quotientDescentComposition}
  complete := by intro k; cases k <;> simp

/-- Proof grammar for composing implications; no converse is produced. -/
theorem implication_trans {P Q R : Prop} (hPQ : P → Q) (hQR : Q → R) : P → R :=
  fun hP => hQR (hPQ hP)

/-- Soundness of typed specialization composition. -/
theorem specialization_comp {I J K : Interface}
    (g : Specialization J K) (f : Specialization I J) (x : I.Carrier) :
    (g.comp f).toFun x = g.toFun (f.toFun x) := rfl

/-- Selected properties transport by an explicitly supplied equivalence. -/
theorem property_transport {α β : Type u} (e : α ≃ β) (P : α → Prop) (x : α) :
    P (e.symm (e x)) ↔ P x := by simp

/-- Declared descent composes with a subsequent typed map. -/
theorem quotient_descent_comp_respects {α β γ : Type u} (s : Setoid α)
    (f : α → β) (hf : ∀ x y, s x y → f x = f y) (g : β → γ) :
    ∀ x y, s x y → (g ∘ f) x = (g ∘ f) y := by
  intro x y hxy
  exact congrArg g (hf x y hxy)

/-- The composed descent is extensionally the composition of the descended map. -/
theorem quotient_descent_comp {α β γ : Type u} (s : Setoid α)
    (f : α → β) (hf : ∀ x y, s x y → f x = f y) (g : β → γ) :
    Quotient.lift (g ∘ f) (quotient_descent_comp_respects s f hf g) =
      g ∘ Quotient.lift f hf := by
  funext q
  induction q using Quotient.inductionOn with
  | h x => rfl

end FormalResearch.MathematicalTooling.Semantics.Atlas
```
