# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Proposal.Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `683c504991f4229435dbe4681987821e1d6b84d8` · SHA-256 `f28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Surgery.Inverse
public import Surface.Refactor.PatchBundle

/-!
# Version-one structural surgery proposals

The proposal is a finite, content-addressed description of one candidate
repository transition.  Parser, compiler, public-API, and axiom-policy results
are explicit observations.  They are inputs to admission, never theorem proofs.
-/

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

@[expose] def SurgeryProposalV1.Keyed
    (proposal : SurgeryProposalV1) : Prop :=
  proposal.schemaVersion = 1 ∧
    proposal.transportContractHash.Valid ∧
    proposal.baseSourceSnapshotHash.Valid ∧
    proposal.structuralPacketHash.Valid ∧
    proposal.proposalHash.Valid ∧
    proposal.expectedAfterRepositorySnapshotHash.Valid ∧
    proposal.parserFingerprint.Valid ∧
    FitsU32 proposal.baseRepositoryRevision ∧
    FitsU32 proposal.proposalRevision ∧
    proposal.operationIds = proposal.resolvedOperationIds ∧
    proposal.resolvedAffectedFiles = proposal.affectedFileIds ∧
    proposal.operationIds.Nodup ∧
    (∀ affected ∈ proposal.orderedAffectedFiles, affected.Valid) ∧
    proposal.bundle.baseSnapshot.snapshotHash =
      proposal.baseSourceSnapshotHash ∧
    proposal.bundle.baseSnapshot.repositoryRevision =
      proposal.baseRepositoryRevision ∧
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
