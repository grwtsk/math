import GRWTSK.ProbabilityTheoryAndStochasticProcesses.CivilSystemsActuarialEvidence

/-!
# Source-aligned civil evidence: annual flows, linked cohorts, and review intents

Attribution: grwtsk contributors.

Pure mathematics. Annual filing and disposition *flows* need not concern the
same cases; they are never converted into the linked `Actuarial.CohortLedger`.
A source digest, source key, or a Boolean attestation is not independent source
authentication. Rights, permitted disclosure, cohort linkage, data coverage,
clinical judgment, and legal conclusions remain external proof obligations.

This increment connects the maintained `CivilSystemsResilience` review-intent
port, the maintained `Actuarial` partial-identification/disclosure/forecast
port, and source-specific paired reporting coverage. It introduces no effectful
notification, data acquisition, or person-level prediction.
-/

namespace GRWTSK.CivilSystems.SourceEvidenceBridge

/-- One original-source periodic flow. A missing disposition is *not* zero.
`evidenceAccepted` denotes a supplied, externally checked scope decision. -/
structure FlowRow where
  source : String
  period : Nat
  filings : Nat
  dispositions : Option Nat
  evidenceAccepted : Bool
  deriving Repr

/-- Both sides must be reported within an accepted observation scope. -/
def comparable (r : FlowRow) : Bool :=
  r.evidenceAccepted && r.dispositions.isSome

/-- All reported filing volume, including incomplete source rows. -/
def allFilings : List FlowRow → Nat
  | [] => 0
  | r :: rs => r.filings + allFilings rs

/-- Like-for-like filing denominator: only reporting-complete accepted rows. -/
def comparableFilings : List FlowRow → Nat
  | [] => 0
  | r :: rs => (if comparable r then r.filings else 0) + comparableFilings rs

/-- Excluded filings stay visible as a distinct measurement loss. -/
def excludedFilings : List FlowRow → Nat
  | [] => 0
  | r :: rs => (if comparable r then 0 else r.filings) + excludedFilings rs

/-- Dispositions from exactly the same retained rows as the denominator.
`getD 0` occurs only after the row's `Option` is known to be `some`;
it is a fold identity for excluded records, NOT an imputation. -/
def comparableDispositions : List FlowRow → Nat
  | [] => 0
  | r :: rs =>
      (if comparable r then r.dispositions.getD 0 else 0) + comparableDispositions rs

/-- Exact support accounting, without a statistical or legal assumption. -/
theorem filings_partition (rows : List FlowRow) :
    allFilings rows = comparableFilings rows + excludedFilings rows := by
  induction rows with
  | nil => rfl
  | cons r rs ih =>
      simp only [allFilings, comparableFilings, excludedFilings]
      by_cases h : comparable r = true
      · simp [h, ih, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
      · simp [h, ih, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

/-- A row with absent outcome observations cannot enter either comparable sum. -/
theorem missing_disposition_not_counted (r : FlowRow) (rs : List FlowRow)
    (h : r.dispositions = none) :
    comparableFilings (r :: rs) = comparableFilings rs ∧
    comparableDispositions (r :: rs) = comparableDispositions rs := by
  simp [comparableFilings, comparableDispositions, comparable, h]

/-- Unaccepted source evidence cannot enter either comparable sum. -/
theorem unaccepted_row_not_counted (r : FlowRow) (rs : List FlowRow)
    (h : r.evidenceAccepted = false) :
    comparableFilings (r :: rs) = comparableFilings rs ∧
    comparableDispositions (r :: rs) = comparableDispositions rs := by
  simp [comparableFilings, comparableDispositions, comparable, h]

/-- The missing row remains in the reported filing inventory and excluded mass. -/
theorem missing_disposition_preserves_excluded_mass (r : FlowRow)
    (rs : List FlowRow) (h : r.dispositions = none) :
    excludedFilings (r :: rs) = r.filings + excludedFilings rs := by
  simp [excludedFilings, comparable, h]

/-- Scoping must precede aggregation: it cannot be inferred from equal names. -/
def scopedRows (source : String) (rows : List FlowRow) : List FlowRow :=
  rows.filter (fun r => decide (r.source = source))

theorem scoped_rows_only_source (source : String) (rows : List FlowRow)
    {r : FlowRow} (h : r ∈ scopedRows source rows) : r.source = source := by
  have hh : decide (r.source = source) = true :=
    (List.mem_filter.mp h).2
  exact of_decide_true hh

/-- Pinned flows are not a cohort. Their annual disposition count may close
cases filed in previous years; exact observational equivalence does not
identify the actual case matching. -/
structure FlowInterpretation where
  rows : List FlowRow
  matchingFiledCases : Bool

/-- Same published flow rows, different unobserved longitudinal relationships. -/
theorem annual_flows_do_not_identify_cohort_linkage (rows : List FlowRow) :
    ∃ left right : FlowInterpretation,
      left.rows = right.rows ∧
      left.matchingFiledCases ≠ right.matchingFiledCases := by
  refine ⟨⟨rows, false⟩, ⟨rows, true⟩, rfl, ?_⟩
  decide

/-- A cohort is separately supplied, not reconstructed from annual totals. -/
structure LinkedCohortPacket where
  cohort : GRWTSK.CivilSystems.Actuarial.CohortLedger
  sourceRevision : String
  sourceDigest : String
  authenticatedSource : Bool
  linkageReviewed : Bool
  cohortHorizonReviewed : Bool
  samplingFrameReviewed : Bool

/-- These gates describe externally verified *inputs*, not verification code. -/
def LinkedCohortQualified (p : LinkedCohortPacket) : Prop :=
  p.authenticatedSource = true ∧
  p.linkageReviewed = true ∧
  p.cohortHorizonReviewed = true ∧
  p.samplingFrameReviewed = true ∧
  p.sourceRevision ≠ "" ∧ p.sourceDigest ≠ ""

/-- Original actuarial disclosure remains independently necessary. -/
def linkedDisclosure (p : LinkedCohortPacket)
    (gate : GRWTSK.CivilSystems.Actuarial.DisclosureGate) :
    Option GRWTSK.CivilSystems.Actuarial.PublicCountBounds :=
  if LinkedCohortQualified p then
    GRWTSK.CivilSystems.Actuarial.disclosure gate p.cohort
  else none

theorem linked_disclosure_sound {p : LinkedCohortPacket}
    {gate : GRWTSK.CivilSystems.Actuarial.DisclosureGate}
    {out : GRWTSK.CivilSystems.Actuarial.PublicCountBounds}
    (h : linkedDisclosure p gate = some out) :
    LinkedCohortQualified p ∧
      GRWTSK.CivilSystems.Actuarial.DisclosureAllowed gate p.cohort := by
  by_cases hp : LinkedCohortQualified p
  · exact ⟨hp, GRWTSK.CivilSystems.Actuarial.disclosure_sound
      (by simpa [linkedDisclosure, hp] using h)⟩
  · simp [linkedDisclosure, hp] at h

/-- Forecast intent additionally requires separately qualified linkage. -/
def linkedForecast (p : LinkedCohortPacket)
    (gate : GRWTSK.CivilSystems.Actuarial.ForecastGate)
    (nextPopulation : Nat) :
    Option GRWTSK.CivilSystems.Actuarial.ForecastIntent :=
  if LinkedCohortQualified p then
    GRWTSK.CivilSystems.Actuarial.planForecast gate p.cohort nextPopulation
  else none

theorem linked_forecast_sound {p : LinkedCohortPacket}
    {gate : GRWTSK.CivilSystems.Actuarial.ForecastGate}
    {n : Nat} {out : GRWTSK.CivilSystems.Actuarial.ForecastIntent}
    (h : linkedForecast p gate n = some out) :
    LinkedCohortQualified p ∧
      GRWTSK.CivilSystems.Actuarial.ForecastAllowed gate p.cohort := by
  by_cases hp : LinkedCohortQualified p
  · exact ⟨hp, GRWTSK.CivilSystems.Actuarial.planForecast_sound
      (by simpa [linkedForecast, hp] using h)⟩
  · simp [linkedForecast, hp] at h

/-- A cross-portfolio review must retain two separate source references. -/
structure JoinBasis where
  system : String
  noticeSourceDigest : String
  cohortSourceDigest : String
  scopeReviewed : Bool
  rightsReviewed : Bool

/-- The source-match predicate is still subject to independent host custody. -/
def JoinQualified (basis : JoinBasis) (notice : GRWTSK.CivilSystems.NoticeGate)
    (packet : LinkedCohortPacket) : Prop :=
  basis.scopeReviewed = true ∧
  basis.rightsReviewed = true ∧
  basis.system = notice.systemToken ∧
  basis.noticeSourceDigest = notice.sourceDigest ∧
  basis.cohortSourceDigest = packet.sourceDigest ∧
  LinkedCohortQualified packet

/-- Private reviewer-only paired *intent*; no outward communication occurs. -/
def planJointReview {Obligation : Type*} (basis : JoinBasis)
    (notice : GRWTSK.CivilSystems.NoticeGate)
    (assessment : GRWTSK.CivilSystems.Assessment Obligation)
    (packet : LinkedCohortPacket)
    (disclosure : GRWTSK.CivilSystems.Actuarial.DisclosureGate) :
    Option (GRWTSK.CivilSystems.NoticeIntent Obligation ×
      GRWTSK.CivilSystems.Actuarial.PublicCountBounds) :=
  if JoinQualified basis notice packet then
    match GRWTSK.CivilSystems.screen notice assessment,
      GRWTSK.CivilSystems.Actuarial.disclosure disclosure packet.cohort with
    | some n, some a => some (n, a)
    | _, _ => none
  else none

/-- The joint port cannot bypass any of the three original evidence gates. -/
theorem joint_review_sound {O : Type*} {basis : JoinBasis}
    {notice : GRWTSK.CivilSystems.NoticeGate}
    {assessment : GRWTSK.CivilSystems.Assessment O}
    {packet : LinkedCohortPacket}
    {disclosure : GRWTSK.CivilSystems.Actuarial.DisclosureGate}
    {n : GRWTSK.CivilSystems.NoticeIntent O}
    {a : GRWTSK.CivilSystems.Actuarial.PublicCountBounds}
    (h : planJointReview basis notice assessment packet disclosure = some (n, a)) :
    JoinQualified basis notice packet ∧
      GRWTSK.CivilSystems.Flagged assessment ∧
      GRWTSK.CivilSystems.Eligible notice ∧
      GRWTSK.CivilSystems.Actuarial.DisclosureAllowed disclosure packet.cohort := by
  by_cases hj : JoinQualified basis notice packet
  · cases hn : GRWTSK.CivilSystems.screen notice assessment with
    | none => simp [planJointReview, hj, hn] at h
    | some nn =>
        cases ha : GRWTSK.CivilSystems.Actuarial.disclosure disclosure packet.cohort with
        | none => simp [planJointReview, hj, hn, ha] at h
        | some aa =>
            have hnotice := GRWTSK.CivilSystems.screen_sound hn
            have hdisclosure := GRWTSK.CivilSystems.Actuarial.disclosure_sound ha
            exact ⟨hj, hnotice.1, hnotice.2, hdisclosure⟩
  · simp [planJointReview, hj] at h

/-- Nonvacuous scope-loss control. Fifteen filings are reported, but only
seven dispositions against ten comparable filings may be used. -/
def demoFlows : List FlowRow :=
  [{ source := "court", period := 2025, filings := 10,
     dispositions := some 7, evidenceAccepted := true },
   { source := "court", period := 2025, filings := 5,
     dispositions := none, evidenceAccepted := false }]

example : allFilings demoFlows = 15 := by decide
example : comparableFilings demoFlows = 10 := by decide
example : comparableDispositions demoFlows = 7 := by decide
example : excludedFilings demoFlows = 5 := by decide

end GRWTSK.CivilSystems.SourceEvidenceBridge
