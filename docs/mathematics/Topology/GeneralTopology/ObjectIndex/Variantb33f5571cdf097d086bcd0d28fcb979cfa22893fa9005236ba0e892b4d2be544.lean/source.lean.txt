-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.MathematicalObjectRecord.Variant88c592393ef87d9a6db64fb6d090c66866895dd230b0b421becbeb8bb0b91766","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88c592393ef87d9a6db64fb6d090c66866895dd230b0b421becbeb8bb0b91766","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.MathematicalObjectRecord.Variant88c592393ef87d9a6db64fb6d090c66866895dd230b0b421becbeb8bb0b91766","mathematical_subject":"Topology.GeneralTopology","original_sha256":"88c592393ef87d9a6db64fb6d090c66866895dd230b0b421becbeb8bb0b91766","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/ObjectIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.Obligation
import Mathlib.Order.WellFounded

/-!
# Finite canonical mathematical index

The records below link stable semantic identities to owner, checker, authority,
provenance, examples, counterexamples, representations, refinements, and open
obligations. Optional `sourceIndexEntry` fields connect to the pre-existing
canonical assurance index without re-owning its declarations.
-/


namespace GRWTSK.Topology.GeneralTopology.MathematicalObjectRecord.Variant88c592393ef87d9a6db64fb6d090c66866895dd230b0b421becbeb8bb0b91766

universe u

namespace Surface.ContinuousAssurance.WorldModel

/-- Indexed semantic object. -/
structure MathematicalObjectRecord where
  identity : MathematicalObjectId
  semanticVersion : DAF.Version
  owner : Project
  sourceIndexEntry : Option AnyIndexRecord

/-- Indexed formal declaration with a pinned checker/source boundary. -/
structure FormalDeclarationRecord where
  identity : FormalDeclarationId
  objectId : MathematicalObjectId
  definingModule : String
  normalizedType : String
  owner : Project
  sourceAuthority : AuthorityClass
  checker : ArtifactIdentity
  sourceDigest : ArtifactIdentity

/-- Indexed proposition belonging to a mathematical object. -/
structure PropositionRecord where
  identity : PropositionId
  objectId : MathematicalObjectId
  normalizedStatement : String
  assumptions : List AssumptionId

/-- Explicit proof-authority route for one proposition/declaration pair. -/
structure ProofAuthorityRecord where
  identity : String
  propositionId : PropositionId
  declarationId : FormalDeclarationId
  checker : ArtifactIdentity
  trustedBase : TrustedBaseClosure
  authority : AuthorityClass
  evidenceClass : EvidenceClass
  sourceDigest : ArtifactIdentity

/-- Positive finite example. -/
structure ExampleRecord where
  identity : String
  objectId : MathematicalObjectId
  propositionId : Option PropositionId
  artifact : ArtifactIdentity

/-- Finite counterexample with the proposition it refutes. -/
structure CounterexampleRecord where
  identity : String
  objectId : MathematicalObjectId
  propositionId : PropositionId
  artifact : ArtifactIdentity

/-- One representation of a semantic object. -/
structure RepresentationRecord where
  identity : RepresentationId
  objectId : MathematicalObjectId
  representationVersion : DAF.Version
  authority : AuthorityClass
  artifact : ArtifactIdentity
  supersedes : Option RepresentationId

/-- An implementation refinement remains explicit and authority-labelled. -/
structure ImplementationRefinementRecord where
  identity : String
  specificationObject : MathematicalObjectId
  implementationArtifact : ArtifactIdentity
  bridgeDeclaration : Option FormalDeclarationId
  implementationAuthority : AuthorityClass

/-- Complete finite Level-0 canonical mathematical index. -/
structure CanonicalMathematicalIndex where
  objects : FiniteRegistry MathematicalObjectRecord
  objectKey : ∀ record, objects.key record = record.identity.value
  declarations : FiniteRegistry FormalDeclarationRecord
  declarationKey : ∀ record, declarations.key record = record.identity.value
  propositions : FiniteRegistry PropositionRecord
  assumptions : FiniteRegistry AssumptionRecord
  proofAuthorities : FiniteRegistry ProofAuthorityRecord
  examples : FiniteRegistry ExampleRecord
  counterexamples : FiniteRegistry CounterexampleRecord
  representations : FiniteRegistry RepresentationRecord
  refinements : FiniteRegistry ImplementationRefinementRecord
  obligations : FiniteRegistry ObligationRecord
  rootIdentity : ArtifactIdentity

namespace CanonicalMathematicalIndex

/-!
## Read-only query interface

These operations expose the finite index without granting any new authority.
In particular, a returned proof-authority record is only metadata describing a
checker route; its authority is still governed by the record's trusted-base
closure and evidence class.
-/

