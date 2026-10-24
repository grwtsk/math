# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Convergence.Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f9571fd88a918963078c8de34d485e31e7b9054` · SHA-256 `ff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Route
public import Surface.Core.Transport.Revision
import Mathlib.Tactic

/-!
# Explicit finite asynchronous transport convergence

The route supplies only a finite reachable host list. Convergence additionally
requires a unique maximal admitted publication, actual eventual delivery,
quiescence, deterministic merge semantics, exact revision and payload
preservation, and conflict freedom. Deterministic edge ordering alone is never
used as a fairness or delivery premise.
-/

public section

namespace Surface.Core.Transport

abbrev GlobalRegisters (Host Payload : Type*) :=
  Host → LwwRegister Payload

/-- A delivery retains both its admitted source publication and its transported
value, so cross-boundary preservation is an explicit checkable proposition. -/
@[surface_novel]
structure DeliveryEvent (Host Payload : Type*) where
  target : Host
  publication : Revisioned Payload
  delivered : Revisioned Payload
deriving DecidableEq, Repr

@[expose] def applyEvent
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (state : GlobalRegisters Host Payload) :
    Option (DeliveryEvent Host Payload) → GlobalRegisters Host Payload
  | none => state
  | some event => Function.update state event.target
      (LwwRegister.apply (state event.target) event.delivered)

/-- `stateAt` is an execution only when every successor is generated from the
declared event by the canonical register application. -/
@[surface_novel]
structure Execution (Host Payload : Type*)
    [DecidableEq Host] [DecidableEq Payload] where
  initial : GlobalRegisters Host Payload
  eventAt : Nat → Option (DeliveryEvent Host Payload)
  stateAt : Nat → GlobalRegisters Host Payload
  stateZero : stateAt 0 = initial
  stateSucc : ∀ n, stateAt (n + 1) = applyEvent (stateAt n) (eventAt n)

/-- `latest` is admitted, bounds every admitted revision, and is the sole
admitted value at its maximal revision. -/
@[expose] def UniqueMaximalAdmitted {Payload : Type*}
    (admitted : List (Revisioned Payload))
    (latest : Revisioned Payload) : Prop :=
  latest ∈ admitted ∧
    (∀ candidate ∈ admitted,
      candidate.revision ≤ latest.revision) ∧
    (∀ candidate ∈ admitted,
      candidate.revision = latest.revision → candidate = latest)

/-- No two admitted publications at one revision disagree on payload. This is
stated separately from maximality because lower-revision conflicts are also
forbidden. -/
@[expose] def NoAdmittedEqualRevisionConflict {Payload : Type*}
    (admitted : List (Revisioned Payload)) : Prop :=
  ∀ left ∈ admitted, ∀ right ∈ admitted,
    left.revision = right.revision → left.value = right.value

@[surface_novel, surface_published]
theorem latestAdmitted_unique
    {Payload : Type*}
    {admitted : List (Revisioned Payload)}
    {left right : Revisioned Payload}
    (leftLatest : UniqueMaximalAdmitted admitted left)
    (rightLatest : UniqueMaximalAdmitted admitted right) :
    left = right := by
  have leftLeRight : left.revision ≤ right.revision :=
    rightLatest.2.1 left leftLatest.1
  have rightLeLeft : right.revision ≤ left.revision :=
    leftLatest.2.1 right rightLatest.1
  have revisionEquality : right.revision = left.revision :=
    le_antisymm rightLeLeft leftLeRight
  exact (leftLatest.2.2 right rightLatest.1 revisionEquality).symm

@[expose] def InitialRegistersAdmitted
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload)
    (admitted : List (Revisioned Payload)) : Prop :=
  ∀ host current,
    (execution.initial host).current = some current → current ∈ admitted

@[expose] def EveryDeliveryAdmitted
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload)
    (admitted : List (Revisioned Payload)) : Prop :=
  ∀ n event, execution.eventAt n = some event →
    event.publication ∈ admitted

