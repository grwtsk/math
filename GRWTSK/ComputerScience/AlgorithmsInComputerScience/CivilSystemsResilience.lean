import Mathlib

/-!
# Civil-systems resilience: a domain-neutral mathematical interface

Attribution: grwtsk contributors.

An arbitrary civil service may be healthcare, education, housing, public
benefits, justice, employment, licensing, utilities, or another institution.
The `Obligation`, `Request`, `Remedy`, and `Office` types are supplied by that
application. `Finding.satisfied` is an EXTERNALLY EVIDENCED assertion in the
model, not a proof that real-world law was obeyed. Theorems below are conditional
on those meanings and the listed witnesses. `Finding.unknown` never becomes a
finding of violation. No notifications, sanctions, medical decisions, or other
effects are performed here.
-/

namespace GRWTSK.CivilSystems

/-- A proposed outcome against an externally specified, applicable obligation. -/
inductive Finding where
  | satisfied
  | contradicted
  | unknown
  deriving DecidableEq, BEq, Repr

/-- Neither contradictory evidence nor a missing observation is success. -/
theorem unknown_ne_satisfied : Finding.unknown ≠ Finding.satisfied := by decide

theorem contradicted_ne_satisfied : Finding.contradicted ≠ Finding.satisfied := by decide

/-- An assessment can be specialized to ANY finite inventory of obligations.
The observation function must be supported by actual case-specific evidence. -/
structure Assessment (Obligation : Type*) where
  obligations : List Obligation
  obligations_nonempty : obligations ≠ []
  observed : Obligation → Finding
  claimedComplete : Bool

/-- All *listed* obligations are supported, with no assertion about omissions. -/
def FullySupported {O : Type*} (a : Assessment O) : Prop :=
  ∀ o, o ∈ a.obligations → a.observed o = .satisfied

/-- Preserve every conflict and every unknown (not only the first failure). -/
def openObligations {O : Type*} (a : Assessment O) : List O :=
  a.obligations.filter (fun o => decide (a.observed o ≠ .satisfied))

/-- Conflicting observations and missing evidence remain distinct. -/
def contradictedObligations {O : Type*} (a : Assessment O) : List O :=
  a.obligations.filter (fun o => decide (a.observed o = .contradicted))

def unknownObligations {O : Type*} (a : Assessment O) : List O :=
  a.obligations.filter (fun o => decide (a.observed o = .unknown))

theorem open_mem_iff {O : Type*} (a : Assessment O) (o : O) :
    o ∈ openObligations a ↔
      o ∈ a.obligations ∧ a.observed o ≠ .satisfied := by
  simp [openObligations]

/-- Empty open inventory is exactly satisfaction of the supplied inventory. -/
theorem no_open_iff_supported {O : Type*} (a : Assessment O) :
    openObligations a = [] ↔ FullySupported a := by
  constructor
  · intro h o ho
    by_contra hnot
    have hh : o ∈ openObligations a :=
      (open_mem_iff a o).2 ⟨ho, hnot⟩
    simp [h] at hh
  · intro h
    cases hlist : openObligations a with
    | nil => exact hlist
    | cons o os =>
        have hm : o ∈ openObligations a := by simp [hlist]
        obtain ⟨ho, hnot⟩ := (open_mem_iff a o).1 hm
        exact False.elim (hnot (h o ho))

/-- One missing observation produces an open item but does not prove a breach. -/
theorem unknown_is_open {O : Type*} (a : Assessment O) (o : O)
    (hm : o ∈ a.obligations) (hs : a.observed o = .unknown) :
    o ∈ openObligations a := by
  exact (open_mem_iff a o).2 ⟨hm, by simp [hs]⟩

/-- A completion claim with unresolved evidence warrants review, not sanctions. -/
def Flagged {O : Type*} (a : Assessment O) : Prop :=
  a.claimedComplete = true ∧ (openObligations a).isEmpty = false

/-- Completed claims with fully satisfied listed duties cannot be flagged. -/
theorem not_flagged_of_supported {O : Type*} (a : Assessment O)
    (h : FullySupported a) : ¬ Flagged a := by
  intro hf
  have hempty := (no_open_iff_supported a).2 h
  simp [Flagged, hempty] at hf

/-- A draft, whatever its incompleteness, is not an asserted completion error. -/
theorem not_flagged_of_unclaimed {O : Type*} (a : Assessment O)
    (h : a.claimedComplete = false) : ¬ Flagged a := by
  intro hf
  simp [Flagged, h] at hf

/-- Domain, case, and event identity form a single scoped key. -/
abbrev EventKey := String × String × Nat

/-- A gate evaluated at an independently authenticated host boundary. -/
structure NoticeGate where
  eventId : Nat
  systemToken : String
  caseToken : String
  sourceDigest : String
  observedAt : Nat
  sourceAuthenticated : Bool
  scopeAttested : Bool
  recipientPermitted : Bool
  disclosureApproved : Bool
  subscribed : Bool
  alreadyQueued : Bool

/-- Required external checks. String nonemptiness is NOT authentication. -/
def Eligible (g : NoticeGate) : Prop :=
  g.sourceAuthenticated = true ∧
  g.scopeAttested = true ∧
  g.recipientPermitted = true ∧
  g.disclosureApproved = true ∧
  g.subscribed = true ∧
  g.alreadyQueued = false ∧
  g.systemToken ≠ "" ∧ g.caseToken ≠ "" ∧ g.sourceDigest ≠ ""

/-- A review-intent is not a delivered message or determination of blame. -/
structure NoticeIntent (Obligation : Type*) where
  eventId : Nat
  systemToken : String
  caseToken : String
  sourceDigest : String
  observedAt : Nat
  contradictions : List Obligation
  unknowns : List Obligation
  deriving Repr

def NoticeIntent.key {O : Type*} (n : NoticeIntent O) : EventKey :=
  (n.systemToken, n.caseToken, n.eventId)

/-- Compute only an optional, privacy-constrained review intent. -/
def screen {O : Type*} (g : NoticeGate) (a : Assessment O) :
    Option (NoticeIntent O) :=
  if Flagged a ∧ Eligible g then
    some {
      eventId := g.eventId
      systemToken := g.systemToken
      caseToken := g.caseToken
      sourceDigest := g.sourceDigest
      observedAt := g.observedAt
      contradictions := contradictedObligations a
      unknowns := unknownObligations a }
  else none

theorem screen_sound {O : Type*} {g : NoticeGate} {a : Assessment O}
    {n : NoticeIntent O} (h : screen g a = some n) :
    Flagged a ∧ Eligible g := by
  by_cases hg : Flagged a ∧ Eligible g
  · exact hg
  · simp [screen, hg] at h

theorem screen_none_of_supported {O : Type*} (g : NoticeGate) (a : Assessment O)
    (h : FullySupported a) : screen g a = none := by
  have hn := not_flagged_of_supported a h
  simp [screen, hn]

theorem screen_none_of_unclaimed {O : Type*} (g : NoticeGate) (a : Assessment O)
    (h : a.claimedComplete = false) : screen g a = none := by
  have hn := not_flagged_of_unclaimed a h
  simp [screen, hn]

theorem screen_none_of_denied {O : Type*} (g : NoticeGate) (a : Assessment O)
    (h : g.recipientPermitted = false) : screen g a = none := by
  simp [screen, Eligible, h]

theorem screen_none_of_unauthenticated {O : Type*} (g : NoticeGate) (a : Assessment O)
    (h : g.sourceAuthenticated = false) : screen g a = none := by
  simp [screen, Eligible, h]

theorem screen_none_of_disclosure_denied {O : Type*} (g : NoticeGate)
    (a : Assessment O) (h : g.disclosureApproved = false) :
    screen g a = none := by
  simp [screen, Eligible, h]

theorem screen_none_of_out_of_scope {O : Type*} (g : NoticeGate)
    (a : Assessment O) (h : g.scopeAttested = false) :
    screen g a = none := by
  simp [screen, Eligible, h]

theorem screen_none_of_unsubscribed {O : Type*} (g : NoticeGate)
    (a : Assessment O) (h : g.subscribed = false) :
    screen g a = none := by
  simp [screen, Eligible, h]

theorem screen_none_of_queued {O : Type*} (g : NoticeGate)
    (a : Assessment O) (h : g.alreadyQueued = true) :
    screen g a = none := by
  simp [screen, Eligible, h]

/-- Pure, scoped idempotency ledger; atomicity must be provided externally. -/
structure NoticeLedger where
  seen : Finset EventKey

def recordOnce {O : Type*} (ledger : NoticeLedger)
    (intent : NoticeIntent O) : NoticeLedger × Option (NoticeIntent O) :=
  if intent.key ∈ ledger.seen then (ledger, none)
  else ({ seen := insert intent.key ledger.seen }, some intent)

theorem recordOnce_no_repeat {O : Type*} (ledger : NoticeLedger)
    (intent : NoticeIntent O) :
    (recordOnce (recordOnce ledger intent).1 intent).2 = none := by
  by_cases h : intent.key ∈ ledger.seen
  · simp [recordOnce, h]
  · simp [recordOnce, h]

/-- Rank descent prohibits infinite loops in a review/referral graph. -/
structure RankedRouting (Office : Type*) where
  owner : Office → Bool
  next : Office → Office
  rank : Office → Nat
  decreases : ∀ o, owner o = false → rank (next o) < rank o

inductive ReachesOwner {Office : Type*} (r : RankedRouting Office) :
    Office → Prop where
  | here {o} : r.owner o = true → ReachesOwner r o
  | step {o} : r.owner o = false →
      ReachesOwner r (r.next o) → ReachesOwner r o

theorem RankedRouting.eventually_owned {Office : Type*}
    (r : RankedRouting Office) (start : Office) : ReachesOwner r start := by
  have main : ∀ n : Nat, ∀ o : Office,
      r.rank o = n → ReachesOwner r o := by
    intro n
    induction n using Nat.strong_induction_on with
    | h n ih =>
        intro o hn
        cases ho : r.owner o with
        | true => exact ReachesOwner.here ho
        | false =>
            have hlt : r.rank (r.next o) < n := by
              simpa [hn] using r.decreases o ho
            exact ReachesOwner.step ho
              (ih (r.rank (r.next o)) hlt (r.next o) rfl)
  exact main (r.rank start) start rfl

/-- Conservation of unresolved requests; no claim about actual service capacity. -/
structure Queue where
  backlog : Nat → Nat
  arriving : Nat → Nat
  completed : Nat → Nat
  conservation : ∀ t, backlog (t+1) + completed t = backlog t + arriving t

theorem Queue.bounded (q : Queue)
    (hcap : ∀ t, q.arriving t ≤ q.completed t) (t : Nat) :
    q.backlog t ≤ q.backlog 0 := by
  have step : ∀ k, q.backlog (k+1) ≤ q.backlog k := by
    intro k
    have hb := q.conservation k
    have hc := hcap k
    omega
  induction t with
  | zero => exact le_refl _
  | succ k ih => exact le_trans (step k) ih

/-- Continuous intake exceeding completions forces unbounded backlog. -/
theorem Queue.unbounded (q : Queue)
    (h : ∀ t, q.completed t + 1 ≤ q.arriving t) :
    ∀ bound : Nat, ∃ t : Nat, bound ≤ q.backlog t := by
  have hgrowth : ∀ t, q.backlog 0 + t ≤ q.backlog t := by
    intro t
    induction t with
    | zero => omega
    | succ k ih =>
        have hb := q.conservation k
        have hc := h k
        omega
  intro bound
  refine ⟨bound, ?_⟩
  have hh := hgrowth bound
  omega

/-- A finite selector over individually assessed candidates. -/
structure Framework (Request Remedy Obligation Office : Type*) where
  requirements : Request → List Obligation
  candidates : Request → List Remedy
  observe : Request → Remedy → Obligation → Finding
  feasible : Request → Prop
  feasible_nonempty : ∀ r, feasible r → requirements r ≠ []
  feasible_witness : ∀ r, feasible r →
    ∃ p ∈ candidates r,
      ∀ o, o ∈ requirements r → observe r p o = .satisfied
  routing : RankedRouting Office
  queue : Queue

def Framework.supported {R P O D : Type*} (s : Framework R P O D)
    (r : R) (p : P) : Bool :=
  (s.requirements r).all (fun o => decide (s.observe r p o = .satisfied))

theorem Framework.supported_iff {R P O D : Type*} (s : Framework R P O D)
    (r : R) (p : P) :
    s.supported r p = true ↔
      ∀ o, o ∈ s.requirements r → s.observe r p o = .satisfied := by
  simp [Framework.supported]

def Framework.select {R P O D : Type*} (s : Framework R P O D) (r : R) :
    List P → Option P
  | [] => none
  | p :: ps => if s.supported r p then some p else Framework.select s r ps

theorem Framework.select_sound {R P O D : Type*} (s : Framework R P O D)
    (r : R) {ps : List P} {p : P} (h : s.select r ps = some p) :
    ∀ o, o ∈ s.requirements r → s.observe r p o = .satisfied := by
  have inner : s.supported r p = true := by
    induction ps generalizing p with
    | nil => simp [Framework.select] at h
    | cons head tail ih =>
        by_cases hh : s.supported r head = true
        · have heq : some head = some p := by
            simpa [Framework.select, hh] using h
          have heq' : head = p := Option.some.inj heq
          exact heq' ▸ hh
        · apply ih
          simpa [Framework.select, hh] using h
  exact (s.supported_iff r p).1 inner

/-- Feasibility also requires a nonempty obligation inventory; an empty
inventory is never proof of complete civil protection. -/
theorem Framework.select_sound_nonempty {R P O D : Type*}
    (s : Framework R P O D) (r : R) (hf : s.feasible r)
    {ps : List P} {p : P} (h : s.select r ps = some p) :
    s.requirements r ≠ [] ∧
      ∀ o, o ∈ s.requirements r → s.observe r p o = .satisfied := by
  exact ⟨s.feasible_nonempty r hf, s.select_sound r h⟩

theorem Framework.select_complete {R P O D : Type*} (s : Framework R P O D)
    (r : R) (ps : List P)
    (hw : ∃ p ∈ ps,
      ∀ o, o ∈ s.requirements r → s.observe r p o = .satisfied) :
    ∃ p, s.select r ps = some p ∧
      ∀ o, o ∈ s.requirements r → s.observe r p o = .satisfied := by
  have hex : ∃ p ∈ ps, s.supported r p = true := by
    obtain ⟨p, hp, hv⟩ := hw
    exact ⟨p, hp, (s.supported_iff r p).2 hv⟩
  have walk : ∀ xs : List P,
      (∃ p ∈ xs, s.supported r p = true) →
      ∃ p, s.select r xs = some p ∧ s.supported r p = true := by
    intro xs
    induction xs with
    | nil =>
        rintro ⟨p, hp, _⟩
        simp at hp
    | cons head tail ih =>
        intro hx
        by_cases hh : s.supported r head = true
        · exact ⟨head, by simp [Framework.select, hh], hh⟩
        · have ht : ∃ p ∈ tail, s.supported r p = true := by
            obtain ⟨p, hm, hv⟩ := hx
            rcases List.mem_cons.mp hm with heq | hm'
            · subst p
              exact False.elim (hh hv)
            · exact ⟨p, hm', hv⟩
          obtain ⟨p, hc, hv⟩ := ih ht
          exact ⟨p, by simpa [Framework.select, hh] using hc, hv⟩
  obtain ⟨p, hp, hv⟩ := walk ps hex
  exact ⟨p, hp, (s.supported_iff r p).1 hv⟩

/-- The civil-system criterion makes no claim that the premises are factual. -/
theorem Framework.resilience {R P O D : Type*} (s : Framework R P O D)
    (hcapacity : ∀ t, s.queue.arriving t ≤ s.queue.completed t) :
    (∀ r, s.feasible r →
      s.requirements r ≠ [] ∧
        ∃ p, s.select r (s.candidates r) = some p ∧
          ∀ o, o ∈ s.requirements r → s.observe r p o = .satisfied) ∧
    (∀ office, ReachesOwner s.routing office) ∧
    (∀ t, s.queue.backlog t ≤ s.queue.backlog 0) := by
  refine ⟨?_, ?_, ?_⟩
  · intro r hr
    exact ⟨s.feasible_nonempty r hr,
      s.select_complete r (s.candidates r) (s.feasible_witness r hr)⟩
  · intro office
    exact s.routing.eventually_owned office
  · intro t
    exact s.queue.bounded hcapacity t

/-- Two synthetic obligations illustrate a valid nonvacuous finite case. -/
inductive DemoObligation where
  | accessible | reasonGiven
  deriving DecidableEq, Repr

def demoAssessment : Assessment DemoObligation :=
  { obligations := [.accessible, .reasonGiven]
    obligations_nonempty := by decide
    observed := fun _ => .satisfied
    claimedComplete := true }

theorem demo_supported : FullySupported demoAssessment := by
  intro o _
  cases o <;> rfl

def demoGate : NoticeGate :=
  { eventId := 7, systemToken := "synthetic-civil-system",
    caseToken := "opaque-case", sourceDigest := "synthetic-evidence",
    observedAt := 1, sourceAuthenticated := true, scopeAttested := true,
    recipientPermitted := true, disclosureApproved := true,
    subscribed := true, alreadyQueued := false }

example : screen demoGate demoAssessment = none := by
  exact screen_none_of_supported demoGate demoAssessment demo_supported

example : (screen demoGate { demoAssessment with
    observed := fun _ => .unknown }).isSome = true := by decide

/-- A genuine two-option finite system: the first candidate fails access,
the second satisfies both enumerated obligations. -/
inductive DemoRemedy where
  | inaccessible | accepted
  deriving DecidableEq, Repr

def demoRouting : RankedRouting Unit :=
  { owner := fun _ => true
    next := id
    rank := fun _ => 0
    decreases := by intro o h; cases h }

def demoQueue : Queue :=
  { backlog := fun _ => 0
    arriving := fun _ => 0
    completed := fun _ => 0
    conservation := by intro _; rfl }

def demoFramework : Framework Unit DemoRemedy DemoObligation Unit :=
  { requirements := fun _ => [.accessible, .reasonGiven]
    candidates := fun _ => [.inaccessible, .accepted]
    observe := fun _ p d =>
      match p with
      | .inaccessible =>
          match d with
          | .accessible => .contradicted
          | .reasonGiven => .satisfied
      | .accepted => .satisfied
    feasible := fun _ => True
    feasible_nonempty := by intro _ _; decide
    feasible_witness := by
      intro _ _
      refine ⟨.accepted, by simp, ?_⟩
      intro _ _
      rfl
    routing := demoRouting
    queue := demoQueue }

example : demoFramework.select () [.inaccessible, .accepted] =
    some .accepted := by decide

/-- A completely supplied synthetic instance of the general resilience rule. -/
theorem demoFramework_resilient :
    (∀ r, demoFramework.feasible r →
      demoFramework.requirements r ≠ [] ∧
        ∃ p, demoFramework.select r (demoFramework.candidates r) = some p ∧
          ∀ o, o ∈ demoFramework.requirements r →
            demoFramework.observe r p o = .satisfied) ∧
    (∀ office, ReachesOwner demoFramework.routing office) ∧
    (∀ t, demoFramework.queue.backlog t ≤ demoFramework.queue.backlog 0) := by
  apply Framework.resilience demoFramework
  intro t
  exact le_refl _

end GRWTSK.CivilSystems
