# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Proposal.Variant121446cabe3a89d3747fedb544826974888d69957663e2d2d81ea4fcc337dbf9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61e2776ae3eaeb74c2453a42e275bfd5ce887587` · SHA-256 `e8b92a696a2737bbca30d49017003c81a9d5809480e9aaa09ad90cc6540338c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryRejectionCode.Variant4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SurgeryRejectionCode.Variant4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203","mathematical_subject":"Computation.DataStructures","original_sha256":"4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/lib/Surface/Refactor/Surgery/Proposal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Surgery.Inverse
public import Surface.Refactor.PatchBundle

/-!
# Version-one structural surgery proposals

The proposal is a finite, content-addressed description of one candidate
repository transition.  Parser, compiler, public-API, and axiom-policy results
are explicit observations.  They are inputs to admission, never theorem proofs.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryRejectionCode.Variant4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203

public section

namespace Surface.Refactor.Surgery

open Surface.Core Transport Surface.Refactor.Syntax

/-- Stable protocol errors.  The strings are the cross-language wire codes. -/
@[surface_novel]
inductive SurgeryRejectionCode where
  | invalidStructuralPacket
  | unsupportedLanguage
  | parserFingerprintMismatch
  | packetHashMismatch
  | staleRepositoryRevision
  | equalRevisionSurgeryConflict
  | nodeNotFound
  | ambiguousNodeCorrespondence
  | sourceSpanMismatch
  | unsupportedSurgeryOperation
  | overlappingCompiledEdits
  | bracketProjectionInvalid
  | parseRecoveryNotAdmissible
  | importCycle
  | unresolvedReference
  | compilerValidationFailed
  | leanStatementChanged
  | leanPublicApiChanged
  | leanAxiomGrowth
  | inverseRoundtripFailed
  | patchRenderFailed
  | patchApplyCheckFailed
  | transactionRace
  | transactionRollback
  | schemaOrAlgorithmMismatch
  | contractOrSnapshotMismatch
  | sourceBytesOrHashesMismatch
  | compiledHashMismatch
  | structuralInvariantFailed
deriving DecidableEq, Repr, BEq

@[expose] def SurgeryRejectionCode.wireCode : SurgeryRejectionCode → String
  | .invalidStructuralPacket => "INVALID_STRUCTURAL_PACKET"
  | .unsupportedLanguage => "UNSUPPORTED_LANGUAGE"
  | .parserFingerprintMismatch => "PARSER_FINGERPRINT_MISMATCH"
  | .packetHashMismatch => "PACKET_HASH_MISMATCH"
  | .staleRepositoryRevision => "STALE_REPOSITORY_REVISION"
  | .equalRevisionSurgeryConflict => "EQUAL_REVISION_SURGERY_CONFLICT"
  | .nodeNotFound => "NODE_NOT_FOUND"
  | .ambiguousNodeCorrespondence => "AMBIGUOUS_NODE_CORRESPONDENCE"
  | .sourceSpanMismatch => "SOURCE_SPAN_MISMATCH"
  | .unsupportedSurgeryOperation => "UNSUPPORTED_SURGERY_OPERATION"
  | .overlappingCompiledEdits => "OVERLAPPING_COMPILED_EDITS"
  | .bracketProjectionInvalid => "BRACKET_PROJECTION_INVALID"
  | .parseRecoveryNotAdmissible => "PARSE_RECOVERY_NOT_ADMISSIBLE"
  | .importCycle => "IMPORT_CYCLE"
  | .unresolvedReference => "UNRESOLVED_REFERENCE"
  | .compilerValidationFailed => "COMPILER_VALIDATION_FAILED"
  | .leanStatementChanged => "LEAN_STATEMENT_CHANGED"
  | .leanPublicApiChanged => "LEAN_PUBLIC_API_CHANGED"
  | .leanAxiomGrowth => "LEAN_AXIOM_GROWTH"
  | .inverseRoundtripFailed => "INVERSE_ROUNDTRIP_FAILED"
  | .patchRenderFailed => "PATCH_RENDER_FAILED"
  | .patchApplyCheckFailed => "PATCH_APPLY_CHECK_FAILED"
  | .transactionRace => "TRANSACTION_RACE"
  | .transactionRollback => "TRANSACTION_ROLLBACK"
  | .schemaOrAlgorithmMismatch => "SCHEMA_OR_ALGORITHM_MISMATCH"
  | .contractOrSnapshotMismatch => "CONTRACT_OR_SNAPSHOT_MISMATCH"
  | .sourceBytesOrHashesMismatch => "SOURCE_BYTES_OR_HASHES_MISMATCH"
  | .compiledHashMismatch => "COMPILED_HASH_MISMATCH"
  | .structuralInvariantFailed => "STRUCTURAL_INVARIANT_FAILED"

/-- Exact per-file identities and source spans bound into a proposal key. -/
@[surface_novel]
structure SurgeryAffectedFileV1 where
  file : SourceFileIdentity
  beforeFileHash : Hash256
  affectedSpans : List SourceSpan
  expectedAfterFileHash : Hash256
deriving DecidableEq, Repr

@[expose] def SurgeryAffectedFileV1.Valid
    (affected : SurgeryAffectedFileV1) : Prop :=
  affected.beforeFileHash.Valid ∧ affected.expectedAfterFileHash.Valid ∧
    affected.affectedSpans.Pairwise (fun left right =>
      left.endByte ≤ right.startByte ∨ right.endByte ≤ left.startByte)

/--
Finite observations from the canonical parser/compiler and isolated overlay.
Every field records one named gate; none carries theorem authority.
-/
@[surface_novel]
structure SurgeryVerificationObservationsV1 where
  structuralPacketValid : Bool
  packetHashMatches : Bool
  languageSupported : Bool
  parserFingerprintMatches : Bool
  pathsAllowed : Bool
  sourceSpansValid : Bool
  sourceBytesAndHashesMatch : Bool
  operationsSupported : Bool
  nodesResolvedExactly : Bool
  nodeCorrespondenceUnambiguous : Bool
  compiledHashesMatch : Bool
  canonicalParseAccepted : Bool
  parseRecoveryAbsent : Bool
  dependencyGraphValid : Bool
  importsAcyclic : Bool
  referencesResolved : Bool
  requestedBuildTargetsPassed : Bool
  theoremTaskIdentityPreserved : Bool
  publicApiPreserved : Bool
  classificationsPreserved : Bool
  axiomPolicyPreserved : Bool
  inverseRoundTripPassed : Bool
  patchRendered : Bool
  patchApplyCheckPassed : Bool
  bracketProjectionValid : Bool
  structuralInvariantsHold : Bool
deriving DecidableEq, Repr

/-- Current immutable repository/register state used by the verifier. -/
@[surface_novel]
structure SurgeryAdmissionContextV1 where
  schemaVersion : Nat
  algorithmVersion : Nat
  transportContractHash : Hash256
  sourceSnapshotHash : Hash256
  repositoryRevision : Nat
  parserFingerprint : ParserFingerprint
  currentProposalRevision? : Option Nat
  currentProposalHash? : Option Hash256
deriving DecidableEq, Repr

/--
The complete version-one proposal key plus its resolved finite evidence.
`SurgeryBundle` supplies exact edit ordering, global non-overlap, and inverse
round-trip witnesses; it performs no I/O.
-/
@[surface_novel]
structure SurgeryProposalV1 where
  schemaVersion : Nat
  algorithmVersion : Nat
  transportContractHash : Hash256
  baseSourceSnapshotHash : Hash256
  structuralPacketHash : Hash256
  parserFingerprint : ParserFingerprint
  baseRepositoryRevision : Nat
  proposalRevision : Nat
  proposalHash : Hash256
  operationIds : List Hash256
  orderedAffectedFiles : List SurgeryAffectedFileV1
  expectedAfterRepositorySnapshotHash : Hash256
  beforeTheoremTaskIdentity? : Option TheoremTaskIdentity
  afterTheoremTaskIdentity? : Option TheoremTaskIdentity
  resolvedOperations : List ResolvedSurgeryOperation
  bundle : SurgeryBundle
  observations : SurgeryVerificationObservationsV1
  bundleResolvedOperationsMatch :
    bundle.resolvedOperations = resolvedOperations
  bundleForwardEditsMatch :
    bundle.forwardEdits =
      resolvedOperations.flatMap ResolvedSurgeryOperation.compiledEdits