/-- Every reachable host receives a transport of the maximal publication after
both its admission time and the declared quiescence boundary. -/
@[expose] def EventuallyDeliversLatest
    {Host EdgeId Payload : Type*}
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    [DecidableEq Payload]
    (contract : RoutingContract Host EdgeId) (start : Host)
    (execution : Execution Host Payload)
    (latest : Revisioned Payload)
    (admittedAt quiescenceTime : Nat) : Prop :=
  ∀ host, Reachable contract start host →
    ∃ n event, admittedAt ≤ n ∧ quiescenceTime ≤ n ∧
      execution.eventAt n = some event ∧
      event.target = host ∧ event.publication = latest

/-- Once quiescent, no source publication newer than `latest` is delivered. -/
@[expose] def QuiescentAfterLatest
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload)
    (latest : Revisioned Payload)
    (quiescenceTime : Nat) : Prop :=
  ∀ n, quiescenceTime ≤ n → ∀ event,
    execution.eventAt n = some event →
      event.publication.revision ≤ latest.revision

@[expose] def DeliveriesPreserveRevision
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload) : Prop :=
  ∀ n event, execution.eventAt n = some event →
    event.delivered.revision = event.publication.revision

@[expose] def DeliveriesPreservePayload
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload) : Prop :=
  ∀ n event, execution.eventAt n = some event →
    event.delivered.value = event.publication.value

/-- An equal-revision delivery presented to a live register never disagrees
with the stored payload. -/
@[expose] def NoAcceptedEqualRevisionConflict
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload) : Prop :=
  ∀ n event current,
    execution.eventAt n = some event →
    (execution.stateAt n event.target).current = some current →
    event.delivered.revision = current.revision →
      event.delivered.value = current.value

@[expose] def DeterministicMerge
    (Payload : Type*) [DecidableEq Payload] : Prop :=
  ∀ (register : LwwRegister Payload)
      (incoming : Revisioned Payload)
      (left right : MergeDecision Payload),
    merge register incoming = left → merge register incoming = right →
      left = right

@[surface_novel, surface_published]
theorem canonicalMerge_is_deterministic
    (Payload : Type*) [DecidableEq Payload] :
    DeterministicMerge Payload := by
  intro register incoming left right leftResult rightResult
  exact merge_deterministic register incoming leftResult rightResult

private def RevisionBounded {Payload : Type*}
    (latest : Revisioned Payload)
    (register : LwwRegister Payload) : Prop :=
  ∀ current, register.current = some current →
    current.revision ≤ latest.revision

private theorem revisioned_eq
    {Payload : Type*} {left right : Revisioned Payload}
    (revisionEquality : left.revision = right.revision)
    (valueEquality : left.value = right.value) : left = right := by
  cases left
  cases right
  simp_all

private theorem delivered_eq_publication
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload)
    (revisionPreservation : DeliveriesPreserveRevision execution)
    (payloadPreservation : DeliveriesPreservePayload execution)
    {n : Nat} {event : DeliveryEvent Host Payload}
    (eventEquation : execution.eventAt n = some event) :
    event.delivered = event.publication := by
  apply revisioned_eq
  · exact revisionPreservation n event eventEquation
  · exact payloadPreservation n event eventEquation

private theorem apply_preserves_revisionBounded
    {Payload : Type*} [DecidableEq Payload]
    (register : LwwRegister Payload)
    (incoming latest : Revisioned Payload)
    (bounded : RevisionBounded latest register)
    (incomingBound : incoming.revision ≤ latest.revision) :
    RevisionBounded latest (LwwRegister.apply register incoming) := by
  intro current currentEquation
  cases register with
  | mk current? =>
      cases current? with
      | none =>
          simp [LwwRegister.apply, merge, MergeDecision.result] at currentEquation
          subst current
          exact incomingBound
      | some existing =>
          have existingBound : existing.revision ≤ latest.revision :=
            bounded existing rfl
          have resultEquality :
              (merge ⟨some existing⟩ incoming).result = current := by
            exact Option.some.inj currentEquation
          simp only [merge] at resultEquality
          split at resultEquality
          · simp only [MergeDecision.result] at resultEquality
            subst current
            exact existingBound
          · split at resultEquality
            · split at resultEquality <;>
                simp only [MergeDecision.result] at resultEquality <;>
                subst current <;> exact existingBound
            · simp only [MergeDecision.result] at resultEquality
              subst current
              exact incomingBound

