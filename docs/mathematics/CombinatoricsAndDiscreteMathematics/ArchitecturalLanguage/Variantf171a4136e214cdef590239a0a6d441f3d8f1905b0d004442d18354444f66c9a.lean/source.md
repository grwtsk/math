# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArchitecturalLanguage.Variantf171a4136e214cdef590239a0a6d441f3d8f1905b0d004442d18354444f66c9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6df4156fce0754b1654be677acea872b67cabdd` · SHA-256 `708f882de1740e9d271caf1b10318642eaacce20985fffe88bab735796720d12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ArchitecturalTermKind.Variant968f9bc08e37c5e04dc27b300bb7a3e40361d86d8e1fd207bb13cb2231b3be10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"968f9bc08e37c5e04dc27b300bb7a3e40361d86d8e1fd207bb13cb2231b3be10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ArchitecturalTermKind.Variant968f9bc08e37c5e04dc27b300bb7a3e40361d86d8e1fd207bb13cb2231b3be10","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"968f9bc08e37c5e04dc27b300bb7a3e40361d86d8e1fd207bb13cb2231b3be10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/ArchitecturalLanguage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.IdiomConceptNetwork

/-!
# Formal interfaces for interpretation-dependent architectural language
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ArchitecturalTermKind.Variant968f9bc08e37c5e04dc27b300bb7a3e40361d86d8e1fd207bb13cb2231b3be10

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
