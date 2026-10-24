# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SnapshotPublicationTransitions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e3f7e460fecdd85cf65556e5998f023c1c9270` · SHA-256 `8f3fd47c3a7fc63bb4f74d990bfa57555d31a52ebda82b84e0267b110d4c7fa9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.List.Basic

/-!
# Finite governed publication and source retirement

This is a finite-snapshot model with a finite phase vocabulary, not a refinement proof about Rust, Git,
cryptography, directory descriptors, durable writes, or an operating system.
Snapshots retain ordered path–payload occurrences with literal byte equality.
`Granted` is an independent external premise; this model does not authenticate it.
Readback is an explicit transition, and source retirement is a separate effect.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GovernedTransactions.Retirement

/-- Finite source occurrences. No digest is substituted for byte equality. -/
abbrev Snapshot := List (Nat × List UInt8)

structure Context where
  source : Snapshot
  destination : Option Snapshot
  desired : Snapshot
  deriving DecidableEq

inductive Phase where
  | captured | staged | beforeRetained | published | readback | retired | halted
  deriving DecidableEq, Repr

inductive Operation where
  | stage | retain | publish | readback | retire | restore | conflict | failure
  | destinationChange | sourceChange
  deriving DecidableEq, Repr

structure State where
  phase : Phase
  source : Option Snapshot
  destination : Option Snapshot
  candidate : Option Snapshot
  before : Option Snapshot
  sourcePreimage : Option Snapshot
  destinationPreimage : Option Snapshot
  retiredSource : Option Snapshot
  verifiedNow : Bool
  readbackSeen : Bool
  deriving DecidableEq

def initial (context : Context) : State where
  phase := .captured
  source := some context.source
  destination := context.destination
  candidate := none
  before := none
  sourcePreimage := none
  destinationPreimage := none
  retiredSource := none
  verifiedNow := false
  readbackSeen := false

/-- Host effects are closed, individually guarded transitions. External changes
are observations of another actor's work; they grant no permission and never
change the retained raw preimages. Halt has no outgoing host-effect transition. -/
inductive Step (Granted : Operation → Prop) (context : Context) :
    Operation → State → State → Prop where
  | stage (s : State) (phase : s.phase = .captured)
      (source : s.source = some context.source)
      (destination : s.destination = context.destination) (grant : Granted .stage) :
      Step Granted context .stage s
        { s with phase := .staged, candidate := some context.desired, sourcePreimage := some context.source, destinationPreimage := context.destination }
  | retain (s : State) (phase : s.phase = .staged)
      (destination : s.destination = context.destination)
      (sourcePreimage : s.sourcePreimage = some context.source)
      (destinationPreimage : s.destinationPreimage = context.destination)
      (emptyBefore : s.before = none) (grant : Granted .retain) :
      Step Granted context .retain s
        { s with phase := .beforeRetained, before := s.destination, destination := none, verifiedNow := false }
  | publish (s : State) (phase : s.phase = .beforeRetained)
      (emptyDestination : s.destination = none)
      (candidate : s.candidate = some context.desired)
      (before : s.before = context.destination)
      (sourcePreimage : s.sourcePreimage = some context.source)
      (destinationPreimage : s.destinationPreimage = context.destination)
      (grant : Granted .publish) :
      Step Granted context .publish s
        { s with phase := .published, destination := some context.desired, candidate := none, verifiedNow := false }
  | readback (s : State) (phase : s.phase = .published)
      (destination : s.destination = some context.desired)
      (before : s.before = context.destination)
      (sourcePreimage : s.sourcePreimage = some context.source)
      (destinationPreimage : s.destinationPreimage = context.destination) :
      Step Granted context .readback s
        { s with phase := .readback, verifiedNow := true, readbackSeen := true }
  | retire (s : State) (phase : s.phase = .readback)
      (verified : s.verifiedNow = true) (readbackSeen : s.readbackSeen = true)
      (destination : s.destination = some context.desired)
      (sourcePreimage : s.sourcePreimage = some context.source)
      (destinationPreimage : s.destinationPreimage = context.destination)
      (source : s.source = some context.source) (emptyRetired : s.retiredSource = none)
      (grant : Granted .retire) :
      Step Granted context .retire s
        { s with phase := .retired, source := none, retiredSource := some context.source }
  | restore (s : State) (moved : Snapshot) (phase : s.phase = .beforeRetained)
      (emptyDestination : s.destination = none) (before : s.before = some moved)
      (grant : Granted .restore) :
      Step Granted context .restore s
        { s with phase := .halted, destination := some moved, before := none, verifiedNow := false }
  | conflict (s : State) (occupied : Snapshot) (phase : s.phase = .beforeRetained)
      (destination : s.destination = some occupied) :
      Step Granted context .conflict s { s with phase := .halted, verifiedNow := false }
  | failure (s : State) :
      Step Granted context .failure s { s with phase := .halted, verifiedNow := false }
  | destinationChange (s : State) (replacement : Option Snapshot) :
      Step Granted context .destinationChange s
        { s with destination := replacement, verifiedNow := false }
  | sourceChange (s : State) (replacement : Snapshot) :
      Step Granted context .sourceChange s
        { s with source := some replacement, phase := .halted, verifiedNow := false }

inductive Reachable (Granted : Operation → Prop) (context : Context) : State → Prop where
  | initial : Reachable Granted context (initial context)
  | next {s t : State} {operation : Operation} :
      Reachable Granted context s → Step Granted context operation s t →
        Reachable Granted context t

variable {Granted : Operation → Prop} {context : Context}
variable {s t : State} {operation : Operation}

theorem retain_requires_expected_destination (h : Step Granted context .retain s t) :
    s.destination = context.destination := by
  cases h
  assumption

theorem destination_drift_blocks_retain (drift : s.destination ≠ context.destination) :
    ¬ Step Granted context .retain s t := by
  intro h
  exact drift (retain_requires_expected_destination h)

theorem retire_requires_readback (h : Step Granted context .retire s t) :
    s.phase = .readback ∧ s.verifiedNow = true ∧ s.readbackSeen = true ∧
      s.destination = some context.desired ∧ s.sourcePreimage = some context.source ∧
      s.destinationPreimage = context.destination := by
  cases h
  simp_all

theorem no_retire_before_readback (unread : s.readbackSeen = false) :
    ¬ Step Granted context .retire s t := by
  intro h
  have := (retire_requires_readback h).2.2.1
  simp_all

theorem retire_requires_external_grant (h : Step Granted context .retire s t) :
    Granted .retire := by
  cases h
  assumption

theorem retire_preserves_source_as_preimage (h : Step Granted context .retire s t) :
    t.source = none ∧ t.retiredSource = some context.source ∧
      t.sourcePreimage = some context.source ∧ t.destination = some context.desired := by
  cases h
  simp_all

theorem publish_requires_empty_destination (h : Step Granted context .publish s t) :
    s.destination = none := by
  cases h
  assumption

theorem publish_never_overwrites (h : Step Granted context .publish s t)
    (old : Snapshot) : s.destination ≠ some old := by
  simp [publish_requires_empty_destination h]

theorem restore_requires_empty_destination (h : Step Granted context .restore s t) :
    s.destination = none := by
  cases h
  assumption

theorem restore_never_overwrites (h : Step Granted context .restore s t)
    (old : Snapshot) : s.destination ≠ some old := by
  simp [restore_requires_empty_destination h]

theorem destination_change_invalidates_current_verification
    (h : Step Granted context .destinationChange s t) : t.verifiedNow = false := by
  cases h
  rfl

theorem destination_change_blocks_retirement {u : State}
    (changed : Step Granted context .destinationChange s t) :
    ¬ Step Granted context .retire t u := by
  intro retired
  have invalid := destination_change_invalidates_current_verification changed
  have verified := (retire_requires_readback retired).2.1
  simp_all

theorem restore_returns_the_exact_moved_tree (h : Step Granted context .restore s t) :
    t.destination = s.before ∧ t.sourcePreimage = s.sourcePreimage ∧
      t.destinationPreimage = s.destinationPreimage := by
  cases h
  simp_all

theorem conflict_preserves_names_and_preimages (h : Step Granted context .conflict s t) :
    t.destination = s.destination ∧ t.before = s.before ∧ t.candidate = s.candidate ∧
      t.sourcePreimage = s.sourcePreimage ∧ t.destinationPreimage = s.destinationPreimage ∧
      t.retiredSource = s.retiredSource := by
  cases h
  simp

theorem failure_preserves_names_and_preimages (h : Step Granted context .failure s t) :
    t.source = s.source ∧ t.destination = s.destination ∧ t.before = s.before ∧
      t.candidate = s.candidate ∧ t.sourcePreimage = s.sourcePreimage ∧
      t.destinationPreimage = s.destinationPreimage ∧ t.retiredSource = s.retiredSource := by
  cases h
  simp

theorem raw_source_preimage_is_monotone (h : Step Granted context operation s t)
    (retained : s.sourcePreimage = some context.source) :
    t.sourcePreimage = some context.source := by
  cases h <;> simp_all

theorem raw_destination_preimage_is_monotone (h : Step Granted context operation s t)
    (retained : s.destinationPreimage = context.destination) :
    t.destinationPreimage = context.destination := by
  cases h <;> simp_all

theorem retired_source_is_monotone (h : Step Granted context operation s t)
    (retained : s.retiredSource = some context.source) :
    t.retiredSource = some context.source := by
  cases h <;> simp_all

theorem readback_seen_origin (h : Step Granted context operation s t)
    (seen : t.readbackSeen = true) :
    s.readbackSeen = true ∨ operation = .readback := by
  cases h <;> simp_all

theorem reachable_source_absent_has_retained_preimage (reachable : Reachable Granted context s) :
    s.source = none → s.retiredSource = some context.source ∧
      s.sourcePreimage = some context.source ∧ s.readbackSeen = true := by
  induction reachable with
  | initial => simp [initial]
  | next prior step induction =>
      cases step <;> simp_all

theorem reachable_readback_seen_has_readback_transition
    (reachable : Reachable Granted context s) (seen : s.readbackSeen = true) :
    ∃ before after, Reachable Granted context before ∧
      Step Granted context .readback before after := by
  induction reachable with
  | initial => simp [initial] at seen
  | @next before after operation prior step induction =>
      rcases readback_seen_origin step seen with earlier | current
      · exact induction earlier
      · subst operation
        exact ⟨before, after, prior, step⟩

theorem reachable_source_absence_requires_prior_readback
    (reachable : Reachable Granted context s) (absent : s.source = none) :
    ∃ before after, Reachable Granted context before ∧
      Step Granted context .readback before after := by
  exact reachable_readback_seen_has_readback_transition reachable
    ((reachable_source_absent_has_retained_preimage reachable absent).2.2)

theorem initial_cannot_retire : ¬ Step Granted context .retire (initial context) t := by
  exact no_retire_before_readback rfl

/-- Explicit successful states make the guarded protocol's non-vacuity visible. -/
def stagedState (context : Context) : State :=
  { initial context with phase := .staged, candidate := some context.desired, sourcePreimage := some context.source, destinationPreimage := context.destination }

def retainedState (context : Context) : State :=
  { stagedState context with phase := .beforeRetained, before := context.destination, destination := none, verifiedNow := false }

def publishedState (context : Context) : State :=
  { retainedState context with phase := .published, destination := some context.desired, candidate := none, verifiedNow := false }

def checkedState (context : Context) : State :=
  { publishedState context with phase := .readback, verifiedNow := true, readbackSeen := true }

def retiredState (context : Context) : State :=
  { checkedState context with phase := .retired, source := none, retiredSource := some context.source }

/-- A reachable external edit after staging blocks the first destination write,
even when the phase and retained raw preimages still match the frozen context. -/
theorem reachable_destination_drift_blocks_retain (stageGrant : Granted .stage)
    (replacement : Option Snapshot) (drift : replacement ≠ context.destination) :
    ∃ changed, Reachable Granted context changed ∧ changed.phase = .staged ∧
      changed.destination = replacement ∧
      ∀ after, ¬ Step Granted context .retain changed after := by
  have captured : Reachable Granted context (initial context) := .initial
  have staged : Reachable Granted context (stagedState context) :=
    .next captured (.stage _ rfl rfl rfl stageGrant)
  let changed : State := { stagedState context with destination := replacement, verifiedNow := false }
  have reached : Reachable Granted context changed :=
    .next staged (.destinationChange _ replacement)
  refine ⟨changed, reached, rfl, rfl, ?_⟩
  intro after
  exact destination_drift_blocks_retain drift

theorem successful_retirement_reachable (stageGrant : Granted .stage)
    (retainGrant : Granted .retain) (publishGrant : Granted .publish)
    (retireGrant : Granted .retire) : Reachable Granted context (retiredState context) := by
  have captured : Reachable Granted context (initial context) := .initial
  have staged : Reachable Granted context (stagedState context) :=
    .next captured (.stage _ rfl rfl rfl stageGrant)
  have retained : Reachable Granted context (retainedState context) :=
    .next staged (.retain _ rfl rfl rfl rfl rfl retainGrant)
  have published : Reachable Granted context (publishedState context) :=
    .next retained (.publish _ rfl rfl rfl rfl rfl rfl publishGrant)
  have checked : Reachable Granted context (checkedState context) :=
    .next published (.readback _ rfl rfl rfl rfl rfl)
  exact .next checked (.retire _ rfl rfl rfl rfl rfl rfl rfl rfl retireGrant)

theorem successful_retirement_retains_both_raw_preimages :
    (retiredState context).source = none ∧
      (retiredState context).retiredSource = some context.source ∧
      (retiredState context).sourcePreimage = some context.source ∧
      (retiredState context).destinationPreimage = context.destination := by
  simp [retiredState, checkedState, publishedState, retainedState, stagedState]

/-- Halt blocks new host effects. External observations and repeated failure
classification are not execution authority and may still be recorded. -/
theorem halted_blocks_host_effects (halted : s.phase = .halted)
    (host : operation = .stage ∨ operation = .retain ∨ operation = .publish ∨
      operation = .readback ∨ operation = .retire ∨ operation = .restore) :
    ¬ Step Granted context operation s t := by
  intro h
  cases h <;> simp_all

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GovernedTransactions.Retirement
```
