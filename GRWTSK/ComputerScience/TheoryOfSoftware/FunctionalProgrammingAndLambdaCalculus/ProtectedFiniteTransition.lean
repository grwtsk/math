import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.TransactionalDiscoveryContext
import GRWTSK.Combinatorics.FixedStrategyAttainability

/-!
# Protected finite submission evaluation

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A0, A07, A09, A10);
Sofic sections 2.5, 4.1, 4.4, 5.12, 5.13.
SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact-type checks, fresh kernel
replay, transitive axiom audit and independent review: NOT_RUN.

Math parent 91d97ba1a8aacd10fb7a64be382431c9bc223aec; prior evaluator
0e282fead4443f4d16e4d37d8ecdba98110da1f3; TransactionalDiscoveryContext
f9b09052d2492ac94e3886ca683907d8314700a2, TransactionalDiscovery
8da85c92c61743133682732ddf35ccd4000cbc35, FixedStrategyAttainability
a971a30a546437404013e6d086e9ad8983d31089, ProtectedFiniteDiscovery
776ce11764f9e893866b073342258bb1024d4640. Lean v4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.

This generalizes the finite certificate-language fixture, not the Lean kernel.
An independently resolved expected target and independently observed object are
trusted inputs; neither can be chosen by untrusted submission bytes. Check
identity, actual base, Gate, pending target, prior dependencies and append
conditions in fixed order. A finite decision procedure supplies Decidable for
each actual predicate; the evaluator, not a caller-supplied verdict, selects the
first false check. No classical oracle is used by the generic evaluator.
Decidability is scoped to an invariant of the actual core and an admitted
target fragment. Arbitrary dependent functions and arbitrary Set-valued
targets are not decidable. The invariant is preserved by the exact append
and unchanged by refusal. The dependent-bound fixture supplies constructive
deciders on this scoped domain. No decision oracle or proof of general
Lean judgment equality is introduced.
A name-only dependency link is scoped to the protected no-conflict environment;
the trusted Gate must still supply actual dependency closure and identity.
This initial fragment allows only prior installed dependencies (no implicit
external import lookup), one fresh theorem append, unchanged graph/registry,
and an exact proof entry. No claim about arbitrary Lean.Expr equality.

For an admitted append, construct the same Entry, ProtectedEnv, Delta and
Step as the existing contextual transaction model. Membership in the new
entries is exact; old entries remain a prefix and cannot conflict with the
fresh name. Refusal carries either a failed semantic check (and earlier
passed checks) or a failed reservation/cost guard, and preserves the core.
If even the incurred refusal charge cannot fit, stop outside the certified
bounded relation: retain the original packet and remaining input; never
discard or count the overrun as a safe Step. The outer operational owner
must retain actual overrun cost and an authenticated failure receipt.

Finite evaluation recurses over the input list at the attained state. Its
receipt sequence is indexed by the actual before/after states and the exact
packet; erasure yields the imported Run, not a new independent proof ledger.
Induction gives input-prefix correspondence, no refund, deductive growth and
the exact concatenated trace; sequential work/time add while absolute
storage/resident caps are enforced by the original Step/Safe relations.
Record fields are mathematical values, not a prescription to copy full
snapshots at runtime. Artifact retention, observer/checker costs, decision
procedure work, trace serialization and concurrent resource calibration remain
suppliers. The physical adapter must prove the reported charges cover them.

A public generator reports submissions through a fixed view/iteration; a
protected observer binds each packet to the original submission at the actual
attained state. A deterministic supervised run may be lifted to attainability
only after exact admission of its initially pending target and soundness in
a specified deductive foundation. A fixed output, a valid proof and a checked
execution are different things. No model training, protected Lean execution
or effect authorization is asserted.
-/

set_option autoImplicit false

namespace GRWTSK.Processing.TransactionalDiscovery.ProtectedTransition

open GRWTSK.Processing
open GRWTSK.Processing.StateTrace.Resource
open GRWTSK.ResourceAttainability
open GRWTSK.Processing.TransactionalDiscovery
open GRWTSK.Processing.TransactionalDiscovery.Contextual
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

universe u v w y x z

abbrev CState (C : TrustedChecker.{u}) (G : Type v) (Reg : Type w) :=
  Core Judgment meaning G Reg (ProtectedEnv C)
abbrev SState (C : TrustedChecker.{u}) (G : Type v) (Reg : Type w) :=
  State Judgment meaning G Reg (ProtectedEnv C)
abbrev Result (C : TrustedChecker.{u}) (G : Type v) (Reg : Type w) :=
  AttemptResult Judgment meaning G Reg (ProtectedEnv C)

variable {C : TrustedChecker.{u}} {G : Type v} {Reg : Type w} {Obs : Type y}

/-- Expected target, observed object, snapshot and charges are supplied by the
protected adapter. Only submission is an untrusted proposal. -/
structure Packet where
  target : Judgment.{u}
  submission : Submission
  observed : ClosedObject
  nextSnapshot : String
  reservation : ResourceVec
  charge : Charge

