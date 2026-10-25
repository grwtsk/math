# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Foundations.Variant96e03ad3b8037738aef29df33452afb68574bd75e4ec9d20e9deaed3687b65f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `375d35c6a0db8bf9b7e20f7b0fa3008260d48fb9` · SHA-256 `96e03ad3b8037738aef29df33452afb68574bd75e4ec9d20e9deaed3687b65f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

/-!
Nominal foundations for theorem transport.

`ArtifactRef` is indexed by the role of the referenced artifact.  Consequently
a proof artifact cannot inhabit a theorem-version, event, witness, graph, or
validation field merely because its string representation happens to agree.
-/

namespace FCRS.Transport

/-- Closed role inventory for immutable theorem-transport references. -/
inductive ArtifactKind where
  | intervalProfile
  | domainPredicate
  | endpointFunction
  | assumptionSet
  | theoremProof
  | theoremArtifact
  | formalDeclaration
  | kernelBuildEvidence
  | normalizationAdapter
  | theoremApplication
  | existenceEvidence
  | selectionMethod
  | selectionEvent
  | arithmeticWitness
  | coordinateSystem
  | coordinateDenotation
  | coordinateConstraint
  | binaryInterpretation
  | interpretationBridge
  | interpretationReflection
  | interpretationEvent
  | constraintEvidence
  | sieveSpecification
  | sieveProcedure
  | sieveEvidenceTheory
  | sieveClosureClaim
  | sieveSoundness
  | sieveCompleteness
  | sieveTermination
  | sieveEvaluation
  | sieveResult
  | sieveWitness
  | constraintSieveBridge
  | sieveReflection
  | graphVersion
  | vertexOccurrence
  | edgeOccurrence
  | realizationRule
  | realizationEvent
  | realizationRecord
  | realizationReflection
  | graphPropertySchema
  | graphConsequence
  | consequenceProof
  | graphInvariant
  | isomorphismWitness
  | intensionalSemantics
  | theoremDerivedEdgeDeclaration
  | transportDerivation
  | validationExecution
  | validationResult
  | acceptanceDecision
  | agent
  | commitmentReason
  | commitmentAdoptionEvent
  | commitmentSupersessionEvent
  | commitmentWithdrawalEvent
  | operationalCommitment
deriving Repr, DecidableEq

/-- Exact reference to an immutable artifact in one nominal role. -/
structure ArtifactRef (kind : ArtifactKind) where
  authority : String
  localName : String
  version : String
  digest : String
deriving Repr, DecidableEq

/-- One exact validation activity against one exact typed artifact reference. -/
structure ValidationExecution
    {targetKind : ArtifactKind} (target : ArtifactRef targetKind) where
  executionArtifact : ArtifactRef .validationExecution

/-- Proof-carrying validation result, distinct from execution and decision. -/
structure ValidationResult
    {targetKind : ArtifactKind} {target : ArtifactRef targetKind}
    (execution : ValidationExecution target) where
  resultArtifact : ArtifactRef .validationResult
  conforms : Prop
  evidence : conforms

/-- Explicit acceptance decision over one exact validation result. -/
structure AcceptanceDecision
    {targetKind : ArtifactKind} {target : ArtifactRef targetKind}
    {execution : ValidationExecution target}
    (result : ValidationResult execution) where
  decisionArtifact : ArtifactRef .acceptanceDecision
  accepted : result.conforms

/--
A typed monotone instant.  Raw strings cannot inhabit this type; the ordinal is
the exact second in the repository's external canonical UTC profile.
-/
structure TemporalInstant where
  ordinalSecond : Nat
deriving Repr, DecidableEq

/--
Proof-carrying half-open validity.  `none` denotes an ongoing interval, while
every finite interval is definitionally accompanied by `start < end`.
-/
structure HalfOpenTemporalInterval where
  effectiveFrom : TemporalInstant
  effectiveUntil : Option TemporalInstant
  endAfterStart :
    ∀ terminal,
      effectiveUntil = some terminal →
        effectiveFrom.ordinalSecond < terminal.ordinalSecond

