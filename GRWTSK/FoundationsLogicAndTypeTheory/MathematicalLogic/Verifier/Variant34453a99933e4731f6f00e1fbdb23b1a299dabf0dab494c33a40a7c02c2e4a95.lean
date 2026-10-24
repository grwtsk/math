-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SurgeryProposalV1Valid.Variantf107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SurgeryProposalV1Valid.Variantf107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6","mathematical_subject":"Logic.Foundations","original_sha256":"f107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/lib/Surface/Refactor/Surgery/Verifier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Surgery.Proposal

/-!
# Ordered pure surgery admission

The verifier is a total finite reducer over immutable proposal data and named
observations.  The gate list fixes error precedence.  Compiler/parser fields
are observations about exact artifacts; the only proof-bearing source facts are
the Lean fields already carried by the resolved operations and inverse bundle.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SurgeryProposalV1Valid.Variantf107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6

public section

namespace Surface.Refactor.Surgery

open Surface.Core.Transport

@[expose] def SurgeryVerificationObservationsV1.flags
    (observations : SurgeryVerificationObservationsV1) : List Bool :=
  [observations.structuralPacketValid,
    observations.packetHashMatches,
    observations.languageSupported,
    observations.parserFingerprintMatches,
    observations.pathsAllowed,
    observations.sourceSpansValid,
    observations.sourceBytesAndHashesMatch,
    observations.operationsSupported,
    observations.nodesResolvedExactly,
    observations.nodeCorrespondenceUnambiguous,
    observations.compiledHashesMatch,
    observations.canonicalParseAccepted,
    observations.parseRecoveryAbsent,
    observations.dependencyGraphValid,
    observations.importsAcyclic,
    observations.referencesResolved,
    observations.requestedBuildTargetsPassed,
    observations.theoremTaskIdentityPreserved,
    observations.publicApiPreserved,
    observations.classificationsPreserved,
    observations.axiomPolicyPreserved,
    observations.inverseRoundTripPassed,
    observations.patchRendered,
    observations.patchApplyCheckPassed,
    observations.bracketProjectionValid,
    observations.structuralInvariantsHold]

@[expose] def SurgeryVerificationObservationsV1.AllHold
    (observations : SurgeryVerificationObservationsV1) : Prop :=
  observations.flags.all (fun flag => flag) = true

@[surface_novel]
structure SurgeryProposalV1.Valid
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) : Prop where
  contextSchemaVersion : context.schemaVersion = 1
  proposalSchemaMatches : proposal.schemaVersion = context.schemaVersion
  algorithmVersionMatches : proposal.algorithmVersion = context.algorithmVersion
  contractHashMatches :
    proposal.transportContractHash = context.transportContractHash
  sourceSnapshotMatches :
    proposal.baseSourceSnapshotHash = context.sourceSnapshotHash
  repositoryRevisionMatches :
    proposal.baseRepositoryRevision = context.repositoryRevision
  proposalRevisionNotStale :
    match context.currentProposalRevision? with
    | none => True
    | some current => current ≤ proposal.proposalRevision
  noEqualRevisionConflict : ¬ proposal.HasEqualRevisionConflict context
  notReplay : ¬ proposal.IsReplay context
  parserFingerprintMatches :
    proposal.parserFingerprint = context.parserFingerprint
  keyed : proposal.Keyed
  allObservationsHold : proposal.observations.AllHold
  rangesNonoverlapping :
    CompiledEditsNonoverlapping proposal.bundle.forwardEdits
  theoremTaskIdentityPreserved :
    proposal.beforeTheoremTaskIdentity? = proposal.afterTheoremTaskIdentity?

@[surface_novel]
structure SurgeryGateObservation where
  passed : Bool
  failure : SurgeryRejectionCode
deriving DecidableEq, Repr

@[expose] def proposalRevisionNotStaleBool
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) : Bool :=
  match context.currentProposalRevision? with
  | none => true
  | some current => decide (current ≤ proposal.proposalRevision)

@[expose] noncomputable def noEqualRevisionConflictBool
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) : Bool :=
  by
    letI := Classical.propDecidable
    exact decide (¬ proposal.HasEqualRevisionConflict context)

/-- Gate order is protocol order and therefore part of deterministic behavior. -/
@[expose] noncomputable def orderedSurgeryGates
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) :
    List SurgeryGateObservation :=
  by
    letI := Classical.propDecidable
    exact [⟨decide (context.schemaVersion = 1 ∧
      proposal.schemaVersion = context.schemaVersion ∧
      proposal.algorithmVersion = context.algorithmVersion),
      .schemaOrAlgorithmMismatch⟩,
    ⟨decide (proposal.transportContractHash = context.transportContractHash ∧
      proposal.baseSourceSnapshotHash = context.sourceSnapshotHash),
      .contractOrSnapshotMismatch⟩,
    ⟨decide (proposal.baseRepositoryRevision = context.repositoryRevision),
      .staleRepositoryRevision⟩,
    ⟨proposalRevisionNotStaleBool context proposal, .staleRepositoryRevision⟩,
    ⟨noEqualRevisionConflictBool context proposal,
      .equalRevisionSurgeryConflict⟩,
    ⟨proposal.observations.structuralPacketValid, .invalidStructuralPacket⟩,
    ⟨proposal.observations.languageSupported, .unsupportedLanguage⟩,
    ⟨decide (proposal.parserFingerprint = context.parserFingerprint) &&
      proposal.observations.parserFingerprintMatches,
      .parserFingerprintMismatch⟩,
    ⟨proposal.observations.packetHashMatches, .packetHashMismatch⟩,
    ⟨proposal.observations.pathsAllowed, .sourceSpanMismatch⟩,
    ⟨proposal.observations.sourceSpansValid, .sourceSpanMismatch⟩,
    ⟨proposal.observations.sourceBytesAndHashesMatch,
      .sourceBytesOrHashesMismatch⟩,
    ⟨proposal.observations.operationsSupported,
      .unsupportedSurgeryOperation⟩,
    ⟨decide proposal.Keyed, .invalidStructuralPacket⟩,
    ⟨decide (CompiledEditsOrdered proposal.bundle.forwardEdits),
      .unsupportedSurgeryOperation⟩,
    ⟨decide (CompiledEditsNonoverlapping proposal.bundle.forwardEdits),
      .overlappingCompiledEdits⟩,
    ⟨proposal.observations.nodesResolvedExactly, .nodeNotFound⟩,
    ⟨proposal.observations.nodeCorrespondenceUnambiguous,
      .ambiguousNodeCorrespondence⟩,
    ⟨proposal.observations.compiledHashesMatch, .compiledHashMismatch⟩,
    ⟨proposal.observations.canonicalParseAccepted,
      .compilerValidationFailed⟩,
    ⟨proposal.observations.parseRecoveryAbsent,
      .parseRecoveryNotAdmissible⟩,
    ⟨proposal.observations.dependencyGraphValid, .unresolvedReference⟩,
    ⟨proposal.observations.importsAcyclic, .importCycle⟩,
    ⟨proposal.observations.referencesResolved, .unresolvedReference⟩,
    ⟨proposal.observations.requestedBuildTargetsPassed,
      .compilerValidationFailed⟩,
    ⟨decide (proposal.beforeTheoremTaskIdentity? =
        proposal.afterTheoremTaskIdentity?) &&
      proposal.observations.theoremTaskIdentityPreserved,
      .leanStatementChanged⟩,
    ⟨proposal.observations.publicApiPreserved, .leanPublicApiChanged⟩,
    ⟨proposal.observations.classificationsPreserved, .leanPublicApiChanged⟩,
    ⟨proposal.observations.axiomPolicyPreserved, .leanAxiomGrowth⟩,
    ⟨proposal.observations.inverseRoundTripPassed,
      .inverseRoundtripFailed⟩,
    ⟨proposal.observations.patchRendered, .patchRenderFailed⟩,
    ⟨proposal.observations.patchApplyCheckPassed, .patchApplyCheckFailed⟩,
    ⟨proposal.observations.bracketProjectionValid,
      .bracketProjectionInvalid⟩,
    ⟨proposal.observations.structuralInvariantsHold,
      .structuralInvariantFailed⟩]

/-- Select the first failed gate, preserving deterministic rejection precedence. -/
@[expose] def firstFailedSurgeryGate :
    List SurgeryGateObservation → Option SurgeryRejectionCode
  | [] => none
  | gate :: remaining =>
      if gate.passed then firstFailedSurgeryGate remaining
      else some gate.failure

@[surface_novel]
inductive SurgeryVerificationResult where
  | admitted (proposal : SurgeryProposalV1)
  | replay (proposal : SurgeryProposalV1)
  | rejected (code : SurgeryRejectionCode)

