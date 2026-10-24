module

public import Surface.Core.XYZ.Route
import Mathlib.Tactic

/-!
# Canonical revisioned XYZ transport and proposal verification

Version one computes the authoritative XYZ value once, before transport, and
carries that revisioned value unchanged across every declared edge.  The
verifier below is pure: it classifies an immutable proposal and never mutates a
register, source snapshot, project source, browser DOM, or external process.

Lean checks the framing and equality of opaque SHA-256 values.  It does not
compute SHA-256; a later certificate gate relates finite Rust computations to
the exact propositions proved here.
-/

public section

namespace Surface.Core.XYZ

/-! ## The one canonical update -/

@[expose] def leanExpectedUpdate
    (input : RevisionedXYZ xyzFormatV1) : RevisionedXYZ xyzFormatV1 :=
  input

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_channelBounds
    (input : RevisionedXYZ xyzFormatV1) :
    InRawRange xyzFormatV1 (leanExpectedUpdate input).value.x.raw ∧
      InRawRange xyzFormatV1 (leanExpectedUpdate input).value.y.raw ∧
      InRawRange xyzFormatV1 (leanExpectedUpdate input).value.z.raw := by
  exact ⟨input.value.x.inRange, input.value.y.inRange, input.value.z.inRange⟩

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_revision
    (input : RevisionedXYZ xyzFormatV1) :
    (leanExpectedUpdate input).revision = input.revision := by
  rfl

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_colorInvariant
    (input : RevisionedXYZ xyzFormatV1)
    (invariant : normalizedTristimulusInvariant xyzFormatV1 input.value) :
    normalizedTristimulusInvariant xyzFormatV1
      (leanExpectedUpdate input).value := by
  exact invariant

@[surface_novel, surface_published]
theorem expectedUpdate_idempotent
    (input : RevisionedXYZ xyzFormatV1) :
    leanExpectedUpdate (leanExpectedUpdate input) = leanExpectedUpdate input := by
  rfl

@[surface_novel, surface_published]
theorem expectedUpdate_route_independent
    {Host EdgeId : Type*}
    (_left _right : OrderedRoute Host EdgeId)
    (input : RevisionedXYZ xyzFormatV1) :
    leanExpectedUpdate input = leanExpectedUpdate input := by
  rfl

/-! ## Raw proposals and stable rejection vocabulary -/

@[surface_novel]
structure RawProposal (Host EdgeId : Type*) where
  schemaVersion : Nat
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  algorithmVersion : Nat
  revision : Nat
  edgeId : EdgeId
  claimedSource : Host
  claimedTarget : Host
  source : RawXYZ
  proposed : RawXYZ
deriving DecidableEq, Repr

@[surface_novel]
inductive ProposalRejection
  | invalidSchema
  | invalidContractHash
  | invalidSourceSnapshotHash
  | invalidAlgorithmVersion
  | undeclaredEdge
  | edgeEndpointMismatch
  | revisionOutOfRange
  | staleRevision
  | equalRevisionConflict
  | channelOutOfRange
  | sourceMismatch
  | expectedUpdateMismatch
  | colorInvariantViolation
  | invalidHashFraming
  | internalContractInvalid
deriving DecidableEq, Repr

/-- Admission permits exactly a newer accepted value or an identical replay. -/
@[expose] def MergeAdmissible {format : FixedFormat} :
    MergeDecision format → Prop
  | .accepted _ => True
  | .replay _ => True
  | .stale _ _ => False
  | .conflict _ _ => False

instance {format : FixedFormat} (decision : MergeDecision format) :
    Decidable (MergeAdmissible decision) := by
  cases decision <;> unfold MergeAdmissible <;> infer_instance

variable {Host EdgeId : Type*}
variable [Fintype Host] [DecidableEq Host]
variable [Fintype EdgeId] [DecidableEq EdgeId]

/-- A self-contained proof-bearing admission.  Runtime consumers do not need
to trust a Boolean or reconstruct which contract, snapshot, and register were
checked. -/
@[surface_novel, surface_certificate]
structure AdmittedProposal (Host EdgeId : Type*)
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId] where
  contract : RoutingContract Host EdgeId
  snapshot : SourceSnapshot Host
  register : LwwRegister xyzFormatV1
  proposal : RawProposal Host EdgeId
  edge : DeclaredEdge Host EdgeId
  source : RevisionedXYZ xyzFormatV1
  output : RevisionedXYZ xyzFormatV1
  contractValid : contract.Valid
  schemaMatches :
    proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
      snapshot.schemaVersion = xyzRoutingSchemaVersionV1
  hashFraming :
    proposal.contractHash.Valid ∧ proposal.sourceSnapshotHash.Valid ∧
      snapshot.contractHash.Valid ∧ snapshot.snapshotHash.Valid
  contractHashMatches :
    proposal.contractHash = contract.contractHash ∧
      snapshot.contractHash = contract.contractHash
  snapshotHashMatches : proposal.sourceSnapshotHash = snapshot.snapshotHash
  algorithmMatches : proposal.algorithmVersion = contract.algorithmVersion
  edgeDeclared : edge ∈ contract.edges
  edgeIdentity : edge.edgeId = proposal.edgeId
  endpointsMatch :
    edge.source = proposal.claimedSource ∧
      edge.target = proposal.claimedTarget ∧
      proposal.claimedSource = snapshot.sourceHost
  revisionBound : proposal.revision < revisionModulus
  revisionMatches :
    source.revision.val = proposal.revision ∧
      output.revision.val = proposal.revision
  sourceRawMatches :
    source.value.x.raw = proposal.source.x ∧
      source.value.y.raw = proposal.source.y ∧
      source.value.z.raw = proposal.source.z
  outputRawMatches :
    output.value.x.raw = proposal.proposed.x ∧
      output.value.y.raw = proposal.proposed.y ∧
      output.value.z.raw = proposal.proposed.z
  sourceMatches : source = snapshot.source
  expectedOutput : output = leanExpectedUpdate source
  invariantPreserved :
    normalizedTristimulusInvariant xyzFormatV1 output.value
  mergeDecision : MergeDecision xyzFormatV1
  mergeClassified : merge register output = mergeDecision
  mergeAdmissible : MergeAdmissible mergeDecision

@[surface_novel]
inductive VerificationResult (Host EdgeId : Type*)
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId] where
  | admitted (value : AdmittedProposal Host EdgeId)
  | rejected (reason : ProposalRejection)

/-! ## Range-only raw conversion

The existing ingress normalizer additionally checks the normalized color sum.
The verifier must not use that helper at gate 10: otherwise a valid-range value
with a wrong sum would be misclassified as `channelOutOfRange` instead of
reaching the later `colorInvariantViolation` gate.
-/

@[expose] def RangeCheckedXYZ (raw : RawXYZ) :=
  { value : FixedXYZ xyzFormatV1 //
    value.x.raw = raw.x ∧ value.y.raw = raw.y ∧ value.z.raw = raw.z }

@[expose] def rangeCheckedXYZ? (raw : RawXYZ) : Option (RangeCheckedXYZ raw) :=
  if hx : InRawRange xyzFormatV1 raw.x then
    if hy : InRawRange xyzFormatV1 raw.y then
      if hz : InRawRange xyzFormatV1 raw.z then
        some ⟨{
          x := ⟨raw.x, hx⟩
          y := ⟨raw.y, hy⟩
          z := ⟨raw.z, hz⟩
        }, rfl, rfl, rfl⟩
      else none
    else none
  else none

@[expose] def findDeclaredEdge
    (contract : RoutingContract Host EdgeId) (edgeId : EdgeId) :
    Option (DeclaredEdge Host EdgeId) :=
  contract.sortedCanonicalEdges.find? fun edge ↦ decide (edge.edgeId = edgeId)

/-! ## Pure ordered verifier -/

