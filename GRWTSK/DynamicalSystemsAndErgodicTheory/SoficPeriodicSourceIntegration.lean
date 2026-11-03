/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicMultipleLift
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficExactPeriodicTraceLedger
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficMatrixCertifiedTransversal
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual based-cycle, periodic-word, and certified-matrix source integration

The previous sources separately establish:
* exact whole-word graph language and actual inductive labeled walks;
* a sharp bounded original based-cycle lift for every periodic label block;
* a bounded exact-word-matrix criterion counting DISTINCT periodic blocks;
* an unconditional signed missing-lift/surplus-lift ledger for the canonical
  based-cycle label map, and a graph-to-matrix certified trace relation.

This module composes these SAME sources without changing the graph, its word
language, the actual based cycles, source letter order, or graph edge weights.
The first theorem proves the new converse to bounded original-cycle lifting:
a closed original word^m cycle also certifies every finite factor of the
infinite period-n label point. It is not necessary to assume a one-period
lift, an injective label map, or a chosen abstract cycle equivalence.

The resulting equality between a distinct-word count and corrected adjacency
trace keeps BOTH defects. No analytic zeta, determinant, RH, source-energy,
or infinite-graph convergence statement is inferred.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicSourceIntegration

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosedPath
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBoundedWordMatrixCriterion
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMultipleLift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficExactPeriodicTraceLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMatrixCertifiedTransversal

universe u v
variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- The existing basedCycleWord gives the original entire emitted label
list. This is an exact reindexing of the original inductive path. -/
private theorem originalCycleWord_list
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

/-- Repeating the genuine finite word is exactly the finite Fin-tuple
repeat, preserving all labels and their indices. -/
private theorem finiteCopies_eq_flatten_replicate
    (word : List Alphabet) (m : ℕ) :
    finiteCopies word m = (List.replicate m word).flatten := by
  induction m with
  | zero => rfl
  | succ m ih =>
      calc
        finiteCopies word (m + 1) = finiteCopies word m ++ word := rfl
        _ = (List.replicate m word).flatten ++ word := by rw [ih]
        _ = (List.replicate (m + 1) word).flatten := by
          rw [List.replicate_succ', List.flatten_concat]

private theorem finiteCopies_ofFn_repeat
    {n : ℕ} (letters : Fin n → Alphabet) (m : ℕ) :
    finiteCopies (List.ofFn letters) m =
      List.ofFn (Fin.repeat m letters) := by
  calc
    finiteCopies (List.ofFn letters) m =
        (List.replicate m (List.ofFn letters)).flatten :=
      finiteCopies_eq_flatten_replicate _ _
    _ = List.ofFn (Fin.repeat m letters) :=
      (List.ofFn_fin_repeat letters m).symm

/-- EXACT iff between the whole periodic factor-language condition
and existence of an ORIGINAL, finite, based closed labeled walk at
a bounded positive multiple of n, including the original Fin word.
The reverse direction is not a count comparison: it constructs the
closed original WordPath and invokes the existing word-matrix criterion. -/
theorem periodic_block_iff_bounded_original_cycle
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (letters : Fin n → Alphabet) :
    (∀ w : List Alphabet,
        HasFiniteBlock (repeatBlock hn letters) w → language w) ↔
      ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
        ∃ c : BasedCycleData G (m * n),
          basedCycleWord G (m * n) c = Fin.repeat m letters := by
  constructor
  · intro hblocks
    exact periodic_label_point_has_exact_repeated_cycleWord
      G language hExact n hn ⟨letters, hblocks⟩
  · rintro ⟨m, hm, hbound, c, hword⟩
    have hlabels :
        walkDataLabels G c.2 = finiteCopies (List.ofFn letters) m := by
      calc
        walkDataLabels G c.2 =
            List.ofFn (basedCycleWord G (m * n) c) :=
          (originalCycleWord_list G (m * n) c).symm
        _ = List.ofFn (Fin.repeat m letters) := by rw [hword]
        _ = finiteCopies (List.ofFn letters) m :=
          (finiteCopies_ofFn_repeat letters m).symm
    have hclosed :
        WordPath G c.1 (finiteCopies (List.ofFn letters) m) c.1 := by
      have horiginal := wordPath_of_labeledWalkData G c.2
      rw [hlabels] at horiginal
      exact horiginal
    have htrace : 0 <
        Matrix.trace ((wordLiftMatrix G (List.ofFn letters)) ^ m) :=
      (wordPowerClosedPathBridge_proof G (List.ofFn letters) m).2
        ⟨c.1, hclosed⟩
    exact ((boundedPeriodicWordMatrixCriterion_proof G language n hn)
      hExact letters).2 ⟨m, hm, hbound, htrace⟩

/-- Count DISTINCT period-dividing-n label blocks by the existence
of at least one ORIGINAL based closed lift of bounded multiple length.
Do not count graph-cycle multiplicities as distinct shift points. -/
noncomputable def boundedOriginalCycleWordCount
    (G : LabeledGraph State Alphabet) (n : ℕ) : ℕ := by
  classical
  exact ∑ letters : Fin n → Alphabet,
    if ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ c : BasedCycleData G (m * n),
        basedCycleWord G (m * n) c = Fin.repeat m letters
    then 1 else 0

/-- Genuine periodic label point counting is now a finite source-bound
existence count over ACTUAL based cycles, not a surrogate graph language. -/
theorem periodic_label_card_eq_bounded_original_cycle_count
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      boundedOriginalCycleWordCount G n := by
  classical
  change Fintype.card {letters : Fin n → Alphabet //
    ∀ w : List Alphabet,
      HasFiniteBlock (repeatBlock hn letters) w → language w} = _
  rw [Fintype.card_subtype]
  unfold boundedOriginalCycleWordCount
  rw [Finset.card_eq_sum_ones, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro letters _
  by_cases hblocks : ∀ w : List Alphabet,
      HasFiniteBlock (repeatBlock hn letters) w → language w
  · have hlift :=
      (periodic_block_iff_bounded_original_cycle
        G language hExact n hn letters).1 hblocks
    simp [hblocks, hlift]
  · have hnolift :
        ¬ ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
          ∃ c : BasedCycleData G (m * n),
            basedCycleWord G (m * n) c = Fin.repeat m letters :=
      fun hlift => hblocks
        ((periodic_block_iff_bounded_original_cycle
          G language hExact n hn letters).2 hlift)
    simp [hblocks, hnolift]

/-- Two independent finite descriptions count the same DISTINCT
periodic label blocks: original bounded closed-word witnesses and
positive traces of exact source word-transition matrices. -/
theorem original_cycle_count_eq_bounded_word_matrix_count
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    boundedOriginalCycleWordCount G n =
      boundedPeriodicWordCount G n := by
  calc
    boundedOriginalCycleWordCount G n =
        Fintype.card (PeriodicLabelPoint language n hn) :=
      (periodic_label_card_eq_bounded_original_cycle_count
        G language hExact n hn).symm
    _ = boundedPeriodicWordCount G n :=
      periodicLabelPoint_card_eq_boundedWordCount_proof
        G language n hn hExact

/-- The ORIGINAL all-label matrix trace is related to the count
of DISTINCT bounded ORIGINAL cycle words only after retaining both
actual same-period label-lift defects. -/
theorem adjacency_trace_with_defects_eq_original_cycle_word_count
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      boundedOriginalCycleWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  calc
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      Fintype.card (PeriodicLabelPoint language n hn) +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      exact_trace_add_unlifted_eq_label_card_add_surplus
        G language hExact n hn
    _ = boundedOriginalCycleWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
      rw [periodic_label_card_eq_bounded_original_cycle_count
        G language hExact n hn]

/-- A direct connection of the natural-number original adjacency
matrix, exact word-resolved matrix powers, and the canonical signed
periodic label lift-fiber ledger. -/
theorem adjacency_trace_with_defects_eq_word_matrix_count
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      boundedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  calc
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      boundedOriginalCycleWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      adjacency_trace_with_defects_eq_original_cycle_word_count
        G language hExact n hn
    _ = boundedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
      rw [original_cycle_count_eq_bounded_word_matrix_count
        G language hExact n hn]

/-- Equality of uncorrected graph trace and DISTINCT periodic-word
count means precisely balanced source defects, NOT a bijection. -/
theorem adjacency_trace_eq_word_matrix_count_iff_balanced
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) =
      boundedPeriodicWordCount G n ↔
    unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  have hcard :=
    periodicLabelPoint_card_eq_boundedWordCount_proof
      G language n hn hExact
  constructor
  · intro h
    apply (exact_trace_eq_periodic_card_iff_balanced_defects
      G language hExact n hn).1
    exact h.trans hcard.symm
  · intro h
    exact ((exact_trace_eq_periodic_card_iff_balanced_defects
      G language hExact n hn).2 h).trans hcard

/-- Any source-certified graph-to-matrix target also satisfies the
same corrected word-count identity. The required relation is the
repository's actual GraphMatrixRelation, not arbitrary matrix similarity
or an unsupported reconstruction of labeled shift points. -/
theorem certified_graph_matrix_periodic_ledger
    (G : LabeledGraph State Alphabet)
    (M : Matrix State State ℕ)
    (hRelation : GraphMatrixRelation G M)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (M ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      boundedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  have htrace : Matrix.trace (M ^ n) =
      Matrix.trace (labeledAdjacency G ^ n) :=
    (hRelation n).trans (trace_pow_eq_basedClosedWalkCount G n).symm
  calc
    Matrix.trace (M ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) := by
      rw [htrace]
    _ = boundedPeriodicWordCount G n +
          surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      adjacency_trace_with_defects_eq_word_matrix_count
        G language hExact n hn

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicSourceIntegration
