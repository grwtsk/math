# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuditEvidence.Variantd91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9904f326ed80a0161a3baab82474fd9dffc98ec8` · SHA-256 `d91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.Evidence
import Mathematics.Projection.AuditHierarchy
import Mathematics.Projection.SnapshotAuthority

/-!
# Accepted audit evidence and nonauthoritative findings

Audit acceptance is represented by sealed evidence bound to one verified-active
projection snapshot.  Reviewer agreement, model agreement, and tool output are
proposal sources only.  Findings and work discharge can consume accepted
evidence, but cannot choose an acceptance predicate or mint evidence.
-/

namespace Mathematics.Authority

open Mathematics.Projection

/-- Evidence representations retained by the external audit. -/
inductive AuditEvidenceClass
  | sourceSpan
  | codeSpan
  | testResult
  | buildResult
  | runtimeTrace
  | screenshot
  | interactionRecording
  | accessibilityTree
  | performanceProfile
  | architectureProof
  | formalProof
  | humanObservation
  | externalStandard
  | mutationResult
  | replayReceipt
  deriving DecidableEq, Repr

/-- Immutable evidence payload with an explicit subject and snapshot binding. -/
structure AuditEvidencePayload
    (snapshot : ProjectionSnapshot) where
  evidenceId : EvidenceId
  subjectId : StableId
  evidenceClass : AuditEvidenceClass
  authorityKind : EvidenceKind
  artifactAddress : ObjectAddress
  artifactDigest : Digest
  claimDigest : Digest
  snapshotId : ObjectAddress
  producerId : StableId
  artifact_digest_valid : artifactDigest.Valid
  claim_digest_valid : claimDigest.Valid
  snapshot_bound : snapshotId = snapshot.snapshotId

/--
Independent validation records distinct producer and validator identities.
This is a structural lineage condition, not a claim that identity inequality
alone establishes statistical or institutional independence.
-/
structure IndependentAuditValidation
    {snapshot : ProjectionSnapshot}
    (payload : AuditEvidencePayload snapshot) where
  validatorId : StableId
  producer_validator_distinct :
    validatorId ≠ payload.producerId
  receiptAddress : ObjectAddress
  validatorDigest : Digest
  validator_digest_valid : validatorDigest.Valid

/--
Accepted audit evidence is sealed.  There is intentionally no public minting
function and no caller-selected `accepts : Evidence → Prop` callback.
-/
structure AcceptedAuditEvidence
    (snapshot : ProjectionSnapshot) where
  private mk ::
  payload : AuditEvidencePayload snapshot
  activeSnapshot : VerifiedActiveSnapshot snapshot
  validation : IndependentAuditValidation payload

namespace AcceptedAuditEvidence

/-- Every accepted evidence object names the exact active snapshot. -/
theorem snapshot_exact
    {snapshot : ProjectionSnapshot}
    (evidence : AcceptedAuditEvidence snapshot) :
    evidence.payload.snapshotId = snapshot.snapshotId :=
  evidence.payload.snapshot_bound

/-- Accepted audit evidence retains its independent validation receipt. -/
def validationReceipt
    {snapshot : ProjectionSnapshot}
    (evidence : AcceptedAuditEvidence snapshot) :
    ObjectAddress :=
  evidence.validation.receiptAddress

/-- Evidence kind remains visible; audit acceptance does not promote its theorem authority. -/
def authorityKind
    {snapshot : ProjectionSnapshot}
    (evidence : AcceptedAuditEvidence snapshot) :
    EvidenceKind :=
  evidence.payload.authorityKind

end AcceptedAuditEvidence

/-- Immutable finding statement before any disposition is assigned. -/
structure AuditFindingClaim
    (snapshot : ProjectionSnapshot) where
  findingId : StableId
  targetId : StableId
  statementDigest : Digest
  snapshotId : ObjectAddress
  statement_digest_valid : statementDigest.Valid
  snapshot_bound : snapshotId = snapshot.snapshotId

/-- The sources that may propose a finding but cannot accept it. -/
inductive FindingProposalSource
  | reviewerAgreement
  | modelAgreement
  | toolOutput
  deriving DecidableEq, Repr

/-- Proposal sources map only to the existing nonauthoritative proposal classes. -/
def FindingProposalSource.authority : FindingProposalSource → ProposalAuthority
  | .reviewerAgreement => .humanMathematician
  | .modelAgreement => .modelOracleAgreement
  | .toolOutput => .oracleCandidate

/-- A finding proposal is snapshot-bound but carries no accepted evidence. -/
structure AuditFindingProposal
    (snapshot : ProjectionSnapshot) where
  claim : AuditFindingClaim snapshot
  source : FindingProposalSource
  proposalDigest : Digest
  proposal_digest_valid : proposalDigest.Valid

/-- Reviewer/model/tool agreement cannot be reinterpreted as admitted fact authority. -/
theorem finding_proposal_source_is_nonauthoritative
    (source : FindingProposalSource) :
    ¬ ∃ authority : FactAuthority,
      Sum.inl source.authority =
        (Sum.inr authority : ProposalAuthority ⊕ FactAuthority) :=
  proposal_is_not_fact_authority source.authority

/--
An accepted finding is sealed and carries a nonempty list of accepted evidence.
Every evidence object is bound to both the exact finding identity and statement.
-/
structure AcceptedAuditFinding
    (snapshot : ProjectionSnapshot) where
  private mk ::
  claim : AuditFindingClaim snapshot
  activeSnapshot : VerifiedActiveSnapshot snapshot
  evidence : List (AcceptedAuditEvidence snapshot)
  evidence_nonempty : evidence ≠ []
  evidence_exact :
    ∀ item, item ∈ evidence →
      item.payload.subjectId = claim.findingId ∧
        item.payload.claimDigest = claim.statementDigest

