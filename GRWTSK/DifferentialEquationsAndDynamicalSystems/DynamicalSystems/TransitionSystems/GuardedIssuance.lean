import GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.EffectSimulation

/-!
# Guarded issuance with durable uncertainty and ordered follow-ups

Local attribution: grwtsk contributors.

This is a one-conversation policy machine. Occurrence numbers identify observed
turn occurrences, not text hashes. An issuance atomically records the occurrence
and an outstanding exact request before an external transport may act. There is
no timeout-to-ready transition. Readback clears the outstanding request; changing
the cooperative owner preserves it. A trace cannot issue an occurrence twice.

The model records guards and exact payload/claim identities, but does not prove
that browser observations are true, storage is atomic, other senders cooperate,
or the transport executes once. An acknowledge event asserts exact readback;
its truth is a runtime evidence obligation, not established by ledger equality.
A deployment must prove a label-preserving
simulation and a policy bridge using `EffectSimulation`. The local machine has
no fairness or eventual-delivery theorem. Crash-before-send may lose progress.

The scope is the common safety kernel of browser continuation and native relay
skills. Different conversations require disjoint ledgers or a proved shared
serialization mechanism; arbitrary concurrent files do not supply that proof.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.GuardedIssuance

open EffectSimulation

inductive Phase where
  | ordinary
  | connections
  | formalization
  deriving DecidableEq, Repr

inductive Reply where
  | advance
  | askConnections
  | formalize
  | directive
  deriving DecidableEq, Repr

/-- The obstruction cycle cannot be overtaken by an ordinary continuation. -/
def Allowed : Phase → Reply → Prop
  | .ordinary, .advance => True
  | .ordinary, .askConnections => True
  | .connections, .formalize => True
  | .formalization, .advance => True
  | _, .directive => True
  | _, _ => False

/-- Phases change on acknowledged delivery, never on a mere send attempt. -/
def nextPhase (phase : Phase) : Reply → Phase
  | .askConnections => .connections
  | .formalize => .formalization
  | .advance => .ordinary
  | .directive => phase

structure Request where
  occurrence : Nat
  destination : Nat
  claim : Nat
  body : String
  reply : Reply
  deriving DecidableEq, Repr

structure Observation where
  currentIdentity : Bool
  withinHumanScope : Bool
  currentMembership : Bool
  completionEvidence : Bool
  generationIdle : Bool
  composerEmpty : Bool
  deriving DecidableEq, Repr

/-- These are recorded observations, whose correspondence to reality is external. -/
def Ready (o : Observation) : Prop :=
  o.currentIdentity = true ∧ o.withinHumanScope = true ∧
  o.currentMembership = true ∧ o.completionEvidence = true ∧
  o.generationIdle = true ∧ o.composerEmpty = true

structure State where
  attempted : List Nat
  outstanding : Option Request
  phase : Phase
  owner : Nat
  deriving Repr

def initial (owner : Nat) : State := ⟨[], none, .ordinary, owner⟩

inductive Event where
  | issue (request : Request) (observation : Observation)
  | acknowledge (request : Request)
  | transfer (newOwner : Nat)
  | observe
  deriving DecidableEq, Repr

/-- The supplied authorization predicate binds the complete request, including
destination/body. Token equality is cooperative ownership, not external fencing. -/
inductive Step (authorized : Request → Prop) (wireBody : Request → String) :
    State → Event → State → Prop where
  | issue {s r o}
      (authority : authorized r) (body : r.body = wireBody r)
      (owner : r.claim = s.owner) (ready : Ready o)
      (idle : s.outstanding = none) (fresh : r.occurrence ∉ s.attempted)
      (ordered : Allowed s.phase r.reply) :
      Step authorized wireBody s (.issue r o)
        { s with attempted := r.occurrence :: s.attempted, outstanding := some r }
  | acknowledge {s r}
      (bound : s.outstanding = some r) :
      Step authorized wireBody s (.acknowledge r)
        { s with outstanding := none, phase := nextPhase s.phase r.reply }
  | transfer (s : State) (newOwner : Nat) :
      Step authorized wireBody s (.transfer newOwner) { s with owner := newOwner }
  | observe (s : State) : Step authorized wireBody s .observe s

def system (authorized : Request → Prop) (wireBody : Request → String) :
    System State Event where
  initial s := ∃ owner, s = initial owner
  step := Step authorized wireBody

theorem issue_guards {authorized wireBody s t r o}
    (step : Step authorized wireBody s (.issue r o) t) :
    authorized r ∧ r.body = wireBody r ∧ r.claim = s.owner ∧ Ready o ∧
    s.outstanding = none ∧ r.occurrence ∉ s.attempted ∧ Allowed s.phase r.reply := by
  cases step with
  | issue authority body owner ready idle fresh ordered =>
      exact ⟨authority, body, owner, ready, idle, fresh, ordered⟩

theorem outstanding_blocks_issue {authorized wireBody s t r o pending}
    (uncertain : s.outstanding = some pending) :
    ¬ Step authorized wireBody s (.issue r o) t := by
  intro step
  have idle := (issue_guards step).2.2.2.2.1
  rw [uncertain] at idle
  cases idle

theorem prior_occurrence_blocks_issue {authorized wireBody s t r o}
    (prior : r.occurrence ∈ s.attempted) :
    ¬ Step authorized wireBody s (.issue r o) t := by
  intro step
  exact (issue_guards step).2.2.2.2.2.1 prior

