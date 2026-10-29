import Mathematics.Authority.Evidence
import Mathematics.Core.SemanticIdentity
import Mathlib.Data.Finset.Basic

/-!
# Exactly-once Boolean raster

The authoritative Boolean quotient is a bit section plus a separate validity
section.  `unresolved` is not encoded as `false`.  A conditional is consumed
as a content-addressed event pulse, and the bit and event ledger are updated
in one pure transition.

SAT artifacts in this file remain finite constraint evidence.  Even a
kernel-validated model produces only a transition proposal; it has no theorem,
permission, jurisdiction, or accepted-state constructor.
-/

namespace Mathematics.Reactive

universe u v

/-- Exact identity and predicate provenance for one Boolean quotient cell. -/
structure RasterCell where
  cellId : StableId
  predicateDigest : Digest
  provenance : Finset StableId
  deriving DecidableEq

/-- The exact Boolean factor. -/
structure RasterSection (Cell : Type u) where
  bit : Cell → Bool

namespace RasterSection

@[ext]
theorem ext
    {left right : RasterSection Cell}
    (pointwise : ∀ cell, left.bit cell = right.bit cell) :
    left = right := by
  cases left
  cases right
  simp only [mk.injEq]
  funext cell
  exact pointwise cell

end RasterSection

/-- Availability is an exact side channel; unresolved is not a Boolean value. -/
inductive DecisionAvailability
  | resolved
  | unresolved
  deriving DecidableEq, Repr

structure ValiditySection (Cell : Type u) where
  availability : Cell → DecisionAvailability

/-- Content-addressed exactly-once memory. -/
structure EventLedger (Event : Type v) where
  seen : Event → Bool

namespace EventLedger

@[ext]
theorem ext
    {left right : EventLedger Event}
    (pointwise : ∀ event, left.seen event = right.seen event) :
    left = right := by
  cases left
  cases right
  simp only [mk.injEq]
  funext event
  exact pointwise event

end EventLedger

/-- A snapshot-bound event pulse for one cell. -/
structure ConditionalEvent (Cell : Type u) (Event : Type v) where
  event : Event
  cell : Cell
  condition : Bool
  snapshotDigest : Digest
  formulaDigest : Digest
  provenance : Finset StableId

/-- The raster and event memory form one atomic state. -/
structure RasterState (Cell : Type u) (Event : Type v) where
  raster : RasterSection Cell
  ledger : EventLedger Event

namespace RasterState

@[ext]
theorem ext
    {left right : RasterState Cell Event}
    (raster :
      ∀ cell, left.raster.bit cell = right.raster.bit cell)
    (ledger :
      ∀ event, left.ledger.seen event = right.ledger.seen event) :
    left = right := by
  cases left
  cases right
  simp only [mk.injEq]
  constructor
  · exact RasterSection.ext raster
  · exact EventLedger.ext ledger

end RasterState

/-- An event fires exactly when its condition is true and it is not yet seen. -/
def ConditionalEvent.fires
    (packet : ConditionalEvent Cell Event)
    (ledger : EventLedger Event) : Bool :=
  packet.condition && !(ledger.seen packet.event)

/-- Event-memory update used by the atomic raster transition. -/
def updateEventLedger
    [DecidableEq Event]
    (packet : ConditionalEvent Cell Event)
    (ledger : EventLedger Event) :
    EventLedger Event :=
  let fires := packet.fires ledger
  {
    seen := fun event ↦
      if event = packet.event then
        ledger.seen event || fires
      else
        ledger.seen event
  }

/--
Apply one pulse atomically.  The targeted bit is XORed and the event is marked
seen in the same returned value.
-/
def applyToggle
    [DecidableEq Cell]
    [DecidableEq Event]
    (packet : ConditionalEvent Cell Event)
    (state : RasterState Cell Event) :
    RasterState Cell Event :=
  let fires := packet.fires state.ledger
  {
    raster := {
      bit := fun cell ↦
        if cell = packet.cell then
          Bool.xor (state.raster.bit cell) fires
        else
          state.raster.bit cell
    }
    ledger := updateEventLedger packet state.ledger
  }

@[simp]
theorem false_condition_preserves_bit
    [DecidableEq Cell]
    [DecidableEq Event]
    (packet : ConditionalEvent Cell Event)
    (state : RasterState Cell Event)
    (condition_false : packet.condition = false) :
    applyToggle packet state = state := by
  apply RasterState.ext
  · intro cell
    simp [applyToggle, ConditionalEvent.fires, condition_false]
  · intro event
    simp [applyToggle, updateEventLedger,
      ConditionalEvent.fires, condition_false]

@[simp]
theorem seen_event_preserves_bit
    [DecidableEq Cell]
    [DecidableEq Event]
    (packet : ConditionalEvent Cell Event)
    (state : RasterState Cell Event)
    (seen : state.ledger.seen packet.event = true) :
    applyToggle packet state = state := by
  apply RasterState.ext
  · intro cell
    simp [applyToggle, ConditionalEvent.fires, seen]
  · intro event
    simp [applyToggle, updateEventLedger,
      ConditionalEvent.fires, seen]

theorem true_unseen_condition_flips_bit
    [DecidableEq Cell]
    [DecidableEq Event]
    (packet : ConditionalEvent Cell Event)
    (state : RasterState Cell Event)
    (condition_true : packet.condition = true)
    (unseen : state.ledger.seen packet.event = false) :
    (applyToggle packet state).raster.bit packet.cell =
      !(state.raster.bit packet.cell) := by
  simp [applyToggle, updateEventLedger,
    ConditionalEvent.fires, condition_true, unseen]

theorem true_unseen_event_is_recorded
    [DecidableEq Cell]
    [DecidableEq Event]
    (packet : ConditionalEvent Cell Event)
    (state : RasterState Cell Event)
    (condition_true : packet.condition = true)
    (unseen : state.ledger.seen packet.event = false) :
    (applyToggle packet state).ledger.seen packet.event = true := by
  simp [applyToggle, updateEventLedger,
    ConditionalEvent.fires, condition_true, unseen]

/-- Duplicate delivery is idempotent because the first result records the event. -/
theorem toggle_replay_idempotent
    [DecidableEq Cell]
    [DecidableEq Event]
    (packet : ConditionalEvent Cell Event)
    (state : RasterState Cell Event) :
    applyToggle packet (applyToggle packet state) =
      applyToggle packet state := by
  cases condition : packet.condition
  · exact
      false_condition_preserves_bit
        packet (applyToggle packet state) condition
  · apply seen_event_preserves_bit
    cases seen : state.ledger.seen packet.event <;>
      simp [applyToggle, updateEventLedger,
        ConditionalEvent.fires, condition, seen]

/-- SAT variables have disjoint fixed, decision, and encoding roles. -/
inductive VariableClass
  | frozen
  | decision
  | auxiliary
  deriving DecidableEq, Repr

structure FrozenAssignment (Variable : Type u) where
  classify : Variable → VariableClass
  observed : Variable → Bool

inductive Literal (Variable : Type u)
  | positive (atom : Variable)
  | negative (atom : Variable)
  deriving DecidableEq, Repr

abbrev Clause (Variable : Type u) := List (Literal Variable)

/-- A finite conjunctive normal form. -/
structure BoolFormula (Variable : Type u) where
  clauses : List (Clause Variable)
  deriving DecidableEq, Repr

structure CanonicalCNF (Variable : Type u) where
  formula : BoolFormula Variable
  formulaDigest : Digest
  variableOrderDigest : Digest
  policyDigest : Digest

structure SatModel (Variable : Type u) where
  assignment : Variable → Bool

def Literal.eval
    (model : SatModel Variable) :
    Literal Variable → Bool
  | .positive atom => model.assignment atom
  | .negative atom => !(model.assignment atom)

def Clause.eval
    (model : SatModel Variable)
    (clause : Clause Variable) : Bool :=
  clause.any (Literal.eval model)

def BoolFormula.eval
    (model : SatModel Variable)
    (formula : BoolFormula Variable) : Bool :=
  formula.clauses.all (Clause.eval model)

def FrozenAssignment.PreservedBy
    (frozen : FrozenAssignment Variable)
    (model : SatModel Variable) : Prop :=
  ∀ atom,
    frozen.classify atom = .frozen →
      model.assignment atom = frozen.observed atom

/-- A checked SAT model for one exact formula and frozen input. -/
structure ValidatedSatModel
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable) where
  model : SatModel Variable
  satisfies : cnf.formula.eval model = true
  frozen_unchanged : frozen.PreservedBy model
  overlapGlueCertificate : ObjectAddress

/-- Fixed validation predicate for a proposed finite model. -/
def validateSatModel
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable)
    (model : SatModel Variable) : Prop :=
  cnf.formula.eval model = true ∧
    frozen.PreservedBy model

/-- A validated model agrees with every observed frozen coordinate. -/
theorem frozen_variables_unchanged
    {cnf : CanonicalCNF Variable}
    {frozen : FrozenAssignment Variable}
    (validated : ValidatedSatModel cnf frozen) :
    frozen.PreservedBy validated.model :=
  validated.frozen_unchanged

theorem validated_model_passes_fixed_validation
    {cnf : CanonicalCNF Variable}
    {frozen : FrozenAssignment Variable}
    (validated : ValidatedSatModel cnf frozen) :
    validateSatModel cnf frozen validated.model :=
  ⟨validated.satisfies, validated.frozen_unchanged⟩

/-- A proof-bearing finite UNSAT result. -/
structure UnsatCertificate (cnf : CanonicalCNF Variable) where
  noModel :
    ∀ model : SatModel Variable,
      cnf.formula.eval model ≠ true
  conflictCore : List (Clause Variable)
  certificateAddress : ObjectAddress

/-- Fixed proof-relevant validation predicate for a finite UNSAT certificate. -/
def validateUnsatCertificate
    (cnf : CanonicalCNF Variable)
    (_certificate : UnsatCertificate cnf) : Prop :=
  ∀ model : SatModel Variable,
    cnf.formula.eval model ≠ true

theorem unsat_certificate_passes_fixed_validation
    {cnf : CanonicalCNF Variable}
    (certificate : UnsatCertificate cnf) :
    validateUnsatCertificate cnf certificate :=
  certificate.noModel

inductive SatStatus
  | sat
  | unsat
  | unknown
  | stale
  deriving DecidableEq, Repr

structure SatReceipt where
  status : SatStatus
  snapshotDigest : Digest
  formulaDigest : Digest
  solverDigest : Digest
  validationDigest : Digest
  receiptAddress : ObjectAddress

/-- Exact finite result classes; only `sat` carries a validated model. -/
inductive SatResult
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable)
  | sat
      (model : ValidatedSatModel cnf frozen)
      (receipt : SatReceipt)
      (status_bound : receipt.status = .sat)
  | unsat
      (certificate : UnsatCertificate cnf)
      (receipt : SatReceipt)
      (status_bound : receipt.status = .unsat)
  | unknown
      (receipt : SatReceipt)
      (status_bound : receipt.status = .unknown)
  | stale
      (receipt : SatReceipt)
      (status_bound : receipt.status = .stale)

/--
A canonical selector is a deterministic function with proof of soundness and
completeness on its returned option.  Native solver search order is absent.
-/
structure CanonicalModelSelector (Variable : Type u) where
  select :
    (cnf : CanonicalCNF Variable) →
    (frozen : FrozenAssignment Variable) →
    Option (ValidatedSatModel cnf frozen)
  complete :
    ∀ cnf frozen,
      select cnf frozen = none →
      ∀ model : SatModel Variable,
        cnf.formula.eval model ≠ true ∨
          ¬ frozen.PreservedBy model
  selectorDigest : Digest

def canonicalSatModel
    (selector : CanonicalModelSelector Variable)
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable) :
    Option (ValidatedSatModel cnf frozen) :=
  selector.select cnf frozen

theorem canonical_model_deterministic
    (selector : CanonicalModelSelector Variable)
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable) :
    canonicalSatModel selector cnf frozen =
      canonicalSatModel selector cnf frozen :=
  rfl

/-- Canonical four-clause truth value for `output ↔ left XOR right`. -/
def xorCNFHolds (left right output : Bool) : Bool :=
  (left || right || !output) &&
  (left || !right || output) &&
  (!left || right || output) &&
  (!left || !right || !output)

theorem xor_cnf_correct
    (left right output : Bool) :
    xorCNFHolds left right output = true ↔
      output = Bool.xor left right := by
  cases left <;> cases right <;> cases output <;> decide

/-- SAT evaluation can propose or preserve; it cannot directly accept state. -/
inductive SatTransitionProposal (State : Type u)
  | proposed (candidate : State) (receipt : SatReceipt)
  | preserved (current : State) (receipt : SatReceipt)

def evaluateSat
    (current : State)
    (buildCandidate :
      ValidatedSatModel cnf frozen → State)
    (result : SatResult cnf frozen) :
    SatTransitionProposal State :=
  match result with
  | .sat model receipt _ =>
      .proposed (buildCandidate model) receipt
  | .unsat _ receipt _ =>
      .preserved current receipt
  | .unknown receipt _ =>
      .preserved current receipt
  | .stale receipt _ =>
      .preserved current receipt

theorem unsat_preserves_current_state
    (current : State)
    (buildCandidate :
      ValidatedSatModel cnf frozen → State)
    (certificate : UnsatCertificate cnf)
    (receipt : SatReceipt)
    (status_bound : receipt.status = .unsat) :
    evaluateSat current buildCandidate
        (SatResult.unsat certificate receipt status_bound) =
      .preserved current receipt :=
  rfl

theorem unknown_preserves_current_state
    (current : State)
    (buildCandidate :
      ValidatedSatModel cnf frozen → State)
    (receipt : SatReceipt)
    (status_bound : receipt.status = .unknown) :
    evaluateSat current buildCandidate
        (SatResult.unknown receipt status_bound) =
      .preserved current receipt :=
  rfl

theorem stale_preserves_current_state
    (current : State)
    (buildCandidate :
      ValidatedSatModel cnf frozen → State)
    (receipt : SatReceipt)
    (status_bound : receipt.status = .stale) :
    evaluateSat current buildCandidate
        (SatResult.stale receipt status_bound) =
      .preserved current receipt :=
  rfl

/-- SAT evidence is a contract artifact, never theorem authority. -/
theorem sat_does_not_create_authority :
    Authority.contributesTheoremAuthority
        .contractProposition =
      false :=
  Authority.no_promotion_from_contract

/-- A rendered raster observation is runtime evidence, never theorem authority. -/
theorem raster_does_not_create_authority :
    Authority.contributesTheoremAuthority
        .runtimeObservation =
      false :=
  Authority.no_promotion_from_runtime_trace

end Mathematics.Reactive
