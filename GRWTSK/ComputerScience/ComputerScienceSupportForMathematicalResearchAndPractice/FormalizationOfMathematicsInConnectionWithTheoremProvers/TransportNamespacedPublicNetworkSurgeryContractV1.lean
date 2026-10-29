-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NetworkSurgeryContractV1.Variant7063dd458c1b93a958b2b48ee92e935967df538c3179438ea0ae6814bda8b43f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7063dd458c1b93a958b2b48ee92e935967df538c3179438ea0ae6814bda8b43f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NetworkSurgeryContractV1.Variant7063dd458c1b93a958b2b48ee92e935967df538c3179438ea0ae6814bda8b43f","mathematical_subject":"Foundations.Unclassified","original_sha256":"7063dd458c1b93a958b2b48ee92e935967df538c3179438ea0ae6814bda8b43f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/SurfaceCore/Surface/Core/NetworkSurgery/Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.NetworkSurgery.Game
public import Surface.Core.Transport.Certificate

/-!
# Versioned network-surgery transport and theorem-task identity envelope

Transport metadata is finite identity/evidence.  The only way to expose an
arbitrary proposition remains an actual Lean proof term of that proposition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NetworkSurgeryContractV1.Variant7063dd458c1b93a958b2b48ee92e935967df538c3179438ea0ae6814bda8b43f

public section

namespace Surface.Core.NetworkSurgery

open Surface.Core.Transport

@[surface_novel]
structure NetworkSurgeryContractV1 where
  schemaVersion : Nat
  phaseMachineVersion : Nat
  bracketProjectionVersion : Nat
  boundaryLedgerVersion : Nat
  quantizationVersion : Nat
  operationLanguageVersion : Nat
  canonicalSerializationVersion : Nat
  contractHash : Hash256
deriving DecidableEq, Repr

@[expose] def NetworkSurgeryContractV1.Valid
    (contract : NetworkSurgeryContractV1) : Prop :=
  contract.schemaVersion = 1 ∧
    contract.phaseMachineVersion = 1 ∧
    contract.bracketProjectionVersion = 1 ∧
    contract.boundaryLedgerVersion = 1 ∧
    contract.quantizationVersion = 1 ∧
    contract.operationLanguageVersion = 1 ∧
    contract.canonicalSerializationVersion = 1 ∧
    contract.contractHash.Valid

@[surface_novel]
structure NetworkSurgeryPublication (Payload : Type*) where
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  sessionId : SessionId
  state : Revisioned (NetworkSurgeryGameState Payload)
deriving DecidableEq, Repr

@[surface_novel]
structure TransportedTheoremTask where
  declarationIdentity : DeclarationId
  statementHash : Hash256
  normalizedTypeHash : Hash256
  sourceSnapshotHash : Hash256
  transportRevision : Revision
deriving DecidableEq, Repr

@[expose] def transportTheoremTask
    (task : TransportedTheoremTask) : TransportedTheoremTask := task

@[surface_novel, surface_published]
theorem transportedTheoremTask_preserves_identity
    (task : TransportedTheoremTask) :
    (transportTheoremTask task).declarationIdentity = task.declarationIdentity :=
  rfl

@[surface_novel, surface_published]
theorem transportedTheoremTask_preserves_statementHash
    (task : TransportedTheoremTask) :
    (transportTheoremTask task).statementHash = task.statementHash :=
  rfl

@[surface_novel]
structure TransportedCheckedReference where
  sourceTask : TransportedTheoremTask
  targetTask : TransportedTheoremTask
  sourceDeclarationIdentity : DeclarationId
  targetDeclarationIdentity : DeclarationId
deriving DecidableEq, Repr

@[expose] def TransportedCheckedReference.Valid
    (reference : TransportedCheckedReference) : Prop :=
  reference.sourceDeclarationIdentity = reference.sourceTask.declarationIdentity ∧
    reference.targetDeclarationIdentity = reference.targetTask.declarationIdentity ∧
    reference.sourceTask.declarationIdentity = reference.targetTask.declarationIdentity

@[surface_novel, surface_published]
theorem transportedCheckedReference_requires_same_task
    (reference : TransportedCheckedReference) (valid : reference.Valid) :
    reference.sourceTask.declarationIdentity =
      reference.targetTask.declarationIdentity :=
  valid.2.2

@[expose] def TransportedTheoremTask.MetadataProves
    (_task : TransportedTheoremTask) (_proposition : Prop) : Prop := False

@[surface_novel, surface_published]
theorem networkSurgeryMetadata_does_not_prove_task
    (task : TransportedTheoremTask) (proposition : Prop) :
    ¬ task.MetadataProves proposition := by
  simp [TransportedTheoremTask.MetadataProves]

@[surface_novel]
inductive NetworkSurgeryConformanceLevel where
  | goldenVectors
  | propertyTests
  | finiteEnumeration
  | certificateChecked
  | universallyVerified
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive NetworkSurgeryCertificateAuthority where
  | finiteBoundEnvironmentEvidence
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure RustNetworkSurgeryCertificate where
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  inputProposalHash : Hash256
  rustPreparedProposalHash : Hash256
  leanPreparedProposalHash : Hash256
  assurance : NetworkSurgeryConformanceLevel
  authority : NetworkSurgeryCertificateAuthority
deriving DecidableEq, Repr

@[expose] def RustNetworkSurgeryConforms
    (certificate : RustNetworkSurgeryCertificate)
    (inputProposalHash : Hash256) : Prop :=
  certificate.contractHash.Valid ∧
    certificate.sourceSnapshotHash.Valid ∧
    certificate.inputProposalHash = inputProposalHash ∧
    certificate.rustPreparedProposalHash = certificate.leanPreparedProposalHash ∧
    certificate.assurance = .certificateChecked ∧
    certificate.authority = .finiteBoundEnvironmentEvidence

@[expose] def rustPreparedMove
    (certificate : RustNetworkSurgeryCertificate) (_input : Hash256) : Hash256 :=
  certificate.rustPreparedProposalHash

@[expose] def leanPreparedMove
    (certificate : RustNetworkSurgeryCertificate) (_input : Hash256) : Hash256 :=
  certificate.leanPreparedProposalHash

@[surface_novel, surface_published]
theorem rustNetworkSurgery_eq_leanNetworkSurgery
    (certificate : RustNetworkSurgeryCertificate) (input : Hash256)
    (conforms : RustNetworkSurgeryConforms certificate input) :
    rustPreparedMove certificate input = leanPreparedMove certificate input :=
  conforms.2.2.2.1

end Surface.Core.NetworkSurgery