theorem draft_blocks_issue {authorized wireBody s t r o}
    (draft : o.composerEmpty = false) :
    ¬ Step authorized wireBody s (.issue r o) t := by
  intro step
  have empty := (issue_guards step).2.2.2.1.2.2.2.2.2
  rw [draft] at empty
  cases empty

theorem connections_blocks_ordinary {authorized wireBody s t r o}
    (phase : s.phase = .connections) (reply : r.reply = .advance) :
    ¬ Step authorized wireBody s (.issue r o) t := by
  intro step
  have ordered := (issue_guards step).2.2.2.2.2.2
  simpa [phase, reply, Allowed] using ordered

theorem issue_preserves_phase {authorized wireBody s t r o}
    (step : Step authorized wireBody s (.issue r o) t) : t.phase = s.phase := by
  cases step
  rfl

theorem acknowledgment_exact_request {authorized wireBody s t r}
    (step : Step authorized wireBody s (.acknowledge r) t) :
    s.outstanding = some r ∧ t.phase = nextPhase s.phase r.reply := by
  cases step with
  | acknowledge bound => exact ⟨bound, rfl⟩

theorem transfer_preserves_uncertainty {authorized wireBody s t owner}
    (step : Step authorized wireBody s (.transfer owner) t) :
    t.outstanding = s.outstanding ∧ t.attempted = s.attempted ∧ t.phase = s.phase := by
  cases step
  exact ⟨rfl, rfl, rfl⟩

/-- Every reachable state has a duplicate-free issuance ledger. -/
theorem step_preserves_nodup {authorized wireBody s t event}
    (step : Step authorized wireBody s event t) (unique : s.attempted.Nodup) :
    t.attempted.Nodup := by
  cases step with
  | issue authority body owner ready idle fresh ordered =>
      exact List.nodup_cons.mpr ⟨fresh, unique⟩
  | acknowledge bound => exact unique
  | transfer => exact unique
  | observe => exact unique

theorem trace_preserves_nodup {authorized wireBody s t events}
    (trace : Trace (system authorized wireBody) s events t)
    (unique : s.attempted.Nodup) : t.attempted.Nodup := by
  revert unique
  induction trace with
  | nil => intro unique; exact unique
  | cons first rest ih =>
      intro unique
      exact ih (step_preserves_nodup first unique)

/-- Reverse chronological list of occurrence IDs on effect labels. -/
def issuedKeys : List Event → List Nat
  | [] => []
  | .issue r _ :: rest => issuedKeys rest ++ [r.occurrence]
  | _ :: rest => issuedKeys rest

theorem trace_ledger_exact {authorized wireBody s t events}
    (trace : Trace (system authorized wireBody) s events t) :
    t.attempted = issuedKeys events ++ s.attempted := by
  induction trace with
  | nil => rfl
  | cons first rest ih =>
      cases first <;> simp_all [issuedKeys, List.append_assoc]

/-- Safety concerns actual model effect labels, not just a separately clean log. -/
theorem trace_no_duplicate_issuance {authorized wireBody owner t events}
    (trace : Trace (system authorized wireBody) (initial owner) events t) :
    (issuedKeys events).Nodup := by
  have unique := trace_preserves_nodup trace (by simp [initial])
  rw [trace_ledger_exact trace] at unique
  simpa [initial] using unique

def isIssue : Event → Prop
  | .issue _ _ => True
  | _ => False

def issuePolicy (authorized : Request → Prop) (wireBody : Request → String)
    (s : State) (event : Event) (_t : State) : Prop :=
  match event with
  | .issue r o => authorized r ∧ r.body = wireBody r ∧ r.claim = s.owner ∧ Ready o ∧
      s.outstanding = none ∧ r.occurrence ∉ s.attempted ∧ Allowed s.phase r.reply
  | _ => True

theorem modeled_effects_safe (authorized : Request → Prop)
    (wireBody : Request → String) :
    EffectsSafe (system authorized wireBody) isIssue (issuePolicy authorized wireBody) := by
  intro s event t _reachable step _effect
  cases step with
  | issue authority body owner ready idle fresh ordered =>
      exact ⟨authority, body, owner, ready, idle, fresh, ordered⟩
  | acknowledge => trivial
  | transfer => trivial
  | observe => trivial

/-- Runtime safety requires the existing independent simulation/policy bridge. -/
theorem refined_effects_safe {Concrete : Type} {concrete : System Concrete Event}
    {authorized wireBody} {related : Concrete → State → Prop}
    {policy : Concrete → Event → Concrete → Prop}
    (simulation : Simulation concrete (system authorized wireBody) related)
    (bridge : PolicyBridge concrete (system authorized wireBody) related
      policy (issuePolicy authorized wireBody)) :
    EffectsSafe concrete isIssue policy :=
  simulation.transfers_effect_safety bridge (modeled_effects_safe authorized wireBody)

/-- Nonvacuity: a guarded authorized request has an actual issuance transition. -/
theorem initial_issue_exists (r : Request) (o : Observation)
    (ready : Ready o) (reply : r.reply = .advance) :
    ∃ t, Step (fun _ => True) Request.body (initial r.claim) (.issue r o) t := by
  refine ⟨_, Step.issue trivial rfl rfl ready rfl ?_ ?_⟩
  · simp [initial]
  · simp [initial, reply, Allowed]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.GuardedIssuance