namespace AcceptedAuditFinding

/-- Every accepted finding has at least one independently accepted evidence object. -/
theorem has_accepted_evidence
    {snapshot : ProjectionSnapshot}
    (finding : AcceptedAuditFinding snapshot) :
    ∃ evidence : AcceptedAuditEvidence snapshot,
      evidence ∈ finding.evidence := by
  cases evidenceEquation : finding.evidence with
  | nil =>
      exact False.elim
        (finding.evidence_nonempty evidenceEquation)
  | cons evidence tail =>
      exact ⟨evidence, by simp⟩

/-- Every evidence object attached to an accepted finding targets that exact finding. -/
theorem evidence_targets_finding
    {snapshot : ProjectionSnapshot}
    (finding : AcceptedAuditFinding snapshot)
    {evidence : AcceptedAuditEvidence snapshot}
    (member : evidence ∈ finding.evidence) :
    evidence.payload.subjectId = finding.claim.findingId :=
  (finding.evidence_exact evidence member).1

/-- The accepted finding remains bound to the immutable snapshot identity. -/
theorem snapshot_exact
    {snapshot : ProjectionSnapshot}
    (finding : AcceptedAuditFinding snapshot) :
    finding.claim.snapshotId = snapshot.snapshotId :=
  finding.claim.snapshot_bound

end AcceptedAuditFinding

/-- A proposal and an accepted finding occupy disjoint sum branches. -/
theorem proposal_is_not_accepted_finding
    {snapshot : ProjectionSnapshot}
    (proposal : AuditFindingProposal snapshot)
    (accepted : AcceptedAuditFinding snapshot) :
    Sum.inl proposal ≠
      (Sum.inr accepted :
        AuditFindingProposal snapshot ⊕ AcceptedAuditFinding snapshot) := by
  intro equality
  cases equality

/-- Incompatible findings remain two explicit branches plus a discrimination plan. -/
structure AuditConflictBranch
    (snapshot : ProjectionSnapshot) where
  conflictId : StableId
  left : AuditFindingClaim snapshot
  right : AuditFindingClaim snapshot
  findings_distinct : left.findingId ≠ right.findingId
  conflictDigest : Digest
  conflict_digest_valid : conflictDigest.Valid
  discriminatingEvidenceIds : List EvidenceId

/-- Reduction can accept, reject, or retain conflict; conflict has no merge constructor. -/
inductive AuditFindingReduction
    (snapshot : ProjectionSnapshot)
  | accepted :
      AcceptedAuditFinding snapshot →
        AuditFindingReduction snapshot
  | rejected :
      AuditFindingProposal snapshot →
        AuditFindingReduction snapshot
  | conflict :
      AuditConflictBranch snapshot →
        AuditFindingReduction snapshot

/-- A typed work obligation remains bound to its source snapshot and findings. -/
structure AuditWorkItem
    (snapshot : ProjectionSnapshot) where
  workId : StableId
  obligationDigest : Digest
  snapshotId : ObjectAddress
  sourceFindingIds : List StableId
  obligation_digest_valid : obligationDigest.Valid
  snapshot_bound : snapshotId = snapshot.snapshotId
  source_findings_nonempty : sourceFindingIds ≠ []

/-- Implementation records a changed surface but carries no discharge authority. -/
structure ImplementedAuditWork
    {snapshot : ProjectionSnapshot}
    (work : AuditWorkItem snapshot) where
  implementationDigest : Digest
  implementation_digest_valid : implementationDigest.Valid

/--
Discharge requires accepted evidence for the exact work identity and exact
obligation digest.  There is no Boolean or caller-selected policy callback.
-/
structure DischargedAuditWork
    {snapshot : ProjectionSnapshot}
    (work : AuditWorkItem snapshot) where
  implementation : ImplementedAuditWork work
  closingEvidence : AcceptedAuditEvidence snapshot
  evidence_targets_work :
    closingEvidence.payload.subjectId = work.workId
  evidence_matches_obligation :
    closingEvidence.payload.claimDigest = work.obligationDigest

/-- Work status keeps implementation and discharge in distinct constructors. -/
inductive AuditWorkDisposition
    {snapshot : ProjectionSnapshot}
    (work : AuditWorkItem snapshot)
  | implementedUnverified :
      ImplementedAuditWork work →
        AuditWorkDisposition work
  | discharged :
      DischargedAuditWork work →
        AuditWorkDisposition work

/-- An implementation record cannot definitionally become a discharge record. -/
theorem implemented_is_not_discharged
    {snapshot : ProjectionSnapshot}
    {work : AuditWorkItem snapshot}
    (implemented : ImplementedAuditWork work)
    (discharged : DischargedAuditWork work) :
    AuditWorkDisposition.implementedUnverified implemented ≠
      AuditWorkDisposition.discharged discharged := by
  intro equality
  cases equality

/-- Every discharge exposes exact accepted evidence, not implementation status alone. -/
theorem discharge_requires_exact_accepted_evidence
    {snapshot : ProjectionSnapshot}
    {work : AuditWorkItem snapshot}
    (discharged : DischargedAuditWork work) :
    ∃ evidence : AcceptedAuditEvidence snapshot,
      evidence.payload.subjectId = work.workId ∧
        evidence.payload.claimDigest = work.obligationDigest :=
  ⟨discharged.closingEvidence,
    discharged.evidence_targets_work,
    discharged.evidence_matches_obligation⟩

end Mathematics.Authority
```