/-- Look up a mathematical object by its stable identifier. -/
def lookupObject (index : CanonicalMathematicalIndex)
    (id : MathematicalObjectId) : Option MathematicalObjectRecord :=
  index.objects.lookup id.value

/-- Look up a formal declaration by its stable identifier. -/
def lookupDeclaration (index : CanonicalMathematicalIndex)
    (id : FormalDeclarationId) : Option FormalDeclarationRecord :=
  index.declarations.lookup id.value

/-- Look up a proposition by its stable identifier. -/
def lookupProposition (index : CanonicalMathematicalIndex)
    (id : PropositionId) : Option PropositionRecord :=
  index.propositions.lookup id.value

/-- List the assumptions explicitly recorded by the canonical index. -/
def listAssumptions (index : CanonicalMathematicalIndex) : List AssumptionRecord :=
  index.assumptions.entries

/-- Return every declared proof-authority route for a proposition. -/
def traceProofAuthority (index : CanonicalMathematicalIndex)
    (id : PropositionId) : List ProofAuthorityRecord :=
  index.proofAuthorities.entries.filter fun record ↦
    decide (record.propositionId = id)

/--
Trace the declarations attached to an object. Import-level dependency edges
remain the responsibility of the elaborated-environment exporter; this query
is the semantic-object projection stored in the Level-0 index.
-/
def traceDependencies (index : CanonicalMathematicalIndex)
    (id : MathematicalObjectId) : List FormalDeclarationRecord :=
  index.declarations.entries.filter fun record ↦
    decide (record.objectId = id)

/-- List every representation registered for an object. -/
def listRepresentations (index : CanonicalMathematicalIndex)
    (id : MathematicalObjectId) : List RepresentationRecord :=
  index.representations.entries.filter fun record ↦
    decide (record.objectId = id)

/-- List positive finite examples registered for an object. -/
def listExamples (index : CanonicalMathematicalIndex)
    (id : MathematicalObjectId) : List ExampleRecord :=
  index.examples.entries.filter fun record ↦
    decide (record.objectId = id)

/-- List explicit counterexamples registered for an object. -/
def listCounterexamples (index : CanonicalMathematicalIndex)
    (id : MathematicalObjectId) : List CounterexampleRecord :=
  index.counterexamples.entries.filter fun record ↦
    decide (record.objectId = id)

/-- List obligations that are open now or assigned to a future phase. -/
def listOpenObligations (index : CanonicalMathematicalIndex) : List ObligationRecord :=
  index.obligations.entries.filter fun record ↦
    match record.status with
    | .open | .futurePhase => true
    | .discharged | .superseded | .permanentlyOutOfScope => false

/-- Coordinate-wise comparison of independently versioned artifacts. -/
structure VersionComparison where
  semanticEqual : Bool
  representationEqual : Bool
  implementationEqual : Bool
  checkerEqual : Bool
  registryEqual : Bool
  deriving DecidableEq, Repr

/-- Compare versions without conflating semantic and implementation changes. -/
def compareVersions (left right : VersionCoordinates) : VersionComparison where
  semanticEqual := decide (left.semantic = right.semantic)
  representationEqual := decide (left.representation = right.representation)
  implementationEqual := decide (left.implementation = right.implementation)
  checkerEqual := decide (left.checker = right.checker)
  registryEqual := decide (left.registry = right.registry)

@[simp] theorem compareVersions_self (version : VersionCoordinates) :
    compareVersions version version =
      { semanticEqual := true
        representationEqual := true
        implementationEqual := true
        checkerEqual := true
        registryEqual := true } := by
  simp [compareVersions]

def HasObject (index : CanonicalMathematicalIndex)
    (id : MathematicalObjectId) : Prop :=
  ∃ record ∈ index.objects.entries, record.identity = id

def HasDeclaration (index : CanonicalMathematicalIndex)
    (id : FormalDeclarationId) : Prop :=
  ∃ record ∈ index.declarations.entries, record.identity = id

def HasProposition (index : CanonicalMathematicalIndex)
    (id : PropositionId) : Prop :=
  ∃ record ∈ index.propositions.entries, record.identity = id

/-- Cross-reference validity for the finite index. -/
structure Valid (index : CanonicalMathematicalIndex) : Prop where
  declarations_resolve :
    ∀ record ∈ index.declarations.entries, index.HasObject record.objectId
  propositions_resolve :
    ∀ record ∈ index.propositions.entries, index.HasObject record.objectId
  authorities_resolve :
    ∀ record ∈ index.proofAuthorities.entries,
      index.HasProposition record.propositionId ∧
      index.HasDeclaration record.declarationId
  examples_resolve :
    ∀ record ∈ index.examples.entries, index.HasObject record.objectId
  counterexamples_resolve :
    ∀ record ∈ index.counterexamples.entries,
      index.HasObject record.objectId ∧
      index.HasProposition record.propositionId
  representations_resolve :
    ∀ record ∈ index.representations.entries,
      index.HasObject record.objectId
  refinements_resolve :
    ∀ record ∈ index.refinements.entries,
      index.HasObject record.specificationObject

/-- IDX-01: object stable keys are unique. -/
theorem object_identifiers_unique
    (index : CanonicalMathematicalIndex)
    {left right : MathematicalObjectRecord}
    (hleft : left ∈ index.objects.entries)
    (hright : right ∈ index.objects.entries)
    (hidentity : left.identity = right.identity) :
    left = right := by
  apply index.objects.keys_unique hleft hright
  rw [index.objectKey left, index.objectKey right, hidentity]

/-- IDX-02: declaration stable keys are unique. -/
theorem declaration_identifiers_unique
    (index : CanonicalMathematicalIndex)
    {left right : FormalDeclarationRecord}
    (hleft : left ∈ index.declarations.entries)
    (hright : right ∈ index.declarations.entries)
    (hidentity : left.identity = right.identity) :
    left = right := by
  apply index.declarations.keys_unique hleft hright
  rw [index.declarationKey left, index.declarationKey right, hidentity]

/-- IDX-03: every indexed declaration refers to an existing object. -/
theorem declaration_refers_to_object
    {index : CanonicalMathematicalIndex}
    (valid : index.Valid)
    {record : FormalDeclarationRecord}
    (member : record ∈ index.declarations.entries) :
    index.HasObject record.objectId :=
  valid.declarations_resolve record member

/-- IDX-04: every indexed proposition refers to an existing object. -/
theorem proposition_refers_to_object
    {index : CanonicalMathematicalIndex}
    (valid : index.Valid)
    {record : PropositionRecord}
    (member : record ∈ index.propositions.entries) :
    index.HasObject record.objectId :=
  valid.propositions_resolve record member

/-- IDX-05: every proof-authority route resolves both endpoints. -/
theorem proof_authority_resolves
    {index : CanonicalMathematicalIndex}
    (valid : index.Valid)
    {record : ProofAuthorityRecord}
    (member : record ∈ index.proofAuthorities.entries) :
    index.HasProposition record.propositionId ∧
      index.HasDeclaration record.declarationId :=
  valid.authorities_resolve record member

end CanonicalMathematicalIndex

/-- Numeric ordering used only to prevent authority promotion. -/
def authorityRank : AuthorityClass → Nat
  | .externalCapability => 0
  | .declarativeArtifact => 1
  | .certifiedSource => 2
  | .declaredAxiomaticExtension => 3
  | .kernelTrustedBase => 4

/-- Target authority is no stronger than source authority. -/
def AuthorityNonIncreasing (source target : AuthorityClass) : Prop :=
  authorityRank target ≤ authorityRank source

/-- An explicitly governed representation migration. -/
structure RepresentationMigration where
  source : RepresentationRecord
  target : RepresentationRecord
  authorityNonIncreasing :
    AuthorityNonIncreasing source.authority target.authority

/-- IDX-08: representation migration cannot increase authority. -/
theorem RepresentationMigration.cannot_increase_authority
    (migration : RepresentationMigration) :
    authorityRank migration.target.authority ≤
      authorityRank migration.source.authority :=
  migration.authorityNonIncreasing

/-- A semantic fork records an actual identity or semantic-version change. -/
structure SemanticFork where
  source : MathematicalObjectRecord
  target : MathematicalObjectRecord
  changed : source.identity ≠ target.identity ∨
    source.semanticVersion ≠ target.semanticVersion

/-- IDX-09: a semantic fork cannot preserve both identity and version. -/
theorem SemanticFork.requires_new_identity_or_version
    (fork : SemanticFork) :
    fork.source.identity ≠ fork.target.identity ∨
      fork.source.semanticVersion ≠ fork.target.semanticVersion :=
  fork.changed

/-- A rank-decreasing supersession relation is well founded and therefore acyclic. -/
theorem supersession_wellFounded
    {Item : Type u}
    (rank : Item → Nat) :
    WellFounded (fun older newer ↦ rank older < rank newer) :=
  InvImage.wf rank wellFounded_lt

/-- Deterministic normalization delegates hashing to an explicitly supplied function. -/
def normalizedRoot
    (digest : CanonicalMathematicalIndex → ArtifactIdentity)
    (index : CanonicalMathematicalIndex) : ArtifactIdentity :=
  digest index

/-- IDX-10: the same normalizer and index produce one root identity. -/
theorem deterministic_normalization_unique
    (digest : CanonicalMathematicalIndex → ArtifactIdentity)
    (index : CanonicalMathematicalIndex) :
    normalizedRoot digest index = normalizedRoot digest index :=
  rfl

end Surface.ContinuousAssurance.WorldModel
