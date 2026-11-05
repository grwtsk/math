import GRWTSK.DynamicalSystemsAndErgodicTheory.EffectSimulation

/-!
# Single-slot transitions with cancellation and exact settlement

Local attribution: grwtsk contributors.

A state has a fixed natural budget, a predecessor, at most one occupied slot,
and a newest-first ledger of settled turns. Identity consists of turn, peer and
predecessor. An external context supplies the admission and terminal-evidence
predicates for each step. This models a slot in a reciprocal transition
interface. Peer alternation and an implementation's evidence checks are
separate hypotheses for a later refinement.

Primary argument. Reservation uses the inequality between the requested
amount and the available budget. Subtracting the amount from available and
holding it in the slot preserves the total. Attempt and reconciliation change
only the slot phase. Cancellation sets a monotone latch and leaves the slot,
phase and budget in place. Exact settlement requires an in-flight slot and
the external evidence predicate. It moves the full reserved amount into
accounted, clears the slot, and prepends its receipt. The amount added to
accounted equals the new receipt's contribution to the ledger sum. The active
turn was fresh, so prepending preserves distinct settled turns. A new
reservation checks both freshness and the updated predecessor. Clean genesis
has an empty ledger and zero accounted. Induction on the existing finite
trace relation extends the invariant and cancellation latch to all declared
steps. The budget bounds amounts. A bound on the number of turns would need
positive charges or a separate count limit.

A second reservation while occupied has contradictory premises. A cancelled
reservation cannot enter the attempted phase. An uncertain attempt preserves
its identity and still requires exact evidence for settlement. These hostile
cases isolate the dispatch and custody obligations. A bound on time to a
terminal observation would require separate liveness hypotheses.

Comparison source at math revision
a731896391a4ad56ddca9628dc2f542385e80558:
`GRWTSK/DynamicalSystemsAndErgodicTheory/EffectSimulation.lean`,
blob `86eff9d85dd24ca42ef9f2bfe0ad25565f323599`, provides `System` and
`Trace`. This instance retains every action and its context in the trace.
`PortFiberBasic.lean` and `PortFiberGeneralObserver.lean` separately supply
typed ports and partial observations. `FramedFiberPort.lean` concerns
linear and stable-object transport. Readout preservation and stuttering
simulation require separate hypotheses.

The consumer receives a budget, identity and cancellation invariant for a
single-slot journal. Actual journal operations, source checks, observations
and remote effects require a separately established refinement. Independent
analytic review, novelty assessment, and runtime refinement are NOT_RUN.
-/

namespace GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.SingleSlotTransitions

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.EffectSimulation
  (Reachable System Trace)

universe u

structure Key (Turn Peer Parent : Type u) where
  turn : Turn
  peer : Peer
  parent : Parent

inductive Phase where
  | reserved
  | attempted
  | reconciling

structure Slot (Turn Peer Parent : Type u) where
  key : Key Turn Peer Parent
  reserved : Nat
  phase : Phase

structure Receipt (Turn Peer Parent : Type u) where
  key : Key Turn Peer Parent
  reserved : Nat
  nextParent : Parent

structure State (Turn Peer Parent : Type u) where
  limit : Nat
  available : Nat
  accounted : Nat
  parent : Parent
  active : Option (Slot Turn Peer Parent)
  terminals : List (Receipt Turn Peer Parent)
  cancelled : Bool

variable {Context Turn Peer Parent : Type u}

def State.held (s : State Turn Peer Parent) : Nat :=
  (s.active.map Slot.reserved).getD 0

def State.terminalTurns (s : State Turn Peer Parent) : List Turn :=
  s.terminals.map fun receipt => receipt.key.turn

def State.terminalReserve (s : State Turn Peer Parent) : Nat :=
  (s.terminals.map Receipt.reserved).sum

def State.Fresh (s : State Turn Peer Parent) (turn : Turn) : Prop :=
  turn ∉ s.terminalTurns

def State.WellFormed (s : State Turn Peer Parent) : Prop :=
  s.available + s.accounted + s.held = s.limit ∧
    s.accounted = s.terminalReserve ∧
    s.terminalTurns.Nodup ∧
    match s.active with
    | none => True
    | some slot => slot.key.parent = s.parent ∧ s.Fresh slot.key.turn

def State.initial (limit : Nat) (parent : Parent) : State Turn Peer Parent :=
  ⟨limit, limit, 0, parent, none, [], false⟩

theorem State.initial_wellFormed (limit : Nat) (parent : Parent) :
    (State.initial (Turn := Turn) (Peer := Peer) limit parent).WellFormed := by
  simp [State.initial, State.WellFormed, State.held, State.terminalTurns, State.terminalReserve]

structure Rules (Context Turn Peer Parent : Type u) where
  admitted : Context → Key Turn Peer Parent → Prop
  terminalEvidence : Context → Slot Turn Peer Parent → Parent → Prop

inductive Action (Turn Peer Parent : Type u) where
  | reserve (key : Key Turn Peer Parent) (amount : Nat)
  | attempt (key : Key Turn Peer Parent)
  | uncertain (key : Key Turn Peer Parent)
  | cancel
  | terminal (key : Key Turn Peer Parent) (nextParent : Parent)

inductive Step (rules : Rules Context Turn Peer Parent) (ctx : Context) :
    State Turn Peer Parent → Action Turn Peer Parent → State Turn Peer Parent → Prop where
  | reserve (s : State Turn Peer Parent) (key : Key Turn Peer Parent) (amount : Nat)
      (empty : s.active = none) (live : s.cancelled = false)
      (parent : key.parent = s.parent) (fresh : s.Fresh key.turn)
      (admission : rules.admitted ctx key) (affordable : amount ≤ s.available) :
      Step rules ctx s (.reserve key amount)
        { s with available := s.available - amount, active := some ⟨key, amount, .reserved⟩ }
  | attempt (s : State Turn Peer Parent) (slot : Slot Turn Peer Parent)
      (owned : s.active = some slot) (reserved : slot.phase = .reserved)
      (live : s.cancelled = false) (admission : rules.admitted ctx slot.key) :
      Step rules ctx s (.attempt slot.key)
        { s with active := some { slot with phase := .attempted } }
  | uncertain (s : State Turn Peer Parent) (slot : Slot Turn Peer Parent)
      (owned : s.active = some slot) (attempted : slot.phase = .attempted) :
      Step rules ctx s (.uncertain slot.key)
        { s with active := some { slot with phase := .reconciling } }
  | cancel (s : State Turn Peer Parent) :
      Step rules ctx s .cancel { s with cancelled := true }
  | terminal (s : State Turn Peer Parent) (slot : Slot Turn Peer Parent) (next : Parent)
      (owned : s.active = some slot)
      (inFlight : slot.phase = .attempted ∨ slot.phase = .reconciling)
      (evidence : rules.terminalEvidence ctx slot next) :
      Step rules ctx s (.terminal slot.key next)
        { s with
          accounted := s.accounted + slot.reserved
          parent := next
          active := none
          terminals := ⟨slot.key, slot.reserved, next⟩ :: s.terminals }

variable {rules : Rules Context Turn Peer Parent} {ctx : Context}
  {s t : State Turn Peer Parent} {action : Action Turn Peer Parent}

theorem Step.preserves_wellFormed (step : Step rules ctx s action t) :
    s.WellFormed → t.WellFormed := by
  intro valid
  obtain ⟨budget, ledger, distinct, active⟩ := valid
  cases step with
  | reserve key amount empty live parent fresh admission affordable =>
      refine ⟨?_, ledger, distinct, ⟨parent, fresh⟩⟩
      simp [State.held, empty] at budget
      simp [State.held]
      omega
  | attempt slot owned reserved live admission =>
      exact ⟨by simpa [State.held, owned] using budget, ledger, distinct,
        by simpa [State.Fresh, State.terminalTurns, owned] using active⟩
  | uncertain slot owned attempted =>
      exact ⟨by simpa [State.held, owned] using budget, ledger, distinct,
        by simpa [State.Fresh, State.terminalTurns, owned] using active⟩
  | cancel => exact ⟨budget, ledger, distinct, active⟩
  | terminal slot next owned inFlight evidence =>
      have fresh : s.Fresh slot.key.turn := (by simpa [owned] using active :
        slot.key.parent = s.parent ∧ s.Fresh slot.key.turn).2
      refine ⟨?_, ?_, ?_, trivial⟩
      · simpa [State.held, owned, Nat.add_assoc] using budget
      · change s.accounted + slot.reserved = slot.reserved + s.terminalReserve
        rw [ledger, Nat.add_comm]
      · exact List.nodup_cons.mpr ⟨fresh, distinct⟩

theorem Step.reserve_preconditions {key : Key Turn Peer Parent} {amount : Nat}
    (step : Step rules ctx s (.reserve key amount) t) :
    s.active = none ∧ s.cancelled = false ∧ key.parent = s.parent ∧
      s.Fresh key.turn ∧ rules.admitted ctx key ∧ amount ≤ s.available := by
  cases step with
  | reserve _ _ empty live parent fresh admission affordable =>
      exact ⟨empty, live, parent, fresh, admission, affordable⟩

theorem Step.attempt_preconditions {key : Key Turn Peer Parent}
    (step : Step rules ctx s (.attempt key) t) :
    s.cancelled = false ∧ rules.admitted ctx key ∧
      ∃ slot, s.active = some slot ∧ slot.key = key ∧ slot.phase = .reserved := by
  cases step with
  | attempt slot owned reserved live admission =>
      exact ⟨live, admission, slot, owned, rfl, reserved⟩

theorem Step.cancel_retains_slot (step : Step rules ctx s .cancel t) :
    t.active = s.active ∧ t.available = s.available ∧
      t.accounted = s.accounted ∧ t.cancelled = true := by
  cases step
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem Step.cancellation_latched (step : Step rules ctx s action t)
    (cancelled : s.cancelled = true) : t.cancelled = true := by
  cases step <;> simp_all

theorem Step.uncertain_retains_slot {key : Key Turn Peer Parent}
    (step : Step rules ctx s (.uncertain key) t) :
    ∃ slot, s.active = some slot ∧ slot.key = key ∧
      t.active = some { slot with phase := .reconciling } := by
  cases step with
  | uncertain slot owned _ => exact ⟨slot, owned, rfl, rfl⟩

theorem Step.terminal_preconditions {key : Key Turn Peer Parent} {next : Parent}
    (step : Step rules ctx s (.terminal key next) t) :
    ∃ slot, s.active = some slot ∧ slot.key = key ∧
      (slot.phase = .attempted ∨ slot.phase = .reconciling) ∧
      rules.terminalEvidence ctx slot next := by
  cases step with
  | terminal slot _ owned inFlight evidence =>
      exact ⟨slot, owned, rfl, inFlight, evidence⟩

def system (rules : Rules Context Turn Peer Parent) :
    System (State Turn Peer Parent) (Context × Action Turn Peer Parent) where
  initial s := ∃ limit parent, s = State.initial limit parent
  step s label t := Step rules label.1 s label.2 t

theorem trace_preserves_wellFormed {labels : List (Context × Action Turn Peer Parent)}
    (trace : Trace (system rules) s labels t) : s.WellFormed → t.WellFormed := by
  induction trace with
  | nil => exact id
  | cons step _ ih => exact fun valid => ih (Step.preserves_wellFormed step valid)

theorem reachable_wellFormed (reachable : Reachable (system rules) t) : t.WellFormed := by
  obtain ⟨start, labels, initial, trace⟩ := reachable
  obtain ⟨limit, parent, rfl⟩ := initial
  exact trace_preserves_wellFormed trace (State.initial_wellFormed limit parent)

theorem trace_cancellation_latched {labels : List (Context × Action Turn Peer Parent)}
    (trace : Trace (system rules) s labels t) : s.cancelled = true → t.cancelled = true := by
  induction trace with
  | nil => exact id
  | cons step _ ih => exact fun cancelled => ih (Step.cancellation_latched step cancelled)

end GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.SingleSlotTransitions
