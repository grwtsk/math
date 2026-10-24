-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompilerObservationStatus.Variante1be2a0aad17201b5590cdecf67a21eb6b863b8e84cc1b2b22d2db258258f6c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1be2a0aad17201b5590cdecf67a21eb6b863b8e84cc1b2b22d2db258258f6c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CompilerObservationStatus.Variante1be2a0aad17201b5590cdecf67a21eb6b863b8e84cc1b2b22d2db258258f6c9","mathematical_subject":"Computation.DataStructures","original_sha256":"e1be2a0aad17201b5590cdecf67a21eb6b863b8e84cc1b2b22d2db258258f6c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/lib/Presentation/Transport/SelfAnneal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Presentation.Transport.Projection
public import Surface.Refactor.Surgery.Energy
public import Surface.Refactor.Surgery.Proposal

/-!
# Operational presentation view of structural self-annealing

The presentation consumes one admitted, content-addressed structural packet.
Its trace contains actual structural energies and typed surgery operations.
Validity is a defined predicate over concrete data; no arbitrary proposition is
stored as a certificate field.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompilerObservationStatus.Variante1be2a0aad17201b5590cdecf67a21eb6b863b8e84cc1b2b22d2db258258f6c9

public section

namespace Presentation.Transport

open Surface.Core.Transport
open Surface.Refactor.Syntax
open Surface.Refactor.Surgery

deriving instance Repr for DyckStep

@[surface_novel]
inductive CompilerObservationStatus where
  | notRequested
  | structuralParserObserved
  | canonicalCompilerAccepted
  | canonicalCompilerRejected
deriving DecidableEq, Repr, BEq

/-- One immutable source/packet state suitable for a semantic instrument. -/
@[surface_novel]
structure SourceAstSnapshot where
  repositoryRevision : Revision
  sourceSnapshot : SourceSnapshotModel
  admittedPacket : Revisioned CompletePacketDescriptor
  parserFingerprint : ParserFingerprint
  nodeCount : Nat
  tokenCount : Nat
  declarationCount : Nat
  diagnosticCount : Nat
  bracketWord : BinaryLogicMatrix
  energy : StructuralEnergy
  selectedRepairCandidateHash? : Option Hash256
  patchSummaryHash? : Option Hash256
  compilerObservation : CompilerObservationStatus
deriving Repr

@[expose] def SourceAstSnapshot.Valid (snapshot : SourceAstSnapshot) : Prop :=
  snapshot.sourceSnapshot.snapshotHash.Valid ∧
    snapshot.sourceSnapshot.repositoryRevision = snapshot.repositoryRevision.val ∧
    snapshot.admittedPacket.revision = snapshot.repositoryRevision ∧
    snapshot.admittedPacket.value.Valid ∧
    snapshot.parserFingerprint.Valid ∧
    FitsU32 snapshot.nodeCount ∧ FitsU32 snapshot.tokenCount ∧
    FitsU32 snapshot.declarationCount ∧ FitsU32 snapshot.diagnosticCount ∧
    BalancedBracketProjection snapshot.bracketWord ∧
    (∀ hash ∈ snapshot.selectedRepairCandidateHash?, hash.Valid) ∧
    (∀ hash ∈ snapshot.patchSummaryHash?, hash.Valid)

/-- Exact accepted-step chain from the initial to final source hash. -/
@[expose] def AnnealStepChain :
    Hash256 → List AnnealStep → Hash256 → Prop
  | current, [], final => current = final
  | current, step :: remaining, final =>
      step.beforeSnapshotHash = current ∧
        step.Valid ∧ step.accepted = true ∧
        AnnealStepChain step.afterSnapshotHash remaining final

@[surface_novel]
structure AnnealTrace where
  initial : SourceAstSnapshot
  steps : List AnnealStep
  final : SourceAstSnapshot
  fuel : Nat
deriving Repr

@[expose] def AnnealTrace.Valid (trace : AnnealTrace) : Prop :=
  trace.initial.Valid ∧ trace.final.Valid ∧
    trace.steps.length ≤ trace.fuel ∧
    AnnealStepChain trace.initial.sourceSnapshot.snapshotHash trace.steps
      trace.final.sourceSnapshot.snapshotHash

@[surface_novel]
inductive SelfAnnealAuthority where
  | presentationOnly
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure SelfAnnealCertificate where
  trace : AnnealTrace
  traceValid : trace.Valid
  authority : SelfAnnealAuthority := .presentationOnly

@[surface_novel, surface_published]
theorem selfAnnealCertificate_trace_valid
    (certificate : SelfAnnealCertificate) : certificate.trace.Valid :=
  certificate.traceValid

@[surface_novel, surface_published]
theorem selfAnnealCertificate_length_le_fuel
    (certificate : SelfAnnealCertificate) :
    certificate.trace.steps.length ≤ certificate.trace.fuel :=
  certificate.traceValid.2.2.1

@[expose] def SelfAnnealCertificate.CreatesTheoremAuthority
    (_certificate : SelfAnnealCertificate) : Prop :=
  False

@[surface_novel, surface_published]
theorem selfAnnealCertificate_has_no_theorem_authority
    (certificate : SelfAnnealCertificate) :
    ¬ certificate.CreatesTheoremAuthority := by
  simp [SelfAnnealCertificate.CreatesTheoremAuthority]

/-- Semantic non-canvas source instrument derived from the admitted state. -/
@[surface_novel]
structure SourceCodeInstrument where
  repositoryRevision : Revision
  sourceSnapshotHash : Hash256
  parserFingerprint : ParserFingerprint
  packetHash : Hash256
  packetByteLength : Nat
  nodeCount : Nat
  tokenCount : Nat
  declarationCount : Nat
  diagnosticCount : Nat
  bracketBalance : Int
  currentHardViolations : List Nat
  selectedRepairCandidateHash? : Option Hash256
  patchSummaryHash? : Option Hash256
  compilerObservation : CompilerObservationStatus
  nonclaims : List String
deriving Repr

@[expose] def sourceCodeInstrument
    (snapshot : SourceAstSnapshot) : SourceCodeInstrument where
  repositoryRevision := snapshot.repositoryRevision
  sourceSnapshotHash := snapshot.sourceSnapshot.snapshotHash
  parserFingerprint := snapshot.parserFingerprint
  packetHash := snapshot.admittedPacket.value.packetHash
  packetByteLength := snapshot.admittedPacket.value.byteLength
  nodeCount := snapshot.nodeCount
  tokenCount := snapshot.tokenCount
  declarationCount := snapshot.declarationCount
  diagnosticCount := snapshot.diagnosticCount
  bracketBalance := finalBalance snapshot.bracketWord
  currentHardViolations := snapshot.energy.hardVector
  selectedRepairCandidateHash? := snapshot.selectedRepairCandidateHash?
  patchSummaryHash? := snapshot.patchSummaryHash?
  compilerObservation := snapshot.compilerObservation
  nonclaims := [
    "Structural transport metadata is not a Lean proof.",
    "Search selection is not source-mutation authority.",
    "Compiler observations are bound to the exact source snapshot and toolchain."
  ]

@[surface_novel, surface_published]
theorem sourceCodeInstrument_preserves_repository_revision
    (snapshot : SourceAstSnapshot) :
    (sourceCodeInstrument snapshot).repositoryRevision =
      snapshot.repositoryRevision :=
  rfl

@[surface_novel, surface_published]
theorem sourceCodeInstrument_preserves_source_snapshot_hash
    (snapshot : SourceAstSnapshot) :
    (sourceCodeInstrument snapshot).sourceSnapshotHash =
      snapshot.sourceSnapshot.snapshotHash :=
  rfl

end Presentation.Transport
