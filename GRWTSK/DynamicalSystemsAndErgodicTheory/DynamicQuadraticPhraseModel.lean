/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.FilteredPrismaticWalk
import Mathlib

/-!
# Dynamic phrase-size language models ordered by positive quadratic energy

A parent controller dynamically emits candidate phrase models at each validated
graph boundary, across an arbitrary finite number of waveform modes. It ranks
only admissible local continuations, never the chronology of already written
language. Admissibility checks literal source-prefix equality, walk validity,
current rhetorical role, and a configurable positive maximum phrase length.

A proof-carrying source ledger ensures that consuming any selected candidate
leaves an exact remaining suffix of the original validated walk.

This is a formal candidate-producer interface; it does not claim that the
meaning of arbitrary English text is machine-proved, that its scoring weights
are empirical human preferences, or that quadratic search implies any NS/PDE
or zeta-zero theorem.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

/-! ## Literal identity of routed source occurrences -/

private instance : DecidableEq WalkEdge := fun a b =>
  if h : a.source = b.source ∧ a.label = b.label ∧
      a.words = b.words ∧ a.target = b.target then
    isTrue (by
      cases a with
      | mk as al aw atg =>
        cases b with
        | mk bs bl bw btg =>
          rcases h with ⟨hs, hl, hw, ht⟩
          cases hs
          cases hl
          cases hw
          cases ht
          rfl)
  else
    isFalse (by
      intro heq
      apply h
      cases heq
      exact ⟨rfl, rfl, rfl, rfl⟩)

/-- A phrase-sized model: a routed phrase, waveform features, unique
candidate occurrence. The positive quadratic function acts on features. -/
structure LocalPhrase (m : ℕ) where
  phrase : PhraseModel
  modes : Fin m → ℚ
  identity : ℕ

def followingRole : PhraseRole → PhraseRole
  | .setup => .forecast
  | .forecast => .payoff
  | .payoff => .setup

theorem followingRole_valid (r : PhraseRole) :
    RoleFollows r (followingRole r) := by
  cases r <;> simp [followingRole, RoleFollows]

/-- Larger model state. The original checked walk is never rewritten. -/
structure PhraseSearchState (m : ℕ) where
  original : CheckedWalk
  cursor : Vertex
  remaining : List WalkEdge
  consumed : List WalkEdge
  phrasesRev : List (LocalPhrase m)
  expectedRole : PhraseRole
  /-- The stored phrase occurrences serialize exactly to the consumed prefix. -/
  phrasesExact :
    (phrasesRev.reverse.flatMap (fun p => p.phrase.edges)) = consumed
  sourceExact : consumed ++ remaining = original.input.edges

def PhraseSearchState.initial {m : ℕ} (source : CheckedWalk) :
    PhraseSearchState m where
  original := source
  cursor := source.input.start
  remaining := source.input.edges
  consumed := []
  phrasesRev := []
  expectedRole := .setup
  phrasesExact := by simp
  sourceExact := by simp

/-- Parent search controller: each dynamic state has a fresh finite set
of candidate phrase models, with a strictly positive quadratic weight on
every finite feature channel. -/
structure ParentPhraseModel (m : ℕ) where
  maxPhraseEdges : ℕ
  maxPhraseEdges_pos : 0 < maxPhraseEdges
  weight : Fin m → ℚ
  weight_pos : ∀ i, 0 < weight i
  propose : PhraseSearchState m → List (LocalPhrase m)

/-- Positive diagonal quadratic for selection of local alternatives. -/
def ParentPhraseModel.positiveQuadratic {m : ℕ}
    (parent : ParentPhraseModel m) (candidate : LocalPhrase m) : ℚ :=
  ∑ i : Fin m, parent.weight i * (candidate.modes i) ^ 2

theorem ParentPhraseModel.quadratic_nonnegative {m : ℕ}
    (parent : ParentPhraseModel m) (candidate : LocalPhrase m) :
    0 ≤ parent.positiveQuadratic candidate := by
  unfold ParentPhraseModel.positiveQuadratic
  apply Finset.sum_nonneg
  intro i _
  exact mul_nonneg (le_of_lt (parent.weight_pos i)) (sq_nonneg _)

theorem ParentPhraseModel.quadratic_zero_modes {m : ℕ}
    (parent : ParentPhraseModel m) (candidate : LocalPhrase m)
    (h : ∀ i, candidate.modes i = 0) :
    parent.positiveQuadratic candidate = 0 := by
  simp [ParentPhraseModel.positiveQuadratic, h]

/-- Strictly positive energy whenever at least one mode is nonzero.
This makes the rational quadratic positive definite on finite mode vectors. -/
theorem ParentPhraseModel.quadratic_strict_of_mode {m : ℕ}
    (parent : ParentPhraseModel m) (candidate : LocalPhrase m)
    (i : Fin m) (hi : candidate.modes i ≠ 0) :
    0 < parent.positiveQuadratic candidate := by
  have hterm : 0 < parent.weight i * (candidate.modes i) ^ 2 :=
    mul_pos (parent.weight_pos i) (sq_pos_of_ne_zero hi)
  have hbound :
      parent.weight i * (candidate.modes i) ^ 2 ≤
        ∑ j : Fin m, parent.weight j * (candidate.modes j) ^ 2 := by
    apply Finset.single_le_sum
    · intro j hj
      exact mul_nonneg (le_of_lt (parent.weight_pos j)) (sq_nonneg _)
    · exact Finset.mem_univ i
  exact lt_of_lt_of_le hterm hbound

/-- The phrase must be a real nonempty prefix of the as-yet-unconsumed
source, with its current graph boundary and rhetorical role retained. -/
def ParentPhraseModel.Fits {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m)
    (candidate : LocalPhrase m) : Prop :=
  candidate.phrase.entry = state.cursor ∧
  candidate.phrase.role = state.expectedRole ∧
  candidate.phrase.Valid ∧
  0 < candidate.phrase.edges.length ∧
  candidate.phrase.edges.length ≤ parent.maxPhraseEdges ∧
  state.remaining.take candidate.phrase.edges.length =
    candidate.phrase.edges

abbrev ParentPhraseModel.Admitted {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m) :=
  {candidate : LocalPhrase m // parent.Fits state candidate}

/-- The graph/word/role gate occurs before ranking. -/
def ParentPhraseModel.admittedCandidates {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m) :
    List (parent.Admitted state) :=
  (parent.propose state).filterMap fun candidate =>
    if h : parent.Fits state candidate then some ⟨candidate, h⟩ else none

/-! ## Exact quadratic ordering -/

/-- Insert before the first candidate with an equal or greater score.
An insertion sort using this rule retains the emitted order for ties. -/
def ParentPhraseModel.insertRanked {m : ℕ}
    (parent : ParentPhraseModel m) {state : PhraseSearchState m}
    (item : parent.Admitted state) :
    List (parent.Admitted state) → List (parent.Admitted state)
  | [] => [item]
  | first :: tail =>
      if parent.positiveQuadratic item.1 ≤
          parent.positiveQuadratic first.1 then
        item :: first :: tail
      else
        first :: parent.insertRanked item tail

def ParentPhraseModel.rank {m : ℕ}
    (parent : ParentPhraseModel m) {state : PhraseSearchState m} :
    List (parent.Admitted state) → List (parent.Admitted state)
  | [] => []
  | item :: tail => parent.insertRanked item (parent.rank tail)

/-- Explicit mathematical specification of nondecreasing score order. -/
inductive ParentPhraseModel.ScoreOrdered {m : ℕ}
    (parent : ParentPhraseModel m) {state : PhraseSearchState m} :
    List (parent.Admitted state) → Prop where
  | nil : ScoreOrdered parent []
  | single (x : parent.Admitted state) : ScoreOrdered parent [x]
  | cons (x y : parent.Admitted state) (rest : List (parent.Admitted state))
      (h : parent.positiveQuadratic x.1 ≤ parent.positiveQuadratic y.1)
      (tail : ScoreOrdered parent (y :: rest)) :
      ScoreOrdered parent (x :: y :: rest)

open ParentPhraseModel

/-- Insertion preserves ordering; the only new adjacency is checked at the
first place where the inserted score fits. -/
theorem ParentPhraseModel.insert_ordered {m : ℕ}
    (parent : ParentPhraseModel m) {state : PhraseSearchState m}
    (item : parent.Admitted state) {items : List (parent.Admitted state)}
    (h : parent.ScoreOrdered items) :
    parent.ScoreOrdered (parent.insertRanked item items) := by
  induction h with
  | nil =>
      exact ScoreOrdered.single item
  | single first =>
      by_cases hle : parent.positiveQuadratic item.1 ≤
          parent.positiveQuadratic first.1
      · simpa [insertRanked, hle] using
          (ScoreOrdered.cons item first [] hle (ScoreOrdered.single first))
      · have hright : parent.positiveQuadratic first.1 ≤
            parent.positiveQuadratic item.1 :=
          le_of_lt (lt_of_not_ge hle)
        simpa [insertRanked, hle] using
          (ScoreOrdered.cons first item [] hright (ScoreOrdered.single item))
  | cons first second rest hfirst hrest ih =>
      by_cases hleft : parent.positiveQuadratic item.1 ≤
          parent.positiveQuadratic first.1
      · simpa [insertRanked, hleft] using
          (ScoreOrdered.cons item first (second :: rest) hleft
            (ScoreOrdered.cons first second rest hfirst hrest))
      · have hfirstItem : parent.positiveQuadratic first.1 ≤
            parent.positiveQuadratic item.1 :=
          le_of_lt (lt_of_not_ge hleft)
        by_cases hsecond : parent.positiveQuadratic item.1 ≤
            parent.positiveQuadratic second.1
        · have hinner :
              parent.insertRanked item (second :: rest) =
                item :: second :: rest := by
            simp [insertRanked, hsecond]
          rw [insertRanked, if_neg hleft, hinner]
          exact ScoreOrdered.cons first item (second :: rest) hfirstItem
            (ScoreOrdered.cons item second rest hsecond hrest)
        · have hinner :
              parent.insertRanked item (second :: rest) =
                second :: parent.insertRanked item rest := by
            simp [insertRanked, hsecond]
          rw [insertRanked, if_neg hleft, hinner]
          have htail : parent.ScoreOrdered
              (second :: parent.insertRanked item rest) := by
            simpa [hinner] using ih
          exact ScoreOrdered.cons first second
            (parent.insertRanked item rest) hfirst htail

theorem ParentPhraseModel.rank_ordered {m : ℕ}
    (parent : ParentPhraseModel m) {state : PhraseSearchState m}
    (items : List (parent.Admitted state)) :
    parent.ScoreOrdered (parent.rank items) := by
  induction items with
  | nil => exact ScoreOrdered.nil
  | cons item rest ih =>
      exact parent.insert_ordered item ih

def ParentPhraseModel.rankedAt {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m) :
    List (parent.Admitted state) :=
  parent.rank (parent.admittedCandidates state)

theorem ParentPhraseModel.rankedAt_ordered {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m) :
    parent.ScoreOrdered (parent.rankedAt state) :=
  parent.rank_ordered _

/-! ## Source-conserving dynamic construction -/

/-- The exact literal source prefix plus the dropped suffix is the original
remaining source. This also retains all prime-addressed graph endpoints. -/
theorem ParentPhraseModel.phrase_drop_reconstructs {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m)
    (item : parent.Admitted state) :
    item.1.phrase.edges ++
        state.remaining.drop item.1.phrase.edges.length =
      state.remaining := by
  have hprefix := item.2.2.2.2.2.2
  rw [← hprefix]
  exact List.take_append_drop _ _

def ParentPhraseModel.advance {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m)
    (item : parent.Admitted state) : PhraseSearchState m where
  original := state.original
  cursor := item.1.phrase.exit
  remaining := state.remaining.drop item.1.phrase.edges.length
  consumed := state.consumed ++ item.1.phrase.edges
  phrasesRev := item.1 :: state.phrasesRev
  expectedRole := followingRole state.expectedRole
  phrasesExact := by
    simp [List.reverse_cons, List.flatMap_append, state.phrasesExact]
  sourceExact := by
    calc
      (state.consumed ++ item.1.phrase.edges) ++
          state.remaining.drop item.1.phrase.edges.length =
        state.consumed ++
          (item.1.phrase.edges ++
            state.remaining.drop item.1.phrase.edges.length) := by
              rw [List.append_assoc]
      _ = state.consumed ++ state.remaining := by
              rw [parent.phrase_drop_reconstructs state item]
      _ = state.original.input.edges := state.sourceExact

theorem ParentPhraseModel.advance_port {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m)
    (item : parent.Admitted state) :
    addressOf item.1.phrase.entry = addressOf state.cursor :=
  congrArg addressOf item.2.1

/-- The best score chooses the next phrase, not a new order of existing text. -/
def ParentPhraseModel.step {m : ℕ}
    (parent : ParentPhraseModel m) (state : PhraseSearchState m) :
    Option (PhraseSearchState m) :=
  match (parent.rankedAt state).head? with
  | none => none
  | some item => some (parent.advance state item)

/-- Bounded repeated call to the larger dynamic model. -/
def ParentPhraseModel.run {m : ℕ}
    (parent : ParentPhraseModel m) (source : CheckedWalk) :
    ℕ → Option (PhraseSearchState m)
  | 0 => some (PhraseSearchState.initial source)
  | fuel + 1 => (parent.run source fuel).bind parent.step

/-- The emitted phrase sequence, not merely the consumed ledger, reconstructs
every original source occurrence on a completed walk. -/
theorem PhraseSearchState.complete_phrases {m : ℕ}
    (state : PhraseSearchState m) (h : state.remaining = []) :
    (state.phrasesRev.reverse.flatMap (fun p => p.phrase.edges)) =
      state.original.input.edges := by
  rw [state.phrasesExact]
  simpa [h] using state.sourceExact

/-- Exact source return at completion, independent of quadratic weights. -/
theorem PhraseSearchState.complete_source {m : ℕ}
    (state : PhraseSearchState m) (h : state.remaining = []) :
    state.consumed = state.original.input.edges := by
  simpa [h] using state.sourceExact

/-! ## Concrete dynamic producer for the original 15-edge poem -/

def openingLocal : LocalPhrase 3 where
  phrase := openingPhrase
  modes := fun i => if i.val = 0 then 1 else 0
  identity := 0

def forecastLocal : LocalPhrase 3 where
  phrase := predictionPhrase
  modes := fun i => if i.val = 1 then 1 else 0
  identity := 1

def payoffLocal : LocalPhrase 3 where
  phrase := payoffPhrase
  modes := fun i => if i.val = 2 then 1 else 0
  identity := 2

def poemParent : ParentPhraseModel 3 where
  maxPhraseEdges := 5
  maxPhraseEdges_pos := by decide
  weight := fun _ => 1
  weight_pos := by intro i; norm_num
  propose := fun state =>
    if state.cursor = 0 then [openingLocal]
    else if state.cursor = 5 then [forecastLocal]
    else if state.cursor = 10 then [payoffLocal]
    else []

theorem original_opening_fits :
    poemParent.Fits (PhraseSearchState.initial poemChecked) openingLocal := by
  decide

theorem equal_mode_scores :
    poemParent.positiveQuadratic openingLocal = 1 ∧
    poemParent.positiveQuadratic forecastLocal = 1 ∧
    poemParent.positiveQuadratic payoffLocal = 1 := by
  norm_num [poemParent, ParentPhraseModel.positiveQuadratic,
    openingLocal, forecastLocal, payoffLocal, Fin.sum_univ_three]

/-- The original path remains independently validated, regardless of ranking. -/
theorem ranked_input_remains_a_walk :
    WordPath graph poemChecked.input.start
      (walkLabels poemChecked.input.edges) poemChecked.input.finish :=
  poemChecked.sound

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
