/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficFiniteRepeatClosure
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficBasedCycleCard
import Mathlib.Data.Fintype.BigOperators
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Word-resolved labeled graph trace and sharp finite periodic-lift bound

The ACTUAL original A^n counts based n-cycles. We partition
these cycles by their ACTUAL emitted n-letter tuples, and compare
each fiber to the trace of a matrix counting paths with that
EXACT finite word, including intermediate states.

Mathematically, if the graph has q states, an infinitely repeated
positive-length word belongs to its complete graph-factor language
iff some 1 <= k <= q copies label a genuine closed graph path,
iff the corresponding exact word-matrix has a positive k-th trace.

The bounded macro-boundary pigeonhole and word-matrix power bridge
are named UNPROVED Lean Prop targets, not axioms. We retain the
complete original language, all labels, and both label-lift defects.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteRepeatClosure

universe u v
variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Number of ACTUAL original labeled paths for one entire word.
The Fintype comes from the existing inductive walk's source proof
candidate; each witness retains intermediate states and labels. -/
noncomputable def wordLiftMatrix (G : LabeledGraph State Alphabet)
    (word : List Alphabet) : Matrix State State ℕ :=
  fun s t => Fintype.card
    {p : LabeledWalkData G word.length s t // walkDataLabels G p = word}

/-- Count based graph n-cycles emitting one exact n-letter tuple. -/
noncomputable def basedWordLiftCount (G : LabeledGraph State Alphabet)
    (n : ℕ) (letters : Fin n → Alphabet) : ℕ :=
  Fintype.card
    {c : BasedCycleData G n // basedCycleWord G n c = letters}

private def partitionBasedCycles (G : LabeledGraph State Alphabet)
    (n : ℕ) :
    (Σ letters : Fin n → Alphabet,
      {c : BasedCycleData G n // basedCycleWord G n c = letters}) ≃
      BasedCycleData G n where
  toFun := fun z => z.2.1
  invFun := fun c => ⟨basedCycleWord G n c, ⟨c, rfl⟩⟩
  left_inv := by
    intro z
    rcases z with ⟨letters, ⟨c, h⟩⟩
    cases h
    rfl
  right_inv := by
    intro c
    rfl

/-- The original all-label adjacency trace partitions EXACTLY by
the emitted finite words, for all n including zero.
No period-n shift-label admission or surjectivity premise is used. -/
theorem trace_pow_eq_sum_based_word_lifts
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    Matrix.trace (labeledAdjacency G ^ n) =
      ∑ letters : Fin n → Alphabet, basedWordLiftCount G n letters := by
  classical
  calc
    Matrix.trace (labeledAdjacency G ^ n) =
        Fintype.card (BasedCycleData G n) :=
      trace_pow_eq_card_based_cycles G n
    _ = Fintype.card
          (Σ letters : Fin n → Alphabet,
            {c : BasedCycleData G n // basedCycleWord G n c = letters}) :=
      (Fintype.card_congr (partitionBasedCycles G n)).symm
    _ = ∑ letters : Fin n → Alphabet,
          Fintype.card
            {c : BasedCycleData G n // basedCycleWord G n c = letters} := by
      rw [Fintype.card_sigma]
    _ = ∑ letters : Fin n → Alphabet,
          basedWordLiftCount G n letters := rfl

/-- Original proof-carrying basedCycleWord is exactly the same
list of actual emitted labels, with its original length cast. -/
private theorem basedCycleWord_roundtrip
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (c : BasedCycleData G n) :
    List.ofFn (basedCycleWord G n c) = walkDataLabels G c.2 := by
  have hlen : (walkDataLabels G c.2).length = n :=
    walkDataLabels_length G c.2
  calc
    List.ofFn (basedCycleWord G n c) =
        List.ofFn (fun i : Fin n =>
          (walkDataLabels G c.2).get (Fin.cast hlen.symm i)) := rfl
    _ = List.ofFn (List.get (walkDataLabels G c.2)) :=
      (List.ofFn_congr hlen (List.get (walkDataLabels G c.2))).symm
    _ = walkDataLabels G c.2 := List.ofFn_get _

private def wordCycleFiberEquiv (G : LabeledGraph State Alphabet)
    (n : ℕ) (letters : Fin n → Alphabet) :
    (Σ s : State,
      {p : LabeledWalkData G n s s //
        walkDataLabels G p = List.ofFn letters}) ≃
      {c : BasedCycleData G n // basedCycleWord G n c = letters} where
  toFun := by
    intro z
    rcases z with ⟨s, ⟨p, hp⟩⟩
    refine ⟨⟨s, p⟩, ?_⟩
    apply List.ofFn_injective
    calc
      List.ofFn (basedCycleWord G n ⟨s, p⟩) = walkDataLabels G p :=
        basedCycleWord_roundtrip G n ⟨s, p⟩
      _ = List.ofFn letters := hp
  invFun := by
    intro c
    exact ⟨c.1.1, ⟨c.1.2, by
      calc
        walkDataLabels G c.1.2 = List.ofFn (basedCycleWord G n c.1) :=
          (basedCycleWord_roundtrip G n c.1).symm
        _ = List.ofFn letters := by rw [c.2]⟩⟩
  left_inv := by
    rintro ⟨s, ⟨p, hp⟩⟩
    rfl
  right_inv := by
    rintro ⟨⟨s, p⟩, hc⟩
    rfl

/-- The trace of the exact finite-word path matrix is the
cardinality of the ORIGINAL based cycles emitting that word. -/
theorem trace_wordLiftMatrix_eq_basedWordLiftCount
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (letters : Fin n → Alphabet) :
    Matrix.trace (wordLiftMatrix G (List.ofFn letters)) =
      basedWordLiftCount G n letters := by
  classical
  calc
    Matrix.trace (wordLiftMatrix G (List.ofFn letters)) =
        ∑ s : State,
          Fintype.card {p : LabeledWalkData G n s s //
            walkDataLabels G p = List.ofFn letters} := by
      simp only [Matrix.trace, Matrix.diag, wordLiftMatrix,
        List.length_ofFn]
    _ = Fintype.card
          (Σ s : State,
            {p : LabeledWalkData G n s s //
              walkDataLabels G p = List.ofFn letters}) := by
      rw [Fintype.card_sigma]
    _ = Fintype.card {c : BasedCycleData G n //
          basedCycleWord G n c = letters} :=
      Fintype.card_congr (wordCycleFiberEquiv G n letters)
    _ = basedWordLiftCount G n letters := rfl

/-- Full word-resolved original trace, with n=0 and all letter
multiplicities and state lifts retained. SOURCE proof candidate. -/
theorem trace_pow_eq_sum_word_matrix_traces
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    Matrix.trace (labeledAdjacency G ^ n) =
      ∑ letters : Fin n → Alphabet,
        Matrix.trace (wordLiftMatrix G (List.ofFn letters)) := by
  rw [trace_pow_eq_sum_based_word_lifts]
  apply Finset.sum_congr rfl
  intro letters _
  exact (trace_wordLiftMatrix_eq_basedWordLiftCount G n letters).symm

/-- The k-th word matrix power has a positive trace exactly when
some genuine based graph path closes after k copies of THAT word.
Its path-matrix concatenation proof remains an OPEN Lean target,
not an arithmetic axiom or an accepted theorem. -/
def WordPowerClosedPathBridge (G : LabeledGraph State Alphabet)
    (word : List Alphabet) : Prop :=
  ∀ k : ℕ, 0 < Matrix.trace ((wordLiftMatrix G word) ^ k) ↔
    ∃ s : State, WordPath G s
      (SoficCycleRepeatBridge.finiteCopies word k) s

/-- The SHARP finite-state block-boundary pigeonhole obligation:
one actual path across #State consecutive word blocks has
#State+1 boundary states; two are equal, yielding a closed segment.
Explicit UNPROVED Lean Prop; no hidden general graph axiom. -/
def FiniteStateBlockBoundaryPigeonhole (G : LabeledGraph State Alphabet) : Prop :=
  ∀ word : List Alphabet,
    GraphLanguage G (SoficCycleRepeatBridge.finiteCopies word (Fintype.card State)) →
      ∃ k : ℕ, 0 < k ∧ k ≤ Fintype.card State ∧
        ∃ s : State, WordPath G s
          (SoficCycleRepeatBridge.finiteCopies word k) s

/-- Genuine period-n label blocks are admitted iff their ACTUAL
word-matrix has positive trace at some exponent 1 <= k <= #State.
This remains an UNPROVED Lean Prop until finite macro pigeonhole,
word-matrix powers, and arbitrary-offset repeat factors are connected.
The ordinary-mathematical proof and exact finite diagnostics accompany
the source. It is not a universal trace=label-point assertion. -/
def BoundedPeriodicWordMatrixCriterion
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) : Prop :=
  (∀ word : List Alphabet, language word ↔ GraphLanguage G word) →
    ∀ letters : Fin n → Alphabet,
      (∀ word : List Alphabet,
        HasFiniteBlock (repeatBlock hn letters) word → language word) ↔
      ∃ k : ℕ, 0 < k ∧ k ≤ Fintype.card State ∧
        0 < Matrix.trace
          ((wordLiftMatrix G (List.ofFn letters)) ^ k)

/-- A finite sum of DISTINCT admissible periodic label blocks,
not a sum over based graph lifts and not a determinant formula. -/
noncomputable def boundedPeriodicWordCount
    (G : LabeledGraph State Alphabet) (n : ℕ) : ℕ := by
  classical
  exact ∑ letters : Fin n → Alphabet,
    if ∃ k : ℕ, 0 < k ∧ k ≤ Fintype.card State ∧
        0 < Matrix.trace ((wordLiftMatrix G (List.ofFn letters)) ^ k)
      then 1 else 0

/-- Finite subtype-cardinality transfer CONDITIONAL on the
precise still-open bounded word-matrix criterion. The criterion is
not a newly proved theorem or an axiom declaration. -/
theorem periodicLabelPoint_card_eq_boundedWordCount
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (hcriterion : BoundedPeriodicWordMatrixCriterion G language n hn) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      boundedPeriodicWordCount G n := by
  classical
  change Fintype.card
    {letters : Fin n → Alphabet //
      ∀ word : List Alphabet,
        HasFiniteBlock (repeatBlock hn letters) word → language word} = _
  rw [Fintype.card_subtype]
  unfold boundedPeriodicWordCount
  simp only [Finset.card_eq_sum_ones, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro letters _
  have hc := hcriterion hExact letters
  by_cases hp : ∀ word : List Alphabet,
      HasFiniteBlock (repeatBlock hn letters) word → language word
  · have hk := hc.mp hp
    simp [hp, hk]
  · have hk : ¬ ∃ k : ℕ, 0 < k ∧ k ≤ Fintype.card State ∧
          0 < Matrix.trace
            ((wordLiftMatrix G (List.ofFn letters)) ^ k) :=
      fun h => hp (hc.mpr h)
    simp [hp, hk]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix
