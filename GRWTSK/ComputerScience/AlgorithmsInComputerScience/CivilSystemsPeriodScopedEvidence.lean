import GRWTSK.ComputerScience.AlgorithmsInComputerScience.CivilSystemsCrossSectorScaling

/-!
# Period-scoped, unit-preserving civil-service evidence

Attribution: grwtsk contributors.

The earlier WorkEvent lacks a reporting-period field. This module adds that
coordinate without changing the old source, and proves that only work recorded
in the requested sector, physical unit and period can enter its measured flows.
A foreign-sector observation is *not* evidence of incomplete coverage of the
selected sector. Rejected observations in the selected scope are separate.

Source qualification and causal attribution are external inputs. Neither a
string digest nor a Boolean review field authenticates an external event.
No legal decision, medical action, statistical prediction or message is issued.
-/

namespace GRWTSK.CivilSystems.PeriodScopedEvidence

open GRWTSK.CivilSystems.CrossSector

/-- Preserve the original event, adding the period present in the Noe adapter. -/
structure TimedEvent where
  work : WorkEvent
  period : Nat
  deriving Repr

/-- Physical-unit selection must happen before arithmetic aggregation. -/
def TimedEvent.sameUnit (e : TimedEvent) (u : WorkUnit) : Prop :=
  e.work.unit = u

/-- Exact scope before evidence/causal qualification. -/
def TimedEvent.inScope (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) : Prop :=
  e.work.sector = sector ∧ e.work.unit = u ∧ e.period = period

/-- Syntactic qualification is a supplied external attestation, not custody. -/
def TimedEvent.accepted (e : TimedEvent) : Prop :=
  e.work.sourceAccepted = true ∧
  e.work.scopeAccepted = true ∧ e.work.duplicate = false

/-- Only in-scope, qualified events can enter the service ledger. -/
def TimedEvent.admissible (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) : Prop :=
  e.inScope sector u period ∧ e.accepted

/-- Raw quantity of the *selected* physical unit, across all source scopes. -/
def TimedEvent.rawQuantity (e : TimedEvent) (u : WorkUnit) : Nat :=
  if e.sameUnit u then e.work.quantity else 0

/-- Quantities in the intended sector/period, before source review. -/
def TimedEvent.localQuantity (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) : Nat :=
  if e.inScope sector u period then e.work.quantity else 0

/-- Qualifying in-scope work. -/
def TimedEvent.admittedQuantity (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) : Nat :=
  if e.admissible sector u period then e.work.quantity else 0

/-- Rejected work within the intended sector/period only. -/
def TimedEvent.localResidual (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) : Nat :=
  if e.inScope sector u period then
    if e.accepted then 0 else e.work.quantity
  else 0

/-- Other sectors/periods of the same unit, retained but not counted as local gaps. -/
def TimedEvent.foreignQuantity (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) : Nat :=
  if e.sameUnit u then
    if e.inScope sector u period then 0 else e.work.quantity
  else 0

/-- Within a target scope, input = admitted + locally rejected. -/
theorem TimedEvent.local_partition (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) :
    e.localQuantity sector u period =
      e.admittedQuantity sector u period +
        e.localResidual sector u period := by
  by_cases hs : e.inScope sector u period
  · by_cases ha : e.accepted
    · simp [TimedEvent.localQuantity, TimedEvent.admittedQuantity,
        TimedEvent.localResidual, TimedEvent.admissible, hs, ha]
    · simp [TimedEvent.localQuantity, TimedEvent.admittedQuantity,
        TimedEvent.localResidual, TimedEvent.admissible, hs, ha]
  · have hn : ¬ e.admissible sector u period := by
      intro ha
      exact hs ha.1
    simp [TimedEvent.localQuantity, TimedEvent.admittedQuantity,
      TimedEvent.localResidual, hs, hn]

/-- Each source work unit is partitioned, WITHOUT adding other units to it. -/
theorem TimedEvent.unit_partition (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) :
    e.rawQuantity u =
      e.localQuantity sector u period + e.foreignQuantity sector u period := by
  by_cases hu : e.sameUnit u
  · by_cases hs : e.inScope sector u period
    · simp [TimedEvent.rawQuantity, TimedEvent.localQuantity,
        TimedEvent.foreignQuantity, hu, hs]
    · simp [TimedEvent.rawQuantity, TimedEvent.localQuantity,
        TimedEvent.foreignQuantity, hu, hs]
  · have hn : ¬ e.inScope sector u period := by
      intro hs
      exact hu hs.2.1
    simp [TimedEvent.rawQuantity, TimedEvent.localQuantity,
      TimedEvent.foreignQuantity, hu, hn]

/-- A mismatched sector contributes neither accepted nor rejected local work. -/
theorem TimedEvent.foreign_sector_noninterference (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat)
    (h : e.work.sector ≠ sector) :
    e.admittedQuantity sector u period = 0 ∧
      e.localResidual sector u period = 0 := by
  have hs : ¬ e.inScope sector u period := by
    intro hx
    exact h hx.1
  have ha : ¬ e.admissible sector u period := by
    intro hx
    exact hs hx.1
  simp [TimedEvent.admittedQuantity, TimedEvent.localResidual, hs, ha]

/-- A mismatched period cannot change this period's admitted or rejected mass. -/
theorem TimedEvent.foreign_period_noninterference (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat)
    (h : e.period ≠ period) :
    e.admittedQuantity sector u period = 0 ∧
      e.localResidual sector u period = 0 := by
  have hs : ¬ e.inScope sector u period := by
    intro hx
    exact h hx.2.2
  have ha : ¬ e.admissible sector u period := by
    intro hx
    exact hs hx.1
  simp [TimedEvent.admittedQuantity, TimedEvent.localResidual, hs, ha]

/-- A foreign physical unit contributes zero in all selected-unit ledgers. -/
theorem TimedEvent.foreign_unit_noninterference (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat)
    (h : e.work.unit ≠ u) :
    e.rawQuantity u = 0 ∧
      e.admittedQuantity sector u period = 0 ∧
      e.localResidual sector u period = 0 := by
  have hu : ¬ e.sameUnit u := h
  have hs : ¬ e.inScope sector u period := by
    intro hx
    exact h hx.2.1
  have ha : ¬ e.admissible sector u period := by
    intro hx
    exact hs hx.1
  simp [TimedEvent.rawQuantity, TimedEvent.admittedQuantity,
    TimedEvent.localResidual, hu, hs, ha]

/-- The complete listed observation inventory; no hidden reconstructed rows. -/
def foldQuantity (f : TimedEvent → Nat) : List TimedEvent → Nat
  | [] => 0
  | e :: es => f e + foldQuantity f es

/-- Local scope disaggregation is an identity of source quantities. -/
theorem fold_local_partition (events : List TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) :
    foldQuantity (fun e => e.localQuantity sector u period) events =
      foldQuantity (fun e => e.admittedQuantity sector u period) events +
        foldQuantity (fun e => e.localResidual sector u period) events := by
  induction events with
  | nil => rfl
  | cons e es ih =>
      simp only [foldQuantity]
      have he := e.local_partition sector u period
      omega

/-- Foreign sector/period observations can be retained without affecting
    the target's local admitted or rejected totals. -/
theorem append_foreign_sector_invariant
    (events : List TimedEvent) (e : TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat)
    (h : e.work.sector ≠ sector) :
    foldQuantity (fun x => x.admittedQuantity sector u period) (e :: events) =
      foldQuantity (fun x => x.admittedQuantity sector u period) events ∧
    foldQuantity (fun x => x.localResidual sector u period) (e :: events) =
      foldQuantity (fun x => x.localResidual sector u period) events := by
  have hx := e.foreign_sector_noninterference sector u period h
  simp [foldQuantity, hx.1, hx.2]

/-- Like the Python adapter: classify only accepted events by one channel. -/
def channelQuantity (sector : Sector) (u : WorkUnit) (period : Nat)
    (channel : WorkChannel) : TimedEvent → Nat :=
  fun e => if e.work.effectiveChannel = channel then
    e.admittedQuantity sector u period else 0

/-- Unreviewed causal attribution does not enter the feedback flow. -/
theorem unreviewed_feedback_is_not_measured_feedback
    (e : TimedEvent) (sector : Sector) (u : WorkUnit) (period : Nat)
    (hc : e.work.channel = .feedback)
    (hr : e.work.causalFeedbackReviewed = false) :
    channelQuantity sector u period .feedback e = 0 := by
  have hn := e.work.unreviewed_feedback_not_feedback hc hr
  simp [channelQuantity, hn]

/-- Every accepted event has exactly one effective channel. This includes
    unclassified observations rather than silently assigning them to feedback. -/
theorem TimedEvent.admitted_channel_partition
    (e : TimedEvent) (sector : Sector) (u : WorkUnit) (period : Nat) :
    e.admittedQuantity sector u period =
      channelQuantity sector u period .direct e +
      channelQuantity sector u period .feedback e +
      channelQuantity sector u period .repaired e +
      channelQuantity sector u period .unclassified e := by
  cases h : e.work.effectiveChannel <;> simp [channelQuantity, h]

/-- Exhaustive channel accounting for the exact supplied observation list. -/
theorem fold_admitted_channel_partition (events : List TimedEvent)
    (sector : Sector) (u : WorkUnit) (period : Nat) :
    foldQuantity (fun e => e.admittedQuantity sector u period) events =
      foldQuantity (channelQuantity sector u period .direct) events +
      foldQuantity (channelQuantity sector u period .feedback) events +
      foldQuantity (channelQuantity sector u period .repaired) events +
      foldQuantity (channelQuantity sector u period .unclassified) events := by
  induction events with
  | nil => rfl
  | cons e es ih =>
      simp only [foldQuantity]
      have he := e.admitted_channel_partition sector u period
      omega

/-- Genuine measured series: every period's input is computed from that
    period's scoped events. The balance is an explicit independently checkable
    hypothesis. It is not a hidden theorem about the real institution. -/
structure MeasuredSeries where
  sector : Sector
  unit : WorkUnit
  events : Nat → List TimedEvent
  burden : Nat → Nat
  balances : ∀ t,
    burden (t + 1) +
      foldQuantity (channelQuantity sector unit t .repaired) (events t) =
    burden t +
      foldQuantity (channelQuantity sector unit t .direct) (events t) +
      foldQuantity (channelQuantity sector unit t .feedback) (events t)

/-- Exact source-bound transport into the existing sector trajectory. -/
def MeasuredSeries.toSectorTrajectory (s : MeasuredSeries) :
    GRWTSK.CivilSystems.CrossSector.SectorTrajectory where
  sector := s.sector
  unit := s.unit
  burden := s.burden
  direct := fun t => foldQuantity
    (channelQuantity s.sector s.unit t .direct) (s.events t)
  feedback := fun t => foldQuantity
    (channelQuantity s.sector s.unit t .feedback) (s.events t)
  repaired := fun t => foldQuantity
    (channelQuantity s.sector s.unit t .repaired) (s.events t)
  conservation := s.balances

/-- Explicit period flow totals, with no denominator or unit conversion. -/
def MeasuredSeries.inflow (s : MeasuredSeries) (t : Nat) : Nat :=
  foldQuantity (channelQuantity s.sector s.unit t .direct) (s.events t) +
    foldQuantity (channelQuantity s.sector s.unit t .feedback) (s.events t)

def MeasuredSeries.repair (s : MeasuredSeries) (t : Nat) : Nat :=
  foldQuantity (channelQuantity s.sector s.unit t .repaired) (s.events t)

/-- Finite-horizon identity: no indefinite-overload assumption is needed.
    This is the direct stock-flow accounting consumer for annual, monthly, or
    daily observations once their measurement units are independently checked. -/
theorem MeasuredSeries.finite_horizon_balance (s : MeasuredSeries) (T : Nat) :
    s.burden T + (Finset.range T).sum s.repair =
      s.burden 0 + (Finset.range T).sum s.inflow := by
  induction T with
  | zero => simp
  | succ t ih =>
      have hb := s.balances t
      simp only [Finset.sum_range_succ]
      dsimp [MeasuredSeries.repair, MeasuredSeries.inflow] at *
      omega

/-- A finite observation window with sufficient repairs has no net backlog
    increase during that window, even when other periods behave differently. -/
theorem MeasuredSeries.bounded_to_horizon (s : MeasuredSeries) (T : Nat)
    (h : ∀ t, t < T → s.inflow t ≤ s.repair t) :
    s.burden T ≤ s.burden 0 := by
  have main : ∀ n : Nat,
      (∀ k, k < n → s.inflow k ≤ s.repair k) →
      s.burden n ≤ s.burden 0 := by
    intro n
    induction n with
    | zero =>
        intro _
        exact Nat.le_refl _
    | succ t ih =>
        intro hn
        have hp : ∀ k, k < t → s.inflow k ≤ s.repair k := by
          intro k hk
          exact hn k (Nat.lt_succ_of_lt hk)
        have hc := ih hp
        have hb := s.balances t
        have ht := hn t (Nat.lt_succ_self t)
        dsimp [MeasuredSeries.inflow, MeasuredSeries.repair] at ht
        omega
  exact main T h

/-- Existing proof consumes the exact admitted per-period quantities. -/
theorem measured_bounded (s : MeasuredSeries)
    (h : ∀ t,
      foldQuantity (channelQuantity s.sector s.unit t .direct) (s.events t) +
      foldQuantity (channelQuantity s.sector s.unit t .feedback) (s.events t) ≤
      foldQuantity (channelQuantity s.sector s.unit t .repaired) (s.events t))
    (t : Nat) : s.burden t ≤ s.burden 0 :=
  s.toSectorTrajectory.bounded h t

/-- Persistent measured excess inflow forces arbitrarily large *modeled*
    backlog. Causal interpretation and a real safety threshold remain external. -/
theorem measured_unbounded (s : MeasuredSeries)
    (h : ∀ t,
      foldQuantity (channelQuantity s.sector s.unit t .repaired) (s.events t) + 1 ≤
      foldQuantity (channelQuantity s.sector s.unit t .direct) (s.events t) +
      foldQuantity (channelQuantity s.sector s.unit t .feedback) (s.events t))
    (threshold : Nat) : ∃ t, threshold ≤ s.burden t :=
  s.toSectorTrajectory.unbounded h threshold

end GRWTSK.CivilSystems.PeriodScopedEvidence