inductive Check where
  | target | proof | base | gate | pending | dependencies | append
  deriving DecidableEq, Repr

def checkOrder : List Check :=
  [.target, .proof, .base, .gate, .pending, .dependencies, .append]

theorem checkOrder_complete (k : Check) : k ∈ checkOrder := by
  cases k <;> decide

/-- Initial fragment: all dependencies are installed in the prior snapshot.
The actual proof/type dependency closure is a Gate/observer supplier. -/
def PriorDependencies (s : SState C G Reg) (a : Packet.{u}) : Prop :=
  ∀ d, d ∈ a.observed.dependencies →
    ∃ e : Entry C, e ∈ s.core.environment.entries ∧
      e.object.key.source.declaration = d

structure AppendOK (s : SState C G Reg) (a : Packet.{u}) : Prop where
  extends : C.extendsSnapshot s.core.environment.snapshot a.nextSnapshot
  retained : ∀ e, e ∈ s.core.environment.entries → C.present a.nextSnapshot e.object
  installed : C.present a.nextSnapshot a.observed
  fresh : ∀ e, e ∈ s.core.environment.entries →
    e.object.key.source.declaration ≠ a.observed.key.source.declaration

def Pass (s : SState C G Reg) (a : Packet.{u}) : Check → Prop
  | .target => a.submission.key = a.target.key ∧ a.observed.key = a.target.key
  | .proof => a.submission.proofBytes = a.observed.proofBytes
  | .base => a.submission.checkedBase = a.observed.checkedBase ∧
      a.observed.checkedBase = s.core.environment.snapshot
  | .gate => Gate C a.target a.observed
  | .pending => Pending s.core a.target
  | .dependencies => PriorDependencies s a
  | .append => AppendOK s a

def Eligible (s : SState C G Reg) (a : Packet.{u}) : Prop :=
  ∀ k, Pass s a k

/-- Exact priority certificate: every earlier test passes and this one fails. -/
structure FirstFailure (P : Check → Prop) (xs : List Check) where
  «prefix» : List Check
  failed : Check
  suffix : List Check
  split : xs = «prefix» ++ failed :: suffix
  earlier : ∀ k, k ∈ «prefix» → P k
  bad : ¬ P failed

inductive CheckResult (P : Check → Prop) (xs : List Check) where
  | passed (all : ∀ k, k ∈ xs → P k)
  | refused (first : FirstFailure P xs)

def checkList (P : Check → Prop) (test : ∀ k, Decidable (P k)) :
    (xs : List Check) → CheckResult P xs
  | [] => .passed (by simp)
  | k :: ks =>
    match test k with
    | .isFalse bad => .refused ⟨[], k, ks, rfl, by simp, bad⟩
    | .isTrue good =>
      match checkList P test ks with
      | .passed tail => .passed (by
          intro c hc
          rcases List.mem_cons.mp hc with rfl | hc
          · exact good
          · exact tail c hc)
      | .refused f => .refused
          ⟨k :: f.«prefix», f.failed, f.suffix, by exact congrArg (List.cons k) f.split, by
            intro c hc
            rcases List.mem_cons.mp hc with rfl | hc
            · exact good
            · exact f.earlier c hc, f.bad⟩

theorem failed_not_eligible {s : SState C G Reg} {a : Packet.{u}}
    (f : FirstFailure (Pass s a) checkOrder) : ¬ Eligible s a :=
  fun h => f.bad (h f.failed)

def entry (s : SState C G Reg) (a : Packet.{u}) (h : Eligible s a) : Entry C :=
  ⟨a.target, a.submission, a.observed, h .gate,
    (h .target).1.trans (h .target).2.symm, h .proof, (h .base).1⟩

def appendEnvironment (s : SState C G Reg) (a : Packet.{u}) (h : Eligible s a) :
    ProtectedEnv C where
  snapshot := a.nextSnapshot
  entries := s.core.environment.entries ++ [entry s a h]
  present := by
    intro e he
    rcases List.mem_append.mp he with old | new
    · exact (h .append).retained e old
    · have same := List.mem_singleton.mp new
      subst e
      exact (h .append).installed
  noConflict := by
    intro e f he hf same
    rcases List.mem_append.mp he with he | he <;>
      rcases List.mem_append.mp hf with hf | hf
    · exact s.core.environment.noConflict e f he hf same
    · have eq := List.mem_singleton.mp hf
      subst f
      exact ((h .append).fresh e he same).elim
    · have eq := List.mem_singleton.mp he
      subst e
      exact ((h .append).fresh f hf same.symm).elim
    · have eqe := List.mem_singleton.mp he
      have eqf := List.mem_singleton.mp hf
      subst e
      subst f
      rfl

theorem append_extends (s : SState C G Reg) (a : Packet.{u}) (h : Eligible s a) :
    Extends s.core.environment (appendEnvironment s a h) :=
  ⟨(h .append).extends, [entry s a h], rfl⟩