/-- Immutable adoption event that begins one exact effective interval. -/
structure CommitmentAdoptionEvent
    (interval : HalfOpenTemporalInterval) where
  eventArtifact : ArtifactRef .commitmentAdoptionEvent
  occurredAt : TemporalInstant
  responsibleAgent : ArtifactRef .agent
  reason : ArtifactRef .commitmentReason
  beginsInterval : occurredAt = interval.effectiveFrom

/-- Immutable event that closes a commitment in favor of a successor. -/
structure CommitmentSupersessionEvent
    (interval : HalfOpenTemporalInterval) where
  eventArtifact : ArtifactRef .commitmentSupersessionEvent
  occurredAt : TemporalInstant
  responsibleAgent : ArtifactRef .agent
  reason : ArtifactRef .commitmentReason
  closesInterval : interval.effectiveUntil = some occurredAt

/-- Immutable event that closes a commitment without a successor. -/
structure CommitmentWithdrawalEvent
    (interval : HalfOpenTemporalInterval) where
  eventArtifact : ArtifactRef .commitmentWithdrawalEvent
  occurredAt : TemporalInstant
  responsibleAgent : ArtifactRef .agent
  reason : ArtifactRef .commitmentReason
  closesInterval : interval.effectiveUntil = some occurredAt

/-- Closed status vocabulary for an operational commitment snapshot. -/
inductive OperationalCommitmentStatus where
  | Adopted
  | Superseded
  | Withdrawn
deriving Repr, DecidableEq

/--
Status evidence indexed simultaneously by the effective interval and known
successor.  Thus current adoption is ongoing, supersession has exactly one
successor and closing event, and withdrawal has a closing event but no
successor.
-/
inductive OperationalCommitmentState
    (interval : HalfOpenTemporalInterval) :
    OperationalCommitmentStatus →
      Option (ArtifactRef .operationalCommitment) → Type where
  | adopted
      (ongoing : interval.effectiveUntil = none) :
      OperationalCommitmentState interval .Adopted none
  | superseded
      (successor : ArtifactRef .operationalCommitment)
      (event : CommitmentSupersessionEvent interval) :
      OperationalCommitmentState interval .Superseded (some successor)
  | withdrawn
      (event : CommitmentWithdrawalEvent interval) :
      OperationalCommitmentState interval .Withdrawn none

/--
Operational adoption remains distinct from mathematical truth and validation.
Every reference is immutable/versioned, and temporal/status coherence is
carried by types rather than mutable booleans or unchecked strings.
-/
structure OperationalCommitment
    {targetKind : ArtifactKind} {target : ArtifactRef targetKind}
    {execution : ValidationExecution target}
    {result : ValidationResult execution}
    (decision : AcceptanceDecision result) where
  commitmentArtifact : ArtifactRef .operationalCommitment
  commitmentHolder : ArtifactRef .agent
  commitmentContent : ArtifactRef targetKind
  commitmentContentExact : commitmentContent = target
  status : OperationalCommitmentStatus
  effectiveInterval : HalfOpenTemporalInterval
  adoptionEvent : CommitmentAdoptionEvent effectiveInterval
  responsibleAgent : ArtifactRef .agent
  reason : ArtifactRef .commitmentReason
  adoptionAgentExact : adoptionEvent.responsibleAgent = responsibleAgent
  adoptionReasonExact : adoptionEvent.reason = reason
  predecessorCommitment : Option (ArtifactRef .operationalCommitment)
  successorCommitment : Option (ArtifactRef .operationalCommitment)
  statusState : OperationalCommitmentState
    effectiveInterval status successorCommitment

/-- Endpoint inclusion is explicit and never inferred from notation. -/
inductive BoundaryMode where
  | Open
  | Closed
deriving Repr, DecidableEq

/-- Orientation is metadata distinct from endpoint ordering. -/
inductive IntervalOrientation where
  | Forward
  | Backward
deriving Repr, DecidableEq

end FCRS.Transport
```