@[expose] def verifyProposal
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId) : VerificationResult Host EdgeId :=
  if hcontract : contract.Valid then
    if hschema : proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
        snapshot.schemaVersion = xyzRoutingSchemaVersionV1 then
      if hframing : proposal.contractHash.Valid ∧
          proposal.sourceSnapshotHash.Valid ∧ snapshot.contractHash.Valid ∧
          snapshot.snapshotHash.Valid then
        if hcontractHash : proposal.contractHash = contract.contractHash ∧
            snapshot.contractHash = contract.contractHash then
          if hsnapshotHash :
              proposal.sourceSnapshotHash = snapshot.snapshotHash then
            if halgorithm : proposal.algorithmVersion = contract.algorithmVersion then
              match hfind : findDeclaredEdge contract proposal.edgeId with
              | none => .rejected .undeclaredEdge
              | some edge =>
                  if hendpoints : edge.source = proposal.claimedSource ∧
                      edge.target = proposal.claimedTarget ∧
                      proposal.claimedSource = snapshot.sourceHost then
                    if hrevision : proposal.revision < revisionModulus then
                      let revision : Revision := ⟨proposal.revision, hrevision⟩
                      match rangeCheckedXYZ? proposal.source,
                          rangeCheckedXYZ? proposal.proposed with
                      | some checkedSource, some checkedProposed =>
                          let source : RevisionedXYZ xyzFormatV1 :=
                            ⟨revision, checkedSource.1⟩
                          let output : RevisionedXYZ xyzFormatV1 :=
                            ⟨revision, checkedProposed.1⟩
                          if hsource : source = snapshot.source then
                            if hexpected : output = leanExpectedUpdate source then
                              if hinvariant : normalizedTristimulusInvariant
                                  xyzFormatV1 output.value then
                                match hmerge : merge register output with
                                | .stale _ _ => .rejected .staleRevision
                                | .conflict _ _ =>
                                    .rejected .equalRevisionConflict
                                | .accepted next =>
                                    .admitted {
                                      contract := contract
                                      snapshot := snapshot
                                      register := register
                                      proposal := proposal
                                      edge := edge
                                      source := source
                                      output := output
                                      contractValid := hcontract
                                      schemaMatches := hschema
                                      hashFraming := hframing
                                      contractHashMatches := hcontractHash
                                      snapshotHashMatches := hsnapshotHash
                                      algorithmMatches := halgorithm
                                      edgeDeclared := by
                                        apply (Finset.mem_sort
                                          (r := contract.canonicalEdgeLE)).mp
                                        exact List.mem_of_find?_eq_some hfind
                                      edgeIdentity := by
                                        have predicateTrue :
                                            decide (edge.edgeId = proposal.edgeId) =
                                              true :=
                                          List.find?_some
                                            (p := fun candidate :
                                                DeclaredEdge Host EdgeId ↦
                                              decide
                                                (candidate.edgeId = proposal.edgeId))
                                            (l := contract.sortedCanonicalEdges)
                                            (a := edge) (by
                                              simpa only [findDeclaredEdge]
                                                using hfind)
                                        exact of_decide_eq_true predicateTrue
                                      endpointsMatch := hendpoints
                                      revisionBound := hrevision
                                      revisionMatches := ⟨rfl, rfl⟩
                                      sourceRawMatches := checkedSource.2
                                      outputRawMatches := checkedProposed.2
                                      sourceMatches := hsource
                                      expectedOutput := hexpected
                                      invariantPreserved := hinvariant
                                      mergeDecision := .accepted next
                                      mergeClassified := hmerge
                                      mergeAdmissible := by trivial
                                    }
                                | .replay current =>
                                    .admitted {
                                      contract := contract
                                      snapshot := snapshot
                                      register := register
                                      proposal := proposal
                                      edge := edge
                                      source := source
                                      output := output
                                      contractValid := hcontract
                                      schemaMatches := hschema
                                      hashFraming := hframing
                                      contractHashMatches := hcontractHash
                                      snapshotHashMatches := hsnapshotHash
                                      algorithmMatches := halgorithm
                                      edgeDeclared := by
                                        apply (Finset.mem_sort
                                          (r := contract.canonicalEdgeLE)).mp
                                        exact List.mem_of_find?_eq_some hfind
                                      edgeIdentity := by
                                        have predicateTrue :
                                            decide (edge.edgeId = proposal.edgeId) =
                                              true :=
                                          List.find?_some
                                            (p := fun candidate :
                                                DeclaredEdge Host EdgeId ↦
                                              decide
                                                (candidate.edgeId = proposal.edgeId))
                                            (l := contract.sortedCanonicalEdges)
                                            (a := edge) (by
                                              simpa only [findDeclaredEdge]
                                                using hfind)
                                        exact of_decide_eq_true predicateTrue
                                      endpointsMatch := hendpoints
                                      revisionBound := hrevision
                                      revisionMatches := ⟨rfl, rfl⟩
                                      sourceRawMatches := checkedSource.2
                                      outputRawMatches := checkedProposed.2
                                      sourceMatches := hsource
                                      expectedOutput := hexpected
                                      invariantPreserved := hinvariant
                                      mergeDecision := .replay current
                                      mergeClassified := hmerge
                                      mergeAdmissible := by trivial
                                    }
                              else .rejected .colorInvariantViolation
                            else .rejected .expectedUpdateMismatch
                          else .rejected .sourceMismatch
                      | _, _ => .rejected .channelOutOfRange
                    else .rejected .revisionOutOfRange
                  else .rejected .edgeEndpointMismatch
            else .rejected .invalidAlgorithmVersion
          else .rejected .invalidSourceSnapshotHash
        else .rejected .invalidContractHash
      else .rejected .invalidHashFraming
    else .rejected .invalidSchema
  else .rejected .internalContractInvalid

/-! ## Admission consequences and focused rejection firewalls -/

@[surface_novel, surface_published]
theorem verifyProposal_sound
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId)
    (admitted : AdmittedProposal Host EdgeId)
    (result : verifyProposal contract snapshot register proposal =
      .admitted admitted) :
    admitted.contract.Valid ∧
      (admitted.proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
        admitted.snapshot.schemaVersion = xyzRoutingSchemaVersionV1) ∧
      (admitted.proposal.contractHash.Valid ∧
        admitted.proposal.sourceSnapshotHash.Valid ∧
        admitted.snapshot.contractHash.Valid ∧
        admitted.snapshot.snapshotHash.Valid) ∧
      (admitted.proposal.contractHash = admitted.contract.contractHash ∧
        admitted.snapshot.contractHash = admitted.contract.contractHash) ∧
      admitted.proposal.sourceSnapshotHash = admitted.snapshot.snapshotHash ∧
      admitted.proposal.algorithmVersion = admitted.contract.algorithmVersion ∧
      admitted.edge ∈ admitted.contract.edges ∧
      admitted.edge.edgeId = admitted.proposal.edgeId ∧
      (admitted.edge.source = admitted.proposal.claimedSource ∧
        admitted.edge.target = admitted.proposal.claimedTarget ∧
        admitted.proposal.claimedSource = admitted.snapshot.sourceHost) ∧
      admitted.proposal.revision < revisionModulus ∧
      (admitted.source.revision.val = admitted.proposal.revision ∧
        admitted.output.revision.val = admitted.proposal.revision) ∧
      (admitted.source.value.x.raw = admitted.proposal.source.x ∧
        admitted.source.value.y.raw = admitted.proposal.source.y ∧
        admitted.source.value.z.raw = admitted.proposal.source.z) ∧
      (admitted.output.value.x.raw = admitted.proposal.proposed.x ∧
        admitted.output.value.y.raw = admitted.proposal.proposed.y ∧
        admitted.output.value.z.raw = admitted.proposal.proposed.z) ∧
      admitted.source = admitted.snapshot.source ∧
      admitted.output = leanExpectedUpdate admitted.source ∧
      normalizedTristimulusInvariant xyzFormatV1 admitted.output.value ∧
      merge admitted.register admitted.output = admitted.mergeDecision ∧
      MergeAdmissible admitted.mergeDecision := by
  have _ := result
  exact ⟨
    admitted.contractValid,
    admitted.schemaMatches,
    admitted.hashFraming,
    admitted.contractHashMatches,
    admitted.snapshotHashMatches,
    admitted.algorithmMatches,
    admitted.edgeDeclared,
    admitted.edgeIdentity,
    admitted.endpointsMatch,
    admitted.revisionBound,
    admitted.revisionMatches,
    admitted.sourceRawMatches,
    admitted.outputRawMatches,
    admitted.sourceMatches,
    admitted.expectedOutput,
    admitted.invariantPreserved,
    admitted.mergeClassified,
    admitted.mergeAdmissible⟩

/-! The following four projection lemmas retain the useful consequences of a
proof-bearing admission.  The public `verifyProposal_rejects_*` theorems below
are deliberately stronger: with every earlier gate made explicit, they compute
the verifier's exact rejection constructor for malformed raw input. -/
@[surface_novel, surface_published]
theorem admittedProposal_edge_declared
    (admitted : AdmittedProposal Host EdgeId) :
    admitted.edge ∈ admitted.contract.edges :=
  admitted.edgeDeclared

@[surface_novel, surface_published]
theorem admittedProposal_endpoints_match
    (admitted : AdmittedProposal Host EdgeId) :
    admitted.edge.source = admitted.proposal.claimedSource ∧
      admitted.edge.target = admitted.proposal.claimedTarget ∧
      admitted.proposal.claimedSource = admitted.snapshot.sourceHost :=
  admitted.endpointsMatch

@[surface_novel, surface_published]
theorem admittedProposal_expected_output
    (admitted : AdmittedProposal Host EdgeId) :
    admitted.output = leanExpectedUpdate admitted.source :=
  admitted.expectedOutput

@[surface_novel, surface_published]
theorem admittedProposal_channels_in_range
    (admitted : AdmittedProposal Host EdgeId) :
    InRawRange xyzFormatV1 admitted.proposal.source.x ∧
      InRawRange xyzFormatV1 admitted.proposal.source.y ∧
      InRawRange xyzFormatV1 admitted.proposal.source.z ∧
      InRawRange xyzFormatV1 admitted.proposal.proposed.x ∧
      InRawRange xyzFormatV1 admitted.proposal.proposed.y ∧
      InRawRange xyzFormatV1 admitted.proposal.proposed.z := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [← admitted.sourceRawMatches.1]
    exact admitted.source.value.x.inRange
  · rw [← admitted.sourceRawMatches.2.1]
    exact admitted.source.value.y.inRange
  · rw [← admitted.sourceRawMatches.2.2]
    exact admitted.source.value.z.inRange
  · rw [← admitted.outputRawMatches.1]
    exact admitted.output.value.x.inRange
  · rw [← admitted.outputRawMatches.2.1]
    exact admitted.output.value.y.inRange
  · rw [← admitted.outputRawMatches.2.2]
    exact admitted.output.value.z.inRange

/-! ## Exact operational rejection theorems

Each statement exposes the successful earlier gates required for its named
rejection to have precedence.  Consequently these are theorems about the
actual result of `verifyProposal`, not restatements of fields that are already
present in an `AdmittedProposal`.
-/

@[surface_novel, surface_published]
theorem verifyProposal_rejects_undeclared_edge
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId)
    (hcontract : contract.Valid)
    (hschema : proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
      snapshot.schemaVersion = xyzRoutingSchemaVersionV1)
    (hframing : proposal.contractHash.Valid ∧
      proposal.sourceSnapshotHash.Valid ∧ snapshot.contractHash.Valid ∧
      snapshot.snapshotHash.Valid)
    (hcontractHash : proposal.contractHash = contract.contractHash ∧
      snapshot.contractHash = contract.contractHash)
    (hsnapshotHash : proposal.sourceSnapshotHash = snapshot.snapshotHash)
    (halgorithm : proposal.algorithmVersion = contract.algorithmVersion)
    (hmissing : findDeclaredEdge contract proposal.edgeId = none) :
    verifyProposal contract snapshot register proposal =
      .rejected .undeclaredEdge := by
  unfold verifyProposal
  rw [dif_pos hcontract, dif_pos hschema, dif_pos hframing,
    dif_pos hcontractHash, dif_pos hsnapshotHash, dif_pos halgorithm]
  split
  · rfl
  · rename_i edge hfind
    rw [hmissing] at hfind
    contradiction

@[surface_novel, surface_published]
theorem verifyProposal_rejects_wrong_endpoint
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId)
    (edge : DeclaredEdge Host EdgeId)
    (hcontract : contract.Valid)
    (hschema : proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
      snapshot.schemaVersion = xyzRoutingSchemaVersionV1)
    (hframing : proposal.contractHash.Valid ∧
      proposal.sourceSnapshotHash.Valid ∧ snapshot.contractHash.Valid ∧
      snapshot.snapshotHash.Valid)
    (hcontractHash : proposal.contractHash = contract.contractHash ∧
      snapshot.contractHash = contract.contractHash)
    (hsnapshotHash : proposal.sourceSnapshotHash = snapshot.snapshotHash)
    (halgorithm : proposal.algorithmVersion = contract.algorithmVersion)
    (hfind : findDeclaredEdge contract proposal.edgeId = some edge)
    (hwrong : ¬ (edge.source = proposal.claimedSource ∧
      edge.target = proposal.claimedTarget ∧
      proposal.claimedSource = snapshot.sourceHost)) :
    verifyProposal contract snapshot register proposal =
      .rejected .edgeEndpointMismatch := by
  unfold verifyProposal
  rw [dif_pos hcontract, dif_pos hschema, dif_pos hframing,
    dif_pos hcontractHash, dif_pos hsnapshotHash, dif_pos halgorithm]
  split
  · rename_i hnone
    rw [hfind] at hnone
    contradiction
  · rename_i found hfound
    have foundEquals : found = edge := by
      rw [hfind] at hfound
      exact (Option.some.inj hfound).symm
    subst found
    simp only
    rw [dif_neg hwrong]

@[surface_novel, surface_published]
theorem verifyProposal_rejects_out_of_range_channel
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId)
    (edge : DeclaredEdge Host EdgeId)
    (hcontract : contract.Valid)
    (hschema : proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
      snapshot.schemaVersion = xyzRoutingSchemaVersionV1)
    (hframing : proposal.contractHash.Valid ∧
      proposal.sourceSnapshotHash.Valid ∧ snapshot.contractHash.Valid ∧
      snapshot.snapshotHash.Valid)
    (hcontractHash : proposal.contractHash = contract.contractHash ∧
      snapshot.contractHash = contract.contractHash)
    (hsnapshotHash : proposal.sourceSnapshotHash = snapshot.snapshotHash)
    (halgorithm : proposal.algorithmVersion = contract.algorithmVersion)
    (hfind : findDeclaredEdge contract proposal.edgeId = some edge)
    (hendpoints : edge.source = proposal.claimedSource ∧
      edge.target = proposal.claimedTarget ∧
      proposal.claimedSource = snapshot.sourceHost)
    (hrevision : proposal.revision < revisionModulus)
    (houtOfRange : rangeCheckedXYZ? proposal.source = none ∨
      rangeCheckedXYZ? proposal.proposed = none) :
    verifyProposal contract snapshot register proposal =
      .rejected .channelOutOfRange := by
  unfold verifyProposal
  rw [dif_pos hcontract, dif_pos hschema, dif_pos hframing,
    dif_pos hcontractHash, dif_pos hsnapshotHash, dif_pos halgorithm]
  split
  · rename_i hnone
    rw [hfind] at hnone
    contradiction
  · rename_i found hfound
    have foundEquals : found = edge := by
      rw [hfind] at hfound
      exact (Option.some.inj hfound).symm
    subst found
    simp only
    rw [dif_pos hendpoints, dif_pos hrevision]
    rcases houtOfRange with hsource | hproposed
    · rw [hsource]
    · cases hsource : rangeCheckedXYZ? proposal.source <;>
        simp [hproposed]

@[surface_novel, surface_published]
theorem verifyProposal_rejects_wrong_expected_output
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId)
    (edge : DeclaredEdge Host EdgeId)
    (checkedSource : RangeCheckedXYZ proposal.source)
    (checkedProposed : RangeCheckedXYZ proposal.proposed)
    (hcontract : contract.Valid)
    (hschema : proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
      snapshot.schemaVersion = xyzRoutingSchemaVersionV1)
    (hframing : proposal.contractHash.Valid ∧
      proposal.sourceSnapshotHash.Valid ∧ snapshot.contractHash.Valid ∧
      snapshot.snapshotHash.Valid)
    (hcontractHash : proposal.contractHash = contract.contractHash ∧
      snapshot.contractHash = contract.contractHash)
    (hsnapshotHash : proposal.sourceSnapshotHash = snapshot.snapshotHash)
    (halgorithm : proposal.algorithmVersion = contract.algorithmVersion)
    (hfind : findDeclaredEdge contract proposal.edgeId = some edge)
    (hendpoints : edge.source = proposal.claimedSource ∧
      edge.target = proposal.claimedTarget ∧
      proposal.claimedSource = snapshot.sourceHost)
    (hrevision : proposal.revision < revisionModulus)
    (hcheckedSource : rangeCheckedXYZ? proposal.source = some checkedSource)
    (hcheckedProposed : rangeCheckedXYZ? proposal.proposed = some checkedProposed)
    (hsource :
      (⟨⟨proposal.revision, hrevision⟩, checkedSource.1⟩ :
        RevisionedXYZ xyzFormatV1) = snapshot.source)
    (hwrong :
      (⟨⟨proposal.revision, hrevision⟩, checkedProposed.1⟩ :
        RevisionedXYZ xyzFormatV1) ≠
        leanExpectedUpdate
          (⟨⟨proposal.revision, hrevision⟩, checkedSource.1⟩ :
            RevisionedXYZ xyzFormatV1)) :
    verifyProposal contract snapshot register proposal =
      .rejected .expectedUpdateMismatch := by
  unfold verifyProposal
  rw [dif_pos hcontract, dif_pos hschema, dif_pos hframing,
    dif_pos hcontractHash, dif_pos hsnapshotHash, dif_pos halgorithm]
  split
  · rename_i hnone
    rw [hfind] at hnone
    contradiction
  · rename_i found hfound
    have foundEquals : found = edge := by
      rw [hfind] at hfound
      exact (Option.some.inj hfound).symm
    subst found
    simp only
    rw [dif_pos hendpoints, dif_pos hrevision, hcheckedSource,
      hcheckedProposed]
    simp only
    rw [dif_pos hsource, dif_neg hwrong]

@[surface_novel, surface_published]
theorem apply_idempotent_of_merge_replay
    {format : FixedFormat}
    (register : LwwRegister format)
    (incoming current : RevisionedXYZ format)
    (classified : merge register incoming = .replay current) :
    LwwRegister.apply register incoming = register := by
  cases register with
  | mk current? =>
      cases current? with
      | none => simp [merge] at classified
      | some existing =>
          by_cases stale : incoming.revision < existing.revision
          · simp [merge, stale] at classified
          · by_cases sameRevision : incoming.revision = existing.revision
            · by_cases sameValue : incoming.value = existing.value
              · have existingEq : existing = current := by
                  simpa [merge, stale, sameRevision, sameValue] using classified
                subst current
                simp [LwwRegister.apply, merge, sameRevision, sameValue,
                  MergeDecision.result]
              · simp [merge, sameRevision, sameValue] at classified
            · simp [merge, stale, sameRevision] at classified

@[surface_novel, surface_published]
theorem identicalReplay_admitted_idempotently
    (admitted : AdmittedProposal Host EdgeId)
    (current : RevisionedXYZ xyzFormatV1)
    (replay : admitted.mergeDecision = .replay current) :
    LwwRegister.apply admitted.register admitted.output = admitted.register := by
  apply apply_idempotent_of_merge_replay admitted.register admitted.output current
  exact admitted.mergeClassified.trans replay

end Surface.Core.XYZ
