/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficFiniteSupportAutomaton
import GRWTSK.Combinatorics.GraphTheory.SearchSoficLanguage
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Original source-preserving graph adapters and labeled-sandwich transfer

The exact sofic factor-language development, repository SearchSoficLanguage
relation sandwich, and NumberTheory DynamicSoficSpectralCover graph use
compatible edge predicate types. We construct the exact edge-level
adapters instead of inferring equivalence from the word "sofic".

The ORIGINAL WordPath and the search WordPath share their ordered
labels and endpoints, and admit an inductive two-way proof transport.
Under a source relation inclusion, complete graph-word language,
one-state reachable support, and distinct periodic-label-point
cardinality are monotone. We preserve the original edge predicate
and do NOT claim equality of the original adjacency traces.

The spectral dynamic presentation records a genuine infinite
vertex/label run. Transporting that run through its edge-level graph
adapter proves finite-block graph-language soundness at all offsets.
A separate exact whole-language equality is still required to return
those blocks to an external language. No spectrum, zero divisor,
arithmetic source, Fredholm limit or RH result is inferred.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficGraphRepresentationBridges

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteSupportAutomaton
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory

universe u v w z
variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- The search layer's label-indexed source relation is directly
the ORIGINAL LabeledGraph.edge predicate, with no new edge identity. -/
def originalGraphOfSearchRelation
    (edge : SearchSoficLanguage.LabeledEdgeRelation State Alphabet) :
    LabeledGraph State Alphabet where
  edge := edge

/-- Literal edge identity in the structural adapter. -/
theorem originalGraphOfSearchRelation_edge
    (edge : SearchSoficLanguage.LabeledEdgeRelation State Alphabet)
    (s t : State) (a : Alphabet) :
    (originalGraphOfSearchRelation edge).edge s a t ↔
      edge s a t := Iff.rfl

/-- SOURCE-exact path equivalence between the repository's original
WordPath and search-sandwich WordPath. The induction preserves
all original endpoints, letters and edge proof propositions. -/
theorem originalWordPath_iff_searchWordPath
    (edge : SearchSoficLanguage.LabeledEdgeRelation State Alphabet)
    (s t : State) (word : List Alphabet) :
    WordPath (originalGraphOfSearchRelation edge) s word t ↔
      SearchSoficLanguage.WordPath edge s word t := by
  constructor
  · intro hpath
    induction hpath with
    | nil state =>
        exact SearchSoficLanguage.WordPath.nil state
    | cons a rest hedge tail ih =>
        exact SearchSoficLanguage.WordPath.cons hedge ih
  · intro hpath
    induction hpath with
    | nil state =>
        exact WordPath.nil state
    | cons hedge tail ih =>
        exact WordPath.cons _ _ hedge ih

/-- Unrooted complete original graph-word language corresponds
exactly to any original search-edge relation's existential path
language. No root or initial state is silently selected. -/
theorem graphLanguage_iff_search_word
    (edge : SearchSoficLanguage.LabeledEdgeRelation State Alphabet)
    (word : List Alphabet) :
    GraphLanguage (originalGraphOfSearchRelation edge) word ↔
      ∃ s t : State, SearchSoficLanguage.WordPath edge s word t := by
  constructor
  · rintro ⟨s, t, hp⟩
    exact ⟨s, t, (originalWordPath_iff_searchWordPath edge s t word).mp hp⟩
  · rintro ⟨s, t, hp⟩
    exact ⟨s, t, (originalWordPath_iff_searchWordPath edge s t word).mpr hp⟩

/-- A label-preserving inclusion of the ACTUAL search edge relation
induces inclusion of the ORIGINAL WordPath. Nothing is quotiented. -/
theorem originalWordPath_mono
    {lower upper : SearchSoficLanguage.LabeledEdgeRelation State Alphabet}
    (included : SearchSoficLanguage.LabeledSubrelation lower upper)
    {s t : State} {word : List Alphabet}
    (hp : WordPath (originalGraphOfSearchRelation lower) s word t) :
    WordPath (originalGraphOfSearchRelation upper) s word t :=
  (originalWordPath_iff_searchWordPath upper s t word).mpr
    (SearchSoficLanguage.WordPath.mono included
      ((originalWordPath_iff_searchWordPath lower s t word).mp hp))

/-- Whole graph-language inclusion for every finite original word
under actual labeled relation inclusion, including empty words. -/
theorem graphLanguage_mono_of_labeledSubrelation
    {lower upper : SearchSoficLanguage.LabeledEdgeRelation State Alphabet}
    (included : SearchSoficLanguage.LabeledSubrelation lower upper)
    (word : List Alphabet) :
    GraphLanguage (originalGraphOfSearchRelation lower) word →
      GraphLanguage (originalGraphOfSearchRelation upper) word := by
  rintro ⟨s, t, hp⟩
  exact ⟨s, t, originalWordPath_mono included hp⟩

/-- Finite support signatures also preserve all reachable endpoint
information under original labeled edge inclusion, for any selected
starting-state set and complete word. -/
theorem sourceSupportAfter_mono_of_labeledSubrelation
    {lower upper : SearchSoficLanguage.LabeledEdgeRelation State Alphabet}
    (included : SearchSoficLanguage.LabeledSubrelation lower upper)
    (initial : Finset State) (word : List Alphabet) :
    sourceSupportAfter (originalGraphOfSearchRelation lower) initial word ⊆
      sourceSupportAfter (originalGraphOfSearchRelation upper) initial word := by
  intro t ht
  obtain ⟨s, hs, hp⟩ :=
    (sourceSupportAfter_mem_iff
      (originalGraphOfSearchRelation lower) initial word t).mp ht
  exact (sourceSupportAfter_mem_iff
    (originalGraphOfSearchRelation upper) initial word t).mpr
      ⟨s, hs, originalWordPath_mono included hp⟩

/-- Even the exact positive SUPPORT of the original Nat
wordLiftMatrix transports under labeled inclusion. The entry's
numeric multiplicity is not claimed equal after the inclusion. -/
theorem wordLiftMatrix_positive_mono_of_labeledSubrelation
    {lower upper : SearchSoficLanguage.LabeledEdgeRelation State Alphabet}
    (included : SearchSoficLanguage.LabeledSubrelation lower upper)
    (word : List Alphabet) (s t : State)
    (h : 0 < wordLiftMatrix (originalGraphOfSearchRelation lower) word s t) :
    0 < wordLiftMatrix (originalGraphOfSearchRelation upper) word s t := by
  have hLow : t ∈ sourceSupportAfter
      (originalGraphOfSearchRelation lower) ({s} : Finset State) word :=
    (sourceSupportAfter_iff_wordLiftMatrix_pos
      (originalGraphOfSearchRelation lower) word s t).mpr h
  have hUpper := sourceSupportAfter_mono_of_labeledSubrelation
    included ({s} : Finset State) word hLow
  exact (sourceSupportAfter_iff_wordLiftMatrix_pos
    (originalGraphOfSearchRelation upper) word s t).mp hUpper

/-- The exact factor-language inclusion gives an injection of the
DISTINCT period-dividing-n label points, preserving the original
Fin n label tuple definitionally and the entire factor condition. -/
def periodicLabelPointEmbedding_of_labeledSubrelation
    {lower upper : SearchSoficLanguage.LabeledEdgeRelation State Alphabet}
    (included : SearchSoficLanguage.LabeledSubrelation lower upper)
    (n : ℕ) (hn : 0 < n) :
    PeriodicLabelPoint
      (GraphLanguage (originalGraphOfSearchRelation lower)) n hn →
    PeriodicLabelPoint
      (GraphLanguage (originalGraphOfSearchRelation upper)) n hn :=
  fun p => ⟨p.val, by
    intro word hblock
    exact graphLanguage_mono_of_labeledSubrelation
      included word (p.property word hblock)⟩

/-- The original label point itself, not the number of graph lifts,
determines injectivity of the inclusion map. -/
theorem periodicLabelPointEmbedding_injective
    {lower upper : SearchSoficLanguage.LabeledEdgeRelation State Alphabet}
    (included : SearchSoficLanguage.LabeledSubrelation lower upper)
    (n : ℕ) (hn : 0 < n) :
    Function.Injective
      (periodicLabelPointEmbedding_of_labeledSubrelation
        included n hn) := by
  intro p q hpq
  apply Subtype.ext
  exact congrArg Subtype.val hpq

/-- Hence distinct periodic label points are monotonically counted
under the ACTUAL source labeled-relation inclusion. This would not
follow from an arbitrary graph-state-count comparison. -/
theorem periodicLabelPoint_card_le_of_labeledSubrelation
    {lower upper : SearchSoficLanguage.LabeledEdgeRelation State Alphabet}
    (included : SearchSoficLanguage.LabeledSubrelation lower upper)
    (n : ℕ) (hn : 0 < n) :
    Fintype.card
      (PeriodicLabelPoint
        (GraphLanguage (originalGraphOfSearchRelation lower)) n hn) ≤
    Fintype.card
      (PeriodicLabelPoint
        (GraphLanguage (originalGraphOfSearchRelation upper)) n hn) := by
  classical
  exact Fintype.card_le_of_injective
    (periodicLabelPointEmbedding_of_labeledSubrelation included n hn)
    (periodicLabelPointEmbedding_injective included n hn)

/-- Noncircular lower/candidate/upper transfer: this exact sandwich
guarantees the corresponding inequalities of DISTINCT periodic label
counts for every positive n. It does NOT infer equality of the
underlying adjacency matrix traces or faithful based-cycle lifts. -/
theorem sandwich_periodic_label_card_bounds
    (sandwich : SearchSoficLanguage.LabeledSandwich State Alphabet)
    (n : ℕ) (hn : 0 < n) :
    Fintype.card
      (PeriodicLabelPoint
        (GraphLanguage (originalGraphOfSearchRelation sandwich.lower)) n hn) ≤
      Fintype.card
        (PeriodicLabelPoint
          (GraphLanguage (originalGraphOfSearchRelation sandwich.middle)) n hn)
    ∧
    Fintype.card
      (PeriodicLabelPoint
        (GraphLanguage (originalGraphOfSearchRelation sandwich.middle)) n hn) ≤
      Fintype.card
        (PeriodicLabelPoint
          (GraphLanguage (originalGraphOfSearchRelation sandwich.upper)) n hn) := by
  exact ⟨periodicLabelPoint_card_le_of_labeledSubrelation
    sandwich.lower_le_middle n hn,
    periodicLabelPoint_card_le_of_labeledSubrelation
      sandwich.middle_le_upper n hn⟩

/-! ## Genuine edge-level transport from the dynamic spectral-sofic graph -/

/-- The NumberTheory dynamic sofic graph has the SAME edge-field
type as the ORIGINAL labeled graph. This is an actual edge adapter,
not an analytic spectral or arithmetic equivalence. -/
def originalGraphOfSpectralSoficGraph
    (H : GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      State Alphabet) : LabeledGraph State Alphabet where
  edge := H.edge

theorem originalGraphOfSpectralSoficGraph_edge
    (H : GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph
      State Alphabet)
    (s t : State) (a : Alphabet) :
    (originalGraphOfSpectralSoficGraph H).edge s a t ↔
      H.edge s a t := Iff.rfl

/-- The dynamic presentation's ACTUAL recorded state and label
functions form a bona fide ORIGINAL infinite graph run.
No factor-language completeness hypothesis is asserted here. -/
theorem dynamicSoficPresentation_runs_on_originalGraph
    {X : Type w} {Trace : Type z}
    (P : GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.DynamicSoficPresentation
      X Trace State Alphabet) (x : X) :
    RunsOnGraph (originalGraphOfSpectralSoficGraph P.graph)
      (fun k => P.label k x) := by
  refine ⟨fun k => P.vertex k x, ?_⟩
  intro k
  exact P.follows k x

/-- Every finite block at EVERY offset of the actual dynamic
source-labeled graph trajectory is an ORIGINAL graph word. This
is run soundness, NOT equality of graph and external source languages. -/
theorem dynamicSoficPresentation_block_is_original_graphWord
    {X : Type w} {Trace : Type z}
    (P : GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.DynamicSoficPresentation
      X Trace State Alphabet) (x : X)
    (word : List Alphabet)
    (hblock : HasFiniteBlock (fun k => P.label k x) word) :
    GraphLanguage (originalGraphOfSpectralSoficGraph P.graph) word :=
  graphLanguage_of_run_block
    (originalGraphOfSpectralSoficGraph P.graph)
    (fun k => P.label k x)
    (dynamicSoficPresentation_runs_on_originalGraph P x) word hblock

/-- A separately PROVED complete factor-language equality permits
the return from dynamic-graph run soundness to an external source
language. Mere spectral factorization or one graph path does not. -/
theorem dynamicSoficPresentation_block_in_exactLanguage
    {X : Type w} {Trace : Type z}
    (P : GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.DynamicSoficPresentation
      X Trace State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word,
      language word ↔
        GraphLanguage (originalGraphOfSpectralSoficGraph P.graph) word)
    (x : X) (word : List Alphabet)
    (hblock : HasFiniteBlock (fun k => P.label k x) word) :
    language word :=
  (hExact word).mpr
    (dynamicSoficPresentation_block_is_original_graphWord
      P x word hblock)

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficGraphRepresentationBridges
