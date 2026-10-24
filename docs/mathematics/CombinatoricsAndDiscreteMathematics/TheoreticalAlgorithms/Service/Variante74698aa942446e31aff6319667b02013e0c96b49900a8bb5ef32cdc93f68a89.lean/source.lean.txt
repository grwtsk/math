import Mathematics.Reactive.ExactlyOnceRaster
import Mathematics.Reactive.Transaction

/-!
# Finite web-service state contract

This module models the implementation boundary used by an active web service.
It instantiates the general exactly-once Boolean raster, while leaving finite
sheaf gluing, Rodrigues--Frobenius transport, and SAT search in their dedicated
modules. It fixes the finite state transitions that a Rust service must
preserve:

* one immutable active snapshot remains served while successor work is queued;
* queue progress, snapshot freshness, and mathematical stability are distinct;
* activation is an atomic replacement admitted only for a fresh, verified
  successor;
* failed, stale, and incomplete activation attempts preserve the accepted state;
* content-addressed Boolean events are snapshot-bound and exactly-once; and
* neither refresh work nor event replay can modify frozen authority inputs.
-/

namespace Mathematics.Web.Service

abbrev ServiceSnapshot := Mathematics.Reactive.Snapshot

/-- Operational progress of one queued successor snapshot. -/
inductive RefreshPhase
  | queued
  | indexing
  | runtimeChecking
  | proofChecking
  | ready
  | failed
  | stale
  deriving DecidableEq, Repr

/--
The only admitted forward phase changes. Failed and stale candidates are
terminal objects; a correction must mint a new candidate.
-/
inductive RefreshPhaseTransition : RefreshPhase → RefreshPhase → Prop
  | beginIndexing :
      RefreshPhaseTransition .queued .indexing
  | indexingPassed :
      RefreshPhaseTransition .indexing .runtimeChecking
  | runtimePassed :
      RefreshPhaseTransition .runtimeChecking .proofChecking
  | proofPassed :
      RefreshPhaseTransition .proofChecking .ready
  | queuedFailed :
      RefreshPhaseTransition .queued .failed
  | indexingFailed :
      RefreshPhaseTransition .indexing .failed
  | runtimeFailed :
      RefreshPhaseTransition .runtimeChecking .failed
  | proofFailed :
      RefreshPhaseTransition .proofChecking .failed
  | queuedStale :
      RefreshPhaseTransition .queued .stale
  | indexingStale :
      RefreshPhaseTransition .indexing .stale
  | runtimeStale :
      RefreshPhaseTransition .runtimeChecking .stale
  | proofStale :
      RefreshPhaseTransition .proofChecking .stale
  | readyStale :
      RefreshPhaseTransition .ready .stale

theorem failed_phase_terminal
    (next : RefreshPhase) :
    ¬ RefreshPhaseTransition .failed next := by
  intro transition
  cases transition

theorem stale_phase_terminal
    (next : RefreshPhase) :
    ¬ RefreshPhaseTransition .stale next := by
  intro transition
  cases transition

/--
Finite validation evidence. These fields are independent of whether the
candidate is still based on the currently active snapshot.
-/
structure ValidationState where
  runtimeAccepted : Bool
  proofAccepted : Bool
  receiptAccepted : Bool
  overlapAccepted : Bool
  authorityPreserved : Bool
  deriving DecidableEq, Repr

/-- A proposed successor explicitly records the immutable snapshot it extends. -/
structure RefreshCandidate where
  candidateId : StableId
  base : ServiceSnapshot
  successor : ServiceSnapshot
  phase : RefreshPhase
  validation : ValidationState
  deriving DecidableEq, Repr

/-- Freshness is a compare-and-swap fact about the currently active snapshot. -/
def FreshFor
    (active : ServiceSnapshot)
    (candidate : RefreshCandidate) : Prop :=
  candidate.base = active

instance
    (active : ServiceSnapshot)
    (candidate : RefreshCandidate) :
    Decidable (FreshFor active candidate) :=
  inferInstanceAs (Decidable (candidate.base = active))

/--
Mathematical stability is validation evidence. It deliberately says nothing
about whether a newer active snapshot has made the candidate stale.
-/
def MathematicallyStable (candidate : RefreshCandidate) : Prop :=
  candidate.validation.runtimeAccepted = true ∧
    candidate.validation.proofAccepted = true ∧
    candidate.validation.receiptAccepted = true ∧
    candidate.validation.overlapAccepted = true ∧
    candidate.validation.authorityPreserved = true

instance (candidate : RefreshCandidate) :
    Decidable (MathematicallyStable candidate) := by
  unfold MathematicallyStable
  infer_instance

/-- A successor advances the base revision by exactly one. -/
def WellFormedSuccessor (candidate : RefreshCandidate) : Prop :=
  candidate.successor.revision = candidate.base.revision + 1

instance (candidate : RefreshCandidate) :
    Decidable (WellFormedSuccessor candidate) := by
  unfold WellFormedSuccessor
  infer_instance

/-- A ready candidate has completed the phase pipeline and all exact checks. -/
def ReadyForActivation (candidate : RefreshCandidate) : Prop :=
  candidate.phase = .ready ∧
    MathematicallyStable candidate ∧
    WellFormedSuccessor candidate

instance (candidate : RefreshCandidate) :
    Decidable (ReadyForActivation candidate) := by
  unfold ReadyForActivation
  infer_instance

/-- Advancing a phase cannot silently rewrite either bound snapshot. -/
def RefreshCandidate.advance
    (candidate : RefreshCandidate)
    (next : RefreshPhase)
    (_transition : RefreshPhaseTransition candidate.phase next) :
    RefreshCandidate :=
  { candidate with phase := next }

theorem advance_preserves_snapshot_binding
    (candidate : RefreshCandidate)
    (next : RefreshPhase)
    (transition : RefreshPhaseTransition candidate.phase next) :
    let advanced := candidate.advance next transition
    advanced.base = candidate.base ∧
      advanced.successor = candidate.successor := by
  simp [RefreshCandidate.advance]

/-- Exogenous authority facts are read-only service inputs. -/
structure AuthorityInputs where
  humanGrant : Bool
  operatingSystemGrant : Bool
  hardwareAvailable : Bool
  jurisdictionAllowed : Bool
  deriving DecidableEq, Repr

/--
The accepted service projection. The active snapshot remains available while
`refreshQueue` is evaluated. Raster state and the event ledger commit together.
-/
structure ServiceState where
  active : ServiceSnapshot
  refreshQueue : List RefreshCandidate
  rasterBit : Bool
  seenEvents : List StableId
  authority : AuthorityInputs
  deriving DecidableEq, Repr

/-- Queueing refresh work does not disturb the actively served snapshot. -/
def enqueueRefresh
    (state : ServiceState)
    (candidate : RefreshCandidate) :
    ServiceState :=
  { state with refreshQueue := state.refreshQueue ++ [candidate] }

theorem enqueueRefresh_preserves_active
    (state : ServiceState)
    (candidate : RefreshCandidate) :
    (enqueueRefresh state candidate).active = state.active := by
  rfl

theorem enqueueRefresh_preserves_authority
    (state : ServiceState)
    (candidate : RefreshCandidate) :
    (enqueueRefresh state candidate).authority = state.authority := by
  rfl

/-- Result of checking the head candidate without mutating accepted state. -/
inductive ActivationDecision
  | activate
      (candidate : RefreshCandidate)
      (remaining : List RefreshCandidate)
  | noCandidate
  | failed
  | stale
  | notReady
  deriving DecidableEq, Repr

/--
Activation checks freshness separately from readiness. The queue head is the
only candidate eligible to activate, so scheduling order cannot be bypassed.
-/
def decideActivation (state : ServiceState) : ActivationDecision :=
  match state.refreshQueue with
  | [] => .noCandidate
  | candidate :: remaining =>
      if candidate.phase = .failed then
        .failed
      else if candidate.phase = .stale then
        .stale
      else if FreshFor state.active candidate then
        if ReadyForActivation candidate then
          .activate candidate remaining
        else
          .notReady
      else
        .stale

theorem activation_decision_requires_freshness
    (state : ServiceState)
    (candidate : RefreshCandidate)
    (remaining : List RefreshCandidate)
    (decision :
      decideActivation state = .activate candidate remaining) :
    FreshFor state.active candidate := by
  cases queueEquation : state.refreshQueue with
  | nil =>
      simp [decideActivation, queueEquation] at decision
  | cons head tail =>
      simp only [decideActivation, queueEquation] at decision
      split at decision
      · contradiction
      split at decision
      · contradiction
      split at decision
      · rename_i fresh
        split at decision
        · cases decision
          exact fresh
        · contradiction
      · contradiction

theorem activation_decision_requires_readiness
    (state : ServiceState)
    (candidate : RefreshCandidate)
    (remaining : List RefreshCandidate)
    (decision :
      decideActivation state = .activate candidate remaining) :
    ReadyForActivation candidate := by
  cases queueEquation : state.refreshQueue with
  | nil =>
      simp [decideActivation, queueEquation] at decision
  | cons head tail =>
      simp only [decideActivation, queueEquation] at decision
      split at decision
      · contradiction
      split at decision
      · contradiction
      split at decision
      · split at decision
        · rename_i ready
          cases decision
          exact ready
        · contradiction
      · contradiction

theorem activation_decision_requires_stability
    (state : ServiceState)
    (candidate : RefreshCandidate)
    (remaining : List RefreshCandidate)
    (decision :
      decideActivation state = .activate candidate remaining) :
    MathematicallyStable candidate :=
  (activation_decision_requires_readiness
    state candidate remaining decision).2.1

/-- Commit is private: callers can only activate through `tryActivate`. -/
private def commitDecision
    (state : ServiceState)
    (decision : ActivationDecision) :
    ServiceState :=
  match decision with
  | .activate candidate remaining =>
      { state with
          active := candidate.successor
          refreshQueue := remaining }
  | .noCandidate
  | .failed
  | .stale
  | .notReady => state

inductive ActivationStatus
  | activated
  | noCandidate
  | failed
  | stale
  | notReady
  deriving DecidableEq, Repr

def ActivationDecision.status : ActivationDecision → ActivationStatus
  | .activate _ _ => .activated
  | .noCandidate => .noCandidate
  | .failed => .failed
  | .stale => .stale
  | .notReady => .notReady

structure ActivationResult where
  status : ActivationStatus
  state : ServiceState
  deriving DecidableEq, Repr

/-- The one public activation operation. -/
def tryActivate (state : ServiceState) : ActivationResult :=
  let decision := decideActivation state
  {
    status := decision.status
    state := commitDecision state decision
  }

theorem successful_activation_is_atomic
    (state : ServiceState)
    (candidate : RefreshCandidate)
    (remaining : List RefreshCandidate)
    (decision :
      decideActivation state = .activate candidate remaining) :
    (tryActivate state).status = .activated ∧
      (tryActivate state).state.active = candidate.successor ∧
      (tryActivate state).state.refreshQueue = remaining ∧
      (tryActivate state).state.rasterBit = state.rasterBit ∧
      (tryActivate state).state.seenEvents = state.seenEvents ∧
      (tryActivate state).state.authority = state.authority := by
  simp [tryActivate, decision, ActivationDecision.status, commitDecision]

theorem unsuccessful_activation_preserves_state
    (state : ServiceState)
    (notActivated :
      (decideActivation state).status ≠ .activated) :
    (tryActivate state).state = state := by
  cases decisionEquation : decideActivation state with
  | activate candidate remaining =>
      exfalso
      apply notActivated
      simp [decisionEquation, ActivationDecision.status]
  | noCandidate =>
      simp [tryActivate, decisionEquation, commitDecision]
  | failed =>
      simp [tryActivate, decisionEquation, commitDecision]
  | stale =>
      simp [tryActivate, decisionEquation, commitDecision]
  | notReady =>
      simp [tryActivate, decisionEquation, commitDecision]

theorem failed_activation_preserves_state
    (state : ServiceState)
    (failed : (tryActivate state).status = .failed) :
    (tryActivate state).state = state := by
  apply unsuccessful_activation_preserves_state
  intro activated
  have statusEquality :
      (tryActivate state).status = (decideActivation state).status := by
    rfl
  rw [statusEquality] at failed
  rw [activated] at failed
  contradiction

theorem stale_activation_preserves_state
    (state : ServiceState)
    (stale : (tryActivate state).status = .stale) :
    (tryActivate state).state = state := by
  apply unsuccessful_activation_preserves_state
  intro activated
  have statusEquality :
      (tryActivate state).status = (decideActivation state).status := by
    rfl
  rw [statusEquality] at stale
  rw [activated] at stale
  contradiction

theorem incomplete_activation_preserves_state
    (state : ServiceState)
    (notReady : (tryActivate state).status = .notReady) :
    (tryActivate state).state = state := by
  apply unsuccessful_activation_preserves_state
  intro activated
  have statusEquality :
      (tryActivate state).status = (decideActivation state).status := by
    rfl
  rw [statusEquality] at notReady
  rw [activated] at notReady
  contradiction

/-- One content-addressed, snapshot-bound Boolean event. -/
structure EventPacket where
  eventId : StableId
  snapshot : ServiceSnapshot
  condition : Bool
  formulaDigest : Digest
  provenance : List StableId := []
  deriving DecidableEq, Repr

/-- The service currently exposes one exact Boolean quotient coordinate. -/
inductive ServiceRasterCell
  | primary
  deriving DecidableEq, Repr

/--
Observe the operational list ledger through the general content-addressed
raster interface. The list remains in the service state as replay provenance;
membership is the exact quotient consumed by the router.
-/
def rasterView
    (state : ServiceState) :
    Mathematics.Reactive.RasterState ServiceRasterCell StableId where
  raster.bit := fun _ ↦ state.rasterBit
  ledger.seen := fun eventId ↦ decide (eventId ∈ state.seenEvents)

/-- Forget only service transport syntax; retain the event's exact bindings. -/
def EventPacket.toConditional
    (event : EventPacket) :
    Mathematics.Reactive.ConditionalEvent ServiceRasterCell StableId where
  event := event.eventId
  cell := .primary
  condition := event.condition
  snapshotDigest := event.snapshot.digest
  formulaDigest := event.formulaDigest
  provenance := event.provenance.toFinset

inductive EventApplyStatus
  | applied
  | duplicate
  | conditionFalse
  | stale
  deriving DecidableEq, Repr

structure EventApplyResult where
  status : EventApplyStatus
  state : ServiceState
  deriving DecidableEq, Repr

/--
The bit and processed-event ledger update in the same returned state. A stale,
false, or already-seen event is a no-op.
-/
def applyEvent
    (state : ServiceState)
    (event : EventPacket) :
    EventApplyResult :=
  if event.snapshot = state.active then
    if event.eventId ∈ state.seenEvents then
      { status := .duplicate, state := state }
    else if event.condition = true then
      {
        status := .applied
        state := {
          state with
            rasterBit := !state.rasterBit
            seenEvents := event.eventId :: state.seenEvents
        }
      }
    else
      { status := .conditionFalse, state := state }
  else
    { status := .stale, state := state }

def applyEventState
    (state : ServiceState)
    (event : EventPacket) :
    ServiceState :=
  (applyEvent state event).state

/--
For a current snapshot, the concrete web transition is an exact refinement of
the shared raster transition. This theorem makes the runtime adapter, rather
than duplicated prose, carry the exactly-once architectural obligation.
-/
theorem fresh_event_refines_exactly_once_raster
    (state : ServiceState)
    (event : EventPacket)
    (fresh : event.snapshot = state.active) :
    rasterView (applyEventState state event) =
      Mathematics.Reactive.applyToggle
        event.toConditional
        (rasterView state) := by
  apply Mathematics.Reactive.RasterState.ext
  · intro cell
    cases cell
    by_cases seen : event.eventId ∈ state.seenEvents
    · simp [
        rasterView,
        applyEventState,
        applyEvent,
        EventPacket.toConditional,
        Mathematics.Reactive.applyToggle,
        Mathematics.Reactive.updateEventLedger,
        Mathematics.Reactive.ConditionalEvent.fires,
        fresh,
        seen
      ]
    · cases condition : event.condition <;>
        simp [
          rasterView,
          applyEventState,
          applyEvent,
          EventPacket.toConditional,
          Mathematics.Reactive.applyToggle,
          Mathematics.Reactive.updateEventLedger,
          Mathematics.Reactive.ConditionalEvent.fires,
          fresh,
          seen,
          condition
        ]
  · intro eventId
    by_cases seen : event.eventId ∈ state.seenEvents
    · simp [
        rasterView,
        applyEventState,
        applyEvent,
        EventPacket.toConditional,
        Mathematics.Reactive.applyToggle,
        Mathematics.Reactive.updateEventLedger,
        Mathematics.Reactive.ConditionalEvent.fires,
        fresh,
        seen
      ]
    · cases condition : event.condition
      · simp [
          rasterView,
          applyEventState,
          applyEvent,
          EventPacket.toConditional,
          Mathematics.Reactive.applyToggle,
          Mathematics.Reactive.updateEventLedger,
          Mathematics.Reactive.ConditionalEvent.fires,
          fresh,
          seen,
          condition
        ]
      · by_cases same : eventId = event.eventId
        · subst eventId
          simp [
            rasterView,
            applyEventState,
            applyEvent,
            EventPacket.toConditional,
            Mathematics.Reactive.applyToggle,
            Mathematics.Reactive.updateEventLedger,
            Mathematics.Reactive.ConditionalEvent.fires,
            fresh,
            seen,
            condition
          ]
        · simp [
            rasterView,
            applyEventState,
            applyEvent,
            EventPacket.toConditional,
            Mathematics.Reactive.applyToggle,
            Mathematics.Reactive.updateEventLedger,
            Mathematics.Reactive.ConditionalEvent.fires,
            fresh,
            seen,
            condition,
            same
          ]

theorem stale_event_is_noop
    (state : ServiceState)
    (event : EventPacket)
    (stale : event.snapshot ≠ state.active) :
    applyEventState state event = state := by
  simp [applyEventState, applyEvent, stale]

theorem duplicate_event_is_noop
    (state : ServiceState)
    (event : EventPacket)
    (seen : event.eventId ∈ state.seenEvents) :
    applyEventState state event = state := by
  by_cases fresh : event.snapshot = state.active
  · simp [applyEventState, applyEvent, fresh, seen]
  · simp [applyEventState, applyEvent, fresh]

theorem false_event_is_noop
    (state : ServiceState)
    (event : EventPacket)
    (conditionFalse : event.condition = false) :
    applyEventState state event = state := by
  by_cases fresh : event.snapshot = state.active
  · by_cases seen : event.eventId ∈ state.seenEvents
    · simp [applyEventState, applyEvent, fresh, seen]
    · simp [applyEventState, applyEvent, fresh, seen, conditionFalse]
  · simp [applyEventState, applyEvent, fresh]

theorem fresh_unseen_true_event_applies_atomically
    (state : ServiceState)
    (event : EventPacket)
    (fresh : event.snapshot = state.active)
    (unseen : event.eventId ∉ state.seenEvents)
    (conditionTrue : event.condition = true) :
    (applyEvent state event).status = .applied ∧
      (applyEventState state event).rasterBit = !state.rasterBit ∧
      event.eventId ∈ (applyEventState state event).seenEvents := by
  simp [applyEventState, applyEvent, fresh, unseen, conditionTrue]

theorem applyEvent_preserves_active_snapshot
    (state : ServiceState)
    (event : EventPacket) :
    (applyEventState state event).active = state.active := by
  by_cases fresh : event.snapshot = state.active
  · by_cases seen : event.eventId ∈ state.seenEvents
    · simp [applyEventState, applyEvent, fresh, seen]
    · by_cases conditionTrue : event.condition = true
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
  · simp [applyEventState, applyEvent, fresh]

theorem applyEvent_preserves_refresh_queue
    (state : ServiceState)
    (event : EventPacket) :
    (applyEventState state event).refreshQueue = state.refreshQueue := by
  by_cases fresh : event.snapshot = state.active
  · by_cases seen : event.eventId ∈ state.seenEvents
    · simp [applyEventState, applyEvent, fresh, seen]
    · by_cases conditionTrue : event.condition = true
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
  · simp [applyEventState, applyEvent, fresh]

theorem applyEvent_preserves_authority
    (state : ServiceState)
    (event : EventPacket) :
    (applyEventState state event).authority = state.authority := by
  by_cases fresh : event.snapshot = state.active
  · by_cases seen : event.eventId ∈ state.seenEvents
    · simp [applyEventState, applyEvent, fresh, seen]
    · by_cases conditionTrue : event.condition = true
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
  · simp [applyEventState, applyEvent, fresh]

/-- Re-delivery has no further effect, regardless of the first disposition. -/
theorem applyEvent_replay_idempotent
    (state : ServiceState)
    (event : EventPacket) :
    applyEventState (applyEventState state event) event =
      applyEventState state event := by
  by_cases fresh : event.snapshot = state.active
  · by_cases seen : event.eventId ∈ state.seenEvents
    · simp [applyEventState, applyEvent, fresh, seen]
    · by_cases conditionTrue : event.condition = true
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
      · have conditionFalse : event.condition = false := by
          cases conditionEquation : event.condition with
          | false => rfl
          | true => exact (conditionTrue conditionEquation).elim
        simp [
          applyEventState,
          applyEvent,
          fresh,
          seen,
          conditionTrue
        ]
  · simp [applyEventState, applyEvent, fresh]

/--
Exactly-once replay is operational only: it cannot change exogenous authority
or activate a queued snapshot.
-/
theorem event_replay_nonauthority
    (state : ServiceState)
    (event : EventPacket) :
    let once := applyEventState state event
    let twice := applyEventState once event
    twice = once ∧
      twice.authority = state.authority ∧
      twice.active = state.active := by
  simp [
    applyEvent_replay_idempotent,
    applyEvent_preserves_authority,
    applyEvent_preserves_active_snapshot
  ]

end Mathematics.Web.Service
