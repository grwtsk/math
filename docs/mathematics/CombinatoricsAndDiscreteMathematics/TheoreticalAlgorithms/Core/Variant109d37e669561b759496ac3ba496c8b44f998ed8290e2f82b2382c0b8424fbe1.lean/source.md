# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant109d37e669561b759496ac3ba496c8b44f998ed8290e2f82b2382c0b8424fbe1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a35e66ef10295388268590c78de4c69c9168cd5` · SHA-256 `eb0951d7200095750e5ae62cfa92faf7c1443e8c80db9d89c2ae16068c692a25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticOwnerId.Variantfb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SemanticOwnerId.Variantfb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878","mathematical_subject":"Computation.DataStructures","original_sha256":"fb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Index/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Manifest
import Surface.ContinuousAssurance.LiteratureTranslation

/-!
# Canonical assurance index core

The index is typed metadata.  It locates declarations, representations,
evidence, reviews, authorizations, and obligations without promoting hashes or
generated data to theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticOwnerId.Variantfb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878

namespace Surface.ContinuousAssurance

/-- Stable owner identity, including domain owners outside the pipeline project enum. -/
structure SemanticOwnerId where
  value : String
  deriving DecidableEq, Repr

/-- Optional absolute global locus retained by an indexed representation. -/
structure GlobalLocusRef where
  globalReference : MathematicalObjectId
  regionIdentifier : String
  deriving DecidableEq, Repr

/-- Metadata shared by every canonical index record. -/
structure IndexMetadata where
  owner : SemanticOwnerId
  semanticVersion : DAF.Version
  representationVersion : DAF.Version
  payload : ArtifactIdentity
  contentDigest : EvidenceDigest
  sourceAuthority : AuthorityClass
  observationAuthority : AuthorityClass
  assuranceLevel : AssuranceLevel
  assumptions : List String
  dependencies : List MathematicalObjectId
  globalLocus : Option GlobalLocusRef
  provenance : List ArtifactIdentity
  supersedes : Option RepresentationId
  openObligations : List ObligationId
  deriving Repr

/-- All supported semantic record classes in the finite canonical index. -/
inductive IndexRecordKind
  | mathematicalObject
  | formalDeclaration
  | proposition
  | globalReference
  | absoluteRegion
  | windowSystem
  | convolutionInvolutionCore
  | hierarchyLevel
  | binaryCharge
  | raster
  | metricFlow
  | torsionModel
  | thresholdState
  | avalanchePartition
  | surgeryPatch
  | submatrixLocus
  | implementationRefinement
  | example
  | counterexample
  | diagram
  | evidenceEvent
  | representationChange
  | obligation
  | reviewBinding
  | authorizationBinding
  deriving DecidableEq, Repr

/-- A record whose type remembers its semantic class. -/
structure IndexRecord (kind : IndexRecordKind) where
  identifier : String
  objectId : MathematicalObjectId
  representationId : RepresentationId
  declaration : Option FormalDeclarationId
  propositionOrSpecification : Option String
  metadata : IndexMetadata
  payloadReference : String
  deriving Repr

/-- Erased record used only to store heterogeneous records in one finite list. -/
structure AnyIndexRecord where
  kind : IndexRecordKind
  identifier : String
  objectId : MathematicalObjectId
  representationId : RepresentationId
  declaration : Option FormalDeclarationId
  propositionOrSpecification : Option String
  metadata : IndexMetadata
  payloadReference : String
  deriving Repr

/-- Forget only the type index; no record data is lost. -/
def IndexRecord.erase {kind : IndexRecordKind}
    (record : IndexRecord kind) : AnyIndexRecord :=
  { kind
    identifier := record.identifier
    objectId := record.objectId
    representationId := record.representationId
    declaration := record.declaration
    propositionOrSpecification := record.propositionOrSpecification
    metadata := record.metadata
    payloadReference := record.payloadReference }

/-- Finite canonical snapshot plus its externally computed root digest. -/
structure CanonicalIndex where
  schemaVersion : DAF.Version
  records : List AnyIndexRecord
  rootDigest : EvidenceDigest
  deriving Repr

/-- Semantic validity conditions independently checked for an index snapshot. -/
def CanonicalIndex.Valid (index : CanonicalIndex) : Prop :=
  index.records.Pairwise fun left right => left.identifier ≠ right.identifier

/-- A valid canonical index has unique stable record identifiers. -/
theorem CanonicalIndex.identifiers_unique
    {index : CanonicalIndex}
    (valid : index.Valid) :
    index.records.Pairwise fun left right => left.identifier ≠ right.identifier :=
  valid

end Surface.ContinuousAssurance
```
