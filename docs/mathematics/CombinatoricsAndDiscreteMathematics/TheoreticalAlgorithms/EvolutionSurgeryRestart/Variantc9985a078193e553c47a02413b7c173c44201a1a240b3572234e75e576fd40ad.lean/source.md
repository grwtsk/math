# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EvolutionSurgeryRestart.Variantc9985a078193e553c47a02413b7c173c44201a1a240b3572234e75e576fd40ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b6a2f9c36d59368102d8116323da963e19c30e6` · SHA-256 `c9985a078193e553c47a02413b7c173c44201a1a240b3572234e75e576fd40ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Surgery.Digital

/-!
# Evolution–surgery–restart declarations

This module formalizes the project's finite, declarative profile of the
architecture: structured detection, a distinguished discontinuous repair
event, restart from the post-event state, linked event streams, and derived
status over a validated dependency closure.  It does not define a metric-flow
solver, a smooth surgery constructor, or a continuation/nonaccumulation
theorem.
-/

namespace BitMatrix.Dynamics.EvolutionSurgeryRestart

/-! ## Project status policy -/

/-- Ordered phase levels; smaller values are weaker. -/
structure Phase where
  rank : Fin 6
  deriving DecidableEq, Repr

namespace Phase
def absent : Phase := ⟨0⟩
def declared : Phase := ⟨1⟩
def constructed : Phase := ⟨2⟩
def checked : Phase := ⟨3⟩
def proved : Phase := ⟨4⟩
def applied : Phase := ⟨5⟩
def meet (left right : Phase) : Phase := ⟨min left.rank right.rank⟩
def top : Phase := applied
end Phase

/--
Ordered project outcome policy; smaller values are weaker.  The chosen order
is `blocked ≤ failed ≤ pending ≤ passed`.  This is a declared aggregation
policy, not a logical identification of the four outcomes.
-/
structure Outcome where
  rank : Fin 4
  deriving DecidableEq, Repr

namespace Outcome
def blocked : Outcome := ⟨0⟩
def failed : Outcome := ⟨1⟩
def pending : Outcome := ⟨2⟩
def passed : Outcome := ⟨3⟩
def meet (left right : Outcome) : Outcome := ⟨min left.rank right.rank⟩
def top : Outcome := passed
end Outcome

/-- Ordered evidence authority levels; smaller values are weaker. -/
structure Authority where
  rank : Fin 5
  deriving DecidableEq, Repr

namespace Authority
def illustrative : Authority := ⟨0⟩
def specified : Authority := ⟨1⟩
def executable : Authority := ⟨2⟩
def tested : Authority := ⟨3⟩
def formallyVerified : Authority := ⟨4⟩
def meet (left right : Authority) : Authority := ⟨min left.rank right.rank⟩
def top : Authority := formallyVerified
end Authority

/-- The finer local status tuple for one evolution declaration. -/
structure EvolutionStatus where
  phase : Phase
  outcome : Outcome
  authority : Authority
  deriving DecidableEq, Repr

namespace EvolutionStatus

/-- Componentwise weakest-status aggregation. -/
def meet (left right : EvolutionStatus) : EvolutionStatus where
  phase := Phase.meet left.phase right.phase
  outcome := Outcome.meet left.outcome right.outcome
  authority := Authority.meet left.authority right.authority

/-- Greatest status used as the identity of an empty dependency fold. -/
def top : EvolutionStatus where
  phase := Phase.top
  outcome := Outcome.top
  authority := Authority.top

/-- Pointwise “no stronger than” relation for the selected project policy. -/
def LE (left right : EvolutionStatus) : Prop :=
  left.phase.rank ≤ right.phase.rank ∧
    left.outcome.rank ≤ right.outcome.rank ∧
      left.authority.rank ≤ right.authority.rank

theorem meet_le_left (left right : EvolutionStatus) : LE (meet left right) left := by
  exact ⟨min_le_left _ _, min_le_left _ _, min_le_left _ _⟩

theorem meet_le_right (left right : EvolutionStatus) : LE (meet left right) right := by
  exact ⟨min_le_right _ _, min_le_right _ _, min_le_right _ _⟩

theorem le_refl (status : EvolutionStatus) : LE status status :=
  ⟨le_rfl, le_rfl, le_rfl⟩

theorem le_trans {first second third : EvolutionStatus}
    (firstSecond : LE first second) (secondThird : LE second third) :
    LE first third :=
  ⟨firstSecond.1.trans secondThird.1,
    firstSecond.2.1.trans secondThird.2.1,
    firstSecond.2.2.trans secondThird.2.2⟩

theorem meet_comm (left right : EvolutionStatus) : meet left right = meet right left := by
  cases left
  cases right
  simp [meet, Phase.meet, Outcome.meet, Authority.meet, min_comm]

theorem meet_assoc (first second third : EvolutionStatus) :
    meet (meet first second) third = meet first (meet second third) := by
  cases first
  cases second
  cases third
  simp [meet, Phase.meet, Outcome.meet, Authority.meet, min_assoc]

@[simp]
theorem meet_self (status : EvolutionStatus) : meet status status = status := by
  cases status
  simp [meet, Phase.meet, Outcome.meet, Authority.meet]

@[simp]
theorem meet_top (status : EvolutionStatus) : meet status top = status := by
  rcases status with ⟨⟨phaseRank, phaseBound⟩,
    ⟨outcomeRank, outcomeBound⟩, ⟨authorityRank, authorityBound⟩⟩
  simp [meet, top, Phase.meet, Phase.top, Phase.applied,
    Outcome.meet, Outcome.top, Outcome.passed,
    Authority.meet, Authority.top, Authority.formallyVerified]
  omega

end EvolutionStatus

/-- Fold a finite family using the project weakest-status meet. -/
noncomputable def aggregateStatus {α : Type} [DecidableEq α] [LinearOrder α]
    (entries : Finset α) (status : α → EvolutionStatus)
    (initial : EvolutionStatus := EvolutionStatus.top) : EvolutionStatus :=
  entries.toList.foldl (fun accumulated entry =>
    EvolutionStatus.meet accumulated (status entry)) initial

private theorem foldl_meet_le_initial {α : Type}
    (entries : List α) (status : α → EvolutionStatus)
    (initial : EvolutionStatus) :
    EvolutionStatus.LE
      (entries.foldl (fun accumulated item =>
        EvolutionStatus.meet accumulated (status item)) initial)
      initial := by
  induction entries generalizing initial with
  | nil => exact EvolutionStatus.le_refl initial
  | cons head tail inductionHypothesis =>
      exact EvolutionStatus.le_trans
        (inductionHypothesis (EvolutionStatus.meet initial (status head)))
        (EvolutionStatus.meet_le_left initial (status head))

private theorem foldl_meet_le_of_mem {α : Type}
    (entries : List α) (status : α → EvolutionStatus)
    (initial : EvolutionStatus) {entry : α} (member : entry ∈ entries) :
    EvolutionStatus.LE
      (entries.foldl (fun accumulated item =>
        EvolutionStatus.meet accumulated (status item)) initial)
      (status entry) := by
  induction entries generalizing initial with
  | nil => simp at member
  | cons head tail inductionHypothesis =>
      simp only [List.foldl_cons]
      rcases List.mem_cons.mp member with rfl | tailMember
      · exact EvolutionStatus.le_trans
          (foldl_meet_le_initial tail status
            (EvolutionStatus.meet initial (status entry)))
          (EvolutionStatus.meet_le_right initial (status entry))
      · exact inductionHypothesis _ tailMember

/-- One versioned declaration in an evolution dependency graph. -/
structure Declaration (count : Nat) where
  source : String
  dependencies : Finset (Fin count)
  localStatus : EvolutionStatus
  evidence : List String

/-- Reflexive-transitive reachability from one root through declared
dependencies. -/
inductive DependencyReachable {count : Nat}
    (entry : Fin count → Declaration count) (root : Fin count) :
    Fin count → Prop where
  | root : DependencyReachable entry root root
  | dependency {source target : Fin count} :
      DependencyReachable entry root source →
      target ∈ (entry source).dependencies →
      DependencyReachable entry root target

/--
A finite evolution root with proof-carrying dependency closure and effective-
status equations.  Arbitrary cyclic inputs are not silently evaluated: a
caller must supply an effective-status fixed point satisfying `effectiveSpec`.
-/
structure EvolutionRoot (count : Nat) where
  entry : Fin count → Declaration count
  root : Fin count
  dependencyClosure : Finset (Fin count)
  rootMember : root ∈ dependencyClosure
  dependencyClosed : ∀ entryId,
    entryId ∈ dependencyClosure →
      (entry entryId).dependencies ⊆ dependencyClosure
  closureSound : ∀ entryId,
    entryId ∈ dependencyClosure → DependencyReachable entry root entryId
  closureComplete : ∀ entryId,
    DependencyReachable entry root entryId → entryId ∈ dependencyClosure
  effectiveStatus : Fin count → EvolutionStatus
  effectiveSpec : ∀ entryId,
    effectiveStatus entryId =
      aggregateStatus (entry entryId).dependencies effectiveStatus
        (entry entryId).localStatus

namespace EvolutionRoot

/-- Global status is derived over the validated dependency closure. -/
noncomputable def globalStatus {count : Nat} (evolution : EvolutionRoot count) :
    EvolutionStatus :=
  aggregateStatus evolution.dependencyClosure evolution.effectiveStatus

@[simp]
theorem root_in_dependencyClosure {count : Nat}
    (evolution : EvolutionRoot count) :
    evolution.root ∈ evolution.dependencyClosure :=
  evolution.rootMember

/-- The stored finite closure is exactly reflexive-transitive dependency
reachability, not merely a closed superset. -/
theorem mem_dependencyClosure_iff_reachable {count : Nat}
    (evolution : EvolutionRoot count) (entryId : Fin count) :
    entryId ∈ evolution.dependencyClosure ↔
      DependencyReachable evolution.entry evolution.root entryId :=
  ⟨evolution.closureSound entryId, evolution.closureComplete entryId⟩

theorem dependency_effective_status {count : Nat}
    (evolution : EvolutionRoot count) (entryId : Fin count) :
    evolution.effectiveStatus entryId =
      aggregateStatus (evolution.entry entryId).dependencies
        evolution.effectiveStatus (evolution.entry entryId).localStatus :=
  evolution.effectiveSpec entryId

/-- Global status is no stronger than every required effective status. -/
theorem globalStatus_le_effective {count : Nat}
    (evolution : EvolutionRoot count) {entryId : Fin count}
    (required : entryId ∈ evolution.dependencyClosure) :
    EvolutionStatus.LE evolution.globalStatus
      (evolution.effectiveStatus entryId) := by
  unfold globalStatus aggregateStatus
  apply foldl_meet_le_of_mem
  simpa using required

end EvolutionRoot

/-! ## Segments, detection, repair events, and restart -/

/-- A finite checked trace for one surgery-free evolution segment. -/
structure EvolutionSegment (Time State : Type) where
  initialTime : Time
  terminalTime : Time
  initialState : State
  terminalState : State
  trace : List State
  evolutionLaw : State → State → Prop
  traceValid : List.IsChain evolutionLaw trace
  terminalStatus : EvolutionStatus

/-- Structured evidence that a configured evolution segment cannot proceed. -/
structure SingularityReport
    (Time State Region Interface Classification Evidence : Type) where
  eventTime : Time
  preEventState : State
  singularRegion : Region
  exposedInterface : Interface
  classification : Classification
  evidence : Evidence

/-- Alternative discrete repair branches. -/
inductive RepairBranch (Replacement : Type) where
  | cap : Replacement → RepairBranch Replacement
  | reglue : Replacement → RepairBranch Replacement
  deriving DecidableEq, Repr

/--
One typed discontinuous transition.  Detection, cut data, repair branch,
post-event state, and transition evidence remain separate fields.
-/
structure SurgeryEvent
    (Time State Region Interface Classification Evidence Cut Replacement : Type)
    (Transition : State → State → Prop) where
  report : SingularityReport Time State Region Interface Classification Evidence
  cut : Cut
  repair : RepairBranch Replacement
  postEventState : State
  transitionEvidence : Transition report.preEventState postEventState

/-- A restart begins from the repaired post-event state and carries its own
initial-data admissibility proof. -/
structure RestartState
    {Time State Region Interface Classification Evidence Cut Replacement : Type}
    {Transition : State → State → Prop}
    (event : SurgeryEvent Time State Region Interface Classification Evidence
      Cut Replacement Transition)
    (Admissible : State → Prop) where
  state : State
  isPostEventState : state = event.postEventState
  admissible : Admissible state

namespace RestartState

/-- Canonical restart from the repaired state, never from the pre-event state. -/
def fromPostEvent
    {Time State Region Interface Classification Evidence Cut Replacement : Type}
    {Transition : State → State → Prop}
    {event : SurgeryEvent Time State Region Interface Classification Evidence
      Cut Replacement Transition}
    {Admissible : State → Prop}
    (admissible : Admissible event.postEventState) :
    RestartState event Admissible where
  state := event.postEventState
  isPostEventState := rfl
  admissible := admissible

@[simp]
theorem fromPostEvent_state
    {Time State Region Interface Classification Evidence Cut Replacement : Type}
    {Transition : State → State → Prop}
    {event : SurgeryEvent Time State Region Interface Classification Evidence
      Cut Replacement Transition}
    {Admissible : State → Prop}
    (admissible : Admissible event.postEventState) :
    (fromPostEvent admissible).state = event.postEventState :=
  rfl

end RestartState

/-- Adjacent events are linked through post-event/pre-event equality. -/
def LinkedEvents
    {Time State Region Interface Classification Evidence Cut Replacement : Type}
    {Transition : State → State → Prop} :
    List (SurgeryEvent Time State Region Interface Classification Evidence
      Cut Replacement Transition) → Prop
  | [] | [_] => True
  | first :: second :: remaining =>
      first.postEventState = second.report.preEventState ∧
        LinkedEvents (second :: remaining)

/-- A finite event stream with all adjacent state links checked. -/
structure EventStream
    (Time State Region Interface Classification Evidence Cut Replacement : Type)
    (Transition : State → State → Prop) where
  events : List (SurgeryEvent Time State Region Interface Classification Evidence
    Cut Replacement Transition)
  linked : LinkedEvents events

namespace EventStream

/-- Every individual event forms a valid singleton stream. -/
def singleton
    {Time State Region Interface Classification Evidence Cut Replacement : Type}
    {Transition : State → State → Prop}
    (event : SurgeryEvent Time State Region Interface Classification Evidence
      Cut Replacement Transition) :
    EventStream Time State Region Interface Classification Evidence Cut Replacement
      Transition where
  events := [event]
  linked := trivial

end EventStream

/-! ## Concrete finite-raster transition profile -/

open BitMatrix.Surgery.Digital

/-- A concrete digital repair event with exact pre/post transition equations. -/
structure RasterSurgeryEvent (rows columns : Nat) where
  preEventState : RasterState rows columns
  cut : CutDatum rows columns
  cutSource : cut.source = preEventState
  repair : Repair cut
  postEventState : RasterState rows columns
  postStateSpec : postEventState = repair.apply

namespace RasterSurgeryEvent

/-- A raster repair changes only cells in its selected local cut. -/
theorem outside_unchanged {rows columns : Nat}
    (event : RasterSurgeryEvent rows columns)
    (cell : BitMatrix.Runtime.Semantics.GridCell rows columns)
    (outside : cell ∉ event.cut.selected) :
    event.postEventState cell = event.preEventState cell := by
  rw [event.postStateSpec]
  calc
    event.repair.apply cell = event.cut.source cell :=
      event.repair.apply_outside cell outside
    _ = event.preEventState cell := congrFun event.cutSource cell

/-- Original-value regluing is exact reconstruction of the finite state. -/
def reconstruction {rows columns : Nat}
    (cut : CutDatum rows columns) : RasterSurgeryEvent rows columns where
  preEventState := cut.source
  cut := cut
  cutSource := rfl
  repair := Repair.reconstruct cut
  postEventState := cut.source
  postStateSpec := (Repair.reconstruct_apply cut).symm

@[simp]
theorem reconstruction_post_eq_pre {rows columns : Nat}
    (cut : CutDatum rows columns) :
    (reconstruction cut).postEventState =
      (reconstruction cut).preEventState :=
  rfl

end RasterSurgeryEvent

end BitMatrix.Dynamics.EvolutionSurgeryRestart
```
