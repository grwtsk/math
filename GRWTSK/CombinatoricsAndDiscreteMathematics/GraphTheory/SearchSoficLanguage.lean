/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.GraphSandwichDiffusion
import GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover
import GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
import Mathlib.Data.Finset.Basic

set_option autoImplicit false

/-!
# Finite sofic languages for source-bound Graph Sandwiches

This module adds the second bounded interface for search-led diffusion:

* labeled lower/candidate/admissible relations on one state type,
* finite-word path witnesses and language transport,
* adapters to the existing Farey `SoficGraph`,
* relative state and transition completeness,
* explicit missing-state, missing-transition, and missing-word obligations,
* a losslessness boundary reusing `HeatFlowCompressionSofic.LosslessPrefixCode`.

It proves no Chowla cancellation, spectral completeness, graph Laplacian
identity, heat-semigroup theorem, zeta-zero comparison, or compression
improvement.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v w

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
open GRWTSK.GraphSandwichDiffusion

/-- A directed relation carrying one label on every transition. -/
abbrev LabeledEdgeRelation (Vertex : Type u) (Label : Type v) :=
  Vertex → Label → Vertex → Prop

/-- Inclusion of labeled relations with the label preserved exactly. -/
def LabeledSubrelation
    {Vertex : Type u} {Label : Type v}
    (lower upper : LabeledEdgeRelation Vertex Label) : Prop :=
  ∀ ⦃source target : Vertex⦄ ⦃label : Label⦄,
    lower source label target → upper source label target

/-- Certified, candidate, and admissible labeled relations on common states. -/
structure LabeledSandwich (Vertex : Type u) (Label : Type v) where
  lower : LabeledEdgeRelation Vertex Label
  middle : LabeledEdgeRelation Vertex Label
  upper : LabeledEdgeRelation Vertex Label
  lower_le_middle : LabeledSubrelation lower middle
  middle_le_upper : LabeledSubrelation middle upper

/-- Forget the transition label while retaining existence of a labeled edge. -/
def eraseLabels
    {Vertex : Type u} {Label : Type v}
    (edge : LabeledEdgeRelation Vertex Label) : EdgeRelation Vertex :=
  fun source target => ∃ label, edge source label target

/-- Forgetting labels sends a labeled sandwich to the canonical repository
relation sandwich. -/
def LabeledSandwich.erase
    {Vertex : Type u} {Label : Type v}
    (sandwich : LabeledSandwich Vertex Label) : Sandwich Vertex where
  lower := eraseLabels sandwich.lower
  middle := eraseLabels sandwich.middle
  upper := eraseLabels sandwich.upper
  lower_le_middle := by
    intro source target edge
    rcases edge with ⟨label, labeled⟩
    exact ⟨label, sandwich.lower_le_middle labeled⟩
  middle_le_upper := by
    intro source target edge
    rcases edge with ⟨label, labeled⟩
    exact ⟨label, sandwich.middle_le_upper labeled⟩

/-- A finite word together with the exact labeled state path realizing it. -/
inductive WordPath
    {Vertex : Type u} {Label : Type v}
    (edge : LabeledEdgeRelation Vertex Label) :
    Vertex → List Label → Vertex → Prop where
  | nil (vertex : Vertex) :
      WordPath edge vertex [] vertex
  | cons {source middle target : Vertex}
      {label : Label} {word : List Label} :
      edge source label middle →
      WordPath edge middle word target →
      WordPath edge source (label :: word) target

/-- A labeled path survives exact label-preserving relation inclusion. -/
theorem WordPath.mono
    {Vertex : Type u} {Label : Type v}
    {lower upper : LabeledEdgeRelation Vertex Label}
    (included : LabeledSubrelation lower upper)
    {source target : Vertex} {word : List Label}
    (path : WordPath lower source word target) :
    WordPath upper source word target := by
  induction path with
  | nil vertex =>
      exact WordPath.nil vertex
  | cons edge tail inductionHypothesis =>
      exact WordPath.cons (included edge) inductionHypothesis

/-- The language accepted from one distinguished starting state. -/
def AcceptsFrom
    {Vertex : Type u} {Label : Type v}
    (edge : LabeledEdgeRelation Vertex Label)
    (start : Vertex) (word : List Label) : Prop :=
  ∃ finish : Vertex, WordPath edge start word finish

/-- Accepted-language inclusion follows from transition inclusion. -/
theorem acceptsFrom_mono
    {Vertex : Type u} {Label : Type v}
    {lower upper : LabeledEdgeRelation Vertex Label}
    (included : LabeledSubrelation lower upper)
    (start : Vertex) (word : List Label)
    (accepted : AcceptsFrom lower start word) :
    AcceptsFrom upper start word := by
  rcases accepted with ⟨finish, path⟩
  exact ⟨finish, WordPath.mono included path⟩

/-- Every certified word is a candidate word. -/
theorem LabeledSandwich.lower_accepts_to_middle
    {Vertex : Type u} {Label : Type v}
    (sandwich : LabeledSandwich Vertex Label)
    (start : Vertex) (word : List Label)
    (accepted : AcceptsFrom sandwich.lower start word) :
    AcceptsFrom sandwich.middle start word :=
  acceptsFrom_mono sandwich.lower_le_middle start word accepted

/-- Every candidate word is admitted by the upper vocabulary. -/
theorem LabeledSandwich.middle_accepts_to_upper
    {Vertex : Type u} {Label : Type v}
    (sandwich : LabeledSandwich Vertex Label)
    (start : Vertex) (word : List Label)
    (accepted : AcceptsFrom sandwich.middle start word) :
    AcceptsFrom sandwich.upper start word :=
  acceptsFrom_mono sandwich.middle_le_upper start word accepted

/-- The lower layer as the existing finite labeled graph interface. -/
def LabeledSandwich.lowerGraph
    {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    (sandwich : LabeledSandwich Vertex Label) :
    GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      Vertex Label where
  edge := sandwich.lower

/-- The candidate layer as the existing finite labeled graph interface. -/
def LabeledSandwich.middleGraph
    {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    (sandwich : LabeledSandwich Vertex Label) :
    GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      Vertex Label where
  edge := sandwich.middle

/-- The admissible layer as the existing finite labeled graph interface. -/
def LabeledSandwich.upperGraph
    {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    (sandwich : LabeledSandwich Vertex Label) :
    GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      Vertex Label where
  edge := sandwich.upper

/-- A finite presentation scope for a labeled sandwich.  Every upper transition
must remain inside the declared states and alphabet, so both smaller layers are
scoped automatically. -/
structure ScopedPresentation
    (Vertex : Type u) (Label : Type v)
    [DecidableEq Vertex] [DecidableEq Label] where
  sandwich : LabeledSandwich Vertex Label
  states : Finset Vertex
  alphabet : Finset Label
  upper_scoped :
    ∀ ⦃source target : Vertex⦄ ⦃label : Label⦄,
      sandwich.upper source label target →
        source ∈ states ∧ label ∈ alphabet ∧ target ∈ states

variable
  {Vertex : Type u} {Label : Type v}
  [DecidableEq Vertex] [DecidableEq Label]

/-- Candidate transitions inherit the finite presentation scope. -/
theorem ScopedPresentation.middle_scoped
    (presentation : ScopedPresentation Vertex Label) :
    ∀ ⦃source target : Vertex⦄ ⦃label : Label⦄,
      presentation.sandwich.middle source label target →
        source ∈ presentation.states ∧
          label ∈ presentation.alphabet ∧
          target ∈ presentation.states := by
  intro source target label edge
  exact presentation.upper_scoped
    (presentation.sandwich.middle_le_upper edge)

/-- Certified transitions inherit the finite presentation scope. -/
theorem ScopedPresentation.lower_scoped
    (presentation : ScopedPresentation Vertex Label) :
    ∀ ⦃source target : Vertex⦄ ⦃label : Label⦄,
      presentation.sandwich.lower source label target →
        source ∈ presentation.states ∧
          label ∈ presentation.alphabet ∧
          target ∈ presentation.states := by
  intro source target label edge
  exact presentation.middle_scoped
    (presentation.sandwich.lower_le_middle edge)

/-- The certified layer restricted to the declared finite state and label
subtypes. -/
def ScopedPresentation.lowerFiniteGraph
    (presentation : ScopedPresentation Vertex Label) :
    GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      {vertex // vertex ∈ presentation.states}
      {label // label ∈ presentation.alphabet} where
  edge := fun source label target =>
    presentation.sandwich.lower source.1 label.1 target.1

/-- The candidate layer restricted to the declared finite state and label
subtypes. -/
def ScopedPresentation.middleFiniteGraph
    (presentation : ScopedPresentation Vertex Label) :
    GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      {vertex // vertex ∈ presentation.states}
      {label // label ∈ presentation.alphabet} where
  edge := fun source label target =>
    presentation.sandwich.middle source.1 label.1 target.1

/-- The admissible layer restricted to the declared finite state and label
subtypes. -/
def ScopedPresentation.upperFiniteGraph
    (presentation : ScopedPresentation Vertex Label) :
    GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      {vertex // vertex ∈ presentation.states}
      {label // label ∈ presentation.alphabet} where
  edge := fun source label target =>
    presentation.sandwich.upper source.1 label.1 target.1

/-- A desired inventory state absent from the selected finite presentation. -/
def MissingState
    (presentation : ScopedPresentation Vertex Label)
    (desired : Finset Vertex) (vertex : Vertex) : Prop :=
  vertex ∈ desired ∧ vertex ∉ presentation.states

/-- All desired states occur in the finite presentation. -/
def StateComplete
    (presentation : ScopedPresentation Vertex Label)
    (desired : Finset Vertex) : Prop :=
  desired ⊆ presentation.states

/-- An admissible transition not represented in the candidate layer. -/
def MissingTransition
    (presentation : ScopedPresentation Vertex Label)
    (source : Vertex) (label : Label) (target : Vertex) : Prop :=
  presentation.sandwich.upper source label target ∧
    ¬ presentation.sandwich.middle source label target

/-- Candidate transition completeness relative to the declared upper
vocabulary.  This does not certify the candidate transitions. -/
def TransitionComplete
    (presentation : ScopedPresentation Vertex Label) : Prop :=
  LabeledSubrelation
    presentation.sandwich.upper presentation.sandwich.middle

/-- Candidate language completeness up to an explicit word-length bound. -/
def CandidateLanguageCompleteUpTo
    (presentation : ScopedPresentation Vertex Label)
    (start : Vertex) (depth : Nat) : Prop :=
  ∀ word : List Label,
    word.length ≤ depth →
      AcceptsFrom presentation.sandwich.upper start word →
        AcceptsFrom presentation.sandwich.middle start word

/-- One admissible word, within the depth bound, missing from the candidate
language. -/
def MissingWordUpTo
    (presentation : ScopedPresentation Vertex Label)
    (start : Vertex) (depth : Nat) (word : List Label) : Prop :=
  word.length ≤ depth ∧
    AcceptsFrom presentation.sandwich.upper start word ∧
    ¬ AcceptsFrom presentation.sandwich.middle start word

/-- Language completeness is exactly absence of a missing bounded word. -/
theorem candidateLanguageCompleteUpTo_iff_no_missingWord
    (presentation : ScopedPresentation Vertex Label)
    (start : Vertex) (depth : Nat) :
    CandidateLanguageCompleteUpTo presentation start depth ↔
      ∀ word : List Label,
        ¬ MissingWordUpTo presentation start depth word := by
  constructor
  · intro complete word missing
    exact missing.2.2 (complete word missing.1 missing.2.1)
  · intro noMissing word lengthLe admissible
    by_contra notCandidate
    exact noMissing word ⟨lengthLe, admissible, notCandidate⟩

/-- Transition completeness supplies language completeness at every finite
depth.  It does not establish transition completeness itself. -/
theorem candidateLanguageCompleteUpTo_of_transitionComplete
    (presentation : ScopedPresentation Vertex Label)
    (complete : TransitionComplete presentation)
    (start : Vertex) (depth : Nat) :
    CandidateLanguageCompleteUpTo presentation start depth := by
  intro word _ accepted
  exact acceptsFrom_mono complete start word accepted

/-- Relative sofic completeness requires both state coverage and candidate
coverage of every admissible labeled transition. -/
def SoficCompleteWithin
    (presentation : ScopedPresentation Vertex Label)
    (desired : Finset Vertex) : Prop :=
  StateComplete presentation desired ∧ TransitionComplete presentation

/-- A bounded presentation is either relatively complete or exhibits an
explicit missing-state or missing-transition obligation. -/
theorem soficCompleteWithin_or_obligation
    (presentation : ScopedPresentation Vertex Label)
    (desired : Finset Vertex) :
    SoficCompleteWithin presentation desired ∨
      (∃ vertex : Vertex, MissingState presentation desired vertex) ∨
      (∃ source : Vertex, ∃ label : Label, ∃ target : Vertex,
        MissingTransition presentation source label target) := by
  classical
  by_cases statesComplete : StateComplete presentation desired
  · by_cases transitionsComplete : TransitionComplete presentation
    · exact Or.inl ⟨statesComplete, transitionsComplete⟩
    · apply Or.inr
      apply Or.inr
      by_contra noMissing
      apply transitionsComplete
      intro source target label upperEdge
      by_contra notMiddle
      apply noMissing
      exact ⟨source, label, target, upperEdge, notMiddle⟩
  · apply Or.inr
    apply Or.inl
    by_contra noMissing
    apply statesComplete
    intro vertex desiredVertex
    by_contra absent
    apply noMissing
    exact ⟨vertex, desiredVertex, absent⟩

/-- A source inventory has a canonical one-symbol labeling.  The label carries
no additional mathematical meaning; relationship meaning remains in the
inventory's provenance records. -/
def SourceSearchInventory.unitLabeledSandwich
    (inventory : SourceSearchInventory Vertex) :
    LabeledSandwich Vertex PUnit where
  lower := fun source _ target => inventory.certified source target
  middle := fun source _ target => inventory.candidate source target
  upper := fun source _ target => inventory.admissible source target
  lower_le_middle := by
    intro source target label edge
    exact inventory.certified_le_candidate edge
  middle_le_upper := by
    intro source target label edge
    exact inventory.candidate_le_admissible edge

/-- The canonical one-symbol presentation uses exactly the inventory vertices. -/
def SourceSearchInventory.unitScopedPresentation
    (inventory : SourceSearchInventory Vertex) :
    ScopedPresentation Vertex PUnit where
  sandwich := inventory.unitLabeledSandwich
  states := inventory.vertices
  alphabet := {PUnit.unit}
  upper_scoped := by
    intro source target label edge
    have scoped := inventory.admissible_scoped edge
    exact ⟨scoped.1, by simp, scoped.2⟩

/-- The candidate graph of the one-symbol presentation is the existing Farey
sofic graph interface. -/
def SourceSearchInventory.candidateSoficGraph
    [Fintype Vertex]
    (inventory : SourceSearchInventory Vertex) :
    GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      Vertex PUnit :=
  inventory.unitLabeledSandwich.middleGraph

/-- The admissible graph of the one-symbol presentation is the existing Farey
sofic graph interface. -/
def SourceSearchInventory.admissibleSoficGraph
    [Fintype Vertex]
    (inventory : SourceSearchInventory Vertex) :
    GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      Vertex PUnit :=
  inventory.unitLabeledSandwich.upperGraph

/-- Candidate transitions in the unit-labeled presentation are exactly the
candidate relation of the source inventory. -/
@[simp]
theorem SourceSearchInventory.candidateSoficGraph_edge
    [Fintype Vertex]
    (inventory : SourceSearchInventory Vertex)
    (source target : Vertex) :
    (inventory.candidateSoficGraph).edge source PUnit.unit target ↔
      inventory.candidate source target :=
  Iff.rfl

/-- Admissible transitions in the unit-labeled presentation are exactly the
admissible relation of the source inventory. -/
@[simp]
theorem SourceSearchInventory.admissibleSoficGraph_edge
    [Fintype Vertex]
    (inventory : SourceSearchInventory Vertex)
    (source target : Vertex) :
    (inventory.admissibleSoficGraph).edge source PUnit.unit target ↔
      inventory.admissible source target :=
  Iff.rfl

/-- Existing lossless prefix codes force injective finite-word encodings. -/
theorem losslessWalkCode_injective
    {Source : Type w}
    (code :
      GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.LosslessPrefixCode
        Source Label) :
    Function.Injective code.encode :=
  code.encode_injective

/-- A finite-word collision between distinct sources rules out every lossless
prefix code whose encoder is that word map.  Finite-state admissibility alone
therefore cannot be called lossless. -/
theorem no_losslessWalkCode_of_collision
    {Source : Type w}
    (encode : Source → List Label)
    (x y : Source)
    (sameWord : encode x = encode y)
    (differentSource : x ≠ y) :
    ¬ ∃ code :
        GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.LosslessPrefixCode
          Source Label,
        code.encode = encode := by
  rintro ⟨code, codeEq⟩
  apply differentSource
  apply code.encode_injective
  simpa only [codeEq] using sameWord

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
