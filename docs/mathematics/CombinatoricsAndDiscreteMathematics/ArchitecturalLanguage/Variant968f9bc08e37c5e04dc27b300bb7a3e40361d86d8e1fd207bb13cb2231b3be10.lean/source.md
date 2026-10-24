# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArchitecturalLanguage.Variant968f9bc08e37c5e04dc27b300bb7a3e40361d86d8e1fd207bb13cb2231b3be10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3929e6f0a09b75800fbe99165751191f32e4b49e` · SHA-256 `968f9bc08e37c5e04dc27b300bb7a3e40361d86d8e1fd207bb13cb2231b3be10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.IdiomConceptNetwork

/-!
# Formal interfaces for interpretation-dependent architectural language
-/

namespace Mathematics.SemanticTokenization

inductive ArchitecturalTermKind
  | irreducibleConcern
  | locallyFiniteNeighborhood
  | whisper
  | monoParentProjection
  | polyHierarchicalRelation
  | deviceNeutrality
  | boundaryMirror
  | percolation
deriving DecidableEq, Repr

inductive ArchitecturalInterpretation
  | technical
  | metaphorical
  | mixed
deriving DecidableEq, Repr

structure ArchitecturalTermAssertion
    (cut : EvidenceCut) where
  term : ArchitecturalTermKind
  source : Finset (Span cut.text)
  source_nonempty : source.Nonempty
  interpretation : ArchitecturalInterpretation
  context : ContextId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  snapshot : SnapshotId

structure DecompositionStructure (α : Type*) where
  decomposes : α → α → α → Prop

def Irreducible
    {α : Type*}
    (decomposition : DecompositionStructure α)
    (value : α) : Prop :=
  ¬ ∃ left right,
    left ≠ value ∧
    right ≠ value ∧
    decomposition.decomposes value left right

structure NeighborhoodStructure (α : Type*) where
  neighborhood : α → Finset α

def LocallyFinite
    {α : Type*}
    (neighborhood : NeighborhoodStructure α) : Prop :=
  ∀ value, (neighborhood.neighborhood value).Finite

def EveryAcceptedAssertionHasLocalSource
    (cut : EvidenceCut) : Prop :=
  ∀ assertion : Fin cut.metadataAssertions.size,
    AcceptedAssertion cut
      (cut.metadataAssertions[assertion]) →
    ∃ path : Fin cut.provenanceRegistry.size,
      (cut.provenanceRegistry[path]).assertion =
        (cut.metadataAssertions[assertion]).2.id ∧
      (cut.provenanceRegistry[path]).Valid
        cut.activeSnapshot cut.hasAcceptedEvidence

structure MonoParentTree (Vertex : Type*) where
  root : Vertex
  parent : Vertex → Option Vertex
  root_has_no_parent : parent root = none
  nonroot_has_parent :
    ∀ vertex, vertex ≠ root →
      ∃ parentVertex,
        parent vertex = some parentVertex

structure PolyHierarchy
    (Vertex Relation : Type*) where
  edges : Finset (Vertex × Relation × Vertex)

structure DeviceId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure DeviceSemantics
    (Observation : Type*) where
  state : DeviceId → Type*
  transport :
    ∀ source target,
      state source →
      state target
  observe :
    ∀ device,
      state device →
      Observation

structure DeviceNeutralityCertificate
    {Observation : Type*}
    (semantics : DeviceSemantics Observation) where
  observationPreserved :
    ∀ source target state,
      semantics.observe target
        (semantics.transport source target state) =
      semantics.observe source state

structure BoundaryInvariant
    (Left Right Invariant : Type*) where
  boundaryRelation : Left → Right → Prop
  leftInvariant : Left → Invariant
  rightInvariant : Right → Invariant
  preserved :
    ∀ left right,
      boundaryRelation left right →
      leftInvariant left = rightInvariant right

structure ProbabilityModel where
  sampleSpace : Finset Nat
  weight : Nat → ℚ
  nonnegative :
    ∀ value, 0 ≤ weight value

structure PercolationModel
    (Vertex State : Type*) where
  neighbors : Vertex → Finset Vertex
  activation : State → Vertex → Bool
  step : State → State
  stops : State → Bool
  probabilityModel : Option ProbabilityModel

end Mathematics.SemanticTokenization
```
