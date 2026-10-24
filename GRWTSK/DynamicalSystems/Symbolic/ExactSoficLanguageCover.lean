/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery
import Mathlib

/-!
# A genuine finite labeled graph and exact sofic factor-language boundary

A trace *running along a labeled finite graph* is NOT evidence that its
orbit closure has a sofic language: the one-state full-shift graph reads
EVERY infinite trace. A meaningful sofic assertion must present the
ENTIRE finite-block language, rather than one possible path.

The exact-language criterion below records a finite labeled graph
with matching finite word language. For a one-sided trace, that is
the factor language of its shift-orbit closure; the bidirectional
extension and recurrent-state pruning remain distinct tasks.

This is a typed finite graph and its actual path relation, not a
finite-state predicate or an assumption that zeta zero traces are sofic.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover

universe u v

/-- An edge is indexed by source state, emitted label and destination state. -/
structure LabeledGraph (State : Type u) (Alphabet : Type v) where
  edge : State → Alphabet → State → Prop

/-- The actual inductive finite path condition on an edge-labeled graph. -/
inductive WordPath {State : Type u} {Alphabet : Type v}
    (G : LabeledGraph State Alphabet) :
    State → List Alphabet → State → Prop where
  | nil (s : State) : WordPath G s [] s
  | cons {s t u : State} (a : Alphabet) (word : List Alphabet)
      (head : G.edge s a t) (tail : WordPath G t word u) :
      WordPath G s (a :: word) u

/-- The finite graph path language, not a single path's symbol stream. -/
def GraphLanguage {State : Type u} {Alphabet : Type v}
    (G : LabeledGraph State Alphabet) (word : List Alphabet) : Prop :=
  ∃ start finish : State, WordPath G start word finish

/-- An infinite trace admitted along one particular graph state path. -/
def RunsOnGraph {State : Type u} {Alphabet : Type v}
    (G : LabeledGraph State Alphabet) (trace : ℕ → Alphabet) : Prop :=
  ∃ state : ℕ → State,
    ∀ n, G.edge (state n) (trace n) (state (n + 1))

/-- The one-vertex universal full-shift graph. Its edge relation
contains every letter, including one that the selected trace never uses. -/
def fullShiftGraph (Alphabet : Type v) : LabeledGraph Unit Alphabet where
  edge := fun _ _ _ => True

/-- A single state path exists for EVERY infinite trace on the full shift.
Thus path-admission alone cannot prove orbit-language soficity. -/
theorem every_trace_runs_on_full_shift
    {Alphabet : Type v} (trace : ℕ → Alphabet) :
    RunsOnGraph (fullShiftGraph Alphabet) trace := by
  refine ⟨fun _ => (), ?_⟩
  intro n
  trivial

/-- Every finite word also labels some finite full-shift path. -/
theorem fullShiftGraph_path_all
    {Alphabet : Type v} (word : List Alphabet) :
    WordPath (fullShiftGraph Alphabet) () word () := by
  induction word with
  | nil => exact WordPath.nil ()
  | cons a tail ih =>
      exact WordPath.cons a tail trivial ih

theorem fullShiftGraph_language_all
    {Alphabet : Type v} (word : List Alphabet) :
    GraphLanguage (fullShiftGraph Alphabet) word :=
  ⟨(), (), fullShiftGraph_path_all word⟩

/-- All finite blocks appearing in a one-sided trace at some offset. -/
def HasFiniteBlock {Alphabet : Type v}
    (trace : ℕ → Alphabet) (word : List Alphabet) : Prop :=
  ∃ offset : ℕ, ∀ i : Fin word.length,
    trace (offset + i.val) = word.get i

/-- A true source-language sofic presentation requires a finite carrier
and equality of the WHOLE finite-factor language and the graph language. -/
structure ExactLanguagePresentation
    (Alphabet : Type v) (language : List Alphabet → Prop) where
  State : Type u
  finiteState : Fintype State
  graph : LabeledGraph State Alphabet
  exactLanguage : ∀ word,
    language word ↔ GraphLanguage graph word

