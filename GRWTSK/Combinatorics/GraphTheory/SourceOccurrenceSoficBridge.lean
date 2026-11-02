/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.SearchSoficLanguage
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicMatrixTrace
import GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal

/-!
# Finite source-occurrence bridge for sofic walk languages

The alphabet is the ACTUAL original edge occurrence. Two same-line references
with equal endpoints remain different when their occurrence labels differ.
The source/target-only adjacency is used for counting, never for reconstruction.

This module connects the two existing inductive WordPath types. The exact
runtime-to-occurrence refinement remains an EXPLICIT proof-carrying input,
not a proposition established for Noe/Git/SQLite by loading a source file.
The Transversal below certifies only its FIXED supplied relation.
No theorem about factor-periodic label points, zeta zeros or RH follows.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceSoficBridge

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics
open GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors

universe u v w
variable {State : Type u} {Occurrence : Type v} {Raw : Type w}

/-- One source reference occurrence is itself the distinct edge label. -/
def occurrenceEdge (source target : Occurrence → State) :
    SearchSoficLanguage.LabeledEdgeRelation State Occurrence :=
  fun start edge finish => source edge = start ∧ target edge = finish

/-- The existing ExactSoficLanguageCover graph on original occurrence labels. -/
def occurrenceGraph (source target : Occurrence → State) :
    ExactSoficLanguageCover.LabeledGraph State Occurrence where
  edge := occurrenceEdge source target

/-- Source-only candidates and admissible edges, with NO certified layer. -/
def occurrenceSandwich (source target : Occurrence → State) :
    SearchSoficLanguage.LabeledSandwich State Occurrence where
  lower := fun _ _ _ => False
  middle := occurrenceEdge source target
  upper := occurrenceEdge source target
  lower_le_middle := by
    intro start finish label h
    exact False.elim h
  middle_le_upper := by
    intro start finish label h
    exact h

/-- Both original finite labeled path interfaces agree, keeping edge labels. -/
theorem search_wordPath_iff_exact
    (source target : Occurrence → State)
    {start finish : State} {word : List Occurrence} :
    SearchSoficLanguage.WordPath (occurrenceEdge source target)
      start word finish ↔
    ExactSoficLanguageCover.WordPath (occurrenceGraph source target)
      start word finish := by
  constructor
  · intro path
    induction path with
    | nil state =>
        exact ExactSoficLanguageCover.WordPath.nil state
    | cons edge tail ih =>
        exact ExactSoficLanguageCover.WordPath.cons _ _ edge ih
  · intro path
    induction path with
    | nil state =>
        exact SearchSoficLanguage.WordPath.nil state
    | cons label word edge tail ih =>
        exact SearchSoficLanguage.WordPath.cons edge ih

/-- Whole finite-word languages agree, not merely one selected orbit. -/
theorem search_language_iff_exact
    (source target : Occurrence → State) (word : List Occurrence) :
    (∃ start finish : State,
      SearchSoficLanguage.WordPath (occurrenceEdge source target)
        start word finish) ↔
    ExactSoficLanguageCover.GraphLanguage
      (occurrenceGraph source target) word := by
  constructor
  · rintro ⟨start, finish, path⟩
    exact ⟨start, finish, (search_wordPath_iff_exact source target).mp path⟩
  · rintro ⟨start, finish, path⟩
    exact ⟨start, finish, (search_wordPath_iff_exact source target).mpr path⟩

/-- Distinct original occurrence labels contribute independently to adjacency. -/
theorem occurrence_adjacency_multiplicity
    [Fintype State] [DecidableEq State] [Fintype Occurrence]
    (source target : Occurrence → State) (start finish : State) :
    (SoficPeriodicMatrixTrace.labeledAdjacency
      (occurrenceGraph source target)) start finish =
      ∑ edge : Occurrence,
        if source edge = start ∧ target edge = finish then (1 : ℕ) else 0 := by
  classical
  rfl

/-- Exact original-edge walk counts from every selected finite start state.
This is NOT cardinality of distinct factor-language periodic points. -/
theorem occurrence_walk_count_eq_matrix_row_sum
    [Fintype State] [DecidableEq State] [Fintype Occurrence]
    (source target : Occurrence → State) (starts : Finset State) (n : ℕ) :
    (∑ start ∈ starts, ∑ finish : State,
      SoficPeriodicMatrixTrace.labeledWalkCount
        (occurrenceGraph source target) n start finish) =
    (∑ start ∈ starts, ∑ finish : State,
      (SoficPeriodicMatrixTrace.labeledAdjacency
        (occurrenceGraph source target) ^ n) start finish) :=
  SoficPeriodicMatrixTrace.finiteSeedWalkCount_eq_matrixPowRowSum
    (occurrenceGraph source target) starts n

/-- An exact runtime extractor MUST separately supply bijective occurrence
identity and both endpoint agreements. No source index supplies this proof. -/
structure ExactSourceRefinement
    (Raw : Type w) (Occurrence : Type v) (State : Type u) where
  encoding : Raw ≃ Occurrence
  rawSource : Raw → State
  rawTarget : Raw → State
  occurrenceSource : Occurrence → State
  occurrenceTarget : Occurrence → State
  source_correct : ∀ raw, occurrenceSource (encoding raw) = rawSource raw
  target_correct : ∀ raw, occurrenceTarget (encoding raw) = rawTarget raw

/-- Given such a refinement, original edge labels are not silently merged. -/
theorem encoded_occurrences_injective
    (bridge : ExactSourceRefinement Raw Occurrence State) :
    Function.Injective bridge.encoding :=
  bridge.encoding.injective

/-- A checked source occurrence also preserves its actual endpoints. -/
theorem encoded_edge_iff
    (bridge : ExactSourceRefinement Raw Occurrence State)
    (raw : Raw) (start finish : State) :
    (occurrenceGraph bridge.occurrenceSource bridge.occurrenceTarget).edge
      start (bridge.encoding raw) finish ↔
    bridge.rawSource raw = start ∧ bridge.rawTarget raw = finish := by
  change (bridge.occurrenceSource (bridge.encoding raw) = start ∧
      bridge.occurrenceTarget (bridge.encoding raw) = finish) ↔
      (bridge.rawSource raw = start ∧ bridge.rawTarget raw = finish)
  rw [bridge.source_correct raw, bridge.target_correct raw]

/-- The actual raw-record graph, retaining raw records as labels. -/
def rawGraph (bridge : ExactSourceRefinement Raw Occurrence State) :
    ExactSoficLanguageCover.LabeledGraph State Raw where
  edge := fun start raw finish =>
    bridge.rawSource raw = start ∧ bridge.rawTarget raw = finish

/-- An actual path of raw records maps to the corresponding original
occurrence word in chronological order under the EXPLICIT refinement. -/
theorem raw_wordPath_to_occurrence
    (bridge : ExactSourceRefinement Raw Occurrence State)
    {start finish : State} {word : List Raw}
    (path : ExactSoficLanguageCover.WordPath
      (rawGraph bridge) start word finish) :
    ExactSoficLanguageCover.WordPath
      (occurrenceGraph bridge.occurrenceSource bridge.occurrenceTarget)
      start (word.map bridge.encoding) finish := by
  induction path with
  | nil state =>
      exact ExactSoficLanguageCover.WordPath.nil state
  | cons raw word edge tail ih =>
      exact ExactSoficLanguageCover.WordPath.cons
        (bridge.encoding raw) (word.map bridge.encoding)
        ((encoded_edge_iff bridge raw _ _).2 edge) ih

/-- Fixed-relation typed transversal, valid only if the checked refinement
has actually been supplied. This does not certify a Python or SQLite codec. -/
def occurrenceTransversal
    (bridge : ExactSourceRefinement Raw Occurrence State) :
    CertifiedTransversal.Transversal Raw Occurrence
      (fun _ => True) (fun _ => True)
      (fun raw label =>
        bridge.encoding raw = label ∧
        bridge.rawSource raw = bridge.occurrenceSource label ∧
        bridge.rawTarget raw = bridge.occurrenceTarget label) :=
  CertifiedTransversal.Transversal.ofFunction bridge.encoding
    (by intro _ _; trivial)
    (by
      intro raw _
      refine ⟨rfl, ?_, ?_⟩
      · exact (bridge.source_correct raw).symm
      · exact (bridge.target_correct raw).symm)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceSoficBridge
