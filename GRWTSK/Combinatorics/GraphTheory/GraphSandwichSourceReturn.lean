/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN. -/

import GRWTSK.Combinatorics.GraphTheory.SearchSandwichHeight
import GRWTSK.Combinatorics.GraphTheory.Skelet17GrayMacroObserver
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification
import Mathlib

/-!
# Graph-sandwich forcing, energy monotonicity, and source return

Source revision inspected: `grwtsk/math@b596b6508112516947529482380e8c9bca062015`.
Consumed source blobs include `RelationSandwich.lean@9761b5dd5d6ada7344031c07386586c72c1d970a`,
`SearchSoficLanguage.lean@0408948886533c87debacc0e537c3234469ae702`,
`SearchSandwichHeight.lean@7cc58f1ca79f7b220e598bdd41d62152b1056700`,
`TheoreticalQualification.lean@301228a02fca2352ad7a55f23784f39d42210be8`,
and `Skelet17GrayMacroObserver.lean@747a609ab3f21dfba23a508a4da4bf90389f3de0`.

This module formalizes four distinctions used by source-grounded graph-sandwich
arguments.

* `RealizableBetween` says that some middle relation has a property, while
  `ForcedBetween` says every relation between the fixed lower and upper bounds
  has it.  Upward-closed lower certificates and downward-closed upper
  certificates force the property for every completion.
* The existing finite `SearchSandwich` receives a nonnegative edge-energy
  interface.  Adding candidate or admissible edges can only increase the energy;
  subtracting one fixed signed port preserves the same order.
* An exact representation transports iterated dynamics only after an explicit
  intertwining law.  The object round trip alone is deliberately insufficient.
* For Skelet #17, the exact existential image of source macro edges is the lower
  labeled relation and `GrayEdge` is the upper relation.  Every source path enters
  every completion, but a Gray path returns to one fixed source state only under
  the separate `GrayPathLifting` premise.

Primary arguments: forcing is direct application of relation-property
monotonicity; energy monotonicity writes the larger finite sum as the smaller sum
plus nonnegative omitted terms; iterated source return is induction on the step
count; and the Skelet result packages the existing constructor-by-constructor
`macroEdge_to_gray` theorem with exact source witnesses.

Hostile boundaries: an optional Gray edge refutes per-edge exactness; even
per-edge existential witnesses can fail to compose because consecutive witnesses
may choose different source states in one observer fiber.  Thus no converse path
claim is made without `GrayPathLifting`.  Arbitrary complex holonomy values are
not accepted by `CovariantEdgeData`: unit norm is retained, while ramified or
killing terms require a separate nonnegative potential.  No SHA implementation,
cycle-zeta identity, Weil-operator identification, RH, or GRH statement follows.

The finite-sum proof and its fixed-port corollary share the same nonnegativity
premise and are not independent proofs.  Independent analytical review and all
Lean verification phases remain `NOT_RUN`.
-/

set_option autoImplicit false

noncomputable section

universe u v w

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphSandwichSourceReturn

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification

/-- A candidate middle relation lies between fixed lower and upper relations. -/
def RelationBetween {Vertex : Type u}
    (lower middle upper : EdgeRelation Vertex) : Prop :=
  Subrelation lower middle ∧ Subrelation middle upper

/-- At least one admissible middle relation has the requested property. -/
def RealizableBetween {Vertex : Type u}
    (lower upper : EdgeRelation Vertex)
    (property : EdgeRelation Vertex → Prop) : Prop :=
  ∃ middle, RelationBetween lower middle upper ∧ property middle

/-- Every admissible middle relation has the requested property. -/
def ForcedBetween {Vertex : Type u}
    (lower upper : EdgeRelation Vertex)
    (property : EdgeRelation Vertex → Prop) : Prop :=
  ∀ middle, RelationBetween lower middle upper → property middle

/-- An upward-closed lower certificate forces the property for every completion. -/
theorem forcedBetween_of_lower_upward
    {Vertex : Type u} {lower upper : EdgeRelation Vertex}
    {property : EdgeRelation Vertex → Prop}
    (closed : UpwardClosed property)
    (lowerCertificate : property lower) :
    ForcedBetween lower upper property := by
  intro middle between
  exact closed between.1 lowerCertificate

/-- A downward-closed upper certificate forces the property for every completion. -/
theorem forcedBetween_of_upper_downward
    {Vertex : Type u} {lower upper : EdgeRelation Vertex}
    {property : EdgeRelation Vertex → Prop}
    (closed : DownwardClosed property)
    (upperCertificate : property upper) :
    ForcedBetween lower upper property := by
  intro middle between
  exact closed between.2 upperCertificate

/-- One admissible counterexample refutes universal forcing. -/
theorem not_forcedBetween_of_counterexample
    {Vertex : Type u} {lower middle upper : EdgeRelation Vertex}
    {property : EdgeRelation Vertex → Prop}
    (between : RelationBetween lower middle upper)
    (counterexample : ¬ property middle) :
    ¬ ForcedBetween lower upper property := by
  intro forced
  exact counterexample (forced middle between)

/-- Universal forcing gives a realization whenever the lower relation is itself
admissible. -/
theorem realizableBetween_of_forced
    {Vertex : Type u} {lower upper : EdgeRelation Vertex}
    {property : EdgeRelation Vertex → Prop}
    (included : Subrelation lower upper)
    (forced : ForcedBetween lower upper property) :
    RealizableBetween lower upper property := by
  refine ⟨lower, ⟨?_, included⟩, ?_⟩
  · intro source target edge
    exact edge
  · exact forced lower ⟨(by
      intro source target edge
      exact edge), included⟩

/-- Existence of one successful completion does not force the same property for
all completions.  The empty and complete relations on `Unit` are the hostile
boundary. -/
theorem realizableBetween_not_forced_fixture :
    let lower : EdgeRelation Unit := fun _ _ => False
    let upper : EdgeRelation Unit := fun _ _ => True
    let property : EdgeRelation Unit → Prop := fun edge => edge () ()
    RealizableBetween lower upper property ∧
      ¬ ForcedBetween lower upper property := by
  dsimp
  constructor
  · refine ⟨(fun _ _ => True), ?_, trivial⟩
    constructor
    · intro source target edge
      exact False.elim edge
    · intro source target edge
      trivial
  · intro forced
    have impossible := forced (fun _ _ => False) (by
      constructor
      · intro source target edge
        exact edge
      · intro source target edge
        exact False.elim edge)
    exact impossible

/-- The labeled analogue of an admissible relation completion. -/
def LabeledBetween {Vertex : Type u} {Label : Type v}
    (lower middle upper : LabeledEdgeRelation Vertex Label) : Prop :=
  LabeledSubrelation lower middle ∧ LabeledSubrelation middle upper

/-- Some labeled completion realizes the property. -/
def LabeledRealizableBetween {Vertex : Type u} {Label : Type v}
    (lower upper : LabeledEdgeRelation Vertex Label)
    (property : LabeledEdgeRelation Vertex Label → Prop) : Prop :=
  ∃ middle, LabeledBetween lower middle upper ∧ property middle

/-- Every labeled completion is forced to have the property. -/
def LabeledForcedBetween {Vertex : Type u} {Label : Type v}
    (lower upper : LabeledEdgeRelation Vertex Label)
    (property : LabeledEdgeRelation Vertex Label → Prop) : Prop :=
  ∀ middle, LabeledBetween lower middle upper → property middle

/-- A single labeled completion violating the property refutes forcing. -/
theorem not_labeledForcedBetween_of_counterexample
    {Vertex : Type u} {Label : Type v}
    {lower middle upper : LabeledEdgeRelation Vertex Label}
    {property : LabeledEdgeRelation Vertex Label → Prop}
    (between : LabeledBetween lower middle upper)
    (counterexample : ¬ property middle) :
    ¬ LabeledForcedBetween lower upper property := by
  intro forced
  exact counterexample (forced middle between)

variable {Vertex : Type u} [DecidableEq Vertex]

/-- Sum a real contribution over a finite directed edge inventory. -/
def finiteEdgeEnergy
    (edges : Finset (Vertex × Vertex))
    (contribution : Vertex × Vertex → ℝ) : ℝ :=
  ∑ edge in edges, contribution edge

/-- Enlarging a finite edge set cannot lower a nonnegative edge energy. -/
theorem finiteEdgeEnergy_mono
    {small large : Finset (Vertex × Vertex)}
    {contribution : Vertex × Vertex → ℝ}
    (included : small ⊆ large)
    (nonnegative : ∀ edge ∈ large, 0 ≤ contribution edge) :
    finiteEdgeEnergy small contribution ≤
      finiteEdgeEnergy large contribution := by
  exact Finset.sum_le_sum_of_subset_of_nonneg included
    (fun edge edgeInLarge _ => nonnegative edge edgeInLarge)

/-- The certified lower energy is bounded by the candidate energy. -/
theorem lower_energy_le_candidate
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (contribution : Vertex × Vertex → ℝ)
    (nonnegative : ∀ edge ∈ sandwich.upper, 0 ≤ contribution edge) :
    finiteEdgeEnergy sandwich.lower contribution ≤
      finiteEdgeEnergy sandwich.candidate contribution := by
  apply finiteEdgeEnergy_mono sandwich.lower_le
  intro edge edgeInCandidate
  exact nonnegative edge (sandwich.candidate_le edgeInCandidate)

/-- The candidate energy is bounded by the admissible upper energy. -/
theorem candidate_energy_le_upper
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (contribution : Vertex × Vertex → ℝ)
    (nonnegative : ∀ edge ∈ sandwich.upper, 0 ≤ contribution edge) :
    finiteEdgeEnergy sandwich.candidate contribution ≤
      finiteEdgeEnergy sandwich.upper contribution :=
  finiteEdgeEnergy_mono sandwich.candidate_le nonnegative

/-- The two edge containments give the full lower-to-upper energy bound. -/
theorem lower_energy_le_upper
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (contribution : Vertex × Vertex → ℝ)
    (nonnegative : ∀ edge ∈ sandwich.upper, 0 ≤ contribution edge) :
    finiteEdgeEnergy sandwich.lower contribution ≤
      finiteEdgeEnergy sandwich.upper contribution :=
  le_trans
    (lower_energy_le_candidate sandwich contribution nonnegative)
    (candidate_energy_le_upper sandwich contribution nonnegative)

/-- A fixed signed port is subtracted only after the nonnegative edge sum. -/
def fixedPortForm
    (edges : Finset (Vertex × Vertex))
    (contribution : Vertex × Vertex → ℝ)
    (port : ℝ) : ℝ :=
  finiteEdgeEnergy edges contribution - port

/-- Subtracting the same signed port preserves lower-to-candidate order. -/
theorem lower_fixedPortForm_le_candidate
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (contribution : Vertex × Vertex → ℝ)
    (port : ℝ)
    (nonnegative : ∀ edge ∈ sandwich.upper, 0 ≤ contribution edge) :
    fixedPortForm sandwich.lower contribution port ≤
      fixedPortForm sandwich.candidate contribution port :=
  sub_le_sub_right
    (lower_energy_le_candidate sandwich contribution nonnegative) port

/-- Subtracting the same signed port preserves candidate-to-upper order. -/
theorem candidate_fixedPortForm_le_upper
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (contribution : Vertex × Vertex → ℝ)
    (port : ℝ)
    (nonnegative : ∀ edge ∈ sandwich.upper, 0 ≤ contribution edge) :
    fixedPortForm sandwich.candidate contribution port ≤
      fixedPortForm sandwich.upper contribution port :=
  sub_le_sub_right
    (candidate_energy_le_upper sandwich contribution nonnegative) port

/-- The fixed signed port therefore preserves the full sandwich order. -/
theorem lower_fixedPortForm_le_upper
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (contribution : Vertex × Vertex → ℝ)
    (port : ℝ)
    (nonnegative : ∀ edge ∈ sandwich.upper, 0 ≤ contribution edge) :
    fixedPortForm sandwich.lower contribution port ≤
      fixedPortForm sandwich.upper contribution port :=
  le_trans
    (lower_fixedPortForm_le_candidate sandwich contribution port nonnegative)
    (candidate_fixedPortForm_le_upper sandwich contribution port nonnegative)

/-- Scalar complex covariant-edge data.  Unit norm records the unramified
holonomy channel; nonunit killing terms are outside this structure. -/
structure CovariantEdgeData (Vertex : Type u) where
  conductance : Vertex → Vertex → ℝ
  holonomy : Vertex → Vertex → ℂ
  conductance_nonneg : ∀ source target, 0 ≤ conductance source target
  holonomy_norm_one : ∀ source target, ‖holonomy source target‖ = 1

/-- One nonnegative covariant edge contribution. -/
def CovariantEdgeData.contribution
    (data : CovariantEdgeData Vertex)
    (field : Vertex → ℂ)
    (edge : Vertex × Vertex) : ℝ :=
  data.conductance edge.1 edge.2 *
    ‖field edge.2 - data.holonomy edge.1 edge.2 * field edge.1‖ ^ 2

/-- Covariant edge contributions are nonnegative. -/
theorem CovariantEdgeData.contribution_nonneg
    (data : CovariantEdgeData Vertex)
    (field : Vertex → ℂ)
    (edge : Vertex × Vertex) :
    0 ≤ data.contribution field edge := by
  exact mul_nonneg (data.conductance_nonneg edge.1 edge.2) (sq_nonneg _)

/-- Certified covariant energy is bounded by candidate covariant energy. -/
theorem covariant_lower_energy_le_candidate
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (data : CovariantEdgeData Vertex)
    (field : Vertex → ℂ) :
    finiteEdgeEnergy sandwich.lower (data.contribution field) ≤
      finiteEdgeEnergy sandwich.candidate (data.contribution field) := by
  apply lower_energy_le_candidate sandwich
  intro edge _
  exact data.contribution_nonneg field edge

/-- Candidate covariant energy is bounded by admissible covariant energy. -/
theorem covariant_candidate_energy_le_upper
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (data : CovariantEdgeData Vertex)
    (field : Vertex → ℂ) :
    finiteEdgeEnergy sandwich.candidate (data.contribution field) ≤
      finiteEdgeEnergy sandwich.upper (data.contribution field) := by
  apply candidate_energy_le_upper sandwich
  intro edge _
  exact data.contribution_nonneg field edge

/-- Covariant edge energy obeys the full lower-to-upper sandwich order. -/
theorem covariant_lower_energy_le_upper
    (sandwich : GRWTSK.GraphSandwichSearch.SearchSandwich Vertex)
    (data : CovariantEdgeData Vertex)
    (field : Vertex → ℂ) :
    finiteEdgeEnergy sandwich.lower (data.contribution field) ≤
      finiteEdgeEnergy sandwich.upper (data.contribution field) :=
  le_trans
    (covariant_lower_energy_le_candidate sandwich data field)
    (covariant_candidate_energy_le_upper sandwich data field)

/-- Exact object equivalence plus one-step intertwining. -/
structure ExactDynamicsTransport
    (Source : Type u) (Model : Type v)
    (sourceStep : Source → Source) (modelStep : Model → Model) where
  representation : ExactRepresentation Source Model
  encode_step : ∀ source,
    representation.encode (sourceStep source) =
      modelStep (representation.encode source)

/-- Explicit finite iteration, kept independent of the library iterate API. -/
def iterateStep {State : Type u} (step : State → State) : ℕ → State → State
  | 0, state => state
  | count + 1, state => step (iterateStep step count state)

@[simp]
theorem iterateStep_zero
    {State : Type u} (step : State → State) (state : State) :
    iterateStep step 0 state = state := rfl

@[simp]
theorem iterateStep_succ
    {State : Type u} (step : State → State) (count : ℕ) (state : State) :
    iterateStep step (count + 1) state =
      step (iterateStep step count state) := rfl

/-- One-step intertwining propagates to every finite iterate. -/
theorem ExactDynamicsTransport.encode_iterate
    {Source : Type u} {Model : Type v}
    {sourceStep : Source → Source} {modelStep : Model → Model}
    (transport : ExactDynamicsTransport Source Model sourceStep modelStep)
    (count : ℕ) (source : Source) :
    transport.representation.encode (iterateStep sourceStep count source) =
      iterateStep modelStep count (transport.representation.encode source) := by
  induction count with
  | zero => rfl
  | succ count inductionHypothesis =>
      simp only [iterateStep_succ]
      rw [transport.encode_step, inductionHypothesis]

/-- Decoding after encoded iteration returns the exact source iterate. -/
theorem ExactDynamicsTransport.decode_iterate_encode
    {Source : Type u} {Model : Type v}
    {sourceStep : Source → Source} {modelStep : Model → Model}
    (transport : ExactDynamicsTransport Source Model sourceStep modelStep)
    (count : ℕ) (source : Source) :
    transport.representation.decode
        (iterateStep modelStep count (transport.representation.encode source)) =
      iterateStep sourceStep count source := by
  calc
    transport.representation.decode
        (iterateStep modelStep count (transport.representation.encode source)) =
      transport.representation.decode
        (transport.representation.encode
          (iterateStep sourceStep count source)) := by
            exact congrArg transport.representation.decode
              (transport.encode_iterate count source).symm
    _ = iterateStep sourceStep count source :=
      transport.representation.decode_encode _

/-- A readout bridge is a separate observation-level comparison. -/
def PreservesReadout
    {Source : Type u} {Model : Type v} {Output : Type w}
    {sourceStep : Source → Source} {modelStep : Model → Model}
    (transport : ExactDynamicsTransport Source Model sourceStep modelStep)
    (sourceReadout : Source → Output) (modelReadout : Model → Output) : Prop :=
  ∀ source, modelReadout (transport.representation.encode source) =
    sourceReadout source

/-- Intertwining plus a readout bridge returns every encoded iterate to the
source observation. -/
theorem ExactDynamicsTransport.readout_iterate
    {Source : Type u} {Model : Type v} {Output : Type w}
    {sourceStep : Source → Source} {modelStep : Model → Model}
    (transport : ExactDynamicsTransport Source Model sourceStep modelStep)
    (sourceReadout : Source → Output) (modelReadout : Model → Output)
    (preserves : PreservesReadout transport sourceReadout modelReadout)
    (count : ℕ) (source : Source) :
    modelReadout
        (iterateStep modelStep count (transport.representation.encode source)) =
      sourceReadout (iterateStep sourceStep count source) := by
  rw [← transport.encode_iterate count source]
  exact preserves (iterateStep sourceStep count source)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphSandwichSourceReturn

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphSandwichSourceReturn

/-- Exact existential image of source macro edges under `grayObserve`.
The witnesses are retained; this is stronger provenance than an abstract
`GrayEdge`, but it is still only a per-edge image. -/
def observedMacroEdge : LabeledEdgeRelation GrayNode MacroLabel :=
  fun source label target =>
    ∃ sourceState targetState,
      MacroEdge sourceState label targetState ∧
        grayObserve sourceState = source ∧
        grayObserve targetState = target

/-- Every source-image edge is admitted by the abstract Gray observer graph. -/
theorem observedMacroEdge_le_gray :
    LabeledSubrelation observedMacroEdge GrayEdge := by
  intro source target label edge
  rcases edge with ⟨sourceState, targetState, sourceEdge, rfl, rfl⟩
  exact macroEdge_to_gray sourceEdge

/-- Every concrete source constructor supplies its exact source-image witness. -/
theorem macroEdge_to_observed
    {sourceState targetState : MacroState} {label : MacroLabel}
    (edge : MacroEdge sourceState label targetState) :
    observedMacroEdge (grayObserve sourceState) label
      (grayObserve targetState) :=
  ⟨sourceState, targetState, edge, rfl, rfl⟩

/-- The actual source image as middle relation, bounded above by `GrayEdge`. -/
def graySourceImageSandwich : LabeledSandwich GrayNode MacroLabel where
  lower := observedMacroEdge
  middle := observedMacroEdge
  upper := GrayEdge
  lower_le_middle := by
    intro source target label edge
    exact edge
  middle_le_upper := observedMacroEdge_le_gray

/-- Every source path projects first to the exact source-image relation. -/
theorem macroPath_to_observed
    {sourceState targetState : MacroState} {word : List MacroLabel}
    (path : WordPath MacroEdge sourceState word targetState) :
    WordPath observedMacroEdge (grayObserve sourceState) word
      (grayObserve targetState) := by
  induction path with
  | nil state =>
      exact WordPath.nil (grayObserve state)
  | cons edge tail inductionHypothesis =>
      exact WordPath.cons (macroEdge_to_observed edge) inductionHypothesis

/-- A Gray completion contains the exact source image and stays inside the
abstract Gray relation. -/
def IsGrayCompletion
    (completion : LabeledEdgeRelation GrayNode MacroLabel) : Prop :=
  LabeledBetween observedMacroEdge completion GrayEdge

/-- Every source path survives in every Gray completion. -/
theorem macroPath_to_completion
    {completion : LabeledEdgeRelation GrayNode MacroLabel}
    (isCompletion : IsGrayCompletion completion)
    {sourceState targetState : MacroState} {word : List MacroLabel}
    (path : WordPath MacroEdge sourceState word targetState) :
    WordPath completion (grayObserve sourceState) word
      (grayObserve targetState) :=
  WordPath.mono isCompletion.1 (macroPath_to_observed path)

/-- Every source-accepted macro word is accepted by every completion from the
observed source state. -/
theorem macroAccepts_to_completion
    {completion : LabeledEdgeRelation GrayNode MacroLabel}
    (isCompletion : IsGrayCompletion completion)
    (sourceState : MacroState) (word : List MacroLabel)
    (accepted : AcceptsFrom MacroEdge sourceState word) :
    AcceptsFrom completion (grayObserve sourceState) word := by
  rcases accepted with ⟨targetState, path⟩
  exact ⟨grayObserve targetState,
    macroPath_to_completion isCompletion path⟩

/-- An upper Gray edge without a source witness is optional rather than
source-certified. -/
def OptionalGrayEdge
    (source : GrayNode) (label : MacroLabel) (target : GrayNode) : Prop :=
  GrayEdge source label target ∧ ¬ observedMacroEdge source label target

/-- One optional edge refutes equality of the upper relation with the
existential source image. -/
theorem optionalGrayEdge_not_edgeExact
    {source target : GrayNode} {label : MacroLabel}
    (optional : OptionalGrayEdge source label target) :
    ¬ LabeledSubrelation GrayEdge observedMacroEdge := by
  intro edgeExact
  exact optional.2 (edgeExact optional.1)

/-- Exact path lifting from each concrete source state.  This is stronger than
per-edge existential source-image equality because all witnesses must compose
through one source execution. -/
def GrayPathLifting : Prop :=
  ∀ (sourceState : MacroState) (word : List MacroLabel) (target : GrayNode),
    WordPath GrayEdge (grayObserve sourceState) word target →
      ∃ targetState : MacroState,
        WordPath MacroEdge sourceState word targetState ∧
          grayObserve targetState = target

/-- Under the explicit path-lifting supplier, Gray-language acceptance from one
observed source state is equivalent to actual source acceptance. -/
theorem macroAccepts_iff_gray_of_pathLifting
    (pathLifting : GrayPathLifting)
    (sourceState : MacroState) (word : List MacroLabel) :
    AcceptsFrom MacroEdge sourceState word ↔
      AcceptsFrom GrayEdge (grayObserve sourceState) word := by
  constructor
  · intro accepted
    rcases accepted with ⟨targetState, path⟩
    exact ⟨grayObserve targetState, macroPath_to_gray path⟩
  · intro accepted
    rcases accepted with ⟨target, path⟩
    rcases pathLifting sourceState word target path with
      ⟨targetState, sourcePath, _⟩
    exact ⟨targetState, sourcePath⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
