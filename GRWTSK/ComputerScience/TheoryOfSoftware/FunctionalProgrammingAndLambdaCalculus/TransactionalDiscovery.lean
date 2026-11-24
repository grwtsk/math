import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.StateTraceCost
import GRWTSK.Combinatorics.GraphTheory.CheckedApplicationSoficBridge
import GRWTSK.Combinatorics.ResourceAttainability

/-!
# Pure transactional growth with exact contextual proof obligations

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A10).
SOURCE_PROOF_CANDIDATE. Parsing, compilation, exact-type checks, fresh kernel
replay, transitive axiom audit and independent review: NOT_RUN.

Reuse StateTraceComposition, StateTraceCost, InstantiatedApplication,
CheckedApplicationSoficBridge, and ResourceAttainability at
a7d1f0217b0568053af7e52d0d1ee810d6eb1134. The fixed policy is a mathematical
parameter: graph, observation, registry, admitted environment and typed
judgment interpretation have explicit obligations. No proof of Lean's
consistency or authentication of a worker's proof object is implied.
The protected adapter must instantiate these suppliers; this module has no
MetaM, IO, scheduler or candidate execution. Prop proof irrelevance is not
byte-level proof identity. Growth is append-only and one attempt is atomic.
A failure after a prior committed attempt does not undo that prior commit.
Serial charge is additive only for work and elapsed time; absolute storage
and resident high-water measurements include old/new state and all workers.
Externally observed overruns are refinement failures, never successful
bounded transitions; an operational adapter must still retain their charge.
-/

set_option autoImplicit false

namespace GRWTSK.Processing.TransactionalDiscovery

open GRWTSK.Processing
open GRWTSK.Processing.StateTrace.Resource
open GRWTSK.ResourceAttainability
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge

universe u v w x y z
variable {J : Type u} {Meaning : J → Prop}
variable {G : Type v} {Reg : Type w} {Env : Type x} {Obs : Type y}

/-- At instantiation these components must contain the full telescope, full
statement and protected declaration identity, not pretty-printed names. -/
structure ContextualTarget (Ctx : Type u) (Statement : Type v) (Identity : Type w) where
  context : Ctx
  statement : Statement
  identity : Identity

structure Core (J : Type u) (Meaning : J → Prop)
    (G : Type v) (Reg : Type w) (Env : Type x) where
  graph : G
  facts : List (InstantiatedFact J Meaning)
  targets : Set J
  registry : Reg
  environment : Env

/-- Fixed for an epoch. The admission and environment-extension suppliers
must be justified by the actual protected checker; not an arbitrary
per-proposal field claiming validity. Rules are genuine typed applications. -/
structure Policy (J : Type u) (Meaning : J → Prop)
    (G : Type v) (Reg : Type w) (Env : Type x) (Obs : Type y) where
  rules : List (InstantiatedApplication J Meaning)
  branchOK : J → Rule J → Prop
  graphOK : G → Prop
  behavior : G → Obs
  realizationOK : G → Reg → Prop
  admitted : Env → InstantiatedFact J Meaning → Prop
  extendsEnv : Env → Env → Prop
  admissionMono : ∀ e e' f, extendsEnv e e' → admitted e f → admitted e' f
  stored : Core J Meaning G Reg Env → Nat
  resident : Core J Meaning G Reg Env → Nat

def Known (c : Core J Meaning G Reg Env) (p : J) : Prop :=
  p ∈ eraseFacts c.facts

def Pending (c : Core J Meaning G Reg Env) (p : J) : Prop :=
  p ∈ c.targets ∧ ¬ Known c p

def Deductive (P : Policy J Meaning G Reg Env Obs) (c : Core J Meaning G Reg Env)
    (p : J) : Prop :=
  Derivable (fun r => r ∈ eraseApplications P.rules) (Known c) p

theorem deductive_sound (P : Policy J Meaning G Reg Env Obs)
    (c : Core J Meaning G Reg Env) {p : J} (h : Deductive P c p) : Meaning p :=
  erasedDerivable_sound P.rules c.facts h

structure CoreSafe (P : Policy J Meaning G Reg Env Obs)
    (c : Core J Meaning G Reg Env) : Prop where
  graph : P.graphOK c.graph
  realizations : P.realizationOK c.graph c.registry
  facts : ∀ f, f ∈ c.facts → P.admitted c.environment f

