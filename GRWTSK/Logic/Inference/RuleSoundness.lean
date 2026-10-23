/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Inference.FiniteRuleSystems

/-!
# Sound interpreted rules and certificate checkers

This module separates an operational result from the proposition interpreted by
that result.  A rule is sound only when its premises and side condition imply
its conclusion.  A certificate checker is sound only when its `accept` result
implies the meaning of the certificate's exact conclusion; `reject` and
`unknown` prove no conclusion.

`CheckedByteInterface` additionally binds parsing and byte-level execution to a
formal checker.  It is a mathematical interface.  A repository program still
needs evidence that its concrete parser and execution mode implement the
functions supplied here.
-/

namespace GRWTSK.Logic.Inference

open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x

/-- Informative acceptance is distinct from rejection and lack of a result. -/
inductive DecisionResult where
  | accept
  | reject
  | unknown
  deriving DecidableEq, Repr

/-- A rule's syntax: finite premises, a side condition, and one conclusion. -/
structure InterpretedRule (Snapshot : Type u) (Judgment : Type v) where
  premises : Finset Judgment
  sideCondition : Snapshot → Prop
  conclusion : Judgment

/-- The semantic obligation for one interpreted rule. -/
def RuleSound {Snapshot : Type u} {Judgment : Type v}
    (Meaning : Snapshot → Judgment → Prop)
    (rule : InterpretedRule Snapshot Judgment) : Prop :=
  ∀ snapshot, rule.sideCondition snapshot →
    (∀ premise ∈ rule.premises, Meaning snapshot premise) →
      Meaning snapshot rule.conclusion

/-- A checked rule packages the exact semantic implication it claims. -/
structure SoundRule (Snapshot : Type u) (Judgment : Type v)
    (Meaning : Snapshot → Judgment → Prop) where
  rule : InterpretedRule Snapshot Judgment
  sound : RuleSound Meaning rule

/-- Forget interpretation while retaining the finite dependency route. -/
def SoundRule.route {Snapshot : Type u} {Judgment : Type v}
    {Meaning : Snapshot → Judgment → Prop}
    (rule : SoundRule Snapshot Judgment Meaning) : ProofRoute Judgment where
  conclusion := rule.rule.conclusion
  premises := rule.rule.premises

/-- Grounded finite support by sound rules has the claimed snapshot meaning. -/
theorem grounded_rules_meaning {Snapshot : Type u} {Judgment : Type v}
    {RuleId : Type w} (Meaning : Snapshot → Judgment → Prop)
    (rules : RuleId → SoundRule Snapshot Judgment Meaning)
    (eligible : Finset RuleId) (snapshot : Snapshot)
    (sideConditions : ∀ ruleId ∈ eligible,
      (rules ruleId).rule.sideCondition snapshot)
    {judgment : Judgment}
    (supported : GroundedSupport (fun ruleId ↦ (rules ruleId).route)
      eligible judgment) : Meaning snapshot judgment := by
  apply grounded_target (fun ruleId ↦ (rules ruleId).route) eligible
    (Meaning snapshot)
  · intro ruleId admitted premises
    exact (rules ruleId).sound snapshot (sideConditions ruleId admitted) premises
  · exact supported

/-- A formal certificate checker and the theorem attached to `accept`. -/
structure CertificateChecker (Snapshot : Type u) (Certificate : Type v)
    (Judgment : Type w) (Meaning : Snapshot → Judgment → Prop) where
  check : Snapshot → Certificate → DecisionResult
  conclusion : Certificate → Judgment
  accept_sound : ∀ snapshot certificate,
    check snapshot certificate = .accept →
      Meaning snapshot (conclusion certificate)

/-- A certificate is informative for an exact judgment only when the checker
accepts it and its declared conclusion is that judgment. -/
def CertificateChecker.Accepts
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment) : Prop :=
  checker.check snapshot certificate = .accept ∧
    checker.conclusion certificate = judgment

/-- Sound acceptance establishes the meaning of the exact accepted judgment. -/
theorem CertificateChecker.meaning_of_accepts
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment)
    (accepted : checker.Accepts snapshot certificate judgment) :
    Meaning snapshot judgment := by
  rw [← accepted.2]
  exact checker.accept_sound snapshot certificate accepted.1

/-- Complete coverage is separate from soundness: every case in the explicit
finite domain has an accepted certificate for its declared target judgment.
This predicate concerns the formal checker only; it does not assert that an
external process ran successfully or that repository discovery is complete. -/
def CertificateChecker.Covers
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    {Case : Type x} [DecidableEq Case]
    (snapshot : Snapshot) (domain : Finset Case) (target : Case → Judgment) : Prop :=
  ∀ case ∈ domain, ∃ certificate, checker.Accepts snapshot certificate (target case)

/-- Sound informative results plus complete finite coverage establish the
declared meaning for every case in the covered domain. -/
theorem CertificateChecker.meaning_of_complete_coverage
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    {Case : Type x} [DecidableEq Case]
    (snapshot : Snapshot) (domain : Finset Case) (target : Case → Judgment)
    (covered : checker.Covers snapshot domain target) :
    ∀ case ∈ domain, Meaning snapshot (target case) := by
  intro case member
  obtain ⟨certificate, accepted⟩ := covered case member
  exact checker.meaning_of_accepts snapshot certificate (target case) accepted

/-- `unknown` cannot witness informative acceptance.  No mathematical
conclusion, positive or negative, is derived from this fact. -/
theorem CertificateChecker.unknown_not_accepts
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment)
    (unknown : checker.check snapshot certificate = .unknown) :
    ¬ checker.Accepts snapshot certificate judgment := by
  intro accepted
  have impossible : DecisionResult.unknown = .accept := unknown.symm.trans accepted.1
  cases impossible

/-- Parsing and execution are explicitly related to a formal checker. -/
structure CheckedByteInterface (Snapshot : Type u) (Certificate : Type v)
    (Judgment : Type w) (ParserError : Type x)
    (Meaning : Snapshot → Judgment → Prop) where
  formalChecker : CertificateChecker Snapshot Certificate Judgment Meaning
  parse : ByteArray → Except ParserError Certificate
  execute : Snapshot → ByteArray → DecisionResult
  execution_spec : ∀ snapshot input,
    execute snapshot input =
      match parse input with
      | .ok certificate => formalChecker.check snapshot certificate
      | .error _ => .reject

/-- Accepted bytes parse to a certificate whose exact conclusion is meaningful. -/
theorem CheckedByteInterface.accepted_meaning
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {ParserError : Type x} {Meaning : Snapshot → Judgment → Prop}
    (interface : CheckedByteInterface Snapshot Certificate Judgment ParserError Meaning)
    (snapshot : Snapshot) (input : ByteArray)
    (accepted : interface.execute snapshot input = .accept) :
    ∃ certificate, interface.parse input = .ok certificate ∧
      Meaning snapshot (interface.formalChecker.conclusion certificate) := by
  cases parsed : interface.parse input with
  | error error =>
      rw [interface.execution_spec, parsed] at accepted
      contradiction
  | ok certificate =>
      refine ⟨certificate, rfl, ?_⟩
      apply interface.formalChecker.accept_sound snapshot certificate
      rw [interface.execution_spec, parsed] at accepted
      exact accepted

/-- An unknown result cannot be reinterpreted as formal acceptance. -/
theorem unknown_ne_accept : DecisionResult.unknown ≠ .accept := by
  decide

/-- Rejection likewise carries no acceptance result. -/
theorem reject_ne_accept : DecisionResult.reject ≠ .accept := by
  decide

universe y z

/-- Accepted bytes establish a requested judgment only with an exact equality
between that request and every successfully parsed certificate conclusion.
The supplied interface retains its existing soundness/refinement premises. -/
theorem CheckedByteInterface.accepted_meaning_at_requested
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {ParserError : Type x} {Meaning : Snapshot → Judgment → Prop}
    (interface : CheckedByteInterface Snapshot Certificate Judgment ParserError Meaning)
    (snapshot : Snapshot) (input : ByteArray) (requested : Judgment)
    (accepted : interface.execute snapshot input = .accept)
    (bound : ∀ certificate, interface.parse input = .ok certificate →
      interface.formalChecker.conclusion certificate = requested) :
    Meaning snapshot requested := by
  obtain ⟨certificate, parsed, sound⟩ := interface.accepted_meaning snapshot input accepted
  exact (bound certificate parsed) ▸ sound

/-- Finite formal coverage extends to an ambient target family only through
an explicit exact-target exhaustion map, at the same snapshot. Exhaustion is
about judgments; it does not assert distinct source objects or complete discovery. -/
theorem CertificateChecker.meaning_of_ambient_coverage
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    {Case : Type x} [DecidableEq Case] {Ambient : Type y}
    (snapshot : Snapshot) (domain : Finset Case)
    (caseTarget : Case → Judgment) (ambientTarget : Ambient → Judgment)
    (covered : checker.Covers snapshot domain caseTarget)
    (exhausts : ∀ ambient, ∃ idx, idx ∈ domain ∧
      caseTarget idx = ambientTarget ambient) :
    ∀ ambient, Meaning snapshot (ambientTarget ambient) := by
  intro ambient
  obtain ⟨idx, member, aligned⟩ := exhausts ambient
  have caseMeaning : Meaning snapshot (caseTarget idx) :=
    checker.meaning_of_complete_coverage snapshot domain caseTarget covered idx member
  exact aligned ▸ caseMeaning

/-- A supplied finite family of accepted byte inputs reaches an ambient target
only with both exact parsed-conclusion binding and ambient target exhaustion.
No concrete parser, canonical encoding, external execution, discovery procedure,
snapshot transport or certificate completeness is constructed by this theorem. -/
theorem CheckedByteInterface.meaning_of_ambient_byte_coverage
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {ParserError : Type x} {Meaning : Snapshot → Judgment → Prop}
    (interface : CheckedByteInterface Snapshot Certificate Judgment ParserError Meaning)
    {Case : Type y} [DecidableEq Case] {Ambient : Type z}
    (snapshot : Snapshot) (domain : Finset Case) (input : Case → ByteArray)
    (caseTarget : Case → Judgment) (ambientTarget : Ambient → Judgment)
    (accepted : ∀ idx, idx ∈ domain →
      interface.execute snapshot (input idx) = .accept)
    (bound : ∀ idx, idx ∈ domain → ∀ certificate,
      interface.parse (input idx) = .ok certificate →
        interface.formalChecker.conclusion certificate = caseTarget idx)
    (exhausts : ∀ ambient, ∃ idx, idx ∈ domain ∧
      caseTarget idx = ambientTarget ambient) :
    ∀ ambient, Meaning snapshot (ambientTarget ambient) := by
  intro ambient
  obtain ⟨idx, member, aligned⟩ := exhausts ambient
  have caseMeaning : Meaning snapshot (caseTarget idx) :=
    interface.accepted_meaning_at_requested snapshot (input idx) (caseTarget idx)
      (accepted idx member) (bound idx member)
  exact aligned ▸ caseMeaning

/-- Restrict an already sound checker by a supplied Boolean admission gate.
The gate is mathematical input; this constructor does not authenticate schema
tags, checker configuration, provenance, trust reports or external executions. -/
def CertificateChecker.guarded
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (gate : Snapshot → Certificate → Bool) :
    CertificateChecker Snapshot Certificate Judgment Meaning where
  check := fun snapshot certificate =>
    if gate snapshot certificate = true then checker.check snapshot certificate else .reject
  conclusion := checker.conclusion
  accept_sound := by
    intro snapshot certificate accepted
    change (if gate snapshot certificate = true then
      checker.check snapshot certificate else .reject) = .accept at accepted
    by_cases admitted : gate snapshot certificate = true
    · apply checker.accept_sound snapshot certificate
      simpa only [if_pos admitted] using accepted
    · have impossible : DecisionResult.reject = .accept := by
        simpa only [if_neg admitted] using accepted
      cases impossible

/-- Guarding preserves exactly accepted witnesses that pass the supplied gate.
In particular, soundness is retained but neither acceptance nor completeness
is manufactured for a denied witness. -/
theorem CertificateChecker.guarded_accepts_iff
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (gate : Snapshot → Certificate → Bool)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment) :
    (checker.guarded gate).Accepts snapshot certificate judgment ↔
      gate snapshot certificate = true ∧
        checker.Accepts snapshot certificate judgment := by
  change ((if gate snapshot certificate = true then
      checker.check snapshot certificate else .reject) = .accept ∧
        checker.conclusion certificate = judgment) ↔ _
  constructor
  · intro accepted
    by_cases admitted : gate snapshot certificate = true
    · exact ⟨admitted, ⟨by simpa only [if_pos admitted] using accepted.1, accepted.2⟩⟩
    · have impossible : DecisionResult.reject = .accept := by
        simpa only [if_neg admitted] using accepted.1
      cases impossible
  · intro accepted
    exact ⟨by simpa only [if_pos accepted.1] using accepted.2.1, accepted.2.2⟩

/-- A false admission gate rules out informative acceptance, without proving
the negation of the certificate's mathematical conclusion. -/
theorem CertificateChecker.guarded_not_accepts_of_gate_false
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (gate : Snapshot → Certificate → Bool)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment)
    (denied : gate snapshot certificate = false) :
    ¬ (checker.guarded gate).Accepts snapshot certificate judgment := by
  intro accepted
  have admitted :=
    ((checker.guarded_accepts_iff gate snapshot certificate judgment).mp accepted).1
  rw [denied] at admitted
  cases admitted

namespace CheckerVersionFixtures

/-- A two-version symbolic model; Boolean tags are not deployed schema bytes. -/
def meaningful (_ : Bool) (judgment : Bool) : Prop := judgment = true

/-- This checker is sound about its own conclusion while ignoring both tags. -/
def versionBlind : CertificateChecker Bool Bool Bool meaningful where
  check := fun _ _ => .accept
  conclusion := fun _ => true
  accept_sound := by
    intro snapshot certificate accepted
    rfl

/-- Semantic soundness alone does not enforce a configured schema-version
match: the witness tag is false and the configured tag is true. -/
theorem sound_checker_can_accept_wrong_version :
    versionBlind.Accepts true false true ∧ (false : Bool) ≠ true := by
  exact ⟨⟨rfl, rfl⟩, by decide⟩

def exactVersion (configured encoded : Bool) : Bool := decide (encoded = configured)

/-- The supplied exact tag gate rejects the mismatched symbolic witness. -/
theorem exact_version_gate_rejects_mismatch :
    ¬ (versionBlind.guarded exactVersion).Accepts true false true :=
  versionBlind.guarded_not_accepts_of_gate_false exactVersion true false true rfl

/-- A matching tag retains the original sound acceptance in this model. -/
theorem exact_version_gate_retains_match :
    (versionBlind.guarded exactVersion).Accepts true true true := by
  apply (versionBlind.guarded_accepts_iff exactVersion true true true).2
  exact ⟨rfl, rfl, rfl⟩

end CheckerVersionFixtures

namespace CertificateScopeCounterexamples

/-- A symbolic meaning/checker pair, not a repository checker or byte parser. -/
def trueMeaning (_ : Unit) (judgment : Bool) : Prop := judgment = true

def trueConclusionChecker : CertificateChecker Unit Unit Bool trueMeaning where
  check := fun _ _ => .accept
  conclusion := fun _ => true
  accept_sound := by
    intro snapshot certificate accepted
    rfl

/-- A constant digest can agree on distinct judgments despite sound acceptance
of only the checker's own conclusion. This exhibits no actual SHA collision. -/
theorem accepted_conclusion_and_digest_do_not_bind_request :
    trueConclusionChecker.Accepts () () true ∧
      (fun _ : Bool => ()) true = (fun _ : Bool => ()) false ∧
      ¬ trueMeaning () false := by
  refine ⟨⟨rfl, rfl⟩, rfl, ?_⟩
  change ¬ (false = true)
  exact Bool.noConfusion

def snapshotMeaning (snapshot : Bool) (_ : Unit) : Prop := snapshot = true

def snapshotChecker : CertificateChecker Bool Unit Unit snapshotMeaning where
  check := fun snapshot _ => match snapshot with
    | false => .reject
    | true => .accept
  conclusion := fun _ => ()
  accept_sound := by
    intro snapshot certificate accepted
    cases snapshot with
    | false => cases accepted
    | true => rfl

/-- A checked judgment at one snapshot gives no unproved snapshot transport. -/
theorem acceptance_does_not_change_snapshot :
    snapshotChecker.Accepts true () () ∧ ¬ snapshotMeaning false () := by
  refine ⟨⟨rfl, rfl⟩, ?_⟩
  change ¬ (false = true)
  exact Bool.noConfusion

def falseMeaning (_ : Unit) (judgment : Bool) : Prop := judgment = false

def falseConclusionChecker : CertificateChecker Unit Unit Bool falseMeaning where
  check := fun _ _ => .accept
  conclusion := fun _ => false
  accept_sound := by
    intro snapshot certificate accepted
    rfl

/-- Covering every case of a singleton index does not exhaust a larger ambient
judgment family. In particular its missing `true` target remains false. -/
theorem complete_finite_index_does_not_exhaust_ambient :
    falseConclusionChecker.Covers () ({()} : Finset Unit) (fun _ : Unit => false) ∧
      ¬ (∀ ambient : Bool, ∃ idx : Unit,
        idx ∈ ({()} : Finset Unit) ∧ (false : Bool) = ambient) ∧
      ¬ (∀ ambient : Bool, falseMeaning () ambient) := by
  constructor
  · intro idx member
    exact ⟨(), rfl, rfl⟩
  · constructor
    · intro exhausts
      obtain ⟨idx, member, aligned⟩ := exhausts true
      cases aligned
    · intro allMeaning
      have impossible : (true : Bool) = false := allMeaning true
      cases impossible

/-- Semantic target exhaustion can collapse distinct ambient source objects.
The pure ambient lemma therefore cannot establish identity or multiplicity. -/
theorem collapsed_targets_can_exhaust_distinct_ambient_values :
    (∀ ambient : Bool, ∃ idx : Unit,
      idx ∈ ({()} : Finset Unit) ∧
        (false : Bool) = (fun _ : Bool => false) ambient) ∧
      (false : Bool) ≠ true := by
  constructor
  · intro ambient
    exact ⟨(), by simp, rfl⟩
  · decide

/-- The soundness field of this symbolic checker has an impossible antecedent. -/
def rejectingChecker : CertificateChecker Unit Unit Unit (fun _ _ => True) where
  check := fun _ _ => .reject
  conclusion := fun _ => ()
  accept_sound := by
    intro snapshot certificate accepted
    cases accepted

/-- Soundness and true target meanings do not manufacture accepted witnesses. -/
theorem rejecting_checker_does_not_cover_singleton :
    ¬ rejectingChecker.Covers () ({()} : Finset Unit) (fun _ : Unit => ()) := by
  intro covered
  obtain ⟨certificate, accepted⟩ := covered () (by simp)
  have impossible : DecisionResult.reject = .accept := accepted.1
  cases impossible

/-- The same rejecting checker covers an empty formal domain vacuously. -/
theorem rejecting_checker_covers_empty :
    rejectingChecker.Covers () (∅ : Finset Unit) (fun _ : Unit => ()) := by
  intro idx member
  have impossible : False := by simp at member
  exact impossible.elim

/-- An empty finite domain cannot exhaust even a singleton ambient domain. -/
theorem empty_domain_does_not_exhaust_singleton :
    ¬ (∀ ambient : Unit, ∃ idx : Unit,
      idx ∈ (∅ : Finset Unit) ∧ idx = ambient) := by
  intro exhausts
  obtain ⟨idx, member, aligned⟩ := exhausts ()
  simp at member

/-- An empty ambient type has no requested case, so its universal exhaustion
statement is vacuous and supplies no nonempty real-world coverage evidence. -/
theorem empty_ambient_exhaustion_is_vacuous :
    ∀ _ambient : Empty, ∃ idx : Unit,
      idx ∈ (∅ : Finset Unit) ∧ (false : Bool) = false := by
  intro ambient
  cases ambient

end CertificateScopeCounterexamples

end GRWTSK.Logic.Inference
