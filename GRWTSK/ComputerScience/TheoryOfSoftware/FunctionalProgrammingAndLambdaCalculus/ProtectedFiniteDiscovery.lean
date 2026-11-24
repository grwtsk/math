import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.TransactionalDiscoveryContext
import GRWTSK.Combinatorics.FixedStrategyAttainability

/-!
# Protected finite discovery: dependent bounds, exact objects and charged refusal

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A0, A03, A07, A09, A10);
Sofic manuscript sections 2.5, 4.1, 4.4, 5.12 and 5.13.
SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact-type review, fresh kernel
replay, transitive axiom audit and independent review: NOT_RUN.

Math parent ce902341748c7695230c191fa46089d9abccefbe; TransactionalDiscoveryContext
f9b09052d2492ac94e3886ca683907d8314700a2, TransactionalDiscovery
8da85c92c61743133682732ddf35ccd4000cbc35, FixedStrategyAttainability
a971a30a546437404013e6d086e9ad8983d31089. Lean v4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.

This is a closed finite *certificate-language model*, not a Lean.Expr decoder,
fresh Lean kernel, authenticated worker, or learned model. Its source/key
strings and one-byte codes are explicitly synthetic fixture identities, not
Git digests or actual Lean proof serialization. The two dependent judgments
quantify n : Nat and i : Fin (n+1). The first proves i.val < n+1; the second
proves i.val <= n. Code 2 applies Nat.le_of_lt_succ to the first proof, code 3
uses the underlying Fin bound directly. Both have the same target but
different code bytes. The protected checked relation recognizes precisely
the three defined closed objects; replay here is another finite predicate,
not a separately executed checker. Soundness follows by decoding the code's
typed meaning and matching the exact expected key. The before/after
snapshots contain only the specified entries, and code 2 has its premise
in the before snapshot. Entry requires the original submission bytes,
key and checked base, not just equality of propositions.

For the two-event fixture the first attempt appends code 2, discharging
its actual premise using the registered proof-producing application.
The second attempt is a hostile observed-object substitution: the original
submission still contains code 2, the observed object contains valid
code 3. It is rejected by exact identity rather than invalidity of the
alternate derivation. A separate extra-hypothesis object is semantically
valid under its own telescope but has a different key. Neither rejection
proves the target false. The existing Step/Run constructors preserve
accepted state on refusal, retain the event suffix and add serial charges.

The public generator enumerates one-byte instruction candidates independently
of protected state. A fixture-specific supervisor recognizes the exact two
observations and returns the corresponding protected run witness. Admission
restricts the witness to the actual initial state, target, stopping index
and fixture run. This is a deterministic qualification example, NOT
independent learned discovery or an implementation of generic search.
The fixed strategy's permitted view is Unit; equal views give equal outputs.
This says nothing about code/model/corpus leakage outside the finite model.
The qualification uses Deductive from the initial registered inference
theory, not semantic Meaning as a substitute for derivability.

Costs are synthetic logical units: stored/resident core cost counts fact
and entry slots; the absolute B/S cap 8 covers old/new slots plus two
event slots in this tiny model. W/T are one declared unit per attempt
including its finite fixture overhead. They are neither physical bytes
nor measured work/time. The two-event plan charges (8,2,8,2); the fixed
adapter proves the exact budget region for this plan, not a global minimum
over all strategies or over the one-event prefix. A real adapter must
include source, model, verifier, storage/trace and resource overhead, bind
submission/observation IDs to event receipts, and enforce protected access.
-/

set_option autoImplicit false

namespace GRWTSK.Processing.TransactionalDiscovery.ProtectedFiniteDiscovery

open GRWTSK.Processing
open GRWTSK.Processing.StateTrace.Resource
open GRWTSK.ResourceAttainability
open GRWTSK.Processing.TransactionalDiscovery
open GRWTSK.Processing.TransactionalDiscovery.Contextual
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

abbrev J := Judgment.{0}

def fixtureKey (name : String) (body : List UInt8) : DeclarationKey where
  source := ⟨"finite-fixture", "dependent-bounds", "finite-certificate-language", name⟩
  sourceBlob := "synthetic-fixture-identity"
  foundationEpoch := "finite-foundation"
  importsIdentity := "Nat-Fin"
  toolchainIdentity := "finite-model-not-Lean-runtime"
  policyIdentity := "exact-object"
  universeParameters := []
  telescopeBytes := [1, 2]
  closedTypeBytes := body

def first : J where
  key := fixtureKey "fixture.bound" [1]
  context := dependentExample
  body := fun a => a.2.1.val < a.1 + 1

def second : J where
  key := fixtureKey "fixture.le" [2]
  context := dependentExample
  body := fun a => a.2.1.val ≤ a.1

theorem first_meaning : meaning first := dependentExample_holds

theorem from_first (h : meaning first) : meaning second := by
  intro a
  exact Nat.le_of_lt_succ (h a)

theorem second_direct : meaning second := by
  intro a
  exact Nat.le_of_lt_succ a.2.1.isLt

theorem keys_distinct : first.key ≠ second.key := by
  intro h
  have hb : ([1] : List UInt8) = [2] :=
    congrArg DeclarationKey.closedTypeBytes h
  exact (by decide : ([1] : List UInt8) ≠ [2]) hb

theorem judgments_distinct : first ≠ second :=
  fun h => keys_distinct (congrArg Judgment.key h)

inductive Code where
  | bound | fromBound | direct
  deriving DecidableEq

def encode : Code → List UInt8
  | .bound => [1]
  | .fromBound => [2]
  | .direct => [3]

def decode (bytes : List UInt8) : Option Code :=
  if bytes = [1] then some .bound
  else if bytes = [2] then some .fromBound
  else if bytes = [3] then some .direct
  else none

theorem decode_encode (c : Code) : decode (encode c) = some c := by
  cases c <;> decide

example : decode [2, 0] = none := by decide

def judgmentFor : Code → J
  | .bound => first
  | .fromBound => second
  | .direct => second

theorem code_meaning (c : Code) : meaning (judgmentFor c) := by
  cases c
  · exact first_meaning
  · exact from_first first_meaning
  · exact second_direct

def depsFor : Code → List String
  | .fromBound => ["fixture.bound"]
  | _ => []

def baseFor : Code → String
  | .bound => "seed"
  | _ => "before"

def objectFor (c : Code) : ClosedObject where
  key := (judgmentFor c).key
  proofBytes := encode c
  kind := .theoremDecl
  freeVariables := []
  metavariables := []
  dependencies := depsFor c
  axioms := []
  checkedBase := baseFor c

def submissionFor (c : Code) : Submission :=
  ⟨(judgmentFor c).key, encode c, baseFor c⟩

def expected (j : J) : Prop := j = first ∨ j = second

theorem expected_code (c : Code) : expected (judgmentFor c) := by
  cases c <;> simp [expected, judgmentFor]

theorem expected_unique (j k : J) (hj : expected j) (hk : expected k)
    (same : j.key = k.key) : j = k := by
  rcases hj with rfl | rfl <;> rcases hk with rfl | rfl
  · rfl
  · exact (keys_distinct same).elim
  · exact (keys_distinct same.symm).elim
  · rfl

def checker : TrustedChecker.{0} where
  foundationEpoch := "finite-foundation"
  policyIdentity := "exact-object"
  extendsSnapshot := fun a b => a = b ∨ (a = "before" ∧ b = "after")
  expected := expected
  expectedUnique := expected_unique
  checked := fun o => ∃ c, decode o.proofBytes = some c ∧ o = objectFor c
  replayed := fun o => ∃ c, o = objectFor c ∧ decode o.proofBytes = some c
  present := fun snap o =>
    (snap = "before" ∧ o = objectFor .bound) ∨
    (snap = "after" ∧ (o = objectFor .bound ∨ o = objectFor .fromBound))
  allowedAxiom := fun _ => False
  allowedDependency := fun j d => j = second ∧ d = "fixture.bound"
  sound := by
    intro j o hj ho same
    obtain ⟨c, _, rfl⟩ := ho
    have eq : judgmentFor c = j :=
      expected_unique _ _ (expected_code c) hj same
    exact eq ▸ code_meaning c

theorem code_gate (c : Code) : Gate checker (judgmentFor c) (objectFor c) := by
  refine ⟨expected_code c, ?_, ?_, rfl, ?_, ?_, rfl, rfl, rfl, ?_, ?_⟩
  · cases c <;> rfl
  · cases c <;> rfl
  · exact ⟨c, decode_encode c, rfl⟩
  · exact ⟨c, rfl, decode_encode c⟩
  · intro a ha
    change a ∈ ([] : List String) at ha
    simp at ha
  · intro d hd
    cases c
    · simp [objectFor, depsFor] at hd
    · change d ∈ ["fixture.bound"] at hd
      exact ⟨rfl, List.mem_singleton.mp hd⟩
    · simp [objectFor, depsFor] at hd

def entryFor (c : Code) : Entry checker :=
  ⟨judgmentFor c, submissionFor c, objectFor c, code_gate c, rfl, rfl, rfl⟩

/-- Existential entry with precisely these external inputs, not any valid
proof of the same proposition. -/
def ExactEntry (j : J) (s : Submission) (o : ClosedObject) : Prop :=
  ∃ e : Entry checker, e.judgment = j ∧ e.submission = s ∧ e.object = o

theorem exact_entry_iff (j : J) (s : Submission) (o : ClosedObject) :
    ExactEntry j s o ↔ Gate checker j o ∧ s.key = o.key ∧
      s.proofBytes = o.proofBytes ∧ s.checkedBase = o.checkedBase := by
  constructor
  · rintro ⟨e, rfl, rfl, rfl⟩
    exact ⟨e.gate, e.submittedKey, e.submittedProof, e.submittedBase⟩
  · rintro ⟨g, hk, hp, hb⟩
    exact ⟨⟨j, s, o, g, hk, hp, hb⟩, rfl, rfl, rfl⟩

theorem original_accepted :
    ExactEntry second (submissionFor .fromBound) (objectFor .fromBound) :=
  ⟨entryFor .fromBound, rfl, rfl, rfl⟩

theorem alternate_individually_valid :
    Gate checker second (objectFor .direct) := code_gate .direct

/-- A valid alternate proof does not authenticate the submitted proof bytes. -/
theorem substitution_rejected :
    ¬ ExactEntry second (submissionFor .fromBound) (objectFor .direct) := by
  intro h
  have eq := ((exact_entry_iff _ _ _).mp h).2.2.1
  change ([2] : List UInt8) = [3] at eq
  exact (by decide : ([2] : List UInt8) ≠ [3]) eq

def extendedContext : Telescope.{0} :=
  .bind ⟨0, "n"⟩ Nat (fun n =>
    .bind ⟨1, "i"⟩ (Fin (n + 1)) (fun i =>
      assume ⟨2, "h"⟩ (i.val = 0) (fun _ => .nil)))

def conditionalSecond : J where
  key := { second.key with telescopeBytes := [1, 2, 3], closedTypeBytes := [2, 3] }
  context := extendedContext
  body := fun a => a.2.1.val ≤ a.1

theorem conditional_meaning : meaning conditionalSecond := by
  intro a
  exact Nat.le_of_lt_succ a.2.1.isLt

def conditionalObject : ClosedObject :=
  { objectFor .direct with key := conditionalSecond.key, proofBytes := [4] }

theorem extra_assumption_rejected :
    meaning conditionalSecond ∧ ¬ Gate checker second conditionalObject := by
  refine ⟨conditional_meaning, gate_reject_wrong_key checker ?_⟩
  intro h
  have hb : ([1, 2, 3] : List UInt8) = [1, 2] :=
    congrArg DeclarationKey.telescopeBytes h
  exact (by decide : ([1, 2, 3] : List UInt8) ≠ [1, 2]) hb

abbrev Env := ProtectedEnv checker
abbrev Fact := InstantiatedFact J meaning
abbrev CState := Core J meaning Unit Unit Env
abbrev SState := State J meaning Unit Unit Env
abbrev Result := AttemptResult J meaning Unit Unit Env

def entry0 := entryFor .bound
def entry1 := entryFor .fromBound

def before : Env where
  snapshot := "before"
  entries := [entry0]
  present := by
    intro e he
    have eq := List.mem_singleton.mp he
    subst e
    exact Or.inl ⟨rfl, rfl⟩
  noConflict := by
    intro e f he hf _
    have eqe := List.mem_singleton.mp he
    have eqf := List.mem_singleton.mp hf
    subst e
    subst f
    rfl

def after : Env where
  snapshot := "after"
  entries := [entry0, entry1]
  present := by
    intro e he
    change e ∈ [entry0, entry1] at he
    simp only [List.mem_cons, List.not_mem_nil, or_false] at he
    rcases he with rfl | rfl
    · exact Or.inr ⟨rfl, Or.inl rfl⟩
    · exact Or.inr ⟨rfl, Or.inr rfl⟩
  noConflict := by
    intro e f he hf hn
    change e ∈ [entry0, entry1] at he
    change f ∈ [entry0, entry1] at hf
    simp only [List.mem_cons, List.not_mem_nil, or_false] at he hf
    rcases he with rfl | rfl <;> rcases hf with rfl | rfl
    · rfl
    · change "fixture.bound" = "fixture.le" at hn
      exact ((by decide : "fixture.bound" ≠ "fixture.le") hn).elim
    · change "fixture.le" = "fixture.bound" at hn
      exact ((by decide : "fixture.le" ≠ "fixture.bound") hn).elim
    · rfl

theorem extend_snapshot : Extends before after :=
  ⟨Or.inr ⟨rfl, rfl⟩, [entry1], rfl⟩

theorem prior_dependency_present :
    (objectFor .fromBound).checkedBase = before.snapshot ∧
    checker.present before.snapshot (objectFor .bound) ∧
    "fixture.bound" ∈ (objectFor .fromBound).dependencies :=
  ⟨rfl, Or.inl ⟨rfl, rfl⟩, List.mem_singleton.mpr rfl⟩

/-- The supplied bound is really a premise of this application. -/
def boundApplication : InstantiatedApplication J meaning where
  sourceClaim := some second.key.source
  rule := ⟨[first], second⟩
  consequence := fun hp => from_first (hp first (List.mem_singleton.mpr rfl))

def slots (c : CState) : Nat :=
  c.environment.entries.length + c.facts.length

def P : Policy J meaning Unit Unit Env Unit :=
  Contextual.policy checker [boundApplication]
    (fun j r => j = second ∧ r = boundApplication.rule)
    (fun g => g = ()) id (fun g r => g = () ∧ r = ()) slots slots

def initialCore : CState := ⟨(), [entry0.fact], {second}, (), before⟩
def initial : SState := ⟨initialCore, []⟩

theorem initial_pending : Pending initial.core second := by
  refine ⟨rfl, ?_⟩
  intro h
  change second ∈ [first] at h
  exact judgments_distinct (List.mem_singleton.mp h).symm

theorem initial_premises (p : J) (h : p ∈ boundApplication.rule.premises) :
    Deductive P initial.core p := by
  apply Derivable.assumption
  change p ∈ [first] at h
  change p ∈ [first]
  exact h

theorem initial_derives_second : Deductive P initial.core second := by
  apply Derivable.application boundApplication.rule
  · change boundApplication.rule ∈ [boundApplication.rule]
    exact List.mem_singleton.mpr rfl
  · exact initial_premises

def selected : SelectedBranch J := ⟨second, boundApplication.rule⟩

def delta : Delta J meaning Unit Unit Env where
  graph := ()
  added := [entry1.fact]
  branches := [selected]
  newTargets := ∅
  registry := ()
  environment := after
  solved := true

theorem committed_known : Known (applyDelta initial.core delta) second := by
  change second ∈ [first, second]
  simp

theorem delta_valid : ValidDelta P initial.core second delta := by
  refine ⟨initial_pending, extend_snapshot, rfl, rfl, ⟨rfl, rfl⟩, ?_, ?_, ?_⟩
  · intro f hf
    change f ∈ [entry1.fact] at hf
    have same := List.mem_singleton.mp hf
    subst f
    exact ⟨entry1, by change entry1 ∈ [entry0, entry1]; simp, rfl⟩
  · intro b hb
    change b ∈ [selected] at hb
    have same := List.mem_singleton.mp hb
    subst b
    refine ⟨⟨rfl, rfl⟩, boundApplication, ?_, rfl, rfl, initial_premises, ?_⟩
    · exact List.mem_singleton.mpr rfl
    · change _ ∈ [entry1.fact]
      -- Same atom and source claim; proof irrelevance is NOT byte equality.
      exact List.mem_singleton.mpr rfl
  · constructor
    · intro _
      exact committed_known
    · intro _
      rfl

def cap : ResourceVec := ![8, 2, 8, 2]
def charge : Charge := ⟨8, 1, 8, 1⟩

theorem safe_initial : Safe P cap initial := by
  refine ⟨⟨rfl, ⟨rfl, rfl⟩, ?_⟩, ?_, ?_, ?_, ?_, ?_⟩
  · intro f hf
    change f ∈ [entry0.fact] at hf
    have same := List.mem_singleton.mp hf
    subst f
    exact ⟨entry0, List.mem_singleton.mpr rfl, rfl⟩
  · change 2 ≤ 8
    decide
  · change 2 ≤ 8
    decide
  · change 0 ≤ 2
    decide
  · change 0 ≤ 2
    decide
  · intro e he
    change e ∈ [] at he
    simp at he

def accepted : Result :=
  finish initial (applyDelta initial.core delta) second (.success true) charge

def rejected : Result :=
  finish accepted.state accepted.state.core second (.refused .invalidCandidate) charge

theorem accepted_step : Step P cap second initial accepted := by
  apply Step.commit delta charge cap
  · refine ⟨le_rfl, ?_, ?_, ?_, ?_⟩
    · change 2 ≤ 8
      decide
    · change 2 ≤ 8
      decide
    · change 0 + 2 ≤ 2
      decide
    · change 0 + 2 ≤ 2
      decide
  · change 8 ≤ 8 ∧ 1 ≤ 2 ∧ 8 ≤ 8 ∧ 1 ≤ 2
    decide
  · exact delta_valid
  · change 2 ≤ 8 ∧ 4 ≤ 8 ∧ 2 ≤ 8 ∧ 4 ≤ 8 ∧
      8 ≤ 8 ∧ 8 ≤ 8 ∧ 0 + 1 ≤ 2 ∧ 0 + 1 ≤ 2
    decide

theorem rejected_step : Step P cap second accepted.state rejected := by
  apply Step.refused .invalidCandidate charge
  change 4 ≤ 8 ∧ 4 ≤ 8 ∧ 4 ≤ 8 ∧ 4 ≤ 8 ∧
    8 ≤ 8 ∧ 8 ≤ 8 ∧ 1 + 1 ≤ 2 ∧ 1 + 1 ≤ 2
  decide

/-- The second receipt is tied to the actual rejected object pair in this
fixture. The generic Event alone does not store submission bytes. -/
theorem rejected_exact_and_atomic :
    ¬ ExactEntry second (submissionFor .fromBound) (objectFor .direct) ∧
    rejected.state.core = accepted.state.core := by
  refine ⟨substitution_rejected, ?_⟩
  apply step_rejection_atomic P cap rejected_step
  intro b h
  cases h

def events : List (Event J) := accepted.events ++ rejected.events

theorem fixture_run : Run P cap initial events rejected.state :=
  Run.cons accepted_step (Run.single P cap rejected_step)

theorem retained_and_charged :
    Safe P cap rejected.state ∧
    (∀ p, Deductive P initial.core p → Deductive P rejected.state.core p) ∧
    rejected.state.trace = initial.trace ++ events ∧
    cost workCharge rejected.state.trace = 2 ∧
    cost timeCharge rejected.state.trace = 2 := by
  refine ⟨run_safe P cap fixture_run safe_initial,
    fun _ => run_deductive_mono P cap fixture_run,
    run_trace P cap fixture_run, rfl, rfl⟩

theorem final_known : Known rejected.state.core second := committed_known

theorem final_exact_entry :
    ∃ e : Entry checker, e ∈ rejected.state.core.environment.entries ∧
      e.submission = submissionFor .fromBound ∧
      e.object = objectFor .fromBound ∧ e.judgment = second := by
  refine ⟨entry1, ?_, rfl, rfl, rfl⟩
  change entry1 ∈ [entry0, entry1]
  simp

/-- Use the imported discover-only relational model; the fixed adapter
adds actual generator and protected fixture admission conditions. -/
def witness : DiscoveryWitness J meaning Unit Unit Env :=
  ⟨cap, events, rejected.state⟩

theorem witness_valid : (discoveryModel P).valid initial .discover second witness := by
  refine ⟨rfl, initial_pending, safe_initial, fixture_run, ?_⟩
  have safe := run_safe P cap fixture_run safe_initial
  exact (known_iff_admitted_fact P _ safe.1 second).mp final_known

/-- Public enumeration of the first n candidate instruction bytes.
No protected snapshot, proof bytes or other hidden state are inputs. -/
def candidatePackets (n : Nat) : List (List UInt8) :=
  (List.range n).map (fun k => [UInt8.ofNat (k + 2)])

/-- A deliberately closed supervisor for the one qualified fixture run.
The original submitted code remains 2 in the second hostile observation.
Returning the run does not expose a worker-side protected constructor. -/
def supervise (packets : List (List UInt8)) :
    Option (DiscoveryWitness J meaning Unit Unit Env) :=
  if packets = [[2], [3]] then some witness else none

def strategy : FixedStrategy (discoveryModel P) Unit Nat where
  view := fun _ => ()
  init := fun _ _ => 0
  step := Nat.succ
  report := fun n => supervise (candidatePackets n)

theorem generated_witness : strategy.output initial second 2 = some witness := by
  have packets : candidatePackets 2 = [[2], [3]] := by decide
  change supervise (candidatePackets 2) = some witness
  simp [supervise, packets]

theorem hidden_view_noninterference (s t : SState) (p : J) (n : Nat) :
    strategy.output s p n = strategy.output t p n :=
  same_view_output strategy rfl p n

def qualification : StrategyQualification strategy where
  derives := Deductive P initial.core
  admitted := fun s p n e => s = initial ∧ p = second ∧ n = 2 ∧ e = witness
  fullCost := fun _ _ _ e => e.cap
  sound := by
    intro s p n e _ _ h
    rw [h.2.1]
    exact initial_derives_second
  costDominates := by
    intro s p n e _
    exact le_rfl

theorem fixed_budget_iff (r : ResourceVec) :
    Attainable (fixedDiscoveryModel strategy qualification) initial .discover r second
      ↔ cap ≤ r := by
  constructor
  · intro h
    obtain ⟨n, e, _, _, ha, hc⟩ :=
      (fixed_attainable_iff strategy qualification initial second r).mp h
    have same : e = witness := ha.2.2.2
    subst e
    exact hc
  · intro h
    apply (fixed_attainable_iff strategy qualification initial second r).mpr
    exact ⟨2, witness, generated_witness, witness_valid,
      ⟨rfl, rfl, rfl, rfl⟩, h⟩

theorem insufficient_work :
    ¬ Attainable (fixedDiscoveryModel strategy qualification)
      initial .discover (![8, 1, 8, 2] : ResourceVec) second := by
  intro h
  have le := (fixed_budget_iff _).mp h
  have impossible : (2 : Nat) ≤ 1 := le 1
  omega

end GRWTSK.Processing.TransactionalDiscovery.ProtectedFiniteDiscovery