/--
Proof-bearing admission.  Rejection diagnostics use the ordered gate list;
the fallback is fail-closed if a future validity field lacks a named gate.
-/
@[expose] noncomputable def verifySurgeryProposal
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) :
    SurgeryVerificationResult :=
  by
    letI := Classical.propDecidable
    exact if _valid : proposal.Valid context then
      .admitted proposal
    else
      match firstFailedSurgeryGate (orderedSurgeryGates context proposal) with
      | some code => .rejected code
      | none =>
          if proposal.IsReplay context then .replay proposal
          else .rejected .structuralInvariantFailed

@[surface_novel, surface_published]
theorem verifySurgeryProposal_sound
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1)
    (admitted : verifySurgeryProposal context proposal = .admitted proposal) :
    proposal.Valid context := by
  classical
  by_contra invalid
  unfold verifySurgeryProposal at admitted
  simp only [dif_neg invalid] at admitted
  cases failed : firstFailedSurgeryGate (orderedSurgeryGates context proposal) with
  | some code => simp [failed] at admitted
  | none =>
      by_cases replay : proposal.IsReplay context
      · simp [failed, replay] at admitted
      · simp [failed, replay] at admitted

@[surface_novel, surface_published]
theorem staleRepositoryRevision_rejected
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1)
    (stale : proposal.baseRepositoryRevision ≠ context.repositoryRevision) :
    verifySurgeryProposal context proposal ≠ .admitted proposal := by
  intro admitted
  exact stale (verifySurgeryProposal_sound context proposal admitted).repositoryRevisionMatches

@[surface_novel, surface_published]
theorem equalRevisionSurgeryConflict_rejected
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1)
    (conflict : proposal.HasEqualRevisionConflict context) :
    verifySurgeryProposal context proposal ≠ .admitted proposal := by
  intro admitted
  exact (verifySurgeryProposal_sound context proposal admitted).noEqualRevisionConflict conflict

@[surface_novel, surface_published]
theorem admittedSurgery_operations_declared
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1)
    (admitted : verifySurgeryProposal context proposal = .admitted proposal) :
    proposal.operationIds = proposal.resolvedOperationIds :=
  (verifySurgeryProposal_sound context proposal admitted).keyed.operationIdsMatch

@[surface_novel, surface_published]
theorem admittedSurgery_ranges_nonoverlapping
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1)
    (admitted : verifySurgeryProposal context proposal = .admitted proposal) :
    CompiledEditsNonoverlapping proposal.bundle.forwardEdits :=
  (verifySurgeryProposal_sound context proposal admitted).rangesNonoverlapping

@[surface_novel, surface_published]
theorem admittedSurgery_preserves_source_identity_constraints
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1)
    (admitted : verifySurgeryProposal context proposal = .admitted proposal) :
    proposal.baseSourceSnapshotHash = context.sourceSnapshotHash ∧
      proposal.baseRepositoryRevision = context.repositoryRevision :=
  ⟨(verifySurgeryProposal_sound context proposal admitted).sourceSnapshotMatches,
    (verifySurgeryProposal_sound context proposal admitted).repositoryRevisionMatches⟩

@[surface_novel, surface_published]
theorem admittedSurgery_preserves_theorem_task_identity
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1)
    (admitted : verifySurgeryProposal context proposal = .admitted proposal) :
    proposal.beforeTheoremTaskIdentity? = proposal.afterTheoremTaskIdentity? :=
  (verifySurgeryProposal_sound context proposal admitted).theoremTaskIdentityPreserved

/-- Rejected and replayed proposals are reducer no-ops. -/
@[expose] def applySurgeryVerification
    (current : SourceSnapshotModel) : SurgeryVerificationResult → SourceSnapshotModel
  | .admitted proposal => proposal.bundle.afterSnapshot
  | .replay _ => current
  | .rejected _ => current

@[surface_novel, surface_published]
theorem rejectedSurgery_leavesSourceModelUnchanged
    (current : SourceSnapshotModel) (context : SurgeryAdmissionContextV1)
    (proposal : SurgeryProposalV1) (code : SurgeryRejectionCode)
    (rejected : verifySurgeryProposal context proposal = .rejected code) :
    applySurgeryVerification current (verifySurgeryProposal context proposal) = current := by
  rw [rejected]
  rfl

end Surface.Refactor.Surgery
