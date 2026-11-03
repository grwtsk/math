/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-level mathematical formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicWordMatrix
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCycleRepeatBridge
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.BigOperators
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual word-matrix powers count actual composable labeled graph paths

The exact source wordLiftMatrix G w s t counts original LabeledWalkData
witnesses carrying precisely the full word w. A k-block chain is a
sequence of k of THESE true witnesses with matching intermediate
endpoints. The matrix-power cardinality proof preserves multiplicity.

The positivity return is a separate original WordPath equivalence:
an original path labeled by k copies of w can be split into k
blocks, and each original word path can be recoded into a real
LabeledWalkData witness without collapsing intermediate states.
No external WordPowerClosedPathBridge premise is used.

The proof scripts are not Lean kernel-verified in this session.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosedPath

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix

universe u v
variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- A genuine source path with its ACTUAL complete emitted word.
Different state paths emitting equal words are distinct witnesses. -/
abbrev ExactWordLift (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (s t : State) :=
  {p : LabeledWalkData G word.length s t // walkDataLabels G p = word}

/-- The k-block chain is made of ACTUAL exact-word source path data.
Its snoc constructor retains every intermediate state and witness. -/
inductive WordBlockChain (G : LabeledGraph State Alphabet)
    (word : List Alphabet) : ℕ → State → State → Type (max u v) where
  | nil (s : State) : WordBlockChain G word 0 s s
  | snoc {k : ℕ} {s mid t : State}
      (prefix : WordBlockChain G word k s mid)
      (step : ExactWordLift G word mid t) :
      WordBlockChain G word (k + 1) s t

/-- Zero blocks have precisely the equality witness s=t. -/
private def zeroBlockEquiv (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (s t : State) :
    WordBlockChain G word 0 s t ≃ PLift (s = t) where
  toFun := by
    intro p
    cases p
    exact ⟨rfl⟩
  invFun := by
    intro e
    rcases e with ⟨h⟩
    cases h
    exact WordBlockChain.nil s
  left_inv := by
    intro p
    cases p
    rfl
  right_inv := by
    rintro ⟨h⟩
    cases h
    rfl

/-- One more block is a unique intermediate state, a previous
block chain, and a final exact original word path. -/
private def snocBlockEquiv (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (k : ℕ) (s t : State) :
    WordBlockChain G word (k + 1) s t ≃
      Σ mid : State,
        WordBlockChain G word k s mid × ExactWordLift G word mid t where
  toFun := by
    intro p
    cases p with
    | snoc (mid := mid) prefix step =>
        exact ⟨mid, (prefix, step)⟩
  invFun := by
    rintro ⟨mid, prefix, step⟩
    exact WordBlockChain.snoc prefix step
  left_inv := by
    intro p
    cases p
    rfl
  right_inv := by
    rintro ⟨mid, prefix, step⟩
    rfl

/-- Finite state and alphabet give a finite type of EVERY actual
k-block path, without quotienting by its word label. -/
private noncomputable def finiteBlockChain
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    (k : ℕ) → (s t : State) → Fintype (WordBlockChain G word k s t)
  | 0, s, t => by
      classical
      exact Fintype.ofEquiv (PLift (s = t))
        (zeroBlockEquiv G word s t).symm
  | k + 1, s, t => by
      classical
      letI : ∀ mid : State, Fintype (WordBlockChain G word k s mid) :=
        fun mid => finiteBlockChain G word k s mid
      exact Fintype.ofEquiv
        (Σ mid : State,
          WordBlockChain G word k s mid × ExactWordLift G word mid t)
        (snocBlockEquiv G word k s t).symm

noncomputable instance instWordBlockChainFintype
    (G : LabeledGraph State Alphabet) (word : List Alphabet)
    (k : ℕ) (s t : State) :
    Fintype (WordBlockChain G word k s t) :=
  finiteBlockChain G word k s t

/-- EXACT endpoint-by-endpoint counting, including the zero power:
the original word matrix counts true composable word-lift paths.
No positive/zero simplification discards path multiplicity. -/
theorem wordBlockChain_card_eq_matrixPow
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    ∀ (k : ℕ) (s t : State),
      Fintype.card (WordBlockChain G word k s t) =
        ((wordLiftMatrix G word) ^ k) s t := by
  classical
  intro k
  induction k with
  | zero =>
      intro s t
      by_cases h : s = t
      · subst t
        haveI : Unique (PLift (s = s)) :=
          { default := ⟨rfl⟩
            uniq := by
              intro e
              rcases e with ⟨he⟩
              rfl }
        calc
          Fintype.card (WordBlockChain G word 0 s s) =
              Fintype.card (PLift (s = s)) :=
            Fintype.card_congr (zeroBlockEquiv G word s s)
          _ = 1 := Fintype.card_unique
          _ = ((wordLiftMatrix G word) ^ 0) s s := by
            simp [Matrix.one_apply]
      · haveI : IsEmpty (PLift (s = t)) :=
          ⟨fun e => h e.down⟩
        calc
          Fintype.card (WordBlockChain G word 0 s t) =
              Fintype.card (PLift (s = t)) :=
            Fintype.card_congr (zeroBlockEquiv G word s t)
          _ = 0 := Fintype.card_eq_zero
          _ = ((wordLiftMatrix G word) ^ 0) s t := by
            simp [Matrix.one_apply, h]
  | succ k ih =>
      intro s t
      calc
        Fintype.card (WordBlockChain G word (k + 1) s t) =
          Fintype.card
            (Σ mid : State, WordBlockChain G word k s mid ×
                ExactWordLift G word mid t) :=
          Fintype.card_congr (snocBlockEquiv G word k s t)
        _ = ∑ mid : State, Fintype.card
              (WordBlockChain G word k s mid ×
                ExactWordLift G word mid t) := by
          rw [Fintype.card_sigma]
        _ = ∑ mid : State,
              Fintype.card (WordBlockChain G word k s mid) *
                Fintype.card (ExactWordLift G word mid t) := by
          apply Finset.sum_congr rfl
          intro mid _
          rw [Fintype.card_prod]
        _ = ∑ mid : State,
              ((wordLiftMatrix G word) ^ k) s mid *
                wordLiftMatrix G word mid t := by
          apply Finset.sum_congr rfl
          intro mid _
          rw [ih s mid]
          rfl
        _ = ((wordLiftMatrix G word) ^ (k + 1)) s t := by
          rw [pow_succ, Matrix.mul_apply]

/-- The trace is the cardinality of actual based block-chain data.
The base state is included rather than forgotten. -/
theorem trace_wordLiftMatrix_pow_eq_basedBlockChain_card
    (G : LabeledGraph State Alphabet) (word : List Alphabet) (k : ℕ) :
    Matrix.trace ((wordLiftMatrix G word) ^ k) =
      Fintype.card
        (Σ s : State, WordBlockChain G word k s s) := by
  classical
  calc
    Matrix.trace ((wordLiftMatrix G word) ^ k) =
        ∑ s : State, ((wordLiftMatrix G word) ^ k) s s := by
      rfl
    _ = ∑ s : State, Fintype.card (WordBlockChain G word k s s) := by
      apply Finset.sum_congr rfl
      intro s _
      exact (wordBlockChain_card_eq_matrixPow G word k s s).symm
    _ = Fintype.card
          (Σ s : State, WordBlockChain G word k s s) := by
      rw [Fintype.card_sigma]

/-- Prepend a REAL original graph edge to the inductive snoc
representation, retaining every subsequent intermediate state. -/
private def prependLabeledWalkData
    (G : LabeledGraph State Alphabet)
    {n : ℕ} {s mid t : State}
    (letter : Alphabet) (head : G.edge s letter mid)
    (p : LabeledWalkData G n mid t) :
    LabeledWalkData G (n + 1) s t :=
  match p with
  | .nil _ => .snoc (.nil s) letter head
  | .snoc prefix last hedge =>
      .snoc (prependLabeledWalkData G letter head prefix) last hedge

private theorem prependLabeledWalkData_labels
    (G : LabeledGraph State Alphabet)
    {n : ℕ} {s mid t : State}
    (letter : Alphabet) (head : G.edge s letter mid)
    (p : LabeledWalkData G n mid t) :
    walkDataLabels G (prependLabeledWalkData G letter head p) =
      letter :: walkDataLabels G p := by
  induction p with
  | nil mid =>
      simp [prependLabeledWalkData, walkDataLabels]
  | snoc prefix last hedge ih =>
      simp [prependLabeledWalkData, walkDataLabels, ih]

/-- A genuine original WordPath produces an actual source
LabeledWalkData witness with exactly its original emitted word.
Existential/Nonempty elimination remains in Prop, avoiding any
invalid elimination of the proof-valued WordPath into Type. -/
private theorem exists_exactWordLift_of_wordPath
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : State} {word : List Alphabet},
      WordPath G s word t → Nonempty (ExactWordLift G word s t) := by
  intro s t word h
  induction h with
  | nil s =>
      exact ⟨⟨LabeledWalkData.nil s, rfl⟩⟩
  | cons letter tail head htail ih =>
      obtain ⟨⟨p, hp⟩⟩ := ih
      refine ⟨⟨prependLabeledWalkData G letter head p, ?_⟩⟩
      simpa [prependLabeledWalkData_labels G letter head p, hp]

/-- Concatenate the genuine original exact-word steps of a block
chain into a real original WordPath emitting precisely k copies. -/
private theorem wordPath_of_wordBlockChain
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    ∀ {k : ℕ} {s t : State}
      (p : WordBlockChain G word k s t),
      WordPath G s (finiteCopies word k) t := by
  intro k s t p
  induction p with
  | nil s =>
      exact WordPath.nil s
  | snoc prefix step ih =>
      have hlast : WordPath G _ word _ := by
        simpa only [step.2] using
          (wordPath_of_labeledWalkData G step.1)
      change WordPath G _ (finiteCopies word _ ++ word) _
      exact wordPath_append ih hlast

/-- Conversely, split the actual original repeated-word path at
each literal word boundary and encode EACH original word path as
LabeledWalkData, keeping all nondeterministic choices. -/
private theorem wordBlockChain_nonempty_of_wordPath
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    ∀ (k : ℕ) {s t : State},
      WordPath G s (finiteCopies word k) t →
      Nonempty (WordBlockChain G word k s t) := by
  intro k
  induction k with
  | zero =>
      intro s t h
      change WordPath G s [] t at h
      cases h with
      | nil s =>
          exact ⟨WordBlockChain.nil s⟩
  | succ k ih =>
      intro s t h
      change WordPath G s (finiteCopies word k ++ word) t at h
      obtain ⟨mid, hprefix, hlast⟩ :=
        wordPath_split_append G (finiteCopies word k) word h
      obtain ⟨prefix⟩ := ih hprefix
      obtain ⟨step⟩ := exists_exactWordLift_of_wordPath G hlast
      exact ⟨WordBlockChain.snoc prefix step⟩

/-- Pointwise positivity of every actual word-matrix power is
equivalent to one original WordPath carrying k literal word copies,
also for k=0 and for empty state sets or empty words. -/
theorem wordLiftMatrix_pow_apply_pos_iff_wordPath
    (G : LabeledGraph State Alphabet) (word : List Alphabet)
    (k : ℕ) (s t : State) :
    0 < ((wordLiftMatrix G word) ^ k) s t ↔
      WordPath G s (finiteCopies word k) t := by
  classical
  rw [← wordBlockChain_card_eq_matrixPow G word k s t]
  constructor
  · intro h
    obtain ⟨p⟩ := Fintype.card_pos_iff.mp h
    exact wordPath_of_wordBlockChain G word p
  · intro h
    exact Fintype.card_pos_iff.mpr
      (wordBlockChain_nonempty_of_wordPath G word k h)

/-- DISCHARGES THE PREEXISTING named WordPowerClosedPathBridge
as a full source proof candidate: positive trace of the k-th
exact word matrix power iff an ACTUAL original closed WordPath
emits k literal copies, including k=0, with no extra hypothesis. -/
theorem wordPowerClosedPathBridge_proof
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    WordPowerClosedPathBridge G word := by
  intro k
  classical
  rw [trace_wordLiftMatrix_pow_eq_basedBlockChain_card]
  constructor
  · intro h
    obtain ⟨⟨s, p⟩⟩ := Fintype.card_pos_iff.mp h
    exact ⟨s, wordPath_of_wordBlockChain G word p⟩
  · rintro ⟨s, hp⟩
    obtain ⟨p⟩ := wordBlockChain_nonempty_of_wordPath G word k hp
    exact Fintype.card_pos_iff.mpr ⟨⟨s, p⟩⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosedPath
