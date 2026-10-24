/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction and authorship: grwtsk contributors.
Formalization and source development with AI assistance. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.ConstructiveList

/-!
# Revision-scoped timed evidence

An issued revision is a natural-number ordinal. Confirmation selects an issued
revision; the current revision is the greatest confirmed ordinal, independently
of confirmation order. Evidence records name an exact confirmed revision and an
exact kind. Their payloads and observation times remain in an ordered history.

The transition guards concern issuance and confirmation, not the conclusions to
be proved. A preserved invariant links every record to a previously issued and
confirmed revision. Consequently, issuing and confirming a fresh revision cannot
inherit an old record. Every finite transition sequence retains each old record
at its original position. Querying and taking the minimum recorded time give
exact finite evidence semantics, independent of later clock movement.

An empty query means that this ledger has no matching record. It does not prove
that an external event failed to occur. Ordinals do not authenticate identities,
and this model does not supply a correspondence from string identifiers or an
external predecessor chain to its ordinal order. It also does not prove parser,
storage, interaction, information-flow, or external-program refinement results.

This is pure mathematical source. Source-bound elaboration and trust evidence
are separate from the declarations and static acceptance specification.
-/

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences

universe u v

/-- An immutable observation with its exact revision, kind, time, and payload. -/
structure Record (Kind : Type u) (Payload : Type v) where
  revision : Nat
  kind : Kind
  tick : Nat
  payload : Payload
  deriving DecidableEq, Repr

/-- `issued` counts the ordinals already issued: precisely `0, ..., issued - 1`.
Transitions from `empty` retain first-confirmation order in `confirmed`; that
order need not be revision order. Arbitrary structure values need not have it. -/
structure State (Kind : Type u) (Payload : Type v) where
  issued : Nat
  confirmed : List Nat
  clock : Nat
  history : List (Record Kind Payload)
  deriving DecidableEq, Repr

variable {Kind : Type u} {Payload : Type v}

def empty : State Kind Payload := ⟨0, [], 0, []⟩

/-- The greatest confirmed ordinal, or no current revision if none is confirmed. -/
def current (state : State Kind Payload) : Option Nat :=
  state.confirmed.max?

/-- Exact revision-and-kind selection, retaining the original record order. -/
def query [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) : List (Record Kind Payload) :=
  state.history.filter (fun row => decide (row.revision = revision ∧ row.kind = kind))

/-- Minimum observed time among precisely the matching records. -/
def earliestTick [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) : Option Nat :=
  ((query state revision kind).map Record.tick).min?

/-- Evidence availability is distinct from either side of an inclusive target. -/
inductive Timing where
  | unavailable
  | byTarget
  | afterTarget
  deriving DecidableEq, Repr

def timing [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) (target : Nat) : Timing :=
  match earliestTick state revision kind with
  | none => .unavailable
  | some tick => if tick ≤ target then .byTarget else .afterTarget

/-- A target elapses strictly after its inclusive boundary. -/
def targetElapsed (state : State Kind Payload) (target : Nat) : Bool :=
  decide (target < state.clock)

/-- Local structural invariants, without a query-absence or timing conclusion. -/
structure WellFormed (state : State Kind Payload) : Prop where
  confirmedIssued : ∀ revision, revision ∈ state.confirmed → revision < state.issued
  recordConfirmed : ∀ row, row ∈ state.history → row.revision ∈ state.confirmed
  recordNotFuture : ∀ row, row ∈ state.history → row.tick ≤ state.clock

/-- Issue the fresh ordinal `state.issued`; this alone does not confirm it. -/
def issue (state : State Kind Payload) : State Kind Payload :=
  { state with issued := state.issued + 1 }

/-- Record first confirmation only. Validity of the ordinal is a `Step` guard. -/
def confirm (state : State Kind Payload) (revision : Nat) : State Kind Payload :=
  letI : Decidable (revision ∈ state.confirmed) :=
    ConstructiveList.decidableMem revision state.confirmed
  { state with confirmed :=
      if revision ∈ state.confirmed then state.confirmed else state.confirmed ++ [revision] }

/-- Append a record at the present clock. Confirmation is a `Step` guard. -/
def record (state : State Kind Payload) (revision : Nat)
    (kind : Kind) (payload : Payload) : State Kind Payload :=
  { state with history := state.history ++ [⟨revision, kind, state.clock, payload⟩] }

/-- Move the clock forward by a nonnegative number of ticks. -/
def advance (state : State Kind Payload) (elapsed : Nat) : State Kind Payload :=
  { state with clock := state.clock + elapsed }

/-- The ordered labels of the pure transition system. -/
inductive Event (Kind : Type u) (Payload : Type v) where
  | issue
  | confirm (revision : Nat)
  | record (revision : Nat) (kind : Kind) (payload : Payload)
  | advance (elapsed : Nat)
  deriving DecidableEq, Repr

/-- Valid transitions use concrete updates and independently stated local guards.
An invalid label has no transition; it is not an evidence classification. -/
inductive Step : State Kind Payload → Event Kind Payload → State Kind Payload → Prop where
  | issue (state) : Step state .issue (issue state)
  | confirm (state) (revision) (issued : revision < state.issued) :
      Step state (.confirm revision) (confirm state revision)
  | record (state) (revision) (kind) (payload)
      (confirmed : revision ∈ state.confirmed) :
      Step state (.record revision kind payload) (record state revision kind payload)
  | advance (state) (elapsed) : Step state (.advance elapsed) (advance state elapsed)

/-- A finite sequence retains every transition label in its original order. -/
inductive Trace : State Kind Payload → List (Event Kind Payload) → State Kind Payload → Prop where
  | nil (state) : Trace state [] state
  | cons {source middle target event events} :
      Step source event middle → Trace middle events target →
      Trace source (event :: events) target

theorem mem_query_iff [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) (row : Record Kind Payload) :
    row ∈ query state revision kind ↔
      row ∈ state.history ∧ row.revision = revision ∧ row.kind = kind := by
  constructor
  · intro member
    have selected := ConstructiveList.mem_filter_iff.mp member
    exact ⟨selected.1, of_decide_eq_true selected.2⟩
  · intro matching
    exact ConstructiveList.mem_filter_iff.mpr
      ⟨matching.1, decide_eq_true matching.2⟩

/-- Appending a record contributes to exactly its own revision-and-kind query. -/
theorem query_record [DecidableEq Kind] (state : State Kind Payload)
    (revision queriedRevision : Nat) (kind queriedKind : Kind) (payload : Payload) :
    query (record state revision kind payload) queriedRevision queriedKind =
      query state queriedRevision queriedKind ++
        if revision = queriedRevision ∧ kind = queriedKind
        then [⟨revision, kind, state.clock, payload⟩] else [] := by
  let row : Record Kind Payload := ⟨revision, kind, state.clock, payload⟩
  let select : Record Kind Payload → Bool :=
    fun candidate => decide
      (candidate.revision = queriedRevision ∧ candidate.kind = queriedKind)
  change (state.history ++ [row]).filter select =
    state.history.filter select ++
      if revision = queriedRevision ∧ kind = queriedKind then [row] else []
  calc
    _ = state.history.filter select ++ [row].filter select :=
      ConstructiveList.filter_append
    _ = state.history.filter select ++
        (if revision = queriedRevision ∧ kind = queriedKind then [row] else []) := by
      apply congrArg (fun suffix => state.history.filter select ++ suffix)
      by_cases matching : revision = queriedRevision ∧ kind = queriedKind
      · rw [if_pos matching]
        change (match decide (revision = queriedRevision ∧ kind = queriedKind) with
          | true => [row]
          | false => []) = [row]
        rw [decide_eq_true matching]
      · rw [if_neg matching]
        change (match decide (revision = queriedRevision ∧ kind = queriedKind) with
          | true => [row]
          | false => []) = []
        rw [decide_eq_false matching]

theorem query_record_other [DecidableEq Kind] (state : State Kind Payload)
    (revision queriedRevision : Nat) (kind queriedKind : Kind) (payload : Payload)
    (different : revision ≠ queriedRevision ∨ kind ≠ queriedKind) :
    query (record state revision kind payload) queriedRevision queriedKind =
      query state queriedRevision queriedKind := by
  rw [query_record]
  have mismatch : ¬ (revision = queriedRevision ∧ kind = queriedKind) := by
    intro same
    cases different with
    | inl differentRevision => exact differentRevision same.1
    | inr differentKind => exact differentKind same.2
  rw [if_neg mismatch]
  exact ConstructiveList.append_nil _

theorem earliestTick_none_iff [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) :
    earliestTick state revision kind = none ↔ query state revision kind = [] := by
  constructor
  · intro first
    have noTicks := ConstructiveList.min?_eq_none_iff.mp first
    cases selected : query state revision kind with
    | nil => rfl
    | cons row rows =>
        rw [selected] at noTicks
        cases noTicks
  · intro absent
    unfold earliestTick
    rw [absent]
    rfl

/-- The returned minimum is itself an observed matching time and bounds every
matching time from below. No completeness of external observations is assumed. -/
theorem earliestTick_some_iff [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) (tick : Nat) :
    earliestTick state revision kind = some tick ↔
      (∃ row, row ∈ query state revision kind ∧ row.tick = tick) ∧
      ∀ row, row ∈ query state revision kind → tick ≤ row.tick := by
  unfold earliestTick
  constructor
  · intro first
    have minimum := ConstructiveList.min?_eq_some_iff.mp first
    refine ⟨ConstructiveList.mem_map_iff.mp minimum.1, ?_⟩
    intro row member
    exact minimum.2 row.tick (ConstructiveList.mem_map_iff.mpr ⟨row, member, rfl⟩)
  · intro minimum
    apply ConstructiveList.min?_eq_some_iff.mpr
    refine ⟨ConstructiveList.mem_map_iff.mpr minimum.1, ?_⟩
    intro observed member
    obtain ⟨row, rowMember, rowTick⟩ := ConstructiveList.mem_map_iff.mp member
    exact rowTick ▸ minimum.2 row rowMember

theorem timing_unavailable_iff [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) (target : Nat) :
    timing state revision kind target = .unavailable ↔
      query state revision kind = [] := by
  constructor
  · intro result
    cases first : earliestTick state revision kind with
    | none => exact (earliestTick_none_iff state revision kind).mp first
    | some tick =>
        unfold timing at result
        rw [first] at result
        change (if tick ≤ target then Timing.byTarget else Timing.afterTarget) =
          Timing.unavailable at result
        by_cases within : tick ≤ target
        · rw [if_pos within] at result
          cases result
        · rw [if_neg within] at result
          cases result
  · intro absent
    unfold timing
    rw [(earliestTick_none_iff state revision kind).mpr absent]

theorem timing_byTarget_iff [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) (target : Nat) :
    timing state revision kind target = .byTarget ↔
      ∃ tick, earliestTick state revision kind = some tick ∧ tick ≤ target := by
  constructor
  · intro result
    cases first : earliestTick state revision kind with
    | none =>
        unfold timing at result
        rw [first] at result
        cases result
    | some tick =>
        by_cases within : tick ≤ target
        · exact ⟨tick, rfl, within⟩
        · unfold timing at result
          rw [first] at result
          change (if tick ≤ target then Timing.byTarget else Timing.afterTarget) =
            Timing.byTarget at result
          rw [if_neg within] at result
          cases result
  · intro observed
    obtain ⟨tick, first, within⟩ := observed
    unfold timing
    rw [first]
    exact if_pos within

theorem timing_afterTarget_iff [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) (target : Nat) :
    timing state revision kind target = .afterTarget ↔
      ∃ tick, earliestTick state revision kind = some tick ∧ target < tick := by
  constructor
  · intro result
    cases first : earliestTick state revision kind with
    | none =>
        unfold timing at result
        rw [first] at result
        cases result
    | some tick =>
        by_cases within : tick ≤ target
        · unfold timing at result
          rw [first] at result
          change (if tick ≤ target then Timing.byTarget else Timing.afterTarget) =
            Timing.afterTarget at result
          rw [if_pos within] at result
          cases result
        · exact ⟨tick, rfl, Nat.lt_of_not_ge within⟩
  · intro observed
    obtain ⟨tick, first, after⟩ := observed
    unfold timing
    rw [first]
    exact if_neg (Nat.not_le_of_gt after)

theorem mem_confirmed_iff (state : State Kind Payload) (revision other : Nat) :
    other ∈ (confirm state revision).confirmed ↔
      other ∈ state.confirmed ∨ other = revision := by
  letI : Decidable (revision ∈ state.confirmed) :=
    ConstructiveList.decidableMem revision state.confirmed
  change other ∈ (if revision ∈ state.confirmed
    then state.confirmed else state.confirmed ++ [revision]) ↔
    other ∈ state.confirmed ∨ other = revision
  by_cases already : revision ∈ state.confirmed
  · rw [if_pos already]
    constructor
    · exact Or.inl
    · intro member
      cases member with
      | inl old => exact old
      | inr same => exact same.symm ▸ already
  · rw [if_neg already]
    constructor
    · intro member
      cases ConstructiveList.mem_append_iff.mp member with
      | inl old => exact Or.inl old
      | inr appended => exact Or.inr (ConstructiveList.mem_singleton_iff.mp appended)
    · intro member
      apply ConstructiveList.mem_append_iff.mpr
      cases member with
      | inl old => exact Or.inl old
      | inr same => exact Or.inr (ConstructiveList.mem_singleton_iff.mpr same)

theorem confirm_idempotent (state : State Kind Payload) (revision : Nat)
    (already : revision ∈ state.confirmed) : confirm state revision = state := by
  unfold confirm
  rw [if_pos already]

theorem issue_keeps_current (state : State Kind Payload) :
    current (issue state) = current state := rfl

/-- Confirming an upper bound of all previously confirmed ordinals selects it. -/
theorem current_confirm_of_upper (state : State Kind Payload) (revision : Nat)
    (upper : ∀ old, old ∈ state.confirmed → old ≤ revision) :
    current (confirm state revision) = some revision := by
  apply ConstructiveList.max?_eq_some_iff.mpr
  refine ⟨(mem_confirmed_iff state revision revision).mpr (Or.inr rfl), ?_⟩
  intro old member
  cases (mem_confirmed_iff state revision old).mp member with
  | inl previous => exact upper old previous
  | inr same => exact same.symm ▸ Nat.le_refl revision

/-- An out-of-order confirmation cannot roll back the current revision. -/
theorem old_confirmation_keeps_current (state : State Kind Payload)
    (revision latest : Nat) (selected : current state = some latest)
    (older : revision ≤ latest) :
    current (confirm state revision) = some latest := by
  have maximum := ConstructiveList.max?_eq_some_iff.mp selected
  apply ConstructiveList.max?_eq_some_iff.mpr
  refine ⟨(mem_confirmed_iff state revision latest).mpr (Or.inl maximum.1), ?_⟩
  intro candidate member
  cases (mem_confirmed_iff state revision candidate).mp member with
  | inl previous => exact maximum.2 candidate previous
  | inr same => exact same.symm ▸ older

theorem empty_wellFormed : WellFormed (empty : State Kind Payload) := by
  constructor <;> intro value member <;> cases member

/-- Local issuance, confirmation, and clock guards preserve the structural
invariant; query absence is derived later from this result. -/
theorem step_preserves_wellFormed {source target : State Kind Payload}
    {event : Event Kind Payload} (step : Step source event target)
    (valid : WellFormed source) : WellFormed target := by
  cases step with
  | issue =>
      exact ⟨fun revision member => Nat.lt_succ_of_lt (valid.confirmedIssued revision member),
        valid.recordConfirmed, valid.recordNotFuture⟩
  | confirm revision issued =>
      refine ⟨?_, ?_, valid.recordNotFuture⟩
      · intro other member
        cases (mem_confirmed_iff source revision other).mp member with
        | inl old => exact valid.confirmedIssued other old
        | inr same => exact same.symm ▸ issued
      · intro row member
        exact (mem_confirmed_iff source revision row.revision).mpr
          (Or.inl (valid.recordConfirmed row member))
  | record revision kind payload confirmed =>
      refine ⟨valid.confirmedIssued, ?_, ?_⟩
      · intro row member
        cases ConstructiveList.mem_append_iff.mp member with
        | inl old => exact valid.recordConfirmed row old
        | inr appended =>
            have same := ConstructiveList.mem_singleton_iff.mp appended
            cases same
            exact confirmed
      · intro row member
        cases ConstructiveList.mem_append_iff.mp member with
        | inl old => exact valid.recordNotFuture row old
        | inr appended =>
            have same := ConstructiveList.mem_singleton_iff.mp appended
            cases same
            exact Nat.le_refl source.clock
  | advance elapsed =>
      exact ⟨valid.confirmedIssued, valid.recordConfirmed,
        fun row member => Nat.le_trans (valid.recordNotFuture row member)
          (Nat.le_add_right source.clock elapsed)⟩

theorem trace_preserves_wellFormed {source target : State Kind Payload}
    {events : List (Event Kind Payload)} (trace : Trace source events target)
    (valid : WellFormed source) : WellFormed target := by
  revert valid
  induction trace with
  | nil => exact fun valid => valid
  | cons first _rest inductionHypothesis =>
      intro valid
      exact inductionHypothesis (step_preserves_wellFormed first valid)

theorem step_history_prefix {source target : State Kind Payload}
    {event : Event Kind Payload} (step : Step source event target) :
    source.history <+: target.history := by
  cases step with
  | issue => exact ConstructiveList.prefix_refl source.history
  | confirm revision _issued => exact ConstructiveList.prefix_refl source.history
  | record revision kind payload _confirmed =>
      exact ConstructiveList.prefix_append source.history [⟨revision, kind, source.clock, payload⟩]
  | advance elapsed => exact ConstructiveList.prefix_refl source.history

theorem trace_history_prefix {source target : State Kind Payload}
    {events : List (Event Kind Payload)} (trace : Trace source events target) :
    source.history <+: target.history := by
  induction trace with
  | nil state => exact ConstructiveList.prefix_refl state.history
  | cons first _rest inductionHypothesis =>
      exact ConstructiveList.prefix_trans (step_history_prefix first) inductionHypothesis

/-- Every old revision, kind, timestamp, and payload remains at its exact position.
The conclusion exhibits a valid target position and compares the actual bounded
list getters at the same numeric index. -/
theorem trace_history_position {source target : State Kind Payload}
    {events : List (Event Kind Payload)} (trace : Trace source events target)
    (index : Nat) (oldPosition : index < source.history.length) :
    ∃ newPosition : index < target.history.length,
      getElem target.history index newPosition = getElem source.history index oldPosition :=
  ⟨Nat.lt_of_lt_of_le oldPosition
      (ConstructiveList.prefix_length_le (trace_history_prefix trace)),
    ConstructiveList.prefix_getElem_of_lt (trace_history_prefix trace) index oldPosition⟩

/-- A revision beyond the issued range has no record, because every record is
linked to a confirmed, already issued revision. This is not an absence premise. -/
theorem unissued_query_empty [DecidableEq Kind] (state : State Kind Payload)
    (valid : WellFormed state) (revision : Nat) (kind : Kind)
    (unissued : state.issued ≤ revision) : query state revision kind = [] := by
  apply ConstructiveList.eq_nil_iff_forall_not_mem.mpr
  intro row member
  have matching := (mem_query_iff state revision kind row).mp member
  have issued := valid.confirmedIssued row.revision
    (valid.recordConfirmed row matching.1)
  exact (Nat.not_le_of_gt (matching.2.1 ▸ issued)) unissued

/-- The two actual updates for issuance followed by confirmation of its fresh ordinal. -/
def correct (state : State Kind Payload) : State Kind Payload :=
  confirm (issue state) state.issued

theorem correction_trace (state : State Kind Payload) :
    Trace state [.issue, .confirm state.issued] (correct state) :=
  Trace.cons (Step.issue state)
    (Trace.cons (Step.confirm (issue state) state.issued (Nat.lt_succ_self state.issued))
      (Trace.nil (correct state)))

/-- Fresh confirmation changes current revision, derives unavailable evidence
for every queried kind, and keeps the complete old ordered history literally. -/
theorem fresh_confirmation_separates_evidence [DecidableEq Kind]
    (state : State Kind Payload) (valid : WellFormed state) (kind : Kind) :
    current (correct state) = some state.issued ∧
      query (correct state) state.issued kind = [] ∧
      (correct state).history = state.history := by
  refine ⟨?_, ?_, rfl⟩
  · apply current_confirm_of_upper
    intro old member
    exact Nat.le_of_lt (valid.confirmedIssued old member)
  · exact unissued_query_empty state valid state.issued kind (Nat.le_refl state.issued)

theorem correction_timing_unavailable [DecidableEq Kind]
    (state : State Kind Payload) (valid : WellFormed state) (kind : Kind) (target : Nat) :
    timing (correct state) state.issued kind target = .unavailable :=
  (timing_unavailable_iff (correct state) state.issued kind target).mpr
    (fresh_confirmation_separates_evidence state valid kind).2.1

/-- Correction changes selection without erasing any old revision-specific query. -/
theorem correction_preserves_historical_queries [DecidableEq Kind]
    (state : State Kind Payload) (revision : Nat) (kind : Kind) :
    query (correct state) revision kind = query state revision kind := rfl

/-- Clock movement changes neither matching records, their earliest time, nor
their inclusive-target classification. Elapsed-target status is a separate query. -/
theorem advance_preserves_evidence [DecidableEq Kind] (state : State Kind Payload)
    (elapsed revision : Nat) (kind : Kind) (target : Nat) :
    query (advance state elapsed) revision kind = query state revision kind ∧
      earliestTick (advance state elapsed) revision kind = earliestTick state revision kind ∧
      timing (advance state elapsed) revision kind target = timing state revision kind target :=
  ⟨rfl, rfl, rfl⟩

namespace Fixtures

/-- A single abstract kind-`true` record, observed for revision zero at tick ten. -/
def observed : State Bool Nat :=
  record (advance (confirm (issue empty) 0) 10) 0 true 7

theorem observed_wellFormed : WellFormed observed := by
  apply step_preserves_wellFormed
    (Step.record (advance (confirm (issue empty) 0) 10) 0 true 7 (List.Mem.head []))
  apply step_preserves_wellFormed (Step.advance (confirm (issue empty) 0) 10)
  apply step_preserves_wellFormed (Step.confirm (issue empty) 0 (Nat.lt_succ_self 0))
  exact step_preserves_wellFormed (Step.issue empty) empty_wellFormed

theorem fresh_revision_control :
    current (correct observed) = some 1 ∧
      query (correct observed) 1 true = [] ∧
      query (correct observed) 0 true = [⟨0, true, 10, 7⟩] := by
  exact ⟨rfl, rfl, rfl⟩

theorem unconfirmed_revision_keeps_current :
    current (issue observed) = some 0 ∧ query (issue observed) 0 true = [⟨0, true, 10, 7⟩] := by
  exact ⟨rfl, rfl⟩

theorem old_confirmation_control :
    let newerFirst : State Bool Nat := confirm (issue (issue empty)) 1
    0 ∉ newerFirst.confirmed ∧
      (confirm newerFirst 0).confirmed = [1, 0] ∧
      current (confirm newerFirst 0) = some 1 := by
  refine ⟨?_, rfl, rfl⟩
  intro member
  cases member with
  | tail _ member => cases member

/-- One evidence kind does not supply another, even at the same revision. -/
theorem distinct_kind_control :
    timing observed 0 true 10 = .byTarget ∧ timing observed 0 false 10 = .unavailable := by
  exact ⟨rfl, rfl⟩

/-- Passing a target changes elapsed status but cannot turn absence into an event. -/
theorem elapsed_without_evidence_control :
    targetElapsed (correct observed) 20 = false ∧
      targetElapsed (advance (correct observed) 11) 20 = true ∧
      timing (advance (correct observed) 11) 1 true 20 = .unavailable := by
  exact ⟨rfl, rfl, rfl⟩

/-- Equality meets the target; later clock movement does not redate the observation. -/
theorem inclusive_timing_control :
    timing observed 0 true 10 = .byTarget ∧
      timing observed 0 true 9 = .afterTarget ∧
      timing (advance observed 100) 0 true 10 = .byTarget := by
  exact ⟨rfl, rfl, rfl⟩

/-- Omitting the structural invariant admits a forged pre-existing future record.
The same correction operation then does inherit that record, so the invariant
is a necessary modeled premise rather than an unconditional external claim. -/
theorem malformed_state_counterexample :
    let forged : State Bool Nat := ⟨0, [], 0, [⟨0, true, 0, 9⟩]⟩
    ¬ WellFormed forged ∧ query (correct forged) 0 true = [⟨0, true, 0, 9⟩] := by
  dsimp only
  constructor
  · intro valid
    have impossible := valid.recordConfirmed ⟨0, true, 0, 9⟩ (List.Mem.head [])
    cases impossible
  · rfl

end Fixtures

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence
