import GRWTSK.ComputerScience.AlgorithmsInComputerScience.CareAccessResilience

/-!
# Pure review notification port for questionable care-access discrepancies

A screening signal is a request for review, not an adjudication of error,
discrimination, unlawful disclosure, or clinical appropriateness. Its inputs
are separately observed and authenticated by an external system. This module
neither sends notifications nor authenticates evidence or permissions.

The `mutationKind` vocabulary projects to the existing
`Mathematics.Mutation.DifferenceKind` labels (source: EventDifferenceKind.lean).
That existing module is intentionally not imported here: it has additional
research-level imports that have not been accepted in this closure.
-/

namespace GRWTSK.CareAccessResilience

/-- Review reasons, retaining all simultaneously detected concerns. -/
inductive ConcernKind where
  | accessibility
  | privacyPermission
  | clinicalAuthority
  | administrativeOwnership
  | traceability
  deriving DecidableEq, Repr

/-- Projection onto already-defined mutation difference kind names. -/
def ConcernKind.mutationKind : ConcernKind → String
  | .accessibility => "accessibility"
  | .privacyPermission => "permission"
  | .clinicalAuthority => "authority"
  | .administrativeOwnership => "authority"
  | .traceability => "provenance"

/-- The finite, fully explicit discrepancy list. An imperfect *candidate*
need not constitute an actual institutional failure. -/
def concerns (required : Needs) (pathway : Pathway) : List ConcernKind :=
  (if Accommodates required pathway.services then [] else [.accessibility]) ++
  (if pathway.privacyPermitted && pathway.privacyBasisRecorded
    then [] else [.privacyPermission]) ++
  (if pathway.clinicalDecision.isSome then [] else [.clinicalAuthority]) ++
  (if pathway.administrativeOwner.isSome then [] else [.administrativeOwnership]) ++
  (if pathway.traceable && pathway.consentCheckpoint then [] else [.traceability])

/-- Acceptance means that all five kinds of discrepancy are absent. -/
theorem valid_concerns_empty {required : Needs} {pathway : Pathway}
    (h : Valid required pathway) : concerns required pathway = [] := by
  rcases h with ⟨haccess, hprivacy, hbasis, hclinical, howner, htrace, hconsent⟩
  simp [concerns, haccess, hprivacy, hbasis, hclinical, howner, htrace, hconsent]

/-- A nonempty discrepancy list refutes `Valid`, not any law or allegation. -/
theorem concerns_not_valid {required : Needs} {pathway : Pathway}
    (h : concerns required pathway ≠ []) : ¬ Valid required pathway := by
  intro hv
  exact h (valid_concerns_empty hv)

/-- The observed institutional *assertion* of completeness matters: draft
pathways need not generate alerts merely because they are unfinished. -/
structure Assessment where
  required : Needs
  offered : Pathway
  claimedComplete : Bool

/-- A question for review, not a confirmed error. -/
def Flagged (a : Assessment) : Prop :=
  a.claimedComplete = true ∧ concerns a.required a.offered ≠ []

/-- An independently verified, minimally identifying evidence/permission port.
Values supplied here are obligations for a trusted external host to establish. -/
structure NoticeContext where
  eventId : Nat
  caseToken : String
  sourceDigest : String
  observedAt : Nat
  sourceAuthenticated : Bool
  recipientPermitted : Bool
  subscribed : Bool
  alreadySent : Bool

/-- Authorization, evidence identity and idempotency are prerequisites for
constructing a candidate outbound notification. -/
def Eligible (c : NoticeContext) : Prop :=
  c.sourceAuthenticated = true ∧
  c.recipientPermitted = true ∧
  c.subscribed = true ∧
  c.alreadySent = false ∧
  c.caseToken ≠ "" ∧
  c.sourceDigest ≠ ""

inductive ReviewStage where
  | questionable
  deriving Repr, DecidableEq

/-- A privacy-minimal notification *intent*. It includes no medical content,
free-text allegation, recipient address or decision of culpability. -/
structure NoticeIntent where
  eventId : Nat
  caseToken : String
  sourceDigest : String
  observedAt : Nat
  concerns : List ConcernKind
  stage : ReviewStage
  deriving Repr

/-- Screening is pure and never dispatches an actual message. -/
def screen (c : NoticeContext) (a : Assessment) : Option NoticeIntent :=
  if Flagged a ∧ Eligible c then
    some { eventId := c.eventId
           caseToken := c.caseToken
           sourceDigest := c.sourceDigest
           observedAt := c.observedAt
           concerns := concerns a.required a.offered
           stage := .questionable }
  else none

/-- A produced notification necessarily has both a reviewed discrepancy
predicate and the supplied evidence/authorization commitments. -/
theorem screen_sound {c : NoticeContext} {a : Assessment} {n : NoticeIntent}
    (h : screen c a = some n) : Flagged a ∧ Eligible c := by
  by_cases hg : Flagged a ∧ Eligible c
  · exact hg
  · simp [screen, hg] at h

/-- A valid pathway never creates a questionable-error notification. -/
theorem screen_none_of_valid (c : NoticeContext) (a : Assessment)
    (hv : Valid a.required a.offered) : screen c a = none := by
  have hnot : ¬ Flagged a := by
    intro hf
    exact hf.2 (valid_concerns_empty hv)
  simp [screen, hnot]

/-- An unfinished candidate does not trigger this completion-discrepancy rule. -/
theorem screen_none_of_unclaimed (c : NoticeContext) (a : Assessment)
    (h : a.claimedComplete = false) : screen c a = none := by
  simp [screen, Flagged, h]

/-- A prohibited recipient cannot produce an outbound intent. -/
theorem screen_none_of_denied (c : NoticeContext) (a : Assessment)
    (h : c.recipientPermitted = false) : screen c a = none := by
  simp [screen, Eligible, h]

/-- An unsubscribed recipient cannot produce an outbound intent. -/
theorem screen_none_of_unsubscribed (c : NoticeContext) (a : Assessment)
    (h : c.subscribed = false) : screen c a = none := by
  simp [screen, Eligible, h]

/-- Lack of source authentication forbids the outbound intent. -/
theorem screen_none_of_unauthenticated (c : NoticeContext) (a : Assessment)
    (h : c.sourceAuthenticated = false) : screen c a = none := by
  simp [screen, Eligible, h]

/-- An existing successful notification requires idempotent suppression. -/
theorem screen_none_of_already_sent (c : NoticeContext) (a : Assessment)
    (h : c.alreadySent = true) : screen c a = none := by
  simp [screen, Eligible, h]

/-- A local deduplication ledger is set-valued; durable authority to deliver
must still come from the external operational subsystem. -/
structure NoticeLedger where
  seen : Finset Nat

def recordOnce (ledger : NoticeLedger) (intent : NoticeIntent) :
    NoticeLedger × Option NoticeIntent :=
  if intent.eventId ∈ ledger.seen then (ledger, none)
  else ({ seen := insert intent.eventId ledger.seen }, some intent)

/-- After an event is recorded, its immediate repeat cannot be emitted again. -/
theorem recordOnce_no_repeat (ledger : NoticeLedger) (intent : NoticeIntent) :
    (recordOnce (recordOnce ledger intent).1 intent).2 = none := by
  by_cases h : intent.eventId ∈ ledger.seen
  · simp [recordOnce, h]
  · simp [recordOnce, h]

/-! ## Synthetic, non-medical regression control -/

def sampleAssessment : Assessment :=
  { required := sampleNeed
    offered := privacyOnly
    claimedComplete := true }

def sampleContext : NoticeContext :=
  { eventId := 7
    caseToken := "synthetic-07"
    sourceDigest := "synthetic-evidence-digest"
    observedAt := 1
    sourceAuthenticated := true
    recipientPermitted := true
    subscribed := true
    alreadySent := false }

example : (screen sampleContext sampleAssessment).isSome = true := by decide
example : screen { sampleContext with subscribed := false } sampleAssessment = none := by decide
example : screen sampleContext { sampleAssessment with claimedComplete := false } = none := by decide

end GRWTSK.CareAccessResilience
