import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.TransactionalDiscovery

/-!
# Dependent contextual admission and finite transactional execution

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A0, A03, A07, A10).
SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact-type checks, fresh kernel
replay, transitive axiom audit and independent review: NOT_RUN.
Base math b77fcf90e7d6dec355accd3773c3b157ce005652; TransactionalDiscovery
8da85c92c61743133682732ddf35ccd4000cbc35; ResourceAttainability
8ec06bac1a36bb3ab4a5ea3573fbb6130802b49c.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

A dependent telescope is semantic, using a common lifted universe; assumptions
are binders over lifted propositions. Definitions introduce no independent
choice. The exact Lean syntax, mixed universes, binder information, canonical
closed type and environment identities must separately come from the protected
source decoder. This is not a representation of arbitrary Lean.Expr.
The checker relations below are trusted suppliers, not implemented checkers.
Their realization must independently observe the actual checked declaration,
type, value, closedness, dependency/axiom closure and fresh replay; no untrusted
worker observation or public record constructor confers verification. The
semantic interpretation theorem is a separate supplier. In particular, a
kernel-valid theorem of a different type, a fallback axiom and a conditional
theorem with an extra hypothesis cannot be substituted for the expected key.
Proof irrelevance prevents identifying proof bytes by equality of facts.

Finite chains model a sequence of atomic attempts, including separately
requested attempts after stops. A bind executes its continuation only on
success. Induction on the chain retains the exact ordered event suffix,
preserves safety and behavior, and transports every existing derivation.
Additivity of the imported trace cost gives nonrefundable work and serial
elapsed time. Peak storage and memory use the conservative absolute envelope
already enforced by each Step, not an additive sum. The discovery witness
requires an initially pending target and charges the entire certified cap as an upper bound, not an optimal cost.
Physical calibration, retained trace size, concurrent workers, failures
outside the bound, mode-specific verification/recovery/application,
source-to-runtime refinement, and coverage remain open. No RH assumption or
proof is introduced.
-/

set_option autoImplicit false

namespace GRWTSK.Processing.TransactionalDiscovery

open GRWTSK.Processing
open GRWTSK.Processing.StateTrace.Resource
open GRWTSK.ResourceAttainability
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

universe u v w x y

namespace Contextual

/-- Binder names are presentation data; the stable local index is distinct. -/
structure BinderKey where
  localIndex : Nat
  name : String

inductive Telescope : Type (u + 1) where
  | nil
  | bind (key : BinderKey) (domain : Type u)
      (rest : domain → Telescope)
  | define (key : BinderKey) (domain : Type u) (value : domain)
      (rest : domain → Telescope)

/-- Definitions are substituted, rather than quantified as free variables. -/
def Assignment : Telescope.{u} → Type u
  | .nil => PUnit
  | .bind _ A rest => Sigma (fun a : A => Assignment (rest a))
  | .define _ _ value rest => Assignment (rest value)

def Holds (ctx : Telescope.{u}) (body : Assignment ctx → Prop) : Prop :=
  ∀ a, body a

theorem holds_bind_iff (key : BinderKey) (A : Type u)
    (rest : A → Telescope.{u})
    (body : Assignment (.bind key A rest) → Prop) :
    Holds (.bind key A rest) body ↔
      ∀ a : A, ∀ b : Assignment (rest a), body ⟨a, b⟩ := by
  constructor
  · intro h a b
    exact h ⟨a, b⟩
  · intro h s
    rcases s with ⟨a, b⟩
    exact h a b

theorem holds_define_iff (key : BinderKey) (A : Type u) (value : A)
    (rest : A → Telescope.{u})
    (body : Assignment (.define key A value rest) → Prop) :
    Holds (.define key A value rest) body ↔
      Holds (rest value) body := Iff.rfl

/-- A dependent hypothesis restricts assignments to actual witnesses. -/
def assume (key : BinderKey) (p : Prop)
    (rest : PLift p → Telescope.{0}) : Telescope.{0} :=
  .bind key (PLift p) rest

/-- Exact independently expected identity. Canonical bytes have a protected
decoder; hashes, names and semantic equivalence alone are not sufficient. -/
structure DeclarationKey where
  source : SourceClaim
  sourceBlob : String
  foundationEpoch : String
  importsIdentity : String
  toolchainIdentity : String
  policyIdentity : String
  universeParameters : List String
  telescopeBytes : List UInt8
  closedTypeBytes : List UInt8

structure Judgment where
  key : DeclarationKey
  context : Telescope.{u}
  body : Assignment context → Prop

def meaning (j : Judgment.{u}) : Prop := Holds j.context j.body

inductive DeclKind where
  | theoremDecl | axiomDecl | definitionDecl

/-- The actual observed checked object, not a candidate-authored receipt. The
protected observer must bind all fields to the same immutable declaration. -/
structure ClosedObject where
  key : DeclarationKey
  proofBytes : List UInt8
  kind : DeclKind
  freeVariables : List String
  metavariables : List String
  dependencies : List String
  axioms : List String
  checkedBase : String

structure Submission where
  key : DeclarationKey
  proofBytes : List UInt8
  checkedBase : String

structure TrustedChecker where
  foundationEpoch : String
  policyIdentity : String
  extendsSnapshot : String → String → Prop
  expected : Judgment.{u} → Prop
  expectedUnique : ∀ j k, expected j → expected k → j.key = k.key → j = k
  checked : ClosedObject → Prop
  replayed : ClosedObject → Prop
  present : String → ClosedObject → Prop
  allowedAxiom : String → Prop
  allowedDependency : Judgment.{u} → String → Prop
  /-- Explicit semantic realization of the independently checked exact type. -/
  sound : ∀ j obj, expected j → checked obj → obj.key = j.key → meaning j

structure Gate (C : TrustedChecker.{u}) (j : Judgment.{u}) (obj : ClosedObject) : Prop where
  expected : C.expected j
  epoch : j.key.foundationEpoch = C.foundationEpoch
  policy : j.key.policyIdentity = C.policyIdentity
  exactKey : obj.key = j.key
  checked : C.checked obj
  replayed : C.replayed obj
  theoremKind : obj.kind = .theoremDecl
  closedVars : obj.freeVariables = []
  closedMetas : obj.metavariables = []
  axiomsAllowed : ∀ a, a ∈ obj.axioms → C.allowedAxiom a ∧ a ≠ "sorryAx"
  dependenciesAllowed : ∀ d, d ∈ obj.dependencies → C.allowedDependency j d

theorem gate_sound (C : TrustedChecker.{u}) {j : Judgment.{u}} {obj : ClosedObject}
    (h : Gate C j obj) : meaning j :=
  C.sound j obj h.expected h.checked h.exactKey

theorem gate_reject_axiom (C : TrustedChecker.{u}) {j : Judgment.{u}}
    {obj : ClosedObject} (h : obj.kind = .axiomDecl) : ¬ Gate C j obj := by
  intro g
  have impossible : DeclKind.axiomDecl = DeclKind.theoremDecl := h.symm.trans g.theoremKind
  cases impossible

theorem gate_reject_wrong_key (C : TrustedChecker.{u}) {j : Judgment.{u}}
    {obj : ClosedObject} (h : obj.key ≠ j.key) : ¬ Gate C j obj :=
  fun g => h g.exactKey

theorem gate_reject_forbidden_axiom (C : TrustedChecker.{u}) {j : Judgment.{u}}
    {obj : ClosedObject} {a : String} (ha : a ∈ obj.axioms)
    (forbidden : ¬ C.allowedAxiom a) : ¬ Gate C j obj :=
  fun g => forbidden (g.axiomsAllowed a ha).1

theorem gate_reject_sorry (C : TrustedChecker.{u}) {j : Judgment.{u}}
    {obj : ClosedObject} (h : "sorryAx" ∈ obj.axioms) : ¬ Gate C j obj :=
  fun g => (g.axiomsAllowed "sorryAx" h).2 rfl

/-- Two judgments with the same accepted key must be the same protected
judgment, not merely logically equivalent propositions. -/
theorem gate_unique_target (C : TrustedChecker.{u}) {j k : Judgment.{u}}
    {obj : ClosedObject} (h : Gate C j obj) (g : Gate C k obj) : j = k :=
  C.expectedUnique j k h.expected g.expected (h.exactKey.symm.trans g.exactKey)

structure Entry (C : TrustedChecker.{u}) where
  judgment : Judgment.{u}
  submission : Submission
  object : ClosedObject
  gate : Gate C judgment object
  submittedKey : submission.key = object.key
  submittedProof : submission.proofBytes = object.proofBytes
  submittedBase : submission.checkedBase = object.checkedBase

def Entry.fact {C : TrustedChecker.{u}} (e : Entry C) :
    InstantiatedFact Judgment meaning where
  sourceClaim := some e.judgment.key.source
  atom := e.judgment
  evidence := gate_sound C e.gate

/-- Every retained entry must actually be present in the protected snapshot.
Runtime refinement supplies present, including correct environment extension.
This record does not infer authenticity from its snapshot string. -/
structure ProtectedEnv (C : TrustedChecker.{u}) where
  snapshot : String
  entries : List (Entry C)
  present : ∀ e, e ∈ entries → C.present snapshot e.object
  /-- Distinct installed declaration objects cannot share the same name. -/
  noConflict : ∀ e e', e ∈ entries → e' ∈ entries →
    e.object.key.source.declaration = e'.object.key.source.declaration →
    e.object = e'.object

def Admitted {C : TrustedChecker.{u}} (env : ProtectedEnv C)
    (f : InstantiatedFact Judgment meaning) : Prop :=
  ∃ e, e ∈ env.entries ∧ e.fact = f

def Extends {C : TrustedChecker.{u}} (old new : ProtectedEnv C) : Prop :=
  C.extendsSnapshot old.snapshot new.snapshot ∧
    ∃ suffix, new.entries = old.entries ++ suffix

theorem admission_mono {C : TrustedChecker.{u}} {old new : ProtectedEnv C}
    {f : InstantiatedFact Judgment meaning}
    (h : Extends old new) (hf : Admitted old f) : Admitted new f := by
  obtain ⟨suffix, same⟩ := h.2
  obtain ⟨e, he, eq⟩ := hf
  exact ⟨e, by rw [same]; exact List.mem_append.mpr (Or.inl he), eq⟩

theorem admitted_exact_object {C : TrustedChecker.{u}} (env : ProtectedEnv C)
    (f : InstantiatedFact Judgment meaning) (h : Admitted env f) :
    ∃ e, e ∈ env.entries ∧ e.object.key = f.atom.key ∧
      C.present env.snapshot e.object ∧ Gate C f.atom e.object := by
  obtain ⟨e, he, rfl⟩ := h
  exact ⟨e, he, e.gate.exactKey, env.present e he, e.gate⟩

/-- The admitted proof is tied to the submitted object, not merely an
existence proof of the same proposition. Equality of proof-bearing facts
alone would not suffice, by proof irrelevance. -/
theorem admitted_submission_exact {C : TrustedChecker.{u}} (env : ProtectedEnv C)
    (f : InstantiatedFact Judgment meaning) (h : Admitted env f) :
    ∃ e, e ∈ env.entries ∧ e.submission.key = f.atom.key ∧
      e.submission.proofBytes = e.object.proofBytes ∧
      e.submission.checkedBase = e.object.checkedBase ∧
      C.present env.snapshot e.object := by
  obtain ⟨e, he, rfl⟩ := h
  exact ⟨e, he, e.submittedKey.trans e.gate.exactKey, e.submittedProof,
    e.submittedBase, env.present e he⟩

/-- This replaces the generic admission and extension fields with the actual
mathematical protected-entry relation. Other policy suppliers stay explicit. -/
def policy (C : TrustedChecker.{u}) {G : Type v} {Reg : Type w} {Obs : Type y}
    (rules : List (InstantiatedApplication Judgment meaning))
    (branchOK : Judgment → Rule Judgment → Prop)
    (graphOK : G → Prop) (behavior : G → Obs)
    (realizationOK : G → Reg → Prop)
    (stored resident : Core Judgment meaning G Reg (ProtectedEnv C) → Nat) :
    Policy Judgment meaning G Reg (ProtectedEnv C) Obs where
  rules := rules
  branchOK := branchOK
  graphOK := graphOK
  behavior := behavior
  realizationOK := realizationOK
  admitted := Admitted
  extendsEnv := Extends
  admissionMono := fun _ _ _ h hf => admission_mono h hf
  stored := stored
  resident := resident

/-- Concrete dependent-context control: the second binder depends on the first. -/
def dependentExample : Telescope.{0} :=
  .bind ⟨0, "n"⟩ Nat (fun n => .bind ⟨1, "i"⟩ (Fin (n + 1)) (fun _ => .nil))

theorem dependentExample_holds :
    Holds dependentExample (fun a => a.2.1.val < a.1 + 1) := by
  intro a
  exact a.2.1.isLt

/-- False under an inconsistent local hypothesis is not a closed proof of False. -/
theorem conditional_not_unconditional :
    Holds (assume ⟨0, "h"⟩ False (fun _ => .nil)) (fun _ => False) ∧
      ¬ Holds (.nil : Telescope.{0}) (fun _ => False) := by
  constructor
  · intro a
    exact a.1.down
  · intro h
    exact h PUnit.unit

end Contextual

section FiniteExecution

variable {J : Type u} {Meaning : J → Prop}
  {G : Type v} {Reg : Type w} {Env : Type x} {Obs : Type y}

/-- Each step is independently qualified, at the actual preceding state.
A new attempt may follow a stop; this is not the short-circuiting bind. -/
inductive Run (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec) :
    State J Meaning G Reg Env → List (Event J) → State J Meaning G Reg Env → Prop where
  | nil (s : State J Meaning G Reg Env) : Run P cap s [] s
  | cons {q : J} {s t : State J Meaning G Reg Env}
      {r : AttemptResult J Meaning G Reg Env} {events : List (Event J)}
      (step : Step P cap q s r) (tail : Run P cap r.state events t) :
      Run P cap s (r.events ++ events) t

theorem Run.single (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {q : J} {s : State J Meaning G Reg Env} {r : AttemptResult J Meaning G Reg Env}
    (h : Step P cap q s r) : Run P cap s r.events r.state := by
  simpa only [List.append_nil] using Run.cons h (Run.nil r.state)

theorem run_trace (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {s t : State J Meaning G Reg Env} {events : List (Event J)}
    (h : Run P cap s events t) : t.trace = s.trace ++ events := by
  induction h with
  | nil s => simp
  | cons step tail ih =>
    rw [ih, step_trace P cap step, List.append_assoc]

theorem run_safe (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {s t : State J Meaning G Reg Env} {events : List (Event J)}
    (h : Run P cap s events t) : Safe P cap s → Safe P cap t := by
  induction h with
  | nil s => exact id
  | cons step tail ih =>
    intro hs
    exact ih (step_safe P cap hs step)

theorem run_deductive_mono (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {s t : State J Meaning G Reg Env} {events : List (Event J)} {p : J}
    (h : Run P cap s events t) : Deductive P s.core p → Deductive P t.core p := by
  induction h with
  | nil s => exact id
  | cons step tail ih =>
    intro hp
    exact ih (step_deductive_mono P cap step hp)

theorem run_behavior (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {s t : State J Meaning G Reg Env} {events : List (Event J)}
    (h : Run P cap s events t) : P.behavior t.core.graph = P.behavior s.core.graph := by
  induction h with
  | nil s => rfl
  | cons step tail ih => exact ih.trans (step_behavior P cap step)

theorem run_charge_exact (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {s t : State J Meaning G Reg Env} {events : List (Event J)}
    (h : Run P cap s events t) (charge : Event J → Nat) :
    cost charge t.trace = cost charge s.trace + cost charge events := by
  rw [run_trace P cap h, cost_append]

theorem run_no_refund (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {s t : State J Meaning G Reg Env} {events : List (Event J)}
    (h : Run P cap s events t) (charge : Event J → Nat) :
    cost charge s.trace ≤ cost charge t.trace :=
  prefix_cost charge ⟨events, run_trace P cap h⟩

structure RunContract (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (s : State J Meaning G Reg Env) (events : List (Event J))
    (t : State J Meaning G Reg Env) : Prop where
  safe : Safe P cap t
  deductive : ∀ p, Deductive P s.core p → Deductive P t.core p
  behavior : P.behavior t.core.graph = P.behavior s.core.graph
  trace : t.trace = s.trace ++ events
  work : cost workCharge t.trace = cost workCharge s.trace + cost workCharge events
  elapsed : cost timeCharge t.trace = cost timeCharge s.trace + cost timeCharge events
  workNoRefund : cost workCharge s.trace ≤ cost workCharge t.trace
  timeNoRefund : cost timeCharge s.trace ≤ cost timeCharge t.trace

theorem run_contract (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    {s t : State J Meaning G Reg Env} {events : List (Event J)}
    (h : Run P cap s events t) (hs : Safe P cap s) : RunContract P cap s events t :=
  ⟨run_safe P cap h hs, fun _ => run_deductive_mono P cap h,
    run_behavior P cap h, run_trace P cap h,
    run_charge_exact P cap h workCharge, run_charge_exact P cap h timeCharge,
    run_no_refund P cap h workCharge, run_no_refund P cap h timeCharge⟩

/-- Exact state and event correspondence for a qualified continuation. The
mere invariant-preservation premise of the older accounting theorem is not
enough: a continuation could preserve safety while dropping deductions. -/
theorem qualified_bind_run (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (first : AttemptStage J Meaning G Reg Env)
    (next : Bool → State J Meaning G Reg Env → AttemptResult J Meaning G Reg Env)
    (request : Bool → J)
    (hf : Qualified P cap first)
    (hn : ∀ b s, Safe P cap s → Step P cap (request b) s (next b s))
    (q : J) (s : State J Meaning G Reg Env) (hs : Safe P cap s) :
    Run P cap s (StateTrace.bind (first q s) next).events
      (StateTrace.bind (first q s) next).state := by
  have hfirst := hf q s hs
  have hmid := step_safe P cap hs hfirst
  cases ho : (first q s).outcome with
  | success b =>
    have hsecond := hn b (first q s).state hmid
    simpa only [StateTrace.bind, ho] using
      Run.cons hfirst (Run.single P cap hsecond)
  | refused reason =>
    simpa only [StateTrace.bind, ho] using Run.single P cap hfirst
  | failed error =>
    simpa only [StateTrace.bind, ho] using Run.single P cap hfirst

theorem qualified_bind_contract (P : Policy J Meaning G Reg Env Obs) (cap : ResourceVec)
    (first : AttemptStage J Meaning G Reg Env)
    (next : Bool → State J Meaning G Reg Env → AttemptResult J Meaning G Reg Env)
    (request : Bool → J)
    (hf : Qualified P cap first)
    (hn : ∀ b s, Safe P cap s → Step P cap (request b) s (next b s))
    (q : J) (s : State J Meaning G Reg Env) (hs : Safe P cap s) :
    RunContract P cap s (StateTrace.bind (first q s) next).events
      (StateTrace.bind (first q s) next).state :=
  run_contract P cap (qualified_bind_run P cap first next request hf hn q s hs) hs

/-- A witness refers to a real finite chain, not a bare stored certificate.
The cap is a conservative charged bound including prior expenditure; no
optimality or minimality of this witness cost is asserted. -/
structure DiscoveryWitness (J : Type u) (Meaning : J → Prop)
    (G : Type v) (Reg : Type w) (Env : Type x) where
  cap : ResourceVec
  events : List (Event J)
  final : State J Meaning G Reg Env

def discoveryModel (P : Policy J Meaning G Reg Env Obs) :
    ExecutionModel (State J Meaning G Reg Env) J where
  Witness := DiscoveryWitness J Meaning G Reg Env
  /-- Fixed contextual derivability, not membership of the initial inventory.
  Discovery may add a genuinely new fact; initial Deductive is not implied. -/
  derives := fun _ p => Meaning p
  valid := fun s j p e =>
    j = .discover ∧ Pending s.core p ∧ Safe P e.cap s ∧
      Run P e.cap s e.events e.final ∧
      ∃ f, f ∈ e.final.core.facts ∧ f.atom = p ∧ P.admitted e.final.core.environment f
  cost := fun _ _ _ e => e.cap
  sound := by
    intro s j p e h
    obtain ⟨f, _, eq, _⟩ := h.2.2.2.2
    exact eq ▸ f.evidence

theorem admitted_run_attainable (P : Policy J Meaning G Reg Env Obs)
    {s t : State J Meaning G Reg Env} {events : List (Event J)}
    {cap : ResourceVec} {p : J}
    (hs : Safe P cap s) (h : Run P cap s events t)
    (pending : Pending s.core p) (known : Known t.core p) :
    Attainable (discoveryModel P) s .discover cap p := by
  have ht := run_safe P cap h hs
  have accepted := (known_iff_admitted_fact P t.core ht.1 p).mp known
  exact ⟨⟨cap, events, t⟩, ⟨rfl, pending, hs, h, accepted⟩, le_rfl⟩

theorem discovery_attainable_sound (P : Policy J Meaning G Reg Env Obs)
    {s : State J Meaning G Reg Env} {cap : ResourceVec} {p : J}
    (h : Attainable (discoveryModel P) s .discover cap p) : Meaning p :=
  attainable_sound (discoveryModel P) h

/-- A lookup of an already admitted target is not discovery in this model. -/
theorem discovery_requires_pending (P : Policy J Meaning G Reg Env Obs)
    {s : State J Meaning G Reg Env} {cap : ResourceVec} {p : J}
    (h : Attainable (discoveryModel P) s .discover cap p) : Pending s.core p := by
  obtain ⟨e, valid, _⟩ := h
  exact valid.2.1

/-- The absent execution modes cannot be silently classified as implemented. -/
theorem other_mode_not_attainable (P : Policy J Meaning G Reg Env Obs)
    (s : State J Meaning G Reg Env) (j : Mode) (cap : ResourceVec) (p : J)
    (h : j ≠ .discover) : ¬ Attainable (discoveryModel P) s j cap p := by
  rintro ⟨e, valid, _⟩
  exact h valid.1

end FiniteExecution
end GRWTSK.Processing.TransactionalDiscovery