private theorem execution_revisions_bounded
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload)
    (admitted : List (Revisioned Payload))
    (latest : Revisioned Payload)
    (latestUnique : UniqueMaximalAdmitted admitted latest)
    (initialBounded : ∀ host,
      RevisionBounded latest (execution.initial host))
    (deliveriesAdmitted : EveryDeliveryAdmitted execution admitted)
    (revisionPreservation : DeliveriesPreserveRevision execution) :
    ∀ n host, RevisionBounded latest (execution.stateAt n host) := by
  intro n
  induction n with
  | zero =>
      intro host
      rw [execution.stateZero]
      exact initialBounded host
  | succ n inductionHypothesis =>
      intro host
      rw [execution.stateSucc n]
      cases eventEquation : execution.eventAt n with
      | none =>
          simpa [applyEvent] using inductionHypothesis host
      | some event =>
          by_cases targetEquality : event.target = host
          · subst host
            simp only [applyEvent]
            rw [Function.update_self]
            apply apply_preserves_revisionBounded
            · exact inductionHypothesis event.target
            · rw [revisionPreservation n event eventEquation]
              exact latestUnique.2.1 event.publication
                (deliveriesAdmitted n event eventEquation)
          · simp only [applyEvent]
            rw [Function.update_of_ne (Ne.symm targetEquality)]
            exact inductionHypothesis host

private theorem apply_latest_of_bounded_and_compatible
    {Payload : Type*} [DecidableEq Payload]
    (register : LwwRegister Payload)
    (latest : Revisioned Payload)
    (bounded : RevisionBounded latest register)
    (equalRevisionCompatible : ∀ current,
      register.current = some current →
      latest.revision = current.revision →
      latest.value = current.value) :
    (LwwRegister.apply register latest).current = some latest := by
  cases register with
  | mk current? =>
      cases current? with
      | none => simp [LwwRegister.apply, merge, MergeDecision.result]
      | some current =>
          have currentBound : current.revision ≤ latest.revision :=
            bounded current rfl
          have notStale : ¬ latest.revision < current.revision :=
            not_lt_of_ge currentBound
          by_cases sameRevision : latest.revision = current.revision
          · have sameValue : latest.value = current.value :=
              equalRevisionCompatible current rfl sameRevision
            have same : latest = current :=
              revisioned_eq sameRevision sameValue
            subst current
            simp [LwwRegister.apply, merge, MergeDecision.result]
          · simp [LwwRegister.apply, merge, notStale, sameRevision,
              MergeDecision.result]

private theorem delivered_latest_is_installed
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload)
    (latest : Revisioned Payload)
    (revisionPreservation : DeliveriesPreserveRevision execution)
    (payloadPreservation : DeliveriesPreservePayload execution)
    (noEqualConflict : NoAcceptedEqualRevisionConflict execution)
    {time : Nat} {host : Host} {event : DeliveryEvent Host Payload}
    (bounded : RevisionBounded latest (execution.stateAt time host))
    (eventEquation : execution.eventAt time = some event)
    (targetEquality : event.target = host)
    (publicationEquality : event.publication = latest) :
    (execution.stateAt (time + 1) host).current = some latest := by
  have deliveredEquality : event.delivered = latest :=
    (delivered_eq_publication execution revisionPreservation
      payloadPreservation eventEquation).trans publicationEquality
  subst host
  rw [execution.stateSucc time, eventEquation]
  simp only [applyEvent]
  rw [Function.update_self, deliveredEquality]
  apply apply_latest_of_bounded_and_compatible
  · exact bounded
  · intro current currentEquation sameRevision
    have compatible := noEqualConflict time event current eventEquation
      currentEquation
    have deliveredSameRevision :
        event.delivered.revision = current.revision := by
      rw [deliveredEquality]
      exact sameRevision
    simpa [deliveredEquality] using compatible deliveredSameRevision

private theorem installed_latest_stays_installed
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload)
    (admitted : List (Revisioned Payload))
    (latest : Revisioned Payload)
    (latestAdmitted : latest ∈ admitted)
    (deliveriesAdmitted : EveryDeliveryAdmitted execution admitted)
    (noAdmittedConflict : NoAdmittedEqualRevisionConflict admitted)
    {quiescenceTime base : Nat} {host : Host}
    (quiescence : QuiescentAfterLatest execution latest quiescenceTime)
    (revisionPreservation : DeliveriesPreserveRevision execution)
    (payloadPreservation : DeliveriesPreservePayload execution)
    (quiescentAtBase : quiescenceTime ≤ base)
    (installed : (execution.stateAt base host).current = some latest) :
    ∀ n, base ≤ n →
      (execution.stateAt n host).current = some latest := by
  intro n baseLe
  induction n, baseLe using Nat.le_induction with
  | base => exact installed
  | succ n baseLe inductionHypothesis =>
      rw [execution.stateSucc n]
      cases eventEquation : execution.eventAt n with
      | none => simpa [applyEvent] using inductionHypothesis
      | some event =>
          by_cases targetEquality : event.target = host
          · subst host
            have publicationAdmitted : event.publication ∈ admitted :=
              deliveriesAdmitted n event eventEquation
            have publicationLe :
                event.publication.revision ≤ latest.revision :=
              quiescence n (quiescentAtBase.trans baseLe) event eventEquation
            have deliveredLe : event.delivered.revision ≤ latest.revision := by
              rw [revisionPreservation n event eventEquation]
              exact publicationLe
            by_cases deliveredStrict :
                event.delivered.revision < latest.revision
            · simp [applyEvent, inductionHypothesis, LwwRegister.apply, merge,
                deliveredStrict, MergeDecision.result]
            · have latestLeDelivered :
                  latest.revision ≤ event.delivered.revision :=
                le_of_not_gt deliveredStrict
              have deliveredRevisionEquality :
                  event.delivered.revision = latest.revision :=
                le_antisymm deliveredLe latestLeDelivered
              have publicationRevisionEquality :
                  event.publication.revision = latest.revision :=
                (revisionPreservation n event eventEquation).symm.trans
                  deliveredRevisionEquality
              have publicationPayloadEquality :
                  event.publication.value = latest.value :=
                noAdmittedConflict event.publication publicationAdmitted
                  latest latestAdmitted publicationRevisionEquality
              have deliveredEquality : event.delivered = latest := by
                apply revisioned_eq deliveredRevisionEquality
                exact (payloadPreservation n event eventEquation).trans
                  publicationPayloadEquality
              simp [applyEvent, deliveredEquality, inductionHypothesis,
                LwwRegister.apply, merge, MergeDecision.result]
          · simp only [applyEvent]
            rw [Function.update_of_ne (Ne.symm targetEquality)]
            exact inductionHypothesis

private theorem finite_delivery_times_have_upper_bound
    {Host Payload : Type*}
    [Fintype Host] [DecidableEq Host]
    [DecidableEq Payload]
    (execution : Execution Host Payload)
    (latest : Revisioned Payload)
    (admittedAt quiescenceTime : Nat)
    (hosts : List Host)
    (eventual : ∀ host, host ∈ hosts →
      ∃ time event, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some event ∧
        event.target = host ∧ event.publication = latest) :
    ∃ bound, ∀ host, host ∈ hosts →
      ∃ time event, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some event ∧
        event.target = host ∧ event.publication = latest ∧
        time + 1 ≤ bound := by
  induction hosts with
  | nil =>
      exact ⟨0, by simp⟩
  | cons first rest inductionHypothesis =>
      obtain ⟨firstTime, firstEvent, admittedBeforeFirst,
        quiescentBeforeFirst, firstDelivered, firstTarget,
        firstPublication⟩ := eventual first (by simp)
      obtain ⟨restBound, restWitnesses⟩ := inductionHypothesis (by
        intro host member
        exact eventual host (by simp [member]))
      refine ⟨max (firstTime + 1) restBound, ?_⟩
      intro host member
      rcases List.mem_cons.mp member with rfl | restMember
      · exact ⟨firstTime, firstEvent, admittedBeforeFirst,
          quiescentBeforeFirst, firstDelivered, firstTarget,
          firstPublication, Nat.le_max_left _ _⟩
      · obtain ⟨time, event, admittedBefore, quiescentBefore, delivered,
          target, publication, timeBound⟩ := restWitnesses host restMember
        exact ⟨time, event, admittedBefore, quiescentBefore, delivered,
          target, publication, timeBound.trans (Nat.le_max_right _ _)⟩

@[surface_novel, surface_published]
theorem eventual_convergence_to_latestAdmitted
    {Host EdgeId Payload : Type*}
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    [DecidableEq Payload]
    (contract : RoutingContract Host EdgeId)
    (contractValid : contract.Valid)
    (start : Host)
    (admitted : List (Revisioned Payload))
    (latest : Revisioned Payload)
    (latestUnique : UniqueMaximalAdmitted admitted latest)
    (noAdmittedConflict : NoAdmittedEqualRevisionConflict admitted)
    (execution : Execution Host Payload)
    (admittedAt quiescenceTime : Nat)
    (initialAdmitted : InitialRegistersAdmitted execution admitted)
    (deliveriesAdmitted : EveryDeliveryAdmitted execution admitted)
    (eventualDelivery : EventuallyDeliversLatest contract start execution latest
      admittedAt quiescenceTime)
    (quiescence : QuiescentAfterLatest execution latest quiescenceTime)
    (deterministicMerge : DeterministicMerge Payload)
    (revisionPreservation : DeliveriesPreserveRevision execution)
    (payloadPreservation : DeliveriesPreservePayload execution)
    (noEqualConflict : NoAcceptedEqualRevisionConflict execution) :
    ∃ N, ∀ n ≥ N, ∀ host,
      host ∈ (orderedRoute contract start).hosts →
        (execution.stateAt n host).current = some latest := by
  have exactReachable : ∀ host,
      host ∈ (orderedRoute contract start).hosts ↔
        Reachable contract start host :=
    orderedRoute_reaches_exactly_reachable
      contract contractValid start
  have initialBounded : ∀ host,
      RevisionBounded latest (execution.initial host) := by
    intro host current currentEquation
    exact latestUnique.2.1 current
      (initialAdmitted host current currentEquation)
  have allStatesBounded : ∀ n host,
      RevisionBounded latest (execution.stateAt n host) :=
    execution_revisions_bounded execution admitted latest latestUnique
      initialBounded deliveriesAdmitted revisionPreservation
  have routeEventual : ∀ host,
      host ∈ (orderedRoute contract start).hosts →
      ∃ time event, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some event ∧
        event.target = host ∧ event.publication = latest := by
    intro host member
    exact eventualDelivery host ((exactReachable host).mp member)
  obtain ⟨bound, deliveryWitness⟩ :=
    finite_delivery_times_have_upper_bound execution latest admittedAt
      quiescenceTime (orderedRoute contract start).hosts routeEventual
  refine ⟨bound, ?_⟩
  intro n boundLe host hostMember
  obtain ⟨time, event, _admittedBefore, quiescentBefore, eventEquation,
    targetEquality, publicationEquality, timeBound⟩ :=
      deliveryWitness host hostMember
  have mergeClassificationUnique :
      merge (execution.stateAt time host) event.delivered =
        merge (execution.stateAt time host) event.delivered :=
    deterministicMerge (execution.stateAt time host) event.delivered _ _ rfl rfl
  have installedAtNext :
      (execution.stateAt (time + 1) host).current = some latest :=
    delivered_latest_is_installed execution latest revisionPreservation
      payloadPreservation noEqualConflict (allStatesBounded time host)
      eventEquation targetEquality publicationEquality
  exact installed_latest_stays_installed execution admitted latest
    latestUnique.1 deliveriesAdmitted noAdmittedConflict quiescence
    revisionPreservation payloadPreservation
    (quiescentBefore.trans (Nat.le_succ time)) installedAtNext n
    (timeBound.trans boundLe)

end Surface.Core.Transport
```