/-- The exact target atom, not merely an equal proposition or identifier
substring, has an admitted fact in this state. -/
theorem known_iff_admitted_fact (P : Policy J Meaning G Reg Env Obs)
    (c : Core J Meaning G Reg Env) (safe : CoreSafe P c) (p : J) :
    Known c p ↔ ∃ f, f ∈ c.facts ∧ f.atom = p ∧ P.admitted c.environment f := by
  constructor
  · intro h
    obtain ⟨f, hf, he⟩ := (mem_eraseFacts_iff c.facts p).mp h
    exact ⟨f, hf, he, safe.facts f hf⟩
  · rintro ⟨f, hf, he, _⟩
    exact (mem_eraseFacts_iff c.facts p).mpr ⟨f, hf, he⟩

/-- Choose one protected OR branch; discharge ALL its AND premises using
finite derivations over the prior accepted facts. Zero premises require the
actual consequence term, and an unsupported cycle cannot supply a premise.
This produces a proof-bearing candidate fact, not protected admission. -/
def reconstruct (P : Policy J Meaning G Reg Env Obs) (c : Core J Meaning G Reg Env)
    (q : J) (expected : Rule J) (app : InstantiatedApplication J Meaning)
    (_registered : app ∈ P.rules) («matches» : app.rule = expected)
    (target : expected.conclusion = q)
    (premises : ∀ p, p ∈ expected.premises → Deductive P c p) :
    InstantiatedFact J Meaning where
  sourceClaim := app.sourceClaim
  atom := q
  evidence := by
    have h : Meaning app.rule.conclusion := app.consequence (by
      intro p hp
      apply deductive_sound P c
      apply premises p
      simpa only [«matches»] using hp)
    rw [«matches», target] at h
    exact h

/-- Bind the same exact target to the certified lower sofic edge, never to
a candidate/admissible-only edge. The quantitative allowance remains the
separate obligation of the imported certified word. -/
theorem checked_edge_exact {V : Type v} {L : Type w}
    (A : CheckedApplicationSystem J Meaning V L)
    {source target : V} {label : L}
    (edge : A.quantitative.sandwich.lower source label target)
    (q : J) (same : (A.expectedRule source label target).conclusion = q) :
    Meaning q := by
  have h := certified_edge_proves_conclusion A edge
  simpa only [same] using h

/-- A selected OR alternative, with a specific conjunctive rule and target. -/
structure SelectedBranch (J : Type u) where
  target : J
  rule : Rule J

structure Delta (J : Type u) (Meaning : J → Prop)
    (G : Type v) (Reg : Type w) (Env : Type x) where
  graph : G
  added : List (InstantiatedFact J Meaning)
  branches : List (SelectedBranch J)
  newTargets : Set J
  registry : Reg
  environment : Env
  solved : Bool

def applyDelta (c : Core J Meaning G Reg Env) (d : Delta J Meaning G Reg Env) :
    Core J Meaning G Reg Env where
  graph := d.graph
  facts := c.facts ++ d.added
  targets := c.targets ∪ d.newTargets
  registry := d.registry
  environment := d.environment

/-- A proposal cannot write a proof field containing only an unspecified
Prop. Each predicate is evaluated at the actual old/new data under P. -/
structure ValidDelta (P : Policy J Meaning G Reg Env Obs)
    (c : Core J Meaning G Reg Env) (q : J) (d : Delta J Meaning G Reg Env) : Prop where
  requested : Pending c q
  env : P.extendsEnv c.environment d.environment
  graph : P.graphOK d.graph
  behavior : P.behavior d.graph = P.behavior c.graph
  realizations : P.realizationOK d.graph d.registry
  newAdmitted : ∀ f, f ∈ d.added → P.admitted d.environment f
  /-- Every reported branch carries the actual reconstructed fact into this
  same atomic delta. The exact choice is checked against the epoch policy. -/
  branchesChecked : ∀ b, b ∈ d.branches →
    P.branchOK b.target b.rule ∧
    ∃ app : InstantiatedApplication J Meaning,
      ∃ hr : app ∈ P.rules, ∃ hm : app.rule = b.rule,
      ∃ ht : b.rule.conclusion = b.target,
      ∃ hp : (∀ p, p ∈ b.rule.premises → Deductive P c p),
        reconstruct P c b.target b.rule app hr hm ht hp ∈ d.added
  report : d.solved = true ↔ Known (applyDelta c d) q

theorem delta_core_safe (P : Policy J Meaning G Reg Env Obs)
    {c : Core J Meaning G Reg Env} {q : J} {d : Delta J Meaning G Reg Env}
    (h : CoreSafe P c) (hd : ValidDelta P c q d) : CoreSafe P (applyDelta c d) := by
  refine ⟨hd.graph, hd.realizations, ?_⟩
  intro f hf
  change f ∈ c.facts ++ d.added at hf
  rcases List.mem_append.mp hf with hold | hnew
  · exact P.admissionMono _ _ _ hd.env (h.facts f hold)
  · exact hd.newAdmitted f hnew

theorem delta_known_mono (c : Core J Meaning G Reg Env)
    (d : Delta J Meaning G Reg Env) {p : J} (h : Known c p) :
    Known (applyDelta c d) p := by
  obtain ⟨f, hf, he⟩ := (mem_eraseFacts_iff c.facts p).mp h
  exact (mem_eraseFacts_iff (applyDelta c d).facts p).mpr
    ⟨f, List.mem_append.mpr (Or.inl hf), he⟩

theorem delta_deductive_mono (P : Policy J Meaning G Reg Env Obs)
    (c : Core J Meaning G Reg Env) (d : Delta J Meaning G Reg Env)
    {p : J} (h : Deductive P c p) : Deductive P (applyDelta c d) p := by
  apply derivable_mono (rules := fun r => r ∈ eraseApplications P.rules)
    (rules' := fun r => r ∈ eraseApplications P.rules)
    (facts := Known c) (facts' := Known (applyDelta c d)) _ _ h
  · intro r hr
    exact hr
  · intro atom known
    exact delta_known_mono c d known

theorem delta_target_exact (P : Policy J Meaning G Reg Env Obs)
    {c : Core J Meaning G Reg Env} {q : J} {d : Delta J Meaning G Reg Env}
    (h : CoreSafe P c) (hd : ValidDelta P c q d) :
    d.solved = true ↔ ∃ f, f ∈ (applyDelta c d).facts ∧ f.atom = q ∧
      P.admitted d.environment f :=
  hd.report.trans (known_iff_admitted_fact P _ (delta_core_safe P h hd) q)

theorem delta_pending_iff (c : Core J Meaning G Reg Env)
    (d : Delta J Meaning G Reg Env) (p : J) :
    Pending (applyDelta c d) p ↔
      (p ∈ c.targets ∨ p ∈ d.newTargets) ∧ ¬ Known (applyDelta c d) p := Iff.rfl

theorem selected_branch_admitted (P : Policy J Meaning G Reg Env Obs)
    {c : Core J Meaning G Reg Env} {q : J} {d : Delta J Meaning G Reg Env}
    (hd : ValidDelta P c q d) (b : SelectedBranch J) (hb : b ∈ d.branches) :
    Meaning b.target ∧ ∃ f, f ∈ d.added ∧ f.atom = b.target ∧
      P.admitted d.environment f := by
  obtain ⟨_, app, hr, hm, ht, hp, hf⟩ := hd.branchesChecked b hb
  let f := reconstruct P c b.target b.rule app hr hm ht hp
  exact ⟨f.evidence, f, hf, rfl, hd.newAdmitted f hf⟩

/-- An equal interpretation does not identify two distinct contextual keys. -/
theorem singleton_fact_exact (f : InstantiatedFact J Meaning) (q : J) :
    q ∈ eraseFacts [f] ↔ q = f.atom := by
  simp [eraseFacts]

inductive Refusal where
  | missingTarget | reservationDenied | invalidCandidate | drift | cancelled

inductive Failure where
  | operational | exhausted

structure Charge where
  storedPeak : Nat
  work : Nat
  residentPeak : Nat
  elapsed : Nat

structure Event (J : Type u) where
  request : J
  outcome : Outcome Refusal Failure Bool
  charge : Charge

structure State (J : Type u) (Meaning : J → Prop)
    (G : Type v) (Reg : Type w) (Env : Type x) where
  core : Core J Meaning G Reg Env
  trace : List (Event J)

abbrev workCharge (e : Event J) : Nat := e.charge.work
abbrev timeCharge (e : Event J) : Nat := e.charge.elapsed

def Safe (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (s : State J Meaning G Reg Env) : Prop :=
  CoreSafe P s.core ∧ P.stored s.core ≤ cap 0 ∧ P.resident s.core ≤ cap 2 ∧
  cost workCharge s.trace ≤ cap 1 ∧ cost timeCharge s.trace ≤ cap 3 ∧
  ∀ e, e ∈ s.trace → e.charge.storedPeak ≤ cap 0 ∧ e.charge.residentPeak ≤ cap 2

/-- Absolute peaks, not additive space. Work and elapsed time are serial.
Both endpoints, including unchanged rejected state, must fit the actual
attempt envelope. A separate reservation/refinement must supply peaks. -/
def Fits (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (s : State J Meaning G Reg Env) (c : Core J Meaning G Reg Env)
    (a : Charge) : Prop :=
  P.stored s.core ≤ a.storedPeak ∧ P.stored c ≤ a.storedPeak ∧
  P.resident s.core ≤ a.residentPeak ∧ P.resident c ≤ a.residentPeak ∧
  a.storedPeak ≤ cap 0 ∧ a.residentPeak ≤ cap 2 ∧
  cost workCharge s.trace + a.work ≤ cap 1 ∧
  cost timeCharge s.trace + a.elapsed ≤ cap 3

/-- Reservation is absolute B/S and remaining serial W/T. A qualifying
commit must fit its reservation as well as the actual measured envelope. -/
def ReservationFits (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (s : State J Meaning G Reg Env) (r : ResourceVec) : Prop :=
  r ≤ cap ∧ P.stored s.core ≤ r 0 ∧ P.resident s.core ≤ r 2 ∧
  cost workCharge s.trace + r 1 ≤ cap 1 ∧ cost timeCharge s.trace + r 3 ≤ cap 3

def ChargeWithin (a : Charge) (r : ResourceVec) : Prop :=
  a.storedPeak ≤ r 0 ∧ a.work ≤ r 1 ∧ a.residentPeak ≤ r 2 ∧ a.elapsed ≤ r 3

abbrev AttemptResult (J : Type u) (Meaning : J → Prop)
    (G : Type v) (Reg : Type w) (Env : Type x) :=
  StateTrace.Result Refusal Failure (State J Meaning G Reg Env) (Event J) Bool

def finish (s : State J Meaning G Reg Env) (c : Core J Meaning G Reg Env)
    (q : J) (o : Outcome Refusal Failure Bool) (a : Charge) :
    AttemptResult J Meaning G Reg Env :=
  ⟨o, ⟨c, s.trace ++ [⟨q, o, a⟩]⟩, [⟨q, o, a⟩]⟩

/-- Valid commit or trace-only rejection. The result is determined by the
constructor, not freely supplied as a second, potentially inconsistent state. -/
inductive Step (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (q : J) (s : State J Meaning G Reg Env) : AttemptResult J Meaning G Reg Env → Prop where
  | commit (d : Delta J Meaning G Reg Env) (a : Charge)
      (reservation : ResourceVec) (reserved : ReservationFits P cap s reservation)
      (within : ChargeWithin a reservation)
      (valid : ValidDelta P s.core q d)
      (fits : Fits P cap s (applyDelta s.core d) a) :
      Step P cap q s (finish s (applyDelta s.core d) q (.success d.solved) a)
  | refused (reason : Refusal) (a : Charge) (fits : Fits P cap s s.core a) :
      Step P cap q s (finish s s.core q (.refused reason) a)
  | failed (error : Failure) (a : Charge) (fits : Fits P cap s s.core a) :
      Step P cap q s (finish s s.core q (.failed error) a)

theorem finish_safe (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (s : State J Meaning G Reg Env) (c : Core J Meaning G Reg Env)
    (q : J) (o : Outcome Refusal Failure Bool) (a : Charge)
    (h : Safe P cap s) (hc : CoreSafe P c) (hf : Fits P cap s c a) :
    Safe P cap (finish s c q o a).state := by
  rcases hf with ⟨_, hb, _, hs, hbcap, hscap, hw, ht⟩
  refine ⟨hc, le_trans hb hbcap, le_trans hs hscap, ?_, ?_, ?_⟩
  · simpa [finish, cost_append, cost] using hw
  · simpa [finish, cost_append, cost] using ht
  · intro e he
    change e ∈ s.trace ++ [⟨q, o, a⟩] at he
    rcases List.mem_append.mp he with hold | hnew
    · exact h.2.2.2.2.2 e hold
    · have same : e = (⟨q, o, a⟩ : Event J) := List.mem_singleton.mp hnew
      subst e
      exact ⟨hbcap, hscap⟩

theorem step_safe (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (h : Safe P cap s) (step : Step P cap q s r) : Safe P cap r.state := by
  cases step with
  | commit d a reservation reserved within valid fits => exact finish_safe P cap s _ q _ a h (delta_core_safe P h.1 valid) fits
  | refused reason a fits => exact finish_safe P cap s _ q _ a h h.1 fits
  | failed error a fits => exact finish_safe P cap s _ q _ a h h.1 fits

theorem step_behavior (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (step : Step P cap q s r) : P.behavior r.state.core.graph = P.behavior s.core.graph := by
  cases step with
  | commit d a reservation reserved within valid fits => exact valid.behavior
  | refused reason a fits => rfl
  | failed error a fits => rfl

theorem step_deductive_mono (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q p : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (step : Step P cap q s r) (h : Deductive P s.core p) : Deductive P r.state.core p := by
  cases step with
  | commit d a reservation reserved within valid fits => exact delta_deductive_mono P s.core d h
  | refused reason a fits => exact h
  | failed error a fits => exact h

theorem step_rejection_atomic (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (step : Step P cap q s r) (stopped : ∀ b, r.outcome ≠ .success b) :
    r.state.core = s.core := by
  cases step with
  | commit d a reservation reserved within valid fits => exact False.elim (stopped d.solved rfl)
  | refused reason a fits => rfl
  | failed error a fits => rfl

theorem step_trace (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (step : Step P cap q s r) : r.state.trace = s.trace ++ r.events := by
  cases step <;> rfl

theorem step_charge_exact (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (step : Step P cap q s r) :
    cost workCharge r.state.trace = cost workCharge s.trace + cost workCharge r.events ∧
    cost timeCharge r.state.trace = cost timeCharge s.trace + cost timeCharge r.events := by
  constructor <;> rw [step_trace P cap step, cost_append]

/-- No refund on either outcome, including actual work before a rejection. -/
theorem step_no_refund (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (step : Step P cap q s r) :
    cost workCharge s.trace ≤ cost workCharge r.state.trace ∧
    cost timeCharge s.trace ≤ cost timeCharge r.state.trace := by
  have hp : ∃ suffix, r.state.trace = s.trace ++ suffix :=
    ⟨r.events, step_trace P cap step⟩
  exact ⟨prefix_cost workCharge hp, prefix_cost timeCharge hp⟩

theorem step_success_exact (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (h : Safe P cap s) (step : Step P cap q s r) (ok : r.outcome = .success true) :
    ∃ f, f ∈ r.state.core.facts ∧ f.atom = q ∧ P.admitted r.state.core.environment f := by
  cases step with
  | commit d a reservation reserved within valid fits =>
    apply (delta_target_exact P h.1 valid).mp
    exact Outcome.success.inj ok
  | refused reason a fits => cases ok
  | failed error a fits => cases ok

/-- A total stage may be qualified only by supplying a Step for every safe
input. The imported composition law transports safety at the attained state. -/
abbrev AttemptStage (J : Type u) (Meaning : J → Prop)
    (G : Type v) (Reg : Type w) (Env : Type x) :=
  StateTrace.Stage Refusal Failure (State J Meaning G Reg Env) (Event J) J Bool

def Qualified (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (stage : AttemptStage J Meaning G Reg Env) : Prop :=
  ∀ q s, Safe P cap s → Step P cap q s (stage q s)

theorem qualified_preserves (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (stage : AttemptStage J Meaning G Reg Env) (h : Qualified P cap stage) :
    StateTrace.Preserves (Safe P cap) stage :=
  fun q s hs => step_safe P cap hs (h q s hs)

theorem qualified_bind_accounting
    (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (first : AttemptStage J Meaning G Reg Env)
    (next : Bool → State J Meaning G Reg Env → AttemptResult J Meaning G Reg Env)
    (hf : Qualified P cap first) (hn : StateTrace.Preserves (Safe P cap) next)
    (q : J) (s : State J Meaning G Reg Env) (hs : Safe P cap s) :
    Safe P cap (StateTrace.bind (first q s) next).state ∧
    (∃ suffix, (StateTrace.bind (first q s) next).events = (first q s).events ++ suffix) ∧
    cost workCharge (first q s).events ≤ cost workCharge (StateTrace.bind (first q s) next).events :=
  ⟨StateTrace.preserves_sequence (Safe P cap) first next
      (qualified_preserves P cap first hf) hn q s hs,
    StateTrace.bind_event_prefix (first q s) next,
    continuation_does_not_refund workCharge (first q s) next⟩

end GRWTSK.Processing.TransactionalDiscovery