theorem exact_append (s : SState C G Reg) (a : Packet.{u}) (h : Eligible s a) :
    ∃ e : Entry C, e ∈ (appendEnvironment s a h).entries ∧
      e.judgment = a.target ∧ e.submission = a.submission ∧
      e.object = a.observed ∧ e.object.checkedBase = s.core.environment.snapshot := by
  refine ⟨entry s a h, ?_, rfl, rfl, rfl, (h .base).2⟩
  exact List.mem_append.mpr (Or.inr (List.mem_singleton.mpr rfl))

/-- Preserve the existing Policy type. This bridge pins its two environment
relations to the existing contextual semantics, not a second policy store. -/
structure ContextualPolicy
    (P : Policy Judgment meaning G Reg (ProtectedEnv C) Obs) : Prop where
  admission : ∀ env f, P.admitted env f ↔ Admitted env f
  extension : ∀ old new, P.extendsEnv old new ↔ Extends old new

def appendDelta (s : SState C G Reg) (a : Packet.{u}) (h : Eligible s a) :
    Delta Judgment meaning G Reg (ProtectedEnv C) where
  graph := s.core.graph
  added := [(entry s a h).fact]
  branches := []
  newTargets := ∅
  registry := s.core.registry
  environment := appendEnvironment s a h
  solved := true

theorem append_known (s : SState C G Reg) (a : Packet.{u}) (h : Eligible s a) :
    Known (applyDelta s.core (appendDelta s a h)) a.target := by
  apply (mem_eraseFacts_iff _ _).mpr
  refine ⟨(entry s a h).fact, ?_, rfl⟩
  exact List.mem_append.mpr (Or.inr (List.mem_singleton.mpr rfl))

variable (P : Policy Judgment meaning G Reg (ProtectedEnv C) Obs)

theorem append_valid (bridge : ContextualPolicy P)
    {s : SState C G Reg} (hs : CoreSafe P s.core)
    (a : Packet.{u}) (h : Eligible s a) :
    ValidDelta P s.core a.target (appendDelta s a h) := by
  refine ⟨h .pending, (bridge.extension _ _).mpr (append_extends s a h),
    hs.graph, rfl, hs.realizations, ?_, ?_, ?_⟩
  · intro f hf
    change f ∈ [(entry s a h).fact] at hf
    have same := List.mem_singleton.mp hf
    subst f
    apply (bridge.admission _ _).mpr
    exact ⟨entry s a h, List.mem_append.mpr (Or.inr (List.mem_singleton.mpr rfl)), rfl⟩
  · intro b hb
    change b ∈ [] at hb
    simp at hb
  · exact ⟨fun _ => append_known s a h, fun _ => rfl⟩

def CommitBudget (cap : ResourceVec) (s : SState C G Reg) (a : Packet.{u})
    (h : Eligible s a) : Prop :=
  ReservationFits P cap s a.reservation ∧ ChargeWithin a.charge a.reservation ∧
    Fits P cap s (applyDelta s.core (appendDelta s a h)) a.charge

/-- These decisions are finite suppliers on the actual predicates. The
evaluator below does not assert decidability of arbitrary contextual logic. -/
structure Decisions (cap : ResourceVec) where
  scope : CState C G Reg → Prop
  target : Judgment.{u} → Prop
  check : ∀ (s : SState C G Reg) (a : Packet.{u}),
    scope s.core → target a.target → ∀ k, Decidable (Pass s a k)
  refusalFits : ∀ (s : SState C G Reg) (a : Packet.{u}),
    Decidable (Fits P cap s s.core a.charge)
  commitFits : ∀ (s : SState C G Reg) (a : Packet.{u}) (h : Eligible s a),
    Decidable (CommitBudget P cap s a h)
  closed : ∀ (s : SState C G Reg) (a : Packet.{u}) (h : Eligible s a),
    scope s.core → target a.target → scope (applyDelta s.core (appendDelta s a h))

/-- Use subtypes of the existing state and judgment, not another
mathematical state or registry. Scope evidence is supplied at ingress. -/
abbrev ScopedState {cap : ResourceVec} (D : Decisions P cap) :=
  {s : SState C G Reg // D.scope s.core}

abbrev ScopedTarget {cap : ResourceVec} (D : Decisions P cap) :=
  {q : Judgment.{u} // D.target q}

def scopedModel {cap : ResourceVec} (D : Decisions P cap) :
    ExecutionModel (ScopedState P D) (ScopedTarget P D) where
  Witness := (discoveryModel P).Witness
  derives := fun s q => (discoveryModel P).derives s.val q.val
  valid := fun s j q e => (discoveryModel P).valid s.val j q.val e
  cost := fun s j q e => (discoveryModel P).cost s.val j q.val e
  sound := fun s j q e h => (discoveryModel P).sound s.val j q.val e h

inductive Disposition where
  | accepted | refused (failed : Check) | reservationDenied
  deriving DecidableEq, Repr

/-- Receipt is indexed by the actual state and exact packet. There is no
constructor for an unclassified refusal or a fabricated success outcome. -/
inductive Receipt (cap : ResourceVec) (s : SState C G Reg) (a : Packet.{u}) where
  | accept (eligible : Eligible s a) (budget : CommitBudget P cap s a eligible)
  | refuse (failed : FirstFailure (Pass s a) checkOrder)
      (fits : Fits P cap s s.core a.charge)
  | deny (eligible : Eligible s a) (budget : ¬ CommitBudget P cap s a eligible)
      (fits : Fits P cap s s.core a.charge)

def Receipt.disposition {cap : ResourceVec} {s : SState C G Reg} {a : Packet.{u}} :
    Receipt P cap s a → Disposition
  | .accept _ _ => .accepted
  | .refuse f _ => .refused f.failed
  | .deny _ _ _ => .reservationDenied

def Receipt.result {cap : ResourceVec} {s : SState C G Reg} {a : Packet.{u}} :
    Receipt P cap s a → Result C G Reg
  | .accept h _ => finish s (applyDelta s.core (appendDelta s a h))
      a.target (.success true) a.charge
  | .refuse _ _ => finish s s.core a.target (.refused .invalidCandidate) a.charge
  | .deny _ _ _ => finish s s.core a.target (.refused .reservationDenied) a.charge

theorem Receipt.step {cap : ResourceVec} {s : SState C G Reg} {a : Packet.{u}}
    (r : Receipt P cap s a) (bridge : ContextualPolicy P) (hs : Safe P cap s) :
    Step P cap a.target s (r.result P) := by
  cases r with
  | accept h b =>
    exact Step.commit (appendDelta s a h) a.charge a.reservation b.1 b.2.1
      (append_valid P bridge hs.1 a h) b.2.2
  | refuse f fits => exact Step.refused .invalidCandidate a.charge fits
  | deny h b fits => exact Step.refused .reservationDenied a.charge fits

theorem Receipt.accept_iff {cap : ResourceVec} {s : SState C G Reg} {a : Packet.{u}}
    (r : Receipt P cap s a) :
    r.disposition P = .accepted ↔ ∃ h : Eligible s a, CommitBudget P cap s a h := by
  cases r with
  | accept h b =>
    exact ⟨fun _ => ⟨h, b⟩, fun _ => rfl⟩
  | refuse f fits =>
    constructor
    · intro impossible
      cases impossible
    · rintro ⟨h, _⟩
      exact (failed_not_eligible f h).elim
  | deny h b fits =>
    constructor
    · intro impossible
      cases impossible
    · rintro ⟨h', hb⟩
      exact (b hb).elim

/-- Recover the actual ordered semantic failure, not merely an invalid
candidate label. The prefix of checks must all have passed. -/
theorem Receipt.semantic_refusal_exact {cap : ResourceVec} {s : SState C G Reg}
    {a : Packet.{u}} (r : Receipt P cap s a) (k : Check)
    (classified : r.disposition P = .refused k) :
    ∃ f : FirstFailure (Pass s a) checkOrder,
      f.failed = k ∧ ¬ Eligible s a := by
  cases r with
  | accept h b => cases classified
  | refuse f fits =>
    have same : f.failed = k := Disposition.refused.inj classified
    exact ⟨f, same, failed_not_eligible f⟩
  | deny h b fits => cases classified

theorem Receipt.resource_refusal_exact {cap : ResourceVec} {s : SState C G Reg}
    {a : Packet.{u}} (r : Receipt P cap s a)
    (classified : r.disposition P = .reservationDenied) :
    ∃ h : Eligible s a, ¬ CommitBudget P cap s a h := by
  cases r with
  | accept h b => cases classified
  | refuse f fits => cases classified
  | deny h b fits => exact ⟨h, b⟩

theorem Receipt.refused_atomic {cap : ResourceVec} {s : SState C G Reg}
    {a : Packet.{u}} (r : Receipt P cap s a)
    (notAccepted : r.disposition P ≠ .accepted) : (r.result P).state.core = s.core := by
  cases r with
  | accept h b => exact (notAccepted rfl).elim
  | refuse f fits => rfl
  | deny h b fits => rfl

theorem Receipt.accepted_exact {cap : ResourceVec} {s : SState C G Reg}
    {a : Packet.{u}} (r : Receipt P cap s a) (ok : r.disposition P = .accepted) :
    ∃ e : Entry C, e ∈ (r.result P).state.core.environment.entries ∧
      e.judgment = a.target ∧ e.submission = a.submission ∧ e.object = a.observed ∧
      e.object.checkedBase = s.core.environment.snapshot := by
  cases r with
  | accept h b => exact exact_append s a h
  | refuse f fits => cases ok
  | deny h b fits => cases ok

inductive Evaluation (cap : ResourceVec) (s : SState C G Reg) (a : Packet.{u}) where
  | completed (receipt : Receipt P cap s a)
  | outsideEnvelope (outside : ¬ Fits P cap s s.core a.charge)

def evaluateOne {cap : ResourceVec} (D : Decisions P cap)
    (s : SState C G Reg) (a : Packet.{u}) (hs : D.scope s.core)
    (hq : D.target a.target) : Evaluation P cap s a :=
  match D.refusalFits s a with
  | .isFalse h => .outsideEnvelope h
  | .isTrue fits =>
    match checkList (Pass s a) (D.check s a hs hq) checkOrder with
    | .refused f => .completed (.refuse f fits)
    | .passed all =>
      let h : Eligible s a := fun k => all k (checkOrder_complete k)
      match D.commitFits s a h with
      | .isTrue b => .completed (.accept h b)
      | .isFalse b => .completed (.deny h b fits)

/-- An erased record is for inspection. Its presence in an Audit, not its
public constructor, connects it to a protected Receipt. -/
structure Record where
  packet : Packet.{u}
  before : SState C G Reg
  result : Result C G Reg
  disposition : Disposition

def Receipt.record {cap : ResourceVec} {s : SState C G Reg} {a : Packet.{u}}
    (r : Receipt P cap s a) : Record (C := C) (G := G) (Reg := Reg) :=
  ⟨a, s, r.result P, r.disposition P⟩

inductive Audit (cap : ResourceVec) :
    SState C G Reg → List (Record (C := C) (G := G) (Reg := Reg)) →
      SState C G Reg → Prop where
  | nil (s) : Audit P cap s [] s
  | cons {s t : SState C G Reg} {a : Packet.{u}} {rs : List (Record (C := C) (G := G) (Reg := Reg))}
      (r : Receipt P cap s a) (tail : Audit P cap (r.result P).state rs t) :
      Audit P cap s (r.record P :: rs) t

def events (rs : List (Record (C := C) (G := G) (Reg := Reg))) : List (Event Judgment) :=
  rs.flatMap (fun r => r.result.events)

theorem audit_run {cap : ResourceVec} {s t : SState C G Reg} {rs : List (Record (C := C) (G := G) (Reg := Reg))}
    (bridge : ContextualPolicy P) (h : Audit P cap s rs t) :
    Safe P cap s → Run P cap s (events rs) t := by
  induction h with
  | nil s => intro _; exact Run.nil s
  | cons r tail ih =>
    intro hs
    have step := r.step P bridge hs
    have next := step_safe P cap hs step
    exact Run.cons step (ih next)

theorem audit_append {cap : ResourceVec} {s t v : SState C G Reg}
    {rs qs : List (Record (C := C) (G := G) (Reg := Reg))}
    (h : Audit P cap s rs t) : Audit P cap t qs v → Audit P cap s (rs ++ qs) v := by
  induction h with
  | nil s => exact id
  | cons r tail ih => intro k; exact Audit.cons r (ih k)

theorem audit_receipt {cap : ResourceVec} {s t : SState C G Reg}
    {rs : List (Record (C := C) (G := G) (Reg := Reg))}
    (h : Audit P cap s rs t) :
    ∀ rec : Record (C := C) (G := G) (Reg := Reg), rec ∈ rs →
      ∃ r : Receipt P cap rec.before rec.packet, r.record P = rec := by
  induction h with
  | nil s => intro rec mem; simp at mem
  | cons r tail ih =>
    intro rec mem
    rcases List.mem_cons.mp mem with same | rest
    · subst rec
      exact ⟨r, rfl⟩
    · exact ih rec rest

/-- A successful commit's resource envelope also covers keeping the old
core. This establishes why an outside-envelope attempt cannot be accepted. -/
theorem commit_implies_refusalFits {cap : ResourceVec} {s : SState C G Reg}
    {a : Packet.{u}} {h : Eligible s a} (b : CommitBudget P cap s a h) :
    Fits P cap s s.core a.charge := by
  obtain ⟨_, _, oldB, _, oldS, _, capB, capS, work, elapsed⟩ := b
  exact ⟨oldB, oldB, oldS, oldS, capB, capS, work, elapsed⟩

/-- For any correct deciders, all eligible, resource-qualified attempts
compute the same exact accepted receipt (proof irrelevance only for witnesses
of the predicates, never for object bytes). -/
theorem evaluateOne_accept {cap : ResourceVec} (D : Decisions P cap)
    (s : SState C G Reg) (a : Packet.{u}) (hs : D.scope s.core)
    (hq : D.target a.target) (h : Eligible s a)
    (b : CommitBudget P cap s a h) :
    evaluateOne P D s a hs hq = .completed (.accept h b) := by
  unfold evaluateOne
  split
  · rename_i bad
    exact (bad (commit_implies_refusalFits P b)).elim
  · split
    · rename_i f
      exact (failed_not_eligible f h).elim
    · split
      · rfl
      · rename_i bad
        exact (bad b).elim

theorem evaluateOne_refuse {cap : ResourceVec} (D : Decisions P cap)
    (s : SState C G Reg) (a : Packet.{u}) (hs : D.scope s.core)
    (hq : D.target a.target) (fits : Fits P cap s s.core a.charge)
    (bad : ¬ Eligible s a) :
    ∃ f : FirstFailure (Pass s a) checkOrder,
      evaluateOne P D s a hs hq = .completed (.refuse f fits) := by
  unfold evaluateOne
  split
  · rename_i no
    exact (no fits).elim
  · split
    · rename_i f
      exact ⟨f, rfl⟩
    · rename_i all
      exact (bad (fun k => all k (checkOrder_complete k))).elim

/-- All returned receipts preserve the constructive decision domain. -/
theorem Receipt.scope_preserved {cap : ResourceVec} (D : Decisions P cap)
    {s : SState C G Reg} {a : Packet.{u}} (r : Receipt P cap s a)
    (hs : D.scope s.core) (hq : D.target a.target) :
    D.scope (r.result P).state.core := by
  cases r with
  | accept h b => exact D.closed s a h hs hq
  | refuse f fits => exact hs
  | deny h b fits => exact hs

/-- The decision program's observable classification; None is outside the
envelope, not a mathematical refusal. -/
def Evaluation.classification {cap : ResourceVec} {s : SState C G Reg}
    {a : Packet.{u}} : Evaluation P cap s a → Option Disposition
  | .completed r => some (r.disposition P)
  | .outsideEnvelope _ => none

theorem receipt_event_exact {cap : ResourceVec} {s : SState C G Reg}
    {a : Packet.{u}} (r : Receipt P cap s a) :
    (r.result P).events = [⟨a.target, (r.result P).outcome, a.charge⟩] := by
  cases r <;> rfl

/-- Only the protected observer may resolve the expected target and observed
object. None means no qualified observation, not mathematical falsity. -/
structure Observer where
  observe : SState C G Reg → Judgment.{u} → Submission → Option Packet.{u}
  bound : ∀ s q sub a, observe s q sub = some a →
    a.target = q ∧ a.submission = sub

variable (O : Observer (C := C) (G := G) (Reg := Reg))

/-- Preserve a stop packet outside the envelope, including its actual
reported charge, separately from the certified bounded trace. -/
def StopValid (cap : ResourceVec) (q : Judgment.{u}) (s : SState C G Reg) :
    List Submission → Option Packet.{u} → Prop
  | [], none => True
  | sub :: _, none => O.observe s q sub = none
  | sub :: _, some a => O.observe s q sub = some a ∧ ¬ Fits P cap s s.core a.charge
  | [], some _ => False

structure Batch (cap : ResourceVec) (s : SState C G Reg) (q : Judgment.{u})
    (input : List Submission) where
  records : List (Record (C := C) (G := G) (Reg := Reg))
  remaining : List Submission
  final : SState C G Reg
  outside : Option Packet.{u}
  audit : Audit P cap s records final
  split : input = records.map (fun r => r.packet.submission) ++ remaining
  origin : ∀ r, r ∈ records →
    r.packet.target = q ∧ O.observe r.before q r.packet.submission = some r.packet
  stopped : StopValid P O cap q final remaining outside

/-- Recursion is over arbitrary finite submitted packets, observing at the
actual attained state. Continue after a qualified refusal; stop on absent
observation or outside-envelope charge, retaining the entire untouched suffix.
No hidden precomputed run is returned on an input-list match. -/
def evaluate {cap : ResourceVec} (D : Decisions P cap)
    (s : SState C G Reg) (q : Judgment.{u}) (hs : D.scope s.core)
    (hq : D.target q) :
    (input : List Submission) → Batch P O cap s q input
  | [] => ⟨[], [], s, none, Audit.nil s, rfl, by simp, trivial⟩
  | sub :: rest =>
    match ho : O.observe s q sub with
    | none =>
      ⟨[], sub :: rest, s, none, Audit.nil s, rfl, by simp, ho⟩
    | some a =>
      let binding := O.bound s q sub a ho
      have ha : D.target a.target := binding.1.symm ▸ hq
      match evaluateOne P D s a hs ha with
      | .outsideEnvelope bad =>
        ⟨[], sub :: rest, s, some a, Audit.nil s, rfl, by simp, ⟨ho, bad⟩⟩
      | .completed r =>
        let tail := evaluate D (r.result P).state q (r.scope_preserved P D hs ha) hq rest
        ⟨r.record P :: tail.records, tail.remaining, tail.final, tail.outside,
          Audit.cons r tail.audit, by
            change sub :: rest =
              a.submission :: (tail.records.map (fun r => r.packet.submission) ++ tail.remaining)
            rw [binding.2, ← tail.split], by
            intro rec mem
            rcases List.mem_cons.mp mem with same | later
            · subst rec
              change a.target = q ∧ O.observe s q a.submission = some a
              exact ⟨binding.1, binding.2.symm ▸ ho⟩
            · exact tail.origin rec later, tail.stopped⟩

/-- A batch preserves the finite domain for every intermediate and final
state. This follows from the actual Audit, not an assumption that a list
of submissions is well-formed. -/
theorem audit_scope {cap : ResourceVec} (D : Decisions P cap)
    {s t : SState C G Reg}
    {rs : List (Record (C := C) (G := G) (Reg := Reg))}
    (h : Audit P cap s rs t) :
    D.scope s.core → (∀ r, r ∈ rs → D.target r.packet.target) → D.scope t.core := by
  induction h with
  | nil s => intro hs _; exact hs
  | cons r tail ih =>
    intro hs targets
    have hq := targets (r.record P) (List.mem_cons_self)
    exact ih (r.scope_preserved P D hs hq)
      (fun rec mem => targets rec (List.mem_cons_of_mem _ mem))

theorem batch_scope {cap : ResourceVec} (D : Decisions P cap)
    {s : SState C G Reg} {q : Judgment.{u}} {input : List Submission}
    (b : Batch P O cap s q input) (hs : D.scope s.core) (hq : D.target q) :
    D.scope b.final.core :=
  audit_scope P D b.audit hs
    (fun r mem => (b.origin r mem).1.symm ▸ hq)

theorem batch_contract {cap : ResourceVec} {s : SState C G Reg}
    {q : Judgment.{u}} {input : List Submission}
    (bridge : ContextualPolicy P) (b : Batch P O cap s q input) (hs : Safe P cap s) :
    RunContract P cap s (events b.records) b.final :=
  run_contract P cap (audit_run P bridge b.audit hs) hs

/-- The full record is not freely interchangeable with another observation
of the same target. The origin equation and indexed Receipt are both needed. -/
theorem batch_receipt_bound {cap : ResourceVec} {s : SState C G Reg}
    {q : Judgment.{u}} {input : List Submission} (b : Batch P O cap s q input)
    (rec : Record (C := C) (G := G) (Reg := Reg)) (mem : rec ∈ b.records) :
    (rec.packet.target = q ∧
      O.observe rec.before q rec.packet.submission = some rec.packet) ∧
      ∃ r : Receipt P cap rec.before rec.packet, r.record P = rec :=
  ⟨b.origin rec mem, audit_receipt P b.audit rec mem⟩

theorem audit_sequential_charge {cap : ResourceVec} {s t v : SState C G Reg}
    {rs qs : List (Record (C := C) (G := G) (Reg := Reg))}
    (bridge : ContextualPolicy P) (h : Audit P cap s rs t)
    (k : Audit P cap t qs v) (hs : Safe P cap s) (charge : Event Judgment → Nat) :
    cost charge v.trace = cost charge s.trace + cost charge (events rs) + cost charge (events qs) := by
  have hr := audit_run P bridge h hs
  have kr := audit_run P bridge k (run_safe P cap hr hs)
  rw [run_charge_exact P cap kr charge, run_charge_exact P cap hr charge]

/-- A complete generated batch still needs a pending initial target and
an independently admitted final fact. -/
def batchWitness {cap : ResourceVec} {s : SState C G Reg}
    {q : Judgment.{u}} {input : List Submission} (b : Batch P O cap s q input) :
    DiscoveryWitness Judgment meaning G Reg (ProtectedEnv C) :=
  ⟨cap, events b.records, b.final⟩

theorem batch_witness_valid {cap : ResourceVec} {s : SState C G Reg}
    {q : Judgment.{u}} {input : List Submission}
    (bridge : ContextualPolicy P) (b : Batch P O cap s q input)
    (hs : Safe P cap s) (pending : Pending s.core q) (known : Known b.final.core q) :
    (discoveryModel P).valid s .discover q (batchWitness P O b) := by
  have run := audit_run P bridge b.audit hs
  have finalSafe := run_safe P cap run hs
  exact ⟨rfl, pending, hs, run, (known_iff_admitted_fact P _ finalSafe.1 q).mp known⟩

/-- Do not export a bounded witness for a stopped prefix as if the complete
generated task executed. Its records and outside packet remain inspectable. -/
def completeWitness {cap : ResourceVec} {s : SState C G Reg}
    {q : Judgment.{u}} {input : List Submission} (b : Batch P O cap s q input) :
    Option (DiscoveryWitness Judgment meaning G Reg (ProtectedEnv C)) :=
  match b.remaining with
  | [] => some (batchWitness P O b)
  | _ :: _ => none

section Generator

variable {Input : Type x} {Config : Type z}

/-- The untrusted generator has only this permitted view and public target,
not a handle to the protected observer or accepted witness constructor. -/
def publicOutput (view : SState C G Reg → Input) (init : Input → Judgment.{u} → Config)
    (step : Config → Config) (report : Config → List Submission)
    (s : SState C G Reg) (q : Judgment.{u}) (n : Nat) : List Submission :=
  report (iterateStep step n (init (view s) q))

theorem public_same_view (view : SState C G Reg → Input)
    (init : Input → Judgment.{u} → Config) (step : Config → Config)
    (report : Config → List Submission) {s t : SState C G Reg}
    (same : view s = view t) (q : Judgment.{u}) (n : Nat) :
    publicOutput view init step report s q n =
      publicOutput view init step report t q n := by
  unfold publicOutput
  rw [same]

/-- Protected composite of a generator and the independent observer/evaluator.
Its view is the supervisor's state, NOT the untrusted generator's view.
The worker transition receives only its Config; the supervisor retains
the actual initial state and expected target for evaluation of the output. -/
def supervisedStrategy {cap : ResourceVec} (D : Decisions P cap)
    (view : SState C G Reg → Input) (init : Input → Judgment.{u} → Config)
    (step : Config → Config) (report : Config → List Submission) :
    FixedStrategy (scopedModel P D) (ScopedState P D)
      (ScopedState P D × ScopedTarget P D × Config) where
  view := id
  init := fun s q => (s, q, init (view s.val) q.val)
  step := fun c => (c.1, c.2.1, step c.2.2)
  report := fun c =>
    completeWitness P O (evaluate P O D c.1.val c.2.1.val
      c.1.property c.2.1.property (report c.2.2))

theorem supervised_iteration {cap : ResourceVec} (D : Decisions P cap)
    (step : Config → Config) (s : ScopedState P D)
    (q : ScopedTarget P D) (c : Config) (n : Nat) :
    iterateStep (fun a : ScopedState P D × ScopedTarget P D × Config =>
      (a.1, a.2.1, step a.2.2)) n (s, q, c) =
        (s, q, iterateStep step n c) := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [iterateStep, ih]

theorem supervised_output {cap : ResourceVec} (D : Decisions P cap)
    (view : SState C G Reg → Input) (init : Input → Judgment.{u} → Config)
    (step : Config → Config) (report : Config → List Submission)
    (s : ScopedState P D) (q : ScopedTarget P D) (n : Nat) :
    (supervisedStrategy P O D view init step report).output s q n =
      completeWitness P O (evaluate P O D s.val q.val s.property q.property
        (publicOutput view init step report s.val q.val n)) := by
  unfold FixedStrategy.output supervisedStrategy publicOutput
  rw [supervised_iteration]

/-- Separate fixed deductive foundation, exact admission and full cost.
Scope restrictions change the domain, not the underlying execution witness. -/
def qualifyStrategy {cap : ResourceVec} (D : Decisions P cap)
    (bridge : ContextualPolicy P)
    (S : FixedStrategy (scopedModel P D) Input Config)
    (Foundation : Judgment.{u} → Prop)
    (foundation : ∀ (env : ProtectedEnv C) (f : InstantiatedFact Judgment meaning),
      Admitted env f → Foundation f.atom)
    (extra : SState C G Reg → Judgment.{u} → Nat →
      DiscoveryWitness Judgment meaning G Reg (ProtectedEnv C) → Prop)
    (full : SState C G Reg → Judgment.{u} → Nat →
      DiscoveryWitness Judgment meaning G Reg (ProtectedEnv C) → ResourceVec)
    (dominates : ∀ s p n e, extra s p n e → e.cap ≤ full s p n e) :
    StrategyQualification S where
  derives := fun q => Foundation q.val
  admitted := fun s q n e => extra s.val q.val n e
  fullCost := fun s q n e => full s.val q.val n e
  sound := by
    intro s p n e generated valid allowed
    change (discoveryModel P).valid s.val .discover p.val e at valid
    obtain ⟨f, _, same, accepted⟩ := valid.2.2.2.2
    exact same ▸ foundation _ f ((bridge.admission _ _).mp accepted)
  costDominates := fun s p n e h => dominates s.val p.val n e h

theorem supervised_attainable {cap : ResourceVec} (D : Decisions P cap)
    (view : SState C G Reg → Input) (init : Input → Judgment.{u} → Config)
    (step : Config → Config) (report : Config → List Submission)
    (bridge : ContextualPolicy P) (s : ScopedState P D) (q : ScopedTarget P D) (n : Nat)
    (Q : StrategyQualification (supervisedStrategy P O D view init step report))
    (hs : Safe P cap s.val) (pending : Pending s.val.core q.val)
    (complete : (evaluate P O D s.val q.val s.property q.property
      (publicOutput view init step report s.val q.val n)).remaining = [])
    (known : Known (evaluate P O D s.val q.val s.property q.property
      (publicOutput view init step report s.val q.val n)).final.core q.val)
    (admitted : Q.admitted s q n
      (batchWitness P O (evaluate P O D s.val q.val s.property q.property
        (publicOutput view init step report s.val q.val n))))
    {r : ResourceVec}
    (budget : Q.fullCost s q n
      (batchWitness P O (evaluate P O D s.val q.val s.property q.property
        (publicOutput view init step report s.val q.val n))) ≤ r) :
    Attainable (fixedDiscoveryModel (supervisedStrategy P O D view init step report) Q)
      s .discover r q := by
  apply (fixed_attainable_iff _ _ _ _ _).mpr
  refine ⟨n, batchWitness P O _, ?_, ?_, admitted, budget⟩
  · rw [supervised_output]
    simp [completeWitness, complete]
  · exact batch_witness_valid P O bridge _ hs pending known

end Generator
end GRWTSK.Processing.TransactionalDiscovery.ProtectedTransition
