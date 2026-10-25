# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Entry.Variant59e4e0f4fbab46985559cacdd4494ba65bd12da8dbb0b459f7fe9cc819d0a90a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7afa2e0c8f7b21c1abbd3cdf938cf3f2167ce25` · SHA-256 `59e4e0f4fbab46985559cacdd4494ba65bd12da8dbb0b459f7fe9cc819d0a90a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.Basic

/-!
# Typed single-entry boundary

CORD has one typed admission boundary.  The boundary does not collapse its
intents into one semantic operation and does not transfer authority from one
intent to another.
-/

namespace Cord

inductive CordIntent
  | observe
  | resolve
  | query
  | derive
  | explain
  | propose
  | simulate
  | validate
  | authorize
  | commit
  | rollback
  | continue
  deriving DecidableEq, Repr, Inhabited

namespace CordIntent

/-- Only commit and rollback intents may create an authoritative effect. -/
def MayCreateAuthoritativeEffect : CordIntent → Prop
  | .commit => True
  | .rollback => True
  | _ => False

instance (i : CordIntent) : Decidable i.MayCreateAuthoritativeEffect := by
  cases i <;> unfold MayCreateAuthoritativeEffect
  all_goals first | exact isTrue True.intro | exact isFalse (fun h => h)

@[simp] theorem commit_mayCreate : CordIntent.commit.MayCreateAuthoritativeEffect := by
  trivial

@[simp] theorem rollback_mayCreate : CordIntent.rollback.MayCreateAuthoritativeEffect := by
  trivial

@[simp] theorem observe_not_mayCreate : ¬ CordIntent.observe.MayCreateAuthoritativeEffect := by
  simp [MayCreateAuthoritativeEffect]

@[simp] theorem continue_not_mayCreate : ¬ CordIntent.continue.MayCreateAuthoritativeEffect := by
  simp [MayCreateAuthoritativeEffect]

/-- Exact characterization of authority-capable intents. -/
theorem mayCreate_iff (i : CordIntent) :
    i.MayCreateAuthoritativeEffect ↔ i = .commit ∨ i = .rollback := by
  cases i <;> simp [MayCreateAuthoritativeEffect]

end CordIntent

structure SnapshotFrame where
  repositorySnapshot : ContentHash
  databaseSnapshot : SnapshotId
  dataSnapshot : SnapshotId
  ontologySnapshot : OntologySnapshotId
  schemaSnapshot : ContentHash
  evidenceSnapshot : ContentHash
  rulesetSnapshot : ContentHash
  validTime : TimeInterval
  transactionTime : TimeInterval
  streamWindow : Option RecordId
  deriving Repr

namespace SnapshotFrame

/-- Every material snapshot is pinned and both temporal intervals are valid. -/
def Pinned (s : SnapshotFrame) : Prop :=
  s.repositorySnapshot.value ≠ "" ∧
  s.databaseSnapshot.value ≠ 0 ∧
  s.dataSnapshot.value ≠ 0 ∧
  s.ontologySnapshot.value ≠ 0 ∧
  s.schemaSnapshot.value ≠ "" ∧
  s.evidenceSnapshot.value ≠ "" ∧
  s.rulesetSnapshot.value ≠ "" ∧
  s.validTime.Valid ∧
  s.transactionTime.Valid

end SnapshotFrame

structure EntryResourceBounds where
  maximumRecords : Nat
  maximumEdges : Nat
  maximumProbeEvaluations : Nat
  maximumTopologySubsets : Nat
  maximumTopologyPairs : Nat
  deriving DecidableEq, Repr, Inhabited

namespace EntryResourceBounds

/-- Every execution bound is finite and positive. -/
def Positive (r : EntryResourceBounds) : Prop :=
  0 < r.maximumRecords ∧
  0 < r.maximumEdges ∧
  0 < r.maximumProbeEvaluations ∧
  0 < r.maximumTopologySubsets ∧
  0 < r.maximumTopologyPairs

end EntryResourceBounds

structure CordEntryFrame where
  id : RecordId
  profile : ProfileId
  request : RecordId
  intent : CordIntent
  bindings : String → Option String
  snapshots : SnapshotFrame
  continuation : Option RecordId
  evaluator : RecordId
  authorityContext : Option AuthorityId
  authorityStatus : AuthorityStatus
  resources : EntryResourceBounds

namespace CordEntryFrame

/-- A frame is valid exactly under its finite profile and authority boundary. -/
def Valid (f : CordEntryFrame) : Prop :=
  f.id.value ≠ 0 ∧
  f.profile.value ≠ 0 ∧
  f.request.value ≠ 0 ∧
  f.evaluator.value ≠ 0 ∧
  f.snapshots.Pinned ∧
  f.resources.Positive ∧
  (f.intent.MayCreateAuthoritativeEffect →
    f.authorityContext ≠ none ∧ f.authorityStatus = .authorized)

