/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficLanguageTransversal
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLanguageTransversal

universe u v

variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Count the distinct letters witnessing an edge between two actual
states. The source LabeledGraph.edge is a PROP indexed by a symbol,
not an unlabelled adjacency relation or an arbitrary edge multiset. -/
noncomputable def edgeMultiplicity (G : LabeledGraph State Alphabet)
    (s t : State) : ℕ := by
  classical
  exact ∑ a : Alphabet, if G.edge s a t then 1 else 0

/-- Natural-number adjacency matrix of the existing, unchanged
labeled graph. A finite alphabet is an EXPLICIT extra assumption. -/
noncomputable def labeledAdjacency (G : LabeledGraph State Alphabet) :
    Matrix State State ℕ := fun s t => edgeMultiplicity G s t

/-- Actual extension-by-one-edge recurrence for finite labeled walks.
The intermediate state and the entire final edge-label inventory
are counted, so different state lifts remain distinct. -/
noncomputable def labeledWalkCount (G : LabeledGraph State Alphabet) :
    ℕ → State → State → ℕ
  | 0, s, t => if s = t then 1 else 0
  | n + 1, s, t =>
      ∑ middle : State,
        labeledWalkCount G n s middle * edgeMultiplicity G middle t

/-- Based closed labeled walks count the starting state as data. -/
noncomputable def basedClosedWalkCount (G : LabeledGraph State Alphabet)
    (n : ℕ) : ℕ :=
  ∑ s : State, labeledWalkCount G n s s

/-- Real matrix multiplication exactly follows the last-edge
recurrence, at every length and both original graph endpoints. -/
theorem labeledAdjacency_pow_apply_eq_walkCount
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    ∀ s t : State,
      (labeledAdjacency G ^ n) s t = labeledWalkCount G n s t := by
  classical
  induction n with
  | zero =>
      intro s t
      simp [labeledWalkCount, Matrix.one_apply]
  | succ n ih =>
      intro s t
      calc
        (labeledAdjacency G ^ (n + 1)) s t =
            ∑ middle : State,
              (labeledAdjacency G ^ n) s middle *
                labeledAdjacency G middle t := by
          rw [pow_succ, Matrix.mul_apply]
        _ = labeledWalkCount G (n + 1) s t := by
          change (∑ middle : State,
              (labeledAdjacency G ^ n) s middle *
                edgeMultiplicity G middle t) =
              ∑ middle : State,
                labeledWalkCount G n s middle *
                  edgeMultiplicity G middle t
          apply Finset.sum_congr rfl
          intro middle _
          rw [ih s middle]

/-- The finite matrix trace counts ALL based closed labeled walks.
This is a theorem of the original graph relation, not of a guessed
periodic orbit count or a single path in the full factor language. -/
theorem trace_pow_eq_basedClosedWalkCount
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    Matrix.trace (labeledAdjacency G ^ n) =
      basedClosedWalkCount G n := by
  classical
  change (∑ s : State, (labeledAdjacency G ^ n) s s) =
      ∑ s : State, labeledWalkCount G n s s
  apply Finset.sum_congr rfl
  intro s _
  exact labeledAdjacency_pow_apply_eq_walkCount G n s s

/-- Explicit based graph walk type. Retaining both the intermediate
state and each emitted symbol avoids counting only distinct words. -/
inductive LabeledWalkData (G : LabeledGraph State Alphabet) :
    ℕ → State → State → Type (max u v) where
  | nil (s : State) : LabeledWalkData G 0 s s
  | snoc {n : ℕ} {s middle t : State}
      (prefix : LabeledWalkData G n s middle)
      (letter : Alphabet) (edge : G.edge middle letter t) :
      LabeledWalkData G (n + 1) s t

/-- The source ends where it began, with a distinguished base state. -/
abbrev BasedCycleData (G : LabeledGraph State Alphabet) (n : ℕ) :=
  Σ s : State, LabeledWalkData G n s s

/-- Extract the actual label sequence in its original edge order. -/
def walkDataLabels (G : LabeledGraph State Alphabet) :
    {n : ℕ} → {s t : State} →
      LabeledWalkData G n s t → List Alphabet
  | _, _, _, .nil _ => []
  | _, _, _, .snoc prefix letter _ => walkDataLabels G prefix ++ [letter]

/-- One emitted symbol per original graph step. -/
theorem walkDataLabels_length (G : LabeledGraph State Alphabet) :
    ∀ {n : ℕ} {s t : State} (p : LabeledWalkData G n s t),
      (walkDataLabels G p).length = n := by
  intro n s t p
  induction p with
  | nil s => rfl
  | snoc prefix letter edge ih =>
      simp [walkDataLabels, ih]

/-- Actual label block from a based length-n graph cycle. -/
def basedCycleWord (G : LabeledGraph State Alphabet) (n : ℕ)
    (c : BasedCycleData G n) : Fin n → Alphabet :=
  fun i => (walkDataLabels G c.2).get
    (i.cast (walkDataLabels_length G c.2).symm)

/-- One-sided infinite repetition of a chosen finite label block;
its positive period is explicitly supplied, and is not the
period of a graph state lift unless proved separately. -/
def repeatBlock {n : ℕ} (hn : 0 < n)
    (letters : Fin n → Alphabet) (k : ℕ) : Alphabet :=
  letters ⟨k % n, Nat.mod_lt k hn⟩

theorem repeatBlock_period {n : ℕ} (hn : 0 < n)
    (letters : Fin n → Alphabet) (k : ℕ) :
    repeatBlock hn letters (k + n) = repeatBlock hn letters k := by
  unfold repeatBlock
  simp

/-- Period-dividing-n LABEL points of the specified factor language:
EVERY finite block of the infinite periodic label sequence must belong
in that language. This is stronger than one finite graph path. -/
def PeriodicLabelPoint
    (language : List Alphabet → Prop) (n : ℕ) (hn : 0 < n) :=
  { letters : Fin n → Alphabet //
      ∀ word : List Alphabet,
        HasFiniteBlock (repeatBlock hn letters) word → language word }

/-- A based-cycle cardinal theorem is independent from the source
matrix recurrence; it must count actual finite edge/path data. -/
def ExactBasedCycleCard (G : LabeledGraph State Alphabet) (n : ℕ)
    [Fintype (BasedCycleData G n)] : Prop :=
  Fintype.card (BasedCycleData G n) = basedClosedWalkCount G n

/-- A period-preserving AND ACTUAL-LABEL-PRESERVING bijection is the
precise extra hypothesis needed to descend from the graph trace to
periodic label points. Ordinary equality of whole languages is NOT it. -/
theorem periodicLabelPoint_card_eq_trace_of_exact_lifts
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    [Fintype (BasedCycleData G n)]
    (hCount : ExactBasedCycleCard G n)
    (e : BasedCycleData G n ≃ PeriodicLabelPoint language n hn)
    (hLabels : ∀ c : BasedCycleData G n,
      (e c).val = basedCycleWord G n c) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      Matrix.trace (labeledAdjacency G ^ n) := by
  classical
  have hcard := Fintype.card_congr e
  rw [← hcard, hCount]
  exact (trace_pow_eq_basedClosedWalkCount G n).symm

/-- Two actual finite full-one-symbol-language presentations can have
very different lift multiplicities and period lifting behavior. -/
def doubleLoopUnitGraph : LabeledGraph Bool Unit where
  edge := fun s _ t => s = t

def alternatingUnitGraph : LabeledGraph Bool Unit where
  edge := fun s _ t => s ≠ t

private theorem doubleLoopWordPath (word : List Unit) :
    WordPath doubleLoopUnitGraph false word false := by
  induction word with
  | nil => exact WordPath.nil false
  | cons a tail ih => exact WordPath.cons a tail rfl ih

theorem doubleLoopLanguage_all (word : List Unit) :
    GraphLanguage doubleLoopUnitGraph word :=
  ⟨false, false, doubleLoopWordPath word⟩

private theorem alternatingWordPath (s : Bool) (word : List Unit) :
    ∃ t : Bool, WordPath alternatingUnitGraph s word t := by
  induction word generalizing s with
  | nil => exact ⟨s, WordPath.nil s⟩
  | cons a tail ih =>
      obtain ⟨t, ht⟩ := ih (!s)
      refine ⟨t, WordPath.cons a tail ?_ ht⟩
      change s ≠ !s
      cases s <;> decide

theorem alternatingLanguage_all (word : List Unit) :
    GraphLanguage alternatingUnitGraph word := by
  obtain ⟨t, ht⟩ := alternatingWordPath false word
  exact ⟨false, t, ht⟩

/-- Both finite graphs present the very SAME COMPLETE one-symbol
finite factor language; neither is merely a single admitted trace. -/
def doubleLoopExact :
    ExactLanguagePresentation.{0, 0} Unit (fun _ => True) where
  State := Bool
  finiteState := inferInstance
  graph := doubleLoopUnitGraph
  exactLanguage := by
    intro word
    exact ⟨fun _ => doubleLoopLanguage_all word, fun _ => trivial⟩

def alternatingExact :
    ExactLanguagePresentation.{0, 0} Unit (fun _ => True) where
  State := Bool
  finiteState := inferInstance
  graph := alternatingUnitGraph
  exactLanguage := by
    intro word
    exact ⟨fun _ => alternatingLanguage_all word, fun _ => trivial⟩

/-- A length-one cyclic graph lift fails in the alternating graph,
despite the period-one label sequence belonging to its exact language. -/
theorem alternating_no_one_step_cycle :
    ¬ ∃ s : Bool, WordPath alternatingUnitGraph s [()] s := by
  rintro ⟨s, h⟩
  cases h with
  | cons a word hedge tail =>
      cases tail with
      | nil t => exact hedge rfl

/-- The constant Unit sequence is an ACTUAL period-one label point
in the full factor language of the alternating graph. -/
theorem alternating_has_period_one_label :
    (∀ word : List Unit,
       HasFiniteBlock (fun _ : ℕ => ()) word →
         GraphLanguage alternatingUnitGraph word) ∧
    (∀ k : ℕ, (fun _ : ℕ => ()) (k + 1) =
      (fun _ : ℕ => ()) k) := by
  constructor
  · intro word _
    exact alternatingLanguage_all word
  · intro k
    rfl

/-- Two distinct based one-step lifts emit the SAME period-one
label word in the duplicate-loop presentation. -/
theorem doubleLoop_two_one_step_cycles :
    WordPath doubleLoopUnitGraph false [()] false ∧
      WordPath doubleLoopUnitGraph true [()] true := by
  exact ⟨WordPath.cons () [] rfl (WordPath.nil false),
    WordPath.cons () [] rfl (WordPath.nil true)⟩

/-- The exact first matrix traces display the two opposite losses:
double loops overcount one label point; alternating states supply
an admitted period-one label point WITHOUT a one-step closed lift. -/
theorem doubleLoop_trace_one :
    Matrix.trace (labeledAdjacency doubleLoopUnitGraph) = 2 := by
  classical
  norm_num [Matrix.trace, Matrix.diag, labeledAdjacency,
    edgeMultiplicity, doubleLoopUnitGraph]

theorem alternating_trace_one :
    Matrix.trace (labeledAdjacency alternatingUnitGraph) = 0 := by
  classical
  simp [Matrix.trace, Matrix.diag, labeledAdjacency,
    edgeMultiplicity, alternatingUnitGraph]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
