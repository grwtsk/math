import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.ProtectedFiniteTransition

/-!
# Protected finite discovery: dependent bounds, exact objects and charged refusal

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A0, A03, A07, A09, A10);
Sofic manuscript sections 2.5, 4.1, 4.4, 5.12 and 5.13.
SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact-type review, fresh kernel
replay, transitive axiom audit and independent review: NOT_RUN.

Math parent 91d97ba1a8aacd10fb7a64be382431c9bc223aec; prior fixture blob
0a15efbec2d080a7d71c1298e7d73d1d211f0d1a; TransactionalDiscoveryContext
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

The general ProtectedTransition evaluator now consumes arbitrary finite
submission lists and independently resolved observations at the attained
state; there is no input-list match that returns a prebuilt run. The
closed two-event witness remains an exact regression oracle. Its positive
and hostile packets are passed through the general classifier for any
correct supplied decision procedure. The finite observer decodes its
instruction language; a separately selected hostile observer substitutes
code 3 on the second attempt. The public generator sees Unit, reports
submissions only, and is evaluated by the protected composite strategy.
The finite checker/target/dependency and resource decision procedures
are now supplied constructively on the proved finite domain; no arbitrary
context decidability or actual runtime execution is claimed. The proof-mode qualification uses Deductive
from the initial registered inference theory, not semantic Meaning.
This public hand-authored fixture is not independent learned discovery.

Costs are synthetic logical units: stored/resident core cost counts fact
and entry slots; the absolute B/S cap 8 covers old/new slots plus two
event slots in this tiny model. W/T are one declared unit per attempt
including its finite fixture overhead. They are neither physical bytes
nor measured work/time. The two-event plan charges (8,2,8,2); the fixed
adapter proves the exact budget region for this plan, not a global minimum
over all strategies or over the one-event prefix. The general evaluator binds submission and observation to receipts; the
runtime adapter must include source, model, verifier, storage/trace and
resource overhead and enforce protected access. The scoped decision kit below uses structural equality and finite scans.
No classical decision oracle or actual Lean replay is asserted.
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

theorem regression_decode_trailing_bytes : decode [2, 0] = none := by decide

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

/-! Reuse the general evaluator for the finite language. The closed run
above is a regression oracle, not an alternate execution path. -/

namespace Evaluation

open GRWTSK.Processing.TransactionalDiscovery.ProtectedTransition

/-- Decoding an unrecognized instruction supplies a rejected finite-language
object, never a fabricated Lean theorem. -/
def observeCode (sub : Submission) : ClosedObject :=
  match decode sub.proofBytes with
  | some c => objectFor c
  | none =>
    let o := objectFor .direct
    { o with
      key := sub.key
      proofBytes := sub.proofBytes
      checkedBase := sub.checkedBase
      kind := .definitionDecl }

/-- In the hostile variant the independently observed object after the first
append is deliberately substituted. The submission is retained verbatim.
Both variants accept arbitrary finite submissions; the fixture's snapshot
language intentionally permits installation only of the designated entry. -/
def packetAt (hostile : Bool) (s : SState) (q : J) (sub : Submission) :
    Packet.{0} :=
  ⟨q, sub,
    if hostile = true ∧ s.core.environment.snapshot = "after"
      then objectFor .direct else observeCode sub,
    "after", cap, charge⟩

def finiteObserver (hostile : Bool) :
    Observer (C := checker) (G := Unit) (Reg := Unit) where
  observe := fun s q sub => some (packetAt hostile s q sub)
  bound := by
    intro s q sub a h
    have same := Option.some.inj h
    subst a
    exact ⟨rfl, rfl⟩

theorem policy_bridge : ContextualPolicy P :=
  ⟨fun _ _ => Iff.rfl, fun _ _ => Iff.rfl⟩

/-! Constructive decision kit. Arbitrary dependent functions are NOT
compared. The protected expected inventory has two canonical judgments;
expected_unique proves that key equality reflects their actual equality.
The original target set and fact list are the only inventories. -/

deriving instance DecidableEq for SourceClaim
deriving instance DecidableEq for DeclarationKey
deriving instance DecidableEq for DeclKind
deriving instance DecidableEq for ClosedObject
deriving instance DecidableEq for Submission

/-- Transport a constructive decision along an actual iff. -/
private def via {p q : Prop} (d : Decidable p) (h : p ↔ q) : Decidable q :=
  match d with
  | .isTrue hp => .isTrue (h.mp hp)
  | .isFalse hp => .isFalse (fun hq => hp (h.mpr hq))

universe a

/-- Finite scans require no equality on proof-bearing entries. -/
private def allList {A : Type a} (p : A → Prop) (test : ∀ a, Decidable (p a)) :
    (xs : List A) → Decidable (∀ a, a ∈ xs → p a)
  | [] => .isTrue (by simp)
  | x :: xs =>
    match test x with
    | .isFalse bad => .isFalse (fun h => bad (h x (List.mem_cons.mpr (Or.inl rfl))))
    | .isTrue good =>
      match allList p test xs with
      | .isFalse bad => .isFalse (fun h => bad (fun a ha => h a (List.mem_cons_of_mem _ ha)))
      | .isTrue tail => .isTrue (by
          intro a ha
          rcases List.mem_cons.mp ha with rfl | ha
          · exact good
          · exact tail a ha)

private def anyList {A : Type a} (p : A → Prop) (test : ∀ a, Decidable (p a)) :
    (xs : List A) → Decidable (∃ a, a ∈ xs ∧ p a)
  | [] => .isFalse (by simp)
  | x :: xs =>
    match test x with
    | .isTrue good => .isTrue ⟨x, List.mem_cons.mpr (Or.inl rfl), good⟩
    | .isFalse bad =>
      match anyList p test xs with
      | .isTrue tail => .isTrue (by
          obtain ⟨a, ha, hp⟩ := tail
          exact ⟨a, List.mem_cons_of_mem _ ha, hp⟩)
      | .isFalse no => .isFalse (by
          rintro ⟨a, ha, hp⟩
          rcases List.mem_cons.mp ha with rfl | ha
          · exact bad hp
          · exact no ⟨a, ha, hp⟩)

def codeInventory : List Code := [.bound, .fromBound, .direct]

theorem code_mem (c : Code) : c ∈ codeInventory := by
  cases c <;> decide

def checkedDec (o : ClosedObject) : Decidable (checker.checked o) :=
  via (anyList (fun c => decode o.proofBytes = some c ∧ o = objectFor c)
    (fun c => inferInstance) codeInventory) (by
      constructor
      · rintro ⟨c, _, h, eq⟩
        exact ⟨c, h, eq⟩
      · rintro ⟨c, h, eq⟩
        exact ⟨c, code_mem c, h, eq⟩)

theorem gate_iff_checked_key (j : J) (o : ClosedObject) (hj : expected j) :
    Gate checker j o ↔ checker.checked o ∧ o.key = j.key := by
  constructor
  · intro h
    exact ⟨h.checked, h.exactKey⟩
  · rintro ⟨h, same⟩
    obtain ⟨c, _, rfl⟩ := h
    have eq : judgmentFor c = j :=
      expected_unique _ _ (expected_code c) hj same
    rw [← eq]
    exact code_gate c

def gateDec (j : J) (o : ClosedObject) (hj : expected j) :
    Decidable (Gate checker j o) :=
  letI : Decidable (checker.checked o) := checkedDec o
  via (inferInstanceAs (Decidable (checker.checked o ∧ o.key = j.key)))
    (gate_iff_checked_key j o hj).symm

def presentDec (snap : String) (o : ClosedObject) : Decidable (checker.present snap o) := by
  change Decidable ((snap = "before" ∧ o = objectFor .bound) ∨
    (snap = "after" ∧ (o = objectFor .bound ∨ o = objectFor .fromBound)))
  infer_instance

def extendsDec (a b : String) : Decidable (checker.extendsSnapshot a b) := by
  change Decidable (a = b ∨ (a = "before" ∧ b = "after"))
  infer_instance

/-- Scope is an invariant, not an algorithm for deciding equality of
arbitrary sets/functions. The protected input must supply the scope proof. -/
def finiteScope (c : CState) : Prop :=
  c.targets = {second} ∧ ∀ f, f ∈ c.facts → expected f.atom

theorem initial_scope : finiteScope initial.core := by
  refine ⟨rfl, ?_⟩
  intro f hf
  change f ∈ [entry0.fact] at hf
  have same := List.mem_singleton.mp hf
  subst f
  exact Or.inl rfl

theorem known_key_iff (c : CState) (q : J)
    (hc : finiteScope c) (hq : expected q) :
    Known c q ↔ ∃ f : Fact, f ∈ c.facts ∧ f.atom.key = q.key := by
  constructor
  · intro h
    obtain ⟨f, hf, same⟩ := (mem_eraseFacts_iff _ _).mp h
    exact ⟨f, hf, congrArg Judgment.key same⟩
  · rintro ⟨f, hf, same⟩
    exact (mem_eraseFacts_iff _ _).mpr
      ⟨f, hf, expected_unique _ _ (hc.2 f hf) hq same⟩

theorem target_key_iff (c : CState) (q : J)
    (hc : finiteScope c) (hq : expected q) :
    q.key = second.key ↔ q ∈ c.targets := by
  rw [hc.1]
  change q.key = second.key ↔ q = second
  exact ⟨fun h => expected_unique _ _ hq (Or.inr rfl) h,
    congrArg Judgment.key⟩

def pendingDec (s : SState) (q : J) (hs : finiteScope s.core)
    (hq : expected q) : Decidable (Pending s.core q) :=
  letI : Decidable (∃ f : Fact, f ∈ s.core.facts ∧ f.atom.key = q.key) :=
    anyList (fun f : Fact => f.atom.key = q.key) (fun _ => inferInstance) s.core.facts
  via (inferInstanceAs (Decidable (q.key = second.key ∧
    ¬ ∃ f : Fact, f ∈ s.core.facts ∧ f.atom.key = q.key)))
    (and_congr (target_key_iff s.core q hs hq) (not_congr (known_key_iff s.core q hs hq).symm))

def dependencyDec (s : SState) (a : Packet.{0}) : Decidable (PriorDependencies s a) :=
  allList (fun d => ∃ e : Entry checker, e ∈ s.core.environment.entries ∧
      e.object.key.source.declaration = d)
    (fun d => anyList (fun e : Entry checker => e.object.key.source.declaration = d)
      (fun _ => inferInstance) s.core.environment.entries) a.observed.dependencies

def appendDec (s : SState) (a : Packet.{0}) : Decidable (AppendOK s a) := by
  letI : Decidable (checker.extendsSnapshot s.core.environment.snapshot a.nextSnapshot) :=
    extendsDec s.core.environment.snapshot a.nextSnapshot
  letI : Decidable (∀ e : Entry checker, e ∈ s.core.environment.entries →
      checker.present a.nextSnapshot e.object) :=
    allList (fun e : Entry checker => checker.present a.nextSnapshot e.object)
      (fun e => presentDec a.nextSnapshot e.object) s.core.environment.entries
  letI : Decidable (checker.present a.nextSnapshot a.observed) :=
    presentDec a.nextSnapshot a.observed
  letI : Decidable (∀ e : Entry checker, e ∈ s.core.environment.entries →
      e.object.key.source.declaration ≠ a.observed.key.source.declaration) :=
    allList (fun e : Entry checker =>
      e.object.key.source.declaration ≠ a.observed.key.source.declaration)
      (fun _ => inferInstance) s.core.environment.entries
  let d : Decidable (
      checker.extendsSnapshot s.core.environment.snapshot a.nextSnapshot ∧
      (∀ e : Entry checker, e ∈ s.core.environment.entries → checker.present a.nextSnapshot e.object) ∧
      checker.present a.nextSnapshot a.observed ∧
      (∀ e : Entry checker, e ∈ s.core.environment.entries →
        e.object.key.source.declaration ≠ a.observed.key.source.declaration)) :=
    inferInstance
  refine via d ?_
  constructor
  · rintro ⟨he, hr, hi, hf⟩
    exact ⟨he, hr, hi, hf⟩
  · intro h
    exact ⟨h.«extends», h.retained, h.installed, h.fresh⟩

def checkDec (s : SState) (a : Packet.{0}) (hs : finiteScope s.core)
    (hq : expected a.target) : ∀ k, Decidable (Pass s a k)
  | .target => inferInstanceAs (Decidable
      (a.submission.key = a.target.key ∧ a.observed.key = a.target.key))
  | .proof => inferInstanceAs (Decidable (a.submission.proofBytes = a.observed.proofBytes))
  | .base => inferInstanceAs (Decidable (a.submission.checkedBase = a.observed.checkedBase ∧
      a.observed.checkedBase = s.core.environment.snapshot))
  | .gate => gateDec a.target a.observed hq
  | .pending => pendingDec s a.target hs hq
  | .dependencies => dependencyDec s a
  | .append => appendDec s a

def resourceLEDec (r b : ResourceVec) : Decidable (r ≤ b) := by
  let d : Decidable (r 0 ≤ b 0 ∧ r 1 ≤ b 1 ∧ r 2 ≤ b 2 ∧ r 3 ≤ b 3) :=
    inferInstance
  refine via d ?_
  constructor
  · rintro ⟨h0, h1, h2, h3⟩
    change ∀ i : Fin 4, r i ≤ b i
    intro i
    fin_cases i
    · exact h0
    · exact h1
    · exact h2
    · exact h3
  · intro h
    exact ⟨h 0, h 1, h 2, h 3⟩

def fitsDec (limit : ResourceVec) (s : SState) (c : CState) (a : Charge) :
    Decidable (Fits P limit s c a) := by
  unfold Fits
  infer_instance

def reservationDec (limit : ResourceVec) (s : SState) (r : ResourceVec) :
    Decidable (ReservationFits P limit s r) := by
  letI : Decidable (r ≤ limit) := resourceLEDec r limit
  unfold ReservationFits
  infer_instance

def withinDec (a : Charge) (r : ResourceVec) : Decidable (ChargeWithin a r) := by
  unfold ChargeWithin
  infer_instance

def budgetDec (limit : ResourceVec) (s : SState) (a : Packet.{0}) (h : Eligible s a) :
    Decidable (CommitBudget P limit s a h) := by
  letI := reservationDec limit s a.reservation
  letI := withinDec a.charge a.reservation
  letI := fitsDec limit s (applyDelta s.core (appendDelta s a h)) a.charge
  unfold CommitBudget
  infer_instance

theorem scope_closed (s : SState) (a : Packet.{0}) (h : Eligible s a)
    (hs : finiteScope s.core) (hq : expected a.target) :
    finiteScope (applyDelta s.core (appendDelta s a h)) := by
  refine ⟨?_, ?_⟩
  · change s.core.targets ∪ ∅ = {second}
    rw [Set.union_empty, hs.1]
  · intro f hf
    change f ∈ s.core.facts ++ [(entry s a h).fact] at hf
    rcases List.mem_append.mp hf with old | new
    · exact hs.2 f old
    · have same := List.mem_singleton.mp new
      subst f
      exact hq

/-- Actual constructive implementation of the scoped Decisions interface. -/
def decisions (limit : ResourceVec) : Decisions P limit where
  scope := finiteScope
  target := expected
  check := checkDec
  refusalFits := fun s a => fitsDec limit s s.core a.charge
  commitFits := budgetDec limit
  closed := scope_closed

/-- Boolean observation of the exact proof-producing decision, not a
second classifier. The iff is valid for every scoped state and target. -/
def bit {p : Prop} (d : Decidable p) : Bool :=
  match d with
  | .isTrue _ => true
  | .isFalse _ => false

theorem bit_iff {p : Prop} (d : Decidable p) : bit d = true ↔ p := by
  cases d with
  | isTrue h => exact ⟨fun _ => h, fun _ => rfl⟩
  | isFalse h => exact ⟨fun eq => False.elim (by cases eq), fun hp => (h hp).elim⟩

theorem every_check_exact (s : SState) (a : Packet.{0})
    (hs : finiteScope s.core) (hq : expected a.target) (k : Check) :
    bit ((decisions cap).check s a hs hq k) = true ↔ Pass s a k :=
  bit_iff _

theorem resource_checks_exact (limit : ResourceVec) (s : SState)
    (a : Packet.{0}) (h : Eligible s a) :
    (bit ((decisions limit).refusalFits s a) = true ↔ Fits P limit s s.core a.charge) ∧
    (bit ((decisions limit).commitFits s a h) = true ↔ CommitBudget P limit s a h) :=
  ⟨bit_iff _, bit_iff _⟩

abbrev D := decisions cap

def start : ScopedState P D := ⟨initial, initial_scope⟩
def goal : ScopedTarget P D := ⟨second, Or.inr rfl⟩

def proposed : Submission := submissionFor .fromBound

def firstPacket : Packet.{0} :=
  ⟨second, proposed, objectFor .fromBound, "after", cap, charge⟩

def secondPacket : Packet.{0} :=
  ⟨second, proposed, objectFor .direct, "after", cap, charge⟩

theorem observe_first :
    (finiteObserver true).observe initial second proposed = some firstPacket := by
  have different : initial.core.environment.snapshot ≠ "after" := by
    change "before" ≠ "after"
    decide
  simp [finiteObserver, packetAt, different, observeCode, proposed,
    submissionFor, decode_encode, firstPacket]

theorem observe_second :
    (finiteObserver true).observe accepted.state second proposed = some secondPacket := by
  have same : accepted.state.core.environment.snapshot = "after" := rfl
  simp [finiteObserver, packetAt, same, secondPacket]

theorem first_eligible : Eligible initial firstPacket := by
  intro k
  cases k with
  | target => exact ⟨rfl, rfl⟩
  | proof => rfl
  | base => exact ⟨rfl, rfl⟩
  | gate => exact code_gate .fromBound
  | pending => exact initial_pending
  | dependencies =>
    intro d hd
    change d ∈ ["fixture.bound"] at hd
    have same := List.mem_singleton.mp hd
    exact ⟨entry0, List.mem_singleton.mpr rfl, same.symm⟩
  | append =>
    refine ⟨Or.inr ⟨rfl, rfl⟩, ?_, Or.inr ⟨rfl, Or.inr rfl⟩, ?_⟩
    · intro e he
      change e ∈ [entry0] at he
      have same := List.mem_singleton.mp he
      subst e
      exact Or.inr ⟨rfl, Or.inl rfl⟩
    · intro e he
      change e ∈ [entry0] at he
      have same := List.mem_singleton.mp he
      subst e
      change "fixture.bound" ≠ "fixture.le"
      decide

theorem first_budget : CommitBudget P cap initial firstPacket first_eligible := by
  refine ⟨?_, ?_, ?_⟩
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
  · change 2 ≤ 8 ∧ 4 ≤ 8 ∧ 2 ≤ 8 ∧ 4 ≤ 8 ∧
      8 ≤ 8 ∧ 8 ≤ 8 ∧ 0 + 1 ≤ 2 ∧ 0 + 1 ≤ 2
    decide

def firstReceipt : Receipt P cap initial firstPacket :=
  .accept first_eligible first_budget

theorem first_result : firstReceipt.result P = accepted := rfl

theorem second_bad : ¬ Eligible accepted.state secondPacket := by
  intro h
  have same := h .proof
  change ([2] : List UInt8) = [3] at same
  exact (by decide : ([2] : List UInt8) ≠ [3]) same

theorem second_fits : Fits P cap accepted.state accepted.state.core secondPacket.charge := by
  change 4 ≤ 8 ∧ 4 ≤ 8 ∧ 4 ≤ 8 ∧ 4 ≤ 8 ∧
    8 ≤ 8 ∧ 8 ≤ 8 ∧ 1 + 1 ≤ 2 ∧ 1 + 1 ≤ 2
  decide

theorem accepted_scope : finiteScope accepted.state.core :=
  scope_closed initial firstPacket first_eligible initial_scope (Or.inr rfl)

theorem generic_first :
    evaluateOne P D initial firstPacket initial_scope (Or.inr rfl) = .completed firstReceipt :=
  evaluateOne_accept P D initial firstPacket initial_scope (Or.inr rfl) first_eligible first_budget

theorem generic_second :
    ∃ f : FirstFailure (Pass accepted.state secondPacket) checkOrder,
      evaluateOne P D accepted.state secondPacket accepted_scope (Or.inr rfl) =
        .completed (.refuse f second_fits) :=
  evaluateOne_refuse P D accepted.state secondPacket accepted_scope (Or.inr rfl)
    second_fits second_bad

/-- Both events arise from the same general recursion and concrete decisions. -/
theorem generic_two_event_witness :
    completeWitness P (finiteObserver true)
      (evaluate P (finiteObserver true) D initial second initial_scope (Or.inr rfl)
        [proposed, proposed]) = some witness := by
  -- The entire closed evaluator is constructive. Compare the actual
  -- computed witness with the existing oracle by definitional equality.
  rfl

/-- The arbitrary-list theorem uses the exact existing Batch/Audit/Run,
not a new model of receipts. No list-specific acceptance lookup exists. -/
def runFinite (hostile : Bool) (input : List Submission) :=
  evaluate P (finiteObserver hostile) D initial second initial_scope (Or.inr rfl) input

theorem arbitrary_list (hostile : Bool) (input : List Submission) :
    let b := runFinite hostile input
    finiteScope b.final.core ∧
    input = b.records.map (fun r => r.packet.submission) ++ b.remaining ∧
    RunContract P cap initial (ProtectedTransition.events b.records) b.final ∧
    ∀ rec, rec ∈ b.records →
      (rec.packet.target = second ∧
        (finiteObserver hostile).observe rec.before second rec.packet.submission = some rec.packet) ∧
        ∃ r : Receipt P cap rec.before rec.packet, r.record P = rec := by
  intro b
  exact ⟨batch_scope P (finiteObserver hostile) D b initial_scope (Or.inr rfl),
    b.split, batch_contract P (finiteObserver hostile) policy_bridge b safe_initial,
    fun rec mem => batch_receipt_bound P (finiteObserver hostile) b rec mem⟩

/-- Expected exact first-failure classifications: closed, executable
source assertions. No runtime or kernel execution receipt is claimed. -/
def classify (limit : ResourceVec) (s : SState) (a : Packet.{0})
    (hs : finiteScope s.core) (hq : expected a.target) : Option Disposition :=
  (evaluateOne P (decisions limit) s a hs hq).classification P

def malformed : Submission := { proposed with proofBytes := [99] }
def malformedPacket : Packet.{0} := packetAt false initial second malformed
def extraBinderPacket : Packet.{0} := { firstPacket with observed := conditionalObject }
def stalePacket : Packet.{0} :=
  { firstPacket with submission := { proposed with checkedBase := "stale" } }
def unavailableAppend : Packet.{0} := { firstPacket with nextSnapshot := "before" }
def deniedPacket : Packet.{0} := { firstPacket with reservation := ![8, 0, 8, 2] }

/-- Diagnostic state with missing installed dependency, not a claim of
reachability from initial. Its finite scope and empty environment are exact. -/
def emptyEnv (snap : String) : Env where
  snapshot := snap
  entries := []
  present := by simp
  noConflict := by simp

def noDependency : SState :=
  ⟨{ initial.core with environment := emptyEnv "before", facts := [] }, []⟩

theorem noDependency_scope : finiteScope noDependency.core :=
  ⟨rfl, by simp [noDependency]⟩

def notPending : SState :=
  ⟨{ initial.core with environment := emptyEnv "seed", facts := [] }, []⟩

theorem notPending_scope : finiteScope notPending.core :=
  ⟨rfl, by simp [notPending]⟩

def notPendingPacket : Packet.{0} :=
  ⟨first, submissionFor .bound, objectFor .bound, "before", cap, charge⟩

theorem regression_accept : classify cap initial firstPacket initial_scope (Or.inr rfl) = some .accepted := by decide
theorem regression_proof_substitution : classify cap accepted.state secondPacket accepted_scope (Or.inr rfl) =
    some (.refused .proof) := by decide
theorem regression_malformed : classify cap initial malformedPacket initial_scope (Or.inr rfl) =
    some (.refused .gate) := by decide
theorem regression_extra_binder : classify cap initial extraBinderPacket initial_scope (Or.inr rfl) =
    some (.refused .target) := by decide
theorem regression_stale_base : classify cap initial stalePacket initial_scope (Or.inr rfl) =
    some (.refused .base) := by decide
theorem regression_missing_dependency : classify cap noDependency firstPacket noDependency_scope (Or.inr rfl) =
    some (.refused .dependencies) := by decide
theorem regression_not_pending : classify cap notPending notPendingPacket notPending_scope (Or.inl rfl) =
    some (.refused .pending) := by decide
theorem regression_unavailable_append : classify cap initial unavailableAppend initial_scope (Or.inr rfl) =
    some (.refused .append) := by decide
theorem regression_reservation_denied : classify cap initial deniedPacket initial_scope (Or.inr rfl) =
    some .reservationDenied := by decide
theorem regression_outside_envelope : classify (![8, 0, 8, 2] : ResourceVec) initial firstPacket initial_scope (Or.inr rfl) =
    none := by decide

/-- Duplicate names fail the append predicate. In this snapshot language
the earlier stale-base check shadows duplicate-name failure on replay. -/
theorem duplicate_append_false :
    ¬ Pass accepted.state firstPacket .append := by
  intro h
  have member : entry1 ∈ accepted.state.core.environment.entries := by
    change entry1 ∈ [entry0, entry1]
    simp
  exact h.fresh entry1 member rfl

theorem regression_repeated_stale_base : classify cap accepted.state firstPacket accepted_scope (Or.inr rfl) =
    some (.refused .base) := by decide

def absentObserver : Observer (C := checker) (G := Unit) (Reg := Unit) where
  observe := fun _ _ _ => none
  bound := by simp

theorem regression_empty_records : (runFinite true []).records.length = 0 := by decide
theorem regression_empty_remaining : (runFinite true []).remaining.length = 0 := by decide
theorem regression_absent_observer : (evaluate P absentObserver D initial second initial_scope (Or.inr rfl)
    [proposed]).remaining = [proposed] := by decide
theorem regression_overlong_remaining : (runFinite true [proposed, proposed, proposed]).remaining = [proposed] := by decide
theorem regression_overlong_dispositions : (runFinite true [proposed, proposed, proposed]).records.map (fun r => r.disposition) =
    [.accepted, .refused .proof] := by decide
theorem regression_overlong_outside_bytes : ((runFinite true [proposed, proposed, proposed]).outside.map
    (fun a => a.submission.proofBytes)) = some [2] := by decide

/-- Public hand-authored proposal generator; no hidden reference proof
access or learned discovery is claimed. -/
def publicReport (n : Nat) : List Submission := List.replicate n proposed

def strategy :=
  supervisedStrategy P (finiteObserver true) D
    (fun _ : SState => ()) (fun (_ : Unit) (_ : J) => (0 : Nat))
    Nat.succ publicReport

theorem generated_witness : strategy.output start goal 2 = some witness := by
  rw [strategy, supervised_output]
  change completeWitness P (finiteObserver true)
      (evaluate P (finiteObserver true) D initial second initial_scope (Or.inr rfl)
        [proposed, proposed]) = some witness
  exact generic_two_event_witness

theorem hidden_view_noninterference (s t : SState) (p : J) (n : Nat) :
    publicOutput (fun _ : SState => ()) (fun (_ : Unit) (_ : J) => (0 : Nat))
      Nat.succ publicReport s p n =
    publicOutput (fun _ : SState => ()) (fun (_ : Unit) (_ : J) => (0 : Nat))
      Nat.succ publicReport t p n :=
  public_same_view _ _ _ _ rfl p n

theorem fixture_foundation (env : Env) (f : Fact) (h : Admitted env f) :
    Deductive P initial.core f.atom := by
  obtain ⟨e, _, rfl⟩ := h
  change Deductive P initial.core e.judgment
  rcases e.gate.expected with same | same
  · rw [same]
    apply Derivable.assumption
    change first ∈ [first]
    exact List.mem_singleton.mpr rfl
  · rw [same]
    exact initial_derives_second

def qualification : StrategyQualification strategy :=
  qualifyStrategy P D policy_bridge strategy (Deductive P initial.core)
    fixture_foundation
    (fun s p n e => s = initial ∧ p = second ∧ n = 2 ∧ e = witness)
    (fun _ _ _ e => e.cap) (fun _ _ _ _ _ => le_rfl)

theorem fixed_budget_iff (r : ResourceVec) :
    Attainable (fixedDiscoveryModel strategy qualification)
      start .discover r goal ↔ cap ≤ r := by
  constructor
  · intro h
    obtain ⟨n, e, _, _, ha, hc⟩ :=
      (fixed_attainable_iff strategy qualification start goal r).mp h
    have same : e = witness := ha.2.2.2
    subst e
    exact hc
  · intro h
    apply (fixed_attainable_iff strategy qualification start goal r).mpr
    exact ⟨2, witness, generated_witness, witness_valid,
      ⟨rfl, rfl, rfl, rfl⟩, h⟩

theorem insufficient_work :
    ¬ Attainable (fixedDiscoveryModel strategy qualification)
      start .discover (![8, 1, 8, 2] : ResourceVec) goal := by
  intro h
  have le := (fixed_budget_iff _).mp h
  have impossible : (2 : Nat) ≤ 1 := le 1
  omega

end Evaluation
end GRWTSK.Processing.TransactionalDiscovery.ProtectedFiniteDiscovery