/-- A valid observation frame does not gain mutation authority. -/
theorem observe_non_authoritative (f : CordEntryFrame)
    (_h : f.Valid) (hi : f.intent = .observe) :
    ¬ f.intent.MayCreateAuthoritativeEffect := by
  rw [hi]
  simp

/-- A valid continuation frame does not gain mutation authority. -/
theorem continue_non_authoritative (f : CordEntryFrame)
    (_h : f.Valid) (hi : f.intent = .continue) :
    ¬ f.intent.MayCreateAuthoritativeEffect := by
  rw [hi]
  simp

end CordEntryFrame

structure CordOutcome where
  id : RecordId
  frame : RecordId
  status : CordExecutionStatus
  resultRecords : Set RecordId
  candidateRecords : Set RecordId
  plan : Option PlanId
  quality : QualityRecord
  classification : Option RecordId
  impactClosure : Option RecordId
  boundaryAndFrontier : Option RecordId
  authorityResult : IndependentStatus
  validationResult : IndependentStatus
  unresolvedResidue : Set ResidualId
  receipt : ReceiptId
  continuationSignal : Option RecordId
  authoritativeAfterSnapshot : Option SnapshotId

namespace CordOutcome

/-- Conditions under which an outcome may expose an authoritative successor. -/
def AuthoritativeAllowed (frame : CordEntryFrame) (outcome : CordOutcome) : Prop :=
  outcome.frame = frame.id ∧
  outcome.receipt.value ≠ 0 ∧
  frame.intent.MayCreateAuthoritativeEffect ∧
  frame.authorityStatus = .authorized ∧
  outcome.authorityResult = .established ∧
  outcome.validationResult = .established ∧
  outcome.status = .applied

/-- An indeterminate result cannot be an authoritative successor. -/
theorem indeterminate_has_no_authoritative_successor
    (frame : CordEntryFrame) (outcome : CordOutcome)
    (hs : outcome.status = .indeterminate)
    (hv : outcome.AuthoritativeAllowed frame) : False := by
  have hApplied : outcome.status = .applied := hv.2.2.2.2.2.2
  rw [hs] at hApplied
  cases hApplied

/-- A non-authoritative intent cannot close an authoritative successor. -/
theorem non_authoritative_intent_blocks_successor
    (frame : CordEntryFrame) (outcome : CordOutcome)
    (hnot : ¬ frame.intent.MayCreateAuthoritativeEffect) :
    ¬ outcome.AuthoritativeAllowed frame := by
  intro h
  exact hnot h.2.2.1

end CordOutcome

structure CordTheoryEntry where
  theoryId : String
  theoryVersion : String
  profile : ProfileId
  admittedIntents : Set CordIntent

namespace CordTheoryEntry

/-- The entry record is bound to the exact theory identifier and profile. -/
def Admits (entry : CordTheoryEntry) (frame : CordEntryFrame) : Prop :=
  entry.theoryId = theoryIdentifier ∧
  entry.theoryVersion = Cord.theoryVersion ∧
  entry.profile = frame.profile ∧
  frame.intent ∈ entry.admittedIntents ∧
  frame.Valid

end CordTheoryEntry

/-- The partial single-entry calculation relation. -/
structure EntryCalculation where
  entry : CordTheoryEntry
  frame : CordEntryFrame
  outcome : CordOutcome
  admitted : entry.Admits frame
  outcomeBound : outcome.frame = frame.id
  authoritativeSound :
    outcome.authoritativeAfterSnapshot ≠ none → outcome.AuthoritativeAllowed frame

structure CordTheoryEntryRecord where
  entry : CordTheoryEntry
  snapshots : SnapshotFrame
  validTime : TimeInterval
  transactionTime : TimeInterval
  transaction : TransactionId
  receipt : ReceiptId

namespace CordTheoryEntryRecord

/-- A durable entry is immutable, profile-bound, bitemporal, transactional, and receipted. -/
def Valid (r : CordTheoryEntryRecord) : Prop :=
  r.entry.theoryId = theoryIdentifier ∧
  r.entry.theoryVersion = theoryVersion ∧
  r.entry.profile.value ≠ 0 ∧
  r.entry.admittedIntents.Nonempty ∧
  r.snapshots.Pinned ∧
  r.validTime.Valid ∧
  r.transactionTime.Valid ∧
  r.transaction.value ≠ 0 ∧
  r.receipt.value ≠ 0

end CordTheoryEntryRecord

end Cord
```
