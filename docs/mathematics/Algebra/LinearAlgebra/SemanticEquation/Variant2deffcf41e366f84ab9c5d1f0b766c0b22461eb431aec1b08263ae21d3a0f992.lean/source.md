# Complete source: GRWTSK.Algebra.LinearAlgebra.SemanticEquation.Variant2deffcf41e366f84ab9c5d1f0b766c0b22461eb431aec1b08263ae21d3a0f992

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02a8061f7584a0d7aac1c5d69c8bfc0d8140d0f8` · SHA-256 `ef7dc5e3d6e1912aea07379f3eb6d173472d65a016ff6c34d241bf387c3b40f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RhetoricalChannel.Variant5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RhetoricalChannel.Variant5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/SemanticEquation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Ledger
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Finsupp.Span

/-!
# Proof-selected linear semantic equations

Semantic atoms reference the existing concept ledger; they do not duplicate
concept definitions.  Only kernel-checked normalization or equivalence records
can generate vector equations.  Similarity, implication, analogy, opposition,
and approximation are structurally excluded.
-/


namespace GRWTSK.Algebra.LinearAlgebra.RhetoricalChannel.Variant5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9

namespace Mathematics.Concept

universe u

/-- The rhetorical channel in which a concept occurrence contributes. -/
inductive RhetoricalChannel
  | definition
  | theorem
  | construction
  | representation
  | proofStrategy
  deriving DecidableEq, Inhabited

/-- The linear role of an occurrence inside one rhetorical channel. -/
inductive RhetoricalRole
  | subject
  | hypothesis
  | conclusion
  | witness
  | obstruction
  deriving DecidableEq, Inhabited

/--
An atom is a ledger-relative reference.  No name, definition, boundary, or
authority profile is copied into it.
-/
structure SemanticAtom where
  concept : ConceptId
  channel : RhetoricalChannel
  role : RhetoricalRole
  representation : Option RepresentationId
  snapshot : SnapshotId
  deriving DecidableEq, Inhabited

namespace SemanticAtom

/-- Every referenced identity resolves in the selected ledger snapshot. -/
def Resolves (ledger : Ledger) (atom : SemanticAtom) : Prop :=
  atom.concept ∈ ledger.concepts.map (·.id) ∧
    (∀ representationId ∈ atom.representation,
      representationId ∈ ledger.representations.map (·.id)) ∧
    atom.snapshot = ledger.snapshotId

end SemanticAtom

/-- Finite complex semantic combinations before any quotient or completion. -/
abbrev SemanticCombination (Atom : Type u) := Atom →₀ ℂ

/-- The only two relation classes admitted as exact linear equations. -/
inductive LinearizableRelationKind
  | exactNormalization
  | kernelCheckedEquivalence
  deriving DecidableEq, Inhabited

namespace LinearizableRelationKind

/-- Exact admission predicate for one registered relation kind. -/
def Admits :
    LinearizableRelationKind → RelationKind → Prop
  | .exactNormalization, kind =>
      kind = .sameConcept ∨ kind = .aliasOf
  | .kernelCheckedEquivalence, kind =>
      kind = .equivalentTo

theorem rejects_implies (kind : LinearizableRelationKind) :
    ¬ kind.Admits .implies := by
  cases kind <;> simp [Admits]

theorem rejects_similarTo (kind : LinearizableRelationKind) :
    ¬ kind.Admits .similarTo := by
  cases kind <;> simp [Admits]

theorem rejects_analogousTo (kind : LinearizableRelationKind) :
    ¬ kind.Admits .analogousTo := by
  cases kind <;> simp [Admits]

theorem rejects_approximates (kind : LinearizableRelationKind) :
    ¬ kind.Admits .approximates := by
  cases kind <;> simp [Admits]

theorem rejects_opposedTo (kind : LinearizableRelationKind) :
    ¬ kind.Admits .opposedTo := by
  cases kind <;> simp [Admits]

end LinearizableRelationKind

/--
Proof-bearing admission of one endpoint equation.  The equation is tied to a
registered relation, its exact endpoint atoms, and a kernel-checked relation
certificate.
-/
structure LinearRelationWitness
    (ledger : Ledger)
    (relationId : RelationId)
    (equation : SemanticCombination SemanticAtom)
    (admissibleKind : LinearizableRelationKind) where
  relation : RelationRecord
  relation_registered : relation ∈ ledger.relations
  relation_id : relation.id = relationId
  certificate : RelationCertificate relation
  sourceAtom : SemanticAtom
  targetAtom : SemanticAtom
  source_resolves : sourceAtom.Resolves ledger
  target_resolves : targetAtom.Resolves ledger
  source_bound : sourceAtom.concept = relation.source
  target_bound : targetAtom.concept = relation.target
  kind_admitted : admissibleKind.Admits relation.kind
  kernel_checked : relation.authority = .kernelChecked
  equation_exact :
    equation =
      Finsupp.single sourceAtom 1 -
        Finsupp.single targetAtom 1

/-- One exact, auditable generator of the semantic relation submodule. -/
structure LinearSemanticRelation (ledger : Ledger) where
  id : RelationId
  equation : SemanticCombination SemanticAtom
  admissibleKind : LinearizableRelationKind
  witness :
    LinearRelationWitness ledger id equation admissibleKind
  authority : Profile

/-- Span generated by exactly the supplied proof-bearing equations. -/
noncomputable def linearRelationSubmodule
    (ledger : Ledger)
    (relations : Set (LinearSemanticRelation ledger)) :
    Submodule ℂ (SemanticCombination SemanticAtom) :=
  Submodule.span ℂ
    {equation |
      ∃ relation ∈ relations,
        equation = relation.equation}

end Mathematics.Concept
```