/-- The actual source-language property, not merely acceptance of one path. -/
def IsSoficFactorLanguage {Alphabet : Type v}
    (language : List Alphabet → Prop) : Prop :=
  Nonempty (ExactLanguagePresentation.{0,v} Alphabet language)

/-- A one-sided trace is sofic here exactly when its FULL factor language
admits a finite labeled graph with exact language equality. -/
def IsSoficTrace {Alphabet : Type v} (trace : ℕ → Alphabet) : Prop :=
  IsSoficFactorLanguage (HasFiniteBlock trace)

/-- The tail after an explicitly chosen finite burn-in stage. -/
def tailTrace {Alphabet : Type v}
    (trace : ℕ → Alphabet) (start : ℕ) : ℕ → Alphabet :=
  fun n => trace (start + n)

/-- EVENTUAL soficity requires an exact finite labeled presentation of
the entire factor language of some tail, NOT merely one finite-state path.
The offset is part of the witness and may depend on the source. -/
def EventuallySoficTrace {Alphabet : Type v}
    (trace : ℕ → Alphabet) : Prop :=
  ∃ start : ℕ, IsSoficTrace (tailTrace trace start)

/-- Full soficity is enough for eventual soficity with burn-in zero. -/
theorem eventuallySofic_of_sofic
    {Alphabet : Type v} {trace : ℕ → Alphabet}
    (h : IsSoficTrace trace) :
    EventuallySoficTrace trace := by
  refine ⟨0, ?_⟩
  simpa only [tailTrace, zero_add] using h

/-- A witnessed exact presentation supplies the genuine sofic predicate. -/
theorem sofic_of_exact_language
    {Alphabet : Type v} {trace : ℕ → Alphabet}
    (P : ExactLanguagePresentation.{0,v}
      Alphabet (HasFiniteBlock trace)) :
    IsSoficTrace trace :=
  ⟨P⟩

/-- The full-shift graph reads even the constant-false trace, but
its FULL path language does not match that trace's finite factors.
This demonstrates why the old finite-state observer was too weak. -/
theorem fullShiftGraph_not_exact_for_constant_false :
    ¬ ∀ word : List Bool,
      HasFiniteBlock (fun _ : ℕ => false) word ↔
        GraphLanguage (fullShiftGraph Bool) word := by
  intro h
  have hblock : HasFiniteBlock (fun _ : ℕ => false) [true] :=
    (h [true]).mpr (fullShiftGraph_language_all [true])
  rcases hblock with ⟨offset, heq⟩
  have h0 := heq (⟨0, by decide⟩ : Fin 1)
  simp at h0


/-! ## Finite right-context bound for actual labeled graph languages -/

/-- End states reachable after one word, allowing the same arbitrary initial
state convention as \`GraphLanguage\`. This is a *finite* signature of the
continuation behavior of the word. -/
noncomputable def reachableEndStates
    {State : Type u} {Alphabet : Type v} [Fintype State]
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    Finset State := by
  classical
  exact Finset.univ.filter (fun finish =>
    ∃ start, WordPath G start word finish)

@[simp] theorem mem_reachableEndStates
    {State : Type u} {Alphabet : Type v} [Fintype State]
    (G : LabeledGraph State Alphabet) (word : List Alphabet)
    (finish : State) :
    finish ∈ reachableEndStates G word ↔
      ∃ start, WordPath G start word finish := by
  classical
  simp [reachableEndStates]

/-- Concatenate two genuine labeled paths with a shared intermediate state. -/
theorem wordPath_append
    {State : Type u} {Alphabet : Type v}
    {G : LabeledGraph State Alphabet}
    {start middle : State} {prefix : List Alphabet}
    (hprefix : WordPath G start prefix middle) :
    ∀ {suffix : List Alphabet} {finish : State},
      WordPath G middle suffix finish →
        WordPath G start (prefix ++ suffix) finish := by
  induction hprefix with
  | nil s =>
      intro suffix finish hsuffix
      simpa using hsuffix
  | cons a word hedge htail ih =>
      intro suffix finish hsuffix
      simpa only [List.cons_append] using
        (WordPath.cons a (word ++ suffix) hedge (ih hsuffix))

/-- Split a path at the precisely given word boundary; no unverified
existence of an intermediate state is hidden in the definition. -/
theorem wordPath_split_append
    {State : Type u} {Alphabet : Type v}
    (G : LabeledGraph State Alphabet) (prefix suffix : List Alphabet) :
    ∀ {start finish : State},
      WordPath G start (prefix ++ suffix) finish →
        ∃ middle, WordPath G start prefix middle ∧
          WordPath G middle suffix finish := by
  induction prefix with
  | nil =>
      intro start finish h
      exact ⟨start, WordPath.nil start, by simpa using h⟩
  | cons a prefix ih =>
      intro start finish h
      cases h with
      | cons a word hedge htail =>
          obtain ⟨middle, hprefix, hsuffix⟩ := ih htail
          exact ⟨middle, WordPath.cons a prefix hedge hprefix, hsuffix⟩

/-- Every right context of a graph word is determined only by its reachable
end-state subset, not by the entire original word. -/
theorem graphLanguage_append_iff_endStates
    {State : Type u} {Alphabet : Type v} [Fintype State]
    (G : LabeledGraph State Alphabet) (prefix suffix : List Alphabet) :
    GraphLanguage G (prefix ++ suffix) ↔
      ∃ middle, middle ∈ reachableEndStates G prefix ∧
        ∃ finish, WordPath G middle suffix finish := by
  constructor
  · rintro ⟨start, finish, hpath⟩
    obtain ⟨middle, hprefix, hsuffix⟩ :=
      wordPath_split_append G prefix suffix hpath
    exact ⟨middle,
      (mem_reachableEndStates G prefix middle).2 ⟨start, hprefix⟩,
      finish, hsuffix⟩
  · rintro ⟨middle, hmiddle, finish, hsuffix⟩
    obtain ⟨start, hprefix⟩ :=
      (mem_reachableEndStates G prefix middle).1 hmiddle
    exact ⟨start, finish, wordPath_append hprefix hsuffix⟩

/-- Equal reachable-state signatures imply indistinguishable suffix
behavior. This is the exact one-way finite-automaton information bound. -/
theorem graphLanguage_context_iff_of_same_endStates
    {State : Type u} {Alphabet : Type v} [Fintype State]
    (G : LabeledGraph State Alphabet) (left right suffix : List Alphabet)
    (h : reachableEndStates G left = reachableEndStates G right) :
    GraphLanguage G (left ++ suffix) ↔
      GraphLanguage G (right ++ suffix) := by
  rw [graphLanguage_append_iff_endStates G left suffix,
    graphLanguage_append_iff_endStates G right suffix, h]

/-- A language has arbitrarily many distinct right contexts if every
number of words can be distinguished pairwise by SOME continuation.
This is a strong, testable anti-finite-state premise, not a declaration
that a particular arithmetic trace already has this property. -/
def UnboundedRightContexts
    {Alphabet : Type v} (language : List Alphabet → Prop) : Prop :=
  ∀ n : ℕ, ∃ words : Fin n → List Alphabet,
    ∀ i j : Fin n, i ≠ j →
      ∃ suffix : List Alphabet,
        ¬ (language (words i ++ suffix) ↔
            language (words j ++ suffix))

/-- The exact number of reachable-state subsets available to a chosen
finite presentation. The Fintype instance is explicitly sourced from
the presentation field; it is not silently inferred in a theorem type. -/
def ExactLanguagePresentation.stateCapacity
    {Alphabet : Type v} {language : List Alphabet → Prop}
    (P : ExactLanguagePresentation.{0,v} Alphabet language) : ℕ := by
  classical
  letI : Fintype P.State := P.finiteState
  exact Fintype.card (Finset P.State)

/-- A bounded, independently inspectable certificate: \`n\` words with
pairwise distinguishable continuations in a *given* finite graph require
at least \`n\` distinct reachable-end-state subsets. This is a finite
capacity bound, not evidence against graphs of unbounded state size. -/
theorem rightContexts_card_le_graphLanguage
    {State : Type u} {Alphabet : Type v}
    [Fintype State] [DecidableEq State]
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (words : Fin n → List Alphabet)
    (hdistinct : ∀ i j : Fin n, i ≠ j →
      ∃ suffix : List Alphabet,
        ¬ (GraphLanguage G (words i ++ suffix) ↔
            GraphLanguage G (words j ++ suffix))) :
    n ≤ Fintype.card (Finset State) := by
  classical
  have hinjective :
      Function.Injective (fun i : Fin n =>
        reachableEndStates G (words i)) := by
    intro i j heq
    by_contra hij
    obtain ⟨suffix, hdiff⟩ := hdistinct i j hij
    exact hdiff
      (graphLanguage_context_iff_of_same_endStates
        G (words i) (words j) suffix heq)
  have hcard :
      Fintype.card (Fin n) ≤ Fintype.card (Finset State) :=
    Fintype.card_le_of_injective _ hinjective
  simpa only [Fintype.card_fin] using hcard

/-- An exact-language presentation transfers an arbitrary supplied
finite distinguishability certificate to the graph-bound conclusion.
The witness cannot be silently replaced by a single accepted path. -/
theorem rightContexts_card_le_exactPresentation
    {Alphabet : Type v} {language : List Alphabet → Prop}
    (P : ExactLanguagePresentation.{0,v} Alphabet language)
    (n : ℕ) (words : Fin n → List Alphabet)
    (hdistinct : ∀ i j : Fin n, i ≠ j →
      ∃ suffix : List Alphabet,
        ¬ (language (words i ++ suffix) ↔
            language (words j ++ suffix))) :
    n ≤ P.stateCapacity := by
  letI : Fintype P.State := P.finiteState
  classical
  change n ≤ Fintype.card (Finset P.State)
  apply rightContexts_card_le_graphLanguage P.graph n words
  intro i j hij
  obtain ⟨suffix, hdiff⟩ := hdistinct i j hij
  refine ⟨suffix, ?_⟩
  intro hgraph
  apply hdiff
  calc
    language (words i ++ suffix) ↔
        GraphLanguage P.graph (words i ++ suffix) :=
      P.exactLanguage _
    _ ↔ GraphLanguage P.graph (words j ++ suffix) := hgraph
    _ ↔ language (words j ++ suffix) :=
      (P.exactLanguage _).symm

/-- Any exact finite-state graph language has only finitely many distinct
right contexts: a word's continuation behavior is determined by one of
the finitely many subsets of graph states. Thus unbounded pairwise
distinguishable contexts contradict ANY exact finite graph presentation. -/
theorem not_soficFactorLanguage_of_unboundedRightContexts
    {Alphabet : Type v} (language : List Alphabet → Prop)
    (hunbounded : UnboundedRightContexts language) :
    ¬ IsSoficFactorLanguage language := by
  rintro ⟨P⟩
  let N : ℕ := P.stateCapacity + 1
  obtain ⟨words, hdistinguishable⟩ := hunbounded N
  have hbound : N ≤ P.stateCapacity :=
    rightContexts_card_le_exactPresentation
      P N words hdistinguishable
  dsimp [N] at hbound
  omega

/-- A source trace with unbounded full-language continuation contexts
has no exact finite labeled graph presentation. -/
theorem not_soficTrace_of_unboundedRightContexts
    {Alphabet : Type v} (trace : ℕ → Alphabet)
    (hunbounded : UnboundedRightContexts (HasFiniteBlock trace)) :
    ¬ IsSoficTrace trace :=
  not_soficFactorLanguage_of_unboundedRightContexts
    (HasFiniteBlock trace) hunbounded

/-- For non-eventual-soficity the supplied continuation distinction must
survive EVERY finite burn-in. It is insufficient to distinguish arbitrarily
many contexts only before discarding the initial prefix. -/
theorem not_eventuallySoficTrace_of_all_tail_rightContexts
    {Alphabet : Type v} (trace : ℕ → Alphabet)
    (hall : ∀ offset : ℕ,
      UnboundedRightContexts
        (HasFiniteBlock (tailTrace trace offset))) :
    ¬ EventuallySoficTrace trace := by
  rintro ⟨offset, hsofic⟩
  exact
    (not_soficTrace_of_unboundedRightContexts
      (tailTrace trace offset) (hall offset)) hsofic


end GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover
