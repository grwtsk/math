import GRWTSK.ComputerScience.AlgorithmsInComputerScience.CivilSystemsResilience
import Mathlib

/-!
# Aggregate evidence bounds and actuarial planning for civil systems

Attribution: grwtsk contributors.

This is a **pure and conditional** extension of `GRWTSK.CivilSystems`.
It does not adjudicate legal violations, infer individual guilt, create a criminal
risk score, certify a study sample, authenticate a source, calculate an externally
calibrated probabilistic forecast, or send notifications. The observations,
provenance, data rights, and validation attestations must be established by the
application outside this model.

A population divided into recorded completion, pending, other closure, and
unknown outcomes admits exact partial-identification bounds. The quantitative
obstruction is real: a completed count cannot be inferred for unknown records.
The model also exhibits an explicit observational equivalence counterexample:
identical counts can arise in worlds with different legal facts.

The runtime statistical methods (Wilson intervals, discrete competing-risk life
tables, actuarial scenario arithmetic and validation) are Noe-owned consumers;
those statistical coverage and refinement claims are NOT proved by this file.
-/

namespace GRWTSK.CivilSystems.Actuarial

/-- Every item belongs to exactly one observed status at the chosen horizon.
`unknown` is absence of verified outcome, NOT a known non-completion. -/
structure CohortLedger where
  eligible : Nat
  completed : Nat
  pending : Nat
  otherClosure : Nat
  unknown : Nat
  conservation : completed + pending + otherClosure + unknown = eligible

/-- Observed outcomes never exceed the cohort population. -/
theorem CohortLedger.completed_le_eligible (c : CohortLedger) :
    c.completed ≤ c.eligible := by
  have hc := c.conservation
  omega

theorem CohortLedger.completed_add_unknown_le_eligible (c : CohortLedger) :
    c.completed + c.unknown ≤ c.eligible := by
  have hc := c.conservation
  omega

/-- A true count can include any number of successes among unknown records,
but may not include more than the number of unknown records. -/
def RealizableCompletion (c : CohortLedger) (count : Nat) : Prop :=
  ∃ successesFromUnknown : Nat,
    successesFromUnknown ≤ c.unknown ∧
      count = c.completed + successesFromUnknown

/-- Sharp partial-identification bounds, before a statistical sampling model. -/
theorem identified_completion_bounds (c : CohortLedger) (count : Nat)
    (h : RealizableCompletion c count) :
    c.completed ≤ count ∧ count ≤ c.completed + c.unknown := by
  obtain ⟨unobservedSuccesses, hu, rfl⟩ := h
  omega

/-- Both extrema are realizable. The bounds cannot be narrowed by counting alone. -/
theorem lower_bound_attainable (c : CohortLedger) :
    RealizableCompletion c c.completed := by
  exact ⟨0, Nat.zero_le _, by simp⟩

theorem upper_bound_attainable (c : CohortLedger) :
    RealizableCompletion c (c.completed + c.unknown) := by
  exact ⟨c.unknown, Nat.le_refl _, rfl⟩

/-- Zero unknown records makes the completion count identified. -/
theorem uniquely_identified_if_no_unknown (c : CohortLedger)
    (hu : c.unknown = 0) (count : Nat)
    (h : RealizableCompletion c count) : count = c.completed := by
  have hh := identified_completion_bounds c count h
  omega

/-- The observed count itself cannot establish a legal proposition. -/
structure PossibleWorld where
  inventory : CohortLedger
  legalViolationEstablished : Bool

/-- Same observable inventory, opposite legal states: a source-matched
counterexample to any *unconditional* legal inference from aggregates. -/
theorem same_counts_opposite_legal_states (c : CohortLedger) :
    ∃ w₁ w₂ : PossibleWorld,
      w₁.inventory = w₂.inventory ∧
      w₁.legalViolationEstablished ≠ w₂.legalViolationEstablished := by
  refine ⟨⟨c, false⟩, ⟨c, true⟩, rfl, ?_⟩
  decide

/-- The review decision and the statistical population are distinct objects.
A `Flagged` civil assessment can motivate review; it is not itself a verdict. -/
structure CombinedPacket (Obligation : Type*) where
  population : CohortLedger
  assessment : GRWTSK.CivilSystems.Assessment Obligation
  sourceToken : String

/-- A caller-controlled assurance gate. These booleans are NOT authentication. -/
structure DisclosureGate where
  aggregateOnly : Bool
  lawfulUseAttested : Bool
  evidenceBound : Bool
  sourceCoverageReviewed : Bool
  disclosureApproved : Bool
  independentReviewAttested : Bool
  minimumCohort : Nat

/-- Statistical disclosure requires all stated external conditions. -/
def DisclosureAllowed (g : DisclosureGate) (c : CohortLedger) : Prop :=
  g.aggregateOnly = true ∧
  g.lawfulUseAttested = true ∧
  g.evidenceBound = true ∧
  g.sourceCoverageReviewed = true ∧
  g.disclosureApproved = true ∧
  g.independentReviewAttested = true ∧
  g.minimumCohort ≤ c.eligible ∧
  20 ≤ g.minimumCohort

/-- The only disclosed integer bounds are the two identified endpoints. -/
structure PublicCountBounds where
  lower : Nat
  upper : Nat
  population : Nat

def disclosure (g : DisclosureGate) (c : CohortLedger) :
    Option PublicCountBounds :=
  if DisclosureAllowed g c then
    some { lower := c.completed
           upper := c.completed + c.unknown
           population := c.eligible }
  else none

/-- Producing a statistic proves only that the *supplied gate* was true. -/
theorem disclosure_sound {g : DisclosureGate} {c : CohortLedger}
    {out : PublicCountBounds} (h : disclosure g c = some out) :
    DisclosureAllowed g c := by
  by_cases he : DisclosureAllowed g c
  · exact he
  · simp [disclosure, he] at h

/-- Reported interval encloses all completion counts that the inventory allows. -/
theorem disclosed_bounds_sound {g : DisclosureGate} {c : CohortLedger}
    {out : PublicCountBounds} (h : disclosure g c = some out)
    {count : Nat} (hc : RealizableCompletion c count) :
    out.lower ≤ count ∧ count ≤ out.upper := by
  have he := disclosure_sound h
  have hout : out = {
      lower := c.completed, upper := c.completed + c.unknown,
      population := c.eligible } := by
    have hh : some { lower := c.completed,
                      upper := c.completed + c.unknown,
                      population := c.eligible } = some out := by
      simpa [disclosure, he] using h
    exact (Option.some.inj hh).symm
  subst out
  exact identified_completion_bounds c count hc

/-- Denied access cannot be overcome by strong estimated statistical signal. -/
theorem no_disclosure_without_authorization (g : DisclosureGate)
    (c : CohortLedger) (h : g.disclosureApproved = false) :
    disclosure g c = none := by
  have hn : ¬ DisclosureAllowed g c := by
    intro hh
    have ha := hh.2.2.2.2.1
    simp [h] at ha
  simp [disclosure, hn]

/-- Individual-target statistical exports are intentionally unsupported. -/
theorem no_individual_disclosure (g : DisclosureGate) (c : CohortLedger)
    (h : g.aggregateOnly = false) :
    disclosure g c = none := by
  have hn : ¬ DisclosureAllowed g c := by
    intro hh
    have ha := hh.1
    simp [h] at ha
  simp [disclosure, hn]

/-- Forecast-ready means that stronger *external* evidence has been supplied.
Nothing here derives calibration from the presence of an attestation. -/
structure ForecastGate where
  disclosure : DisclosureGate
  holdoutValidated : Bool
  calibrationReviewed : Bool
  stableOutcomeDefinition : Bool
  comparablePopulation : Bool
  reviewForHighStakesUse : Bool

/-- Forecasting still requires complete observation at the selected horizon. -/
def ForecastAllowed (g : ForecastGate) (c : CohortLedger) : Prop :=
  DisclosureAllowed g.disclosure c ∧
  g.holdoutValidated = true ∧
  g.calibrationReviewed = true ∧
  g.stableOutcomeDefinition = true ∧
  g.comparablePopulation = true ∧
  g.reviewForHighStakesUse = true ∧
  c.unknown = 0 ∧
  0 < c.eligible

/-- The *intent* to perform an aggregate scenario, not a probabilistic proof. -/
structure ForecastIntent where
  observedCount : Nat
  eligibleCount : Nat
  proposedNextPopulation : Nat

def planForecast (g : ForecastGate) (c : CohortLedger)
    (nextPopulation : Nat) : Option ForecastIntent :=
  if ForecastAllowed g c then
    some { observedCount := c.completed
           eligibleCount := c.eligible
           proposedNextPopulation := nextPopulation }
  else none

theorem planForecast_sound {g : ForecastGate} {c : CohortLedger}
    {nextPopulation : Nat} {out : ForecastIntent}
    (h : planForecast g c nextPopulation = some out) :
    ForecastAllowed g c := by
  by_cases he : ForecastAllowed g c
  · exact he
  · simp [planForecast, he] at h

/-- One unobserved outcome blocks a calibrated-completion *intent*. -/
theorem no_forecast_with_unknown (g : ForecastGate) (c : CohortLedger)
    (n : Nat) (h : 0 < c.unknown) :
    planForecast g c n = none := by
  have hn : ¬ ForecastAllowed g c := by
    intro hh
    have hu := hh.2.2.2.2.2.2.1
    omega
  simp [planForecast, hn]

/-- A failed held-out check also blocks the prediction-intent gate. -/
theorem no_forecast_without_holdout (g : ForecastGate) (c : CohortLedger)
    (n : Nat) (h : g.holdoutValidated = false) :
    planForecast g c n = none := by
  have hn : ¬ ForecastAllowed g c := by
    intro hh
    have hv := hh.2.1
    simp [h] at hv
  simp [planForecast, hn]

/-- Competing-event hazards for one observation interval. The declared
probability constraints are mathematical assumptions, NOT estimated data. -/
structure PeriodHazard where
  completion : ℚ
  otherClosure : ℚ
  completion_nonneg : 0 ≤ completion
  other_nonneg : 0 ≤ otherClosure
  total_le_one : completion + otherClosure ≤ 1

/-- Discrete cumulative incidence: completed, other closure, and still at risk.
The three masses do not represent missing follow-up: censoring and its
noninformative assumption require a separate source-specific model. -/
structure IncidenceState where
  completed : ℚ
  otherClosure : ℚ
  stillAtRisk : ℚ

def IncidenceState.total (s : IncidenceState) : ℚ :=
  s.completed + s.otherClosure + s.stillAtRisk

/-- One discrete competing-risk transition under the supplied hazards. -/
def IncidenceState.advance (s : IncidenceState) (h : PeriodHazard) :
    IncidenceState :=
  { completed := s.completed + s.stillAtRisk * h.completion
    otherClosure := s.otherClosure + s.stillAtRisk * h.otherClosure
    stillAtRisk := s.stillAtRisk * (1 - h.completion - h.otherClosure) }

/-- Actuarial probability mass is conserved exactly for each step. -/
theorem incidence_mass_conserved (s : IncidenceState) (h : PeriodHazard) :
    (s.advance h).total = s.total := by
  simp [IncidenceState.total, IncidenceState.advance]
  ring

/-- A nonnegative survivor mass remains nonnegative after a valid hazard. -/
theorem survival_nonnegative (s : IncidenceState) (h : PeriodHazard)
    (hs : 0 ≤ s.stillAtRisk) :
    0 ≤ (s.advance h).stillAtRisk := by
  have hfactor : 0 ≤ (1 : ℚ) - h.completion - h.otherClosure := by
    linarith [h.total_le_one]
  exact mul_nonneg hs hfactor

/-- Cumulative completion incidence does not decrease during a period. -/
theorem completed_incidence_monotone (s : IncidenceState)
    (h : PeriodHazard) (hs : 0 ≤ s.stillAtRisk) :
    s.completed ≤ (s.advance h).completed := by
  simp only [IncidenceState.advance]
  exact le_add_of_nonneg_right (mul_nonneg hs h.completion_nonneg)

/-- The initial risk mass is one, before any modelled events. -/
def initialIncidence : IncidenceState :=
  { completed := 0, otherClosure := 0, stillAtRisk := 1 }

theorem initial_incidence_total : initialIncidence.total = 1 := by
  norm_num [initialIncidence, IncidenceState.total]

theorem first_interval_conserves_one (h : PeriodHazard) :
    (initialIncidence.advance h).total = 1 := by
  rw [incidence_mass_conserved]
  exact initial_incidence_total

/-- Deterministic queue projection: the law of conservation is exact, whereas
arrival and capacity sequences remain unproved scenario inputs. -/
def nextBacklog (backlog arrivals capacity : Nat) : Nat :=
  backlog + arrivals - min (backlog + arrivals) capacity

def handled (backlog arrivals capacity : Nat) : Nat :=
  min (backlog + arrivals) capacity

theorem queue_accounting (backlog arrivals capacity : Nat) :
    nextBacklog backlog arrivals capacity + handled backlog arrivals capacity =
      backlog + arrivals := by
  simpa [nextBacklog, handled] using
    Nat.sub_add_cancel (Nat.min_le_left (backlog + arrivals) capacity)

/-- A workload reserve is an administrative resource scenario, not damages. -/
def workloadHours (completed hoursPerCase : Nat) : Nat :=
  completed * hoursPerCase

theorem workload_monotone (n m hoursPerCase : Nat)
    (h : n ≤ m) : workloadHours n hoursPerCase ≤ workloadHours m hoursPerCase := by
  unfold workloadHours
  exact Nat.mul_le_mul_right hoursPerCase h

/-- Synthetic inventory: no external people, institutions or legal facts. -/
def demoCounts : CohortLedger :=
  { eligible := 100, completed := 60, pending := 20,
    otherClosure := 10, unknown := 10, conservation := by decide }

example : RealizableCompletion demoCounts 70 := by
  refine ⟨10, ?_, ?_⟩ <;> decide
example : ¬ RealizableCompletion demoCounts 71 := by
  intro h
  obtain ⟨u, hu, he⟩ := h
  dsimp [demoCounts] at hu he
  omega
example : nextBacklog 30 20 18 = 32 := by decide

end GRWTSK.CivilSystems.Actuarial
