import GRWTSK.ComputerScience.AlgorithmsInComputerScience.CivilSystemsAccumulation

/-!
# Sector-preserving civil-service capacity, evidence and legal review

Attribution: grwtsk contributors.

This extends the published accumulation/queue source by indexing professional
work and legal review by independently selected sectors. It does not assume
that a counted problem is a legal violation, that a source identifier is
an authenticated record, or that a high workload proves coercion or harm.
The host must establish evidence custody, applicability and comparability.

The new consumer is a qualified, per-sector observation ledger which reuses
`Accumulation.Trajectory` and `CivilSystems.Queue` rather than postulating a
new dynamics or treating events across distinct units as comparable.
-/

namespace GRWTSK.CivilSystems.CrossSector

inductive Sector where
  | healthcare | education | housing | benefits | employment
  | courts | licensing | utilities | publicAdministration
  deriving DecidableEq, BEq, Repr

inductive WorkUnit where
  | administrativeMinutes | caseActions | transactions
  deriving DecidableEq, BEq, Repr

inductive WorkChannel where
  | direct | feedback | repaired | unclassified
  deriving DecidableEq, BEq, Repr

/-- A record's displayed sector/unit is a claim, not authenticated custody. -/
structure WorkEvent where
  sector : Sector
  unit : WorkUnit
  eventToken : String
  sourceDigest : String
  quantity : Nat
  channel : WorkChannel
  sourceAccepted : Bool
  scopeAccepted : Bool
  duplicate : Bool
  causalFeedbackReviewed : Bool
  deriving Repr

/-- A proposed rework relation is unclassified until independently reviewed. -/
def WorkEvent.effectiveChannel (e : WorkEvent) : WorkChannel :=
  if e.channel == .feedback && !e.causalFeedbackReviewed then
    .unclassified else e.channel

theorem unreviewed_feedback_not_feedback (e : WorkEvent)
    (hc : e.channel = .feedback) (hr : e.causalFeedbackReviewed = false) :
    e.effectiveChannel = .unclassified := by
  simp [WorkEvent.effectiveChannel, hc, hr]

/-- No automatic pooling across sectors, time units or source qualifications. -/
def WorkEvent.Qualified (e : WorkEvent) (sector : Sector)
    (unit : WorkUnit) : Prop :=
  e.sector = sector ∧ e.unit = unit ∧
  e.sourceAccepted = true ∧ e.scopeAccepted = true ∧ e.duplicate = false

def WorkEvent.admittedUnits (e : WorkEvent) (sector : Sector)
    (unit : WorkUnit) : Nat :=
  if e.Qualified sector unit then e.quantity else 0

def WorkEvent.residualUnits (e : WorkEvent) (sector : Sector)
    (unit : WorkUnit) : Nat :=
  if e.Qualified sector unit then 0 else e.quantity

theorem WorkEvent.partition (e : WorkEvent) (sector : Sector)
    (unit : WorkUnit) :
    e.admittedUnits sector unit + e.residualUnits sector unit = e.quantity := by
  by_cases h : e.Qualified sector unit
  · simp [WorkEvent.admittedUnits, WorkEvent.residualUnits, h]
  · simp [WorkEvent.admittedUnits, WorkEvent.residualUnits, h]

theorem WorkEvent.other_sector_is_residual (e : WorkEvent)
    (sector : Sector) (unit : WorkUnit) (h : e.sector ≠ sector) :
    e.admittedUnits sector unit = 0 ∧
      e.residualUnits sector unit = e.quantity := by
  have hn : ¬ e.Qualified sector unit := by
    intro hq
    exact h hq.1
  simp [WorkEvent.admittedUnits, WorkEvent.residualUnits, hn]

theorem WorkEvent.rejected_source_is_residual (e : WorkEvent)
    (sector : Sector) (unit : WorkUnit)
    (h : e.sourceAccepted = false) :
    e.admittedUnits sector unit = 0 := by
  have hn : ¬ e.Qualified sector unit := by
    intro hq
    simp [h] at hq
  simp [WorkEvent.admittedUnits, hn]

/-- The unit is retained even when an event is excluded from a selected view. -/
def rawUnits : List WorkEvent → Nat
  | [] => 0
  | e :: es => e.quantity + rawUnits es

def admittedTotal (sector : Sector) (unit : WorkUnit) : List WorkEvent → Nat
  | [] => 0
  | e :: es => e.admittedUnits sector unit + admittedTotal sector unit es

def residualTotal (sector : Sector) (unit : WorkUnit) : List WorkEvent → Nat
  | [] => 0
  | e :: es => e.residualUnits sector unit + residualTotal sector unit es

theorem admitted_residual_partition (sector : Sector) (unit : WorkUnit)
    (events : List WorkEvent) :
    admittedTotal sector unit events + residualTotal sector unit events =
      rawUnits events := by
  induction events with
  | nil => rfl
  | cons e es ih =>
      simp only [admittedTotal, residualTotal, rawUnits]
      have he := e.partition sector unit
      omega

/-- No unreviewed feedback is counted as established causal rework. -/
def channelTotal (sector : Sector) (unit : WorkUnit)
    (channel : WorkChannel) : List WorkEvent → Nat
  | [] => 0
  | e :: es =>
      (if e.effectiveChannel = channel then
        e.admittedUnits sector unit else 0) +
        channelTotal sector unit channel es

theorem unreviewed_feedback_not_counted (sector : Sector) (unit : WorkUnit)
    (e : WorkEvent) (rest : List WorkEvent)
    (hc : e.channel = .feedback) (hr : e.causalFeedbackReviewed = false) :
    channelTotal sector unit .feedback (e :: rest) =
      channelTotal sector unit .feedback rest := by
  simp [channelTotal, e.unreviewed_feedback_not_feedback hc hr]

/-- One sector's report retains its own exact sector, time unit and flow. -/
structure SectorTrajectory where
  sector : Sector
  unit : WorkUnit
  burden : Nat → Nat
  direct : Nat → Nat
  feedback : Nat → Nat
  repaired : Nat → Nat
  conservation : ∀ t,
    burden (t + 1) + repaired t = burden t + direct t + feedback t

def SectorTrajectory.toAccumulation (s : SectorTrajectory) :
    GRWTSK.CivilSystems.Accumulation.Trajectory where
  burden := s.burden
  direct := s.direct
  feedback := s.feedback
  repaired := s.repaired
  conservation := s.conservation

/-- Existing queue bound transported without changing its hypotheses. -/
theorem SectorTrajectory.bounded (s : SectorTrajectory)
    (h : ∀ t, s.direct t + s.feedback t ≤ s.repaired t) (t : Nat) :
    s.burden t ≤ s.burden 0 :=
  GRWTSK.CivilSystems.Accumulation.no_accumulation_if_repair_covers_inflow
    s.toAccumulation h t

/-- Ever-positive net flow is a *sufficient* mathematical condition only. -/
theorem SectorTrajectory.unbounded (s : SectorTrajectory)
    (h : ∀ t, s.repaired t + 1 ≤ s.direct t + s.feedback t)
    (threshold : Nat) :
    ∃ t, threshold ≤ s.burden t :=
  GRWTSK.CivilSystems.Accumulation.eventually_crosses_any_threshold
    s.toAccumulation h threshold

/-- Professional capacity: reduced diversion preserves scheduled service time.
Clinical outcomes and other professional outcomes are NOT inferred. -/
def professionalTimeAvailable :=
  GRWTSK.CivilSystems.Accumulation.careTimeAvailable

theorem reduced_diversion_protects_professional_time
    (budget before after : Nat) (h : after ≤ before) :
    professionalTimeAvailable budget before ≤
      professionalTimeAvailable budget after :=
  GRWTSK.CivilSystems.Accumulation.less_diversion_protects_clinical_time
    budget before after h

inductive NormKind where
  | duty | prohibition | permission | protection | exception
  deriving DecidableEq, BEq, Repr

/-- Jurisdiction, historic source version and actor applicability are not
established by this structure; they must be independently reviewed. -/
structure LegalRule where
  sector : Sector
  jurisdiction : String
  citation : String
  sourceURL : String
  norm : NormKind
  actor : String
  versionToken : String
  deriving Repr

structure LegalReview where
  rule : LegalRule
  assessedSector : Sector
  jurisdictionAccepted : Bool
  historicVersionAccepted : Bool
  actorScopeAccepted : Bool
  triggerAccepted : Bool
  exceptionsResolved : Bool
  evidence : GRWTSK.CivilSystems.Finding
  deriving Repr

/-- A research flag for a documented duty conflict, not legal adjudication.
Permission, exemption and unknown evidence cannot independently produce it. -/
def LegalReview.potentialDutyGap (r : LegalReview) : Bool :=
  decide (r.rule.sector = r.assessedSector ∧
    r.rule.norm = .duty ∧
    r.jurisdictionAccepted = true ∧
    r.historicVersionAccepted = true ∧
    r.actorScopeAccepted = true ∧
    r.triggerAccepted = true ∧
    r.exceptionsResolved = true ∧
    r.evidence = .contradicted)

theorem permission_cannot_become_duty_gap (r : LegalReview)
    (h : r.rule.norm = .permission) : r.potentialDutyGap = false := by
  simp [LegalReview.potentialDutyGap, h]

theorem unknown_evidence_cannot_become_duty_gap (r : LegalReview)
    (h : r.evidence = .unknown) : r.potentialDutyGap = false := by
  simp [LegalReview.potentialDutyGap, h]

theorem mismatched_sector_cannot_become_duty_gap (r : LegalReview)
    (h : r.rule.sector ≠ r.assessedSector) :
    r.potentialDutyGap = false := by
  simp [LegalReview.potentialDutyGap, h]

/-- A true review flag is a conjunction of evidence and scope conditions.
Nothing in its conclusion asserts a statutory violation. -/
theorem potentialDutyGap_sound (r : LegalReview)
    (h : r.potentialDutyGap = true) :
    r.rule.sector = r.assessedSector ∧
    r.rule.norm = .duty ∧
    r.jurisdictionAccepted = true ∧
    r.historicVersionAccepted = true ∧
    r.actorScopeAccepted = true ∧
    r.triggerAccepted = true ∧
    r.exceptionsResolved = true ∧
    r.evidence = .contradicted := by
  simpa [LegalReview.potentialDutyGap] using h

/-- Synthetic controls: an unreviewed feedback event is not classified as
verified rework, and a housing source cannot contaminate healthcare totals. -/
def demo : WorkEvent :=
  { sector := .housing, unit := .administrativeMinutes,
    eventToken := "demo.01", sourceDigest := "example-only",
    quantity := 12, channel := .feedback, sourceAccepted := true,
    scopeAccepted := true, duplicate := false,
    causalFeedbackReviewed := false }

example : demo.effectiveChannel = .unclassified := by decide
example : demo.admittedUnits .healthcare .administrativeMinutes = 0 := by decide
example : demo.admittedUnits .housing .administrativeMinutes = 12 := by decide

end GRWTSK.CivilSystems.CrossSector