@[expose] def SurgeryProposalV1.resolvedOperationIds
    (proposal : SurgeryProposalV1) : List Hash256 :=
  proposal.resolvedOperations.map
    (fun resolved => resolved.operation.context.operationId)

@[expose] def SurgeryProposalV1.resolvedAffectedFiles
    (proposal : SurgeryProposalV1) : List SourceFileIdentity :=
  proposal.resolvedOperations.map
    (fun resolved => resolved.operation.context.targetFile)

@[expose] def SurgeryProposalV1.affectedFileIds
    (proposal : SurgeryProposalV1) : List SourceFileIdentity :=
  proposal.orderedAffectedFiles.map SurgeryAffectedFileV1.file

@[expose] def SurgeryProposalV1.allResolvedEdits
    (proposal : SurgeryProposalV1) : List ExactGuardedByteEdit :=
  proposal.resolvedOperations.flatMap ResolvedSurgeryOperation.compiledEdits

@[surface_novel]
structure SurgeryProposalV1.Keyed
    (proposal : SurgeryProposalV1) : Prop where
  schemaVersion : proposal.schemaVersion = 1
  contractHashValid : proposal.transportContractHash.Valid
  baseSnapshotHashValid : proposal.baseSourceSnapshotHash.Valid
  packetHashValid : proposal.structuralPacketHash.Valid
  proposalHashValid : proposal.proposalHash.Valid
  afterSnapshotHashValid : proposal.expectedAfterRepositorySnapshotHash.Valid
  parserFingerprintValid : proposal.parserFingerprint.Valid
  baseRevisionFits : FitsU32 proposal.baseRepositoryRevision
  proposalRevisionFits : FitsU32 proposal.proposalRevision
  operationIdsMatch : proposal.operationIds = proposal.resolvedOperationIds
  affectedFilesMatch :
    proposal.resolvedAffectedFiles = proposal.affectedFileIds
  operationIdsNodup : proposal.operationIds.Nodup
  affectedFilesValid :
    ∀ affected ∈ proposal.orderedAffectedFiles, affected.Valid
  bundleBaseHashMatches :
    proposal.bundle.baseSnapshot.snapshotHash = proposal.baseSourceSnapshotHash
  bundleBaseRevisionMatches :
    proposal.bundle.baseSnapshot.repositoryRevision =
      proposal.baseRepositoryRevision
  bundleAfterHashMatches :
    proposal.bundle.afterSnapshot.snapshotHash =
      proposal.expectedAfterRepositorySnapshotHash

/-- Equal revision with the identical content-addressed proposal is a replay. -/
@[expose] def SurgeryProposalV1.IsReplay
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) : Prop :=
  context.currentProposalRevision? = some proposal.proposalRevision ∧
    context.currentProposalHash? = some proposal.proposalHash

/-- Equal revision carrying different bytes is a fail-closed conflict. -/
@[expose] def SurgeryProposalV1.HasEqualRevisionConflict
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) : Prop :=
  context.currentProposalRevision? = some proposal.proposalRevision ∧
    context.currentProposalHash? ≠ some proposal.proposalHash

/-- A revision is stale relative to an already admitted proposal revision. -/
@[expose] def SurgeryProposalV1.HasStaleProposalRevision
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) : Prop :=
  ∃ current, context.currentProposalRevision? = some current ∧
    proposal.proposalRevision < current

end Surface.Refactor.Surgery
```
