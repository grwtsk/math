/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficWordMatrixDynamicProgram
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicSourceIntegration
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Bounded periodic-word recognition by one shared matrix-power scan

For an original finite labeled graph, the preceding exact dynamic
product computes its original wordLiftMatrix from individual letters,
preserving ALL source path multiplicities. To recognize a genuinely
admissible periodic label word, the sharp state bound requires a
positive trace at SOME power k in [1, card State].

Instead of recomputing each power independently, a shared scan
maintains (B^k, sum_{j=1}^k trace(B^j)).
The single resulting Nat positivity test is equivalent to the
original existential criterion, including the empty-state case.

The original exact-language criterion, actual graph cycle data, word
matrix, canonical cycle map and two signed missing/surplus terms are
unchanged. This is a mathematical algebraic optimization; no native
execution-time or memory benchmark, deterministic source extraction,
or kernel acceptance is claimed.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosureScan

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordMatrixDynamicProgram
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBoundedWordMatrixCriterion
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficExactPeriodicTraceLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicSourceIntegration
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMatrixCertifiedTransversal

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- A pair: exact current B^k and scalar sum of traces of
positive powers up to k, updated with ONE additional B multiply.
In particular no closed-path witnesses are enumerated by this
recurrence. -/
noncomputable def matrixPowerTraceScan
    (B : Matrix State State ℕ) :
    ℕ → (Matrix State State ℕ × ℕ)
  | 0 => (1, 0)
  | k + 1 =>
      let prior := matrixPowerTraceScan B k
      let next := prior.1 * B
      (next, prior.2 + Matrix.trace next)

/-- First accumulator projection is EXACTLY the original matrix
power, including exponent zero. -/
theorem matrixPowerTraceScan_power
    (B : Matrix State State ℕ) (k : ℕ) :
    (matrixPowerTraceScan B k).1 = B ^ k := by
  induction k with
  | zero =>
      simp [matrixPowerTraceScan]
  | succ k ih =>
      change (matrixPowerTraceScan B k).1 * B = B ^ (k + 1)
      rw [ih, pow_succ]

/-- Second projection is exactly the nonnegative trace sum.
This is the source's cardinal-valued sum, not a Boolean quotient. -/
theorem matrixPowerTraceScan_trace_sum
    (B : Matrix State State ℕ) (k : ℕ) :
    (matrixPowerTraceScan B k).2 =
      ∑ j ∈ Finset.range k, Matrix.trace (B ^ (j + 1)) := by
  induction k with
  | zero =>
      simp [matrixPowerTraceScan]
  | succ k ih =>
      change (matrixPowerTraceScan B k).2 +
        Matrix.trace ((matrixPowerTraceScan B k).1 * B) =
        ∑ j ∈ Finset.range (k + 1), Matrix.trace (B ^ (j + 1))
      rw [ih, matrixPowerTraceScan_power B k, ← pow_succ]
      simp only [Finset.sum_range_succ]

/-- Optimized algebraic observer: build the exact original word
matrix using the SOURCE letter-transition product, then scan its
first card(State) positive powers while sharing each matrix power. -/
noncomputable def boundedWordCycleTrace
    (G : LabeledGraph State Alphabet) (w : List Alphabet) : ℕ :=
  (matrixPowerTraceScan (wordMatrixProduct G w)
    (Fintype.card State)).2

/-- Exact comparison to the EXISTING original wordLiftMatrix, without
replacing the original object or losing numeric multiplicity. -/
theorem boundedWordCycleTrace_eq_original_power_sum
    (G : LabeledGraph State Alphabet) (w : List Alphabet) :
    boundedWordCycleTrace G w =
      ∑ j ∈ Finset.range (Fintype.card State),
        Matrix.trace ((wordLiftMatrix G w) ^ (j + 1)) := by
  unfold boundedWordCycleTrace
  rw [matrixPowerTraceScan_trace_sum]
  rw [wordLiftMatrix_eq_wordMatrixProduct G w]

/-- One positive scalar detects an actual cyclic word-matrix path
at SOME bounded exponent. There is no positivity cancellation over
the original natural-number path-count semiring. -/
theorem boundedWordCycleTrace_pos_iff
    (G : LabeledGraph State Alphabet) (w : List Alphabet) :
    0 < boundedWordCycleTrace G w ↔
      ∃ k : ℕ, 0 < k ∧ k ≤ Fintype.card State ∧
        0 < Matrix.trace ((wordLiftMatrix G w) ^ k) := by
  classical
  rw [boundedWordCycleTrace_eq_original_power_sum]
  have hs :
      0 < (∑ j ∈ Finset.range (Fintype.card State),
        Matrix.trace ((wordLiftMatrix G w) ^ (j + 1))) ↔
      ∃ j ∈ Finset.range (Fintype.card State),
        0 < Matrix.trace ((wordLiftMatrix G w) ^ (j + 1)) :=
    Finset.sum_pos_iff_of_nonneg (fun j hj => Nat.zero_le _)
  constructor
  · intro h
    obtain ⟨j, hj, hpos⟩ := hs.mp h
    refine ⟨j + 1, by omega, ?_, hpos⟩
    have hjlt := Finset.mem_range.mp hj
    omega
  · rintro ⟨k, hk, hbound, hpos⟩
    apply hs.mpr
    refine ⟨k - 1, Finset.mem_range.mpr (by omega), ?_⟩
    have hindex : k - 1 + 1 = k := by omega
    simpa only [hindex] using hpos

/-- Sharp periodic factor-language condition, with explicit
exactness and the SINGLE optimized word-cycle trace observer. -/
theorem periodic_word_iff_bounded_cycle_trace_pos
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (letters : Fin n → Alphabet) :
    (∀ w : List Alphabet,
      HasFiniteBlock (repeatBlock hn letters) w → language w) ↔
    0 < boundedWordCycleTrace G (List.ofFn letters) := by
  exact ((boundedPeriodicWordMatrixCriterion_proof
    G language n hn) hExact letters).trans
    (boundedWordCycleTrace_pos_iff G (List.ofFn letters)).symm

/-- Number of DISTINCT admissible period-n label blocks, counted by
one source-based nonnegative integer test per possible Fin n word. -/
noncomputable def optimizedPeriodicWordCount
    (G : LabeledGraph State Alphabet) (n : ℕ) : ℕ := by
  classical
  exact ∑ letters : Fin n → Alphabet,
    if 0 < boundedWordCycleTrace G (List.ofFn letters)
      then 1 else 0

/-- The optimized count is definitionally a DIFFERENT computation,
but has exactly the SAME integer result as the existing bounded
matrix-power existential observer, for every n including zero. -/
theorem optimizedPeriodicWordCount_eq_boundedPeriodicWordCount
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    optimizedPeriodicWordCount G n =
      boundedPeriodicWordCount G n := by
  classical
  unfold optimizedPeriodicWordCount boundedPeriodicWordCount
  apply Finset.sum_congr rfl
  intro letters _
  have hiff :=
    boundedWordCycleTrace_pos_iff G (List.ofFn letters)
  by_cases hp : 0 < boundedWordCycleTrace G (List.ofFn letters)
  · have hexists := hiff.mp hp
    simp [hp, hexists]
  · have hnot : ¬ ∃ k : ℕ,
      0 < k ∧ k ≤ Fintype.card State ∧
      0 < Matrix.trace ((wordLiftMatrix G (List.ofFn letters)) ^ k) :=
      fun h => hp (hiff.mpr h)
    simp [hp, hnot]

/-- All genuine period-dividing-n label points are counted by the
single scalar observer, under exact WHOLE finite-word language
equality. This is not the generally false uncorrected graph trace. -/
theorem periodicLabelPoint_card_eq_optimizedCount
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      optimizedPeriodicWordCount G n := by
  calc
    Fintype.card (PeriodicLabelPoint language n hn) =
        boundedPeriodicWordCount G n :=
      periodicLabelPoint_card_eq_boundedWordCount_proof
        G language n hn hExact
    _ = optimizedPeriodicWordCount G n :=
      (optimizedPeriodicWordCount_eq_boundedPeriodicWordCount G n).symm

/-- The ORIGINAL adjacency trace is the optimized DISTINCT periodic
label count only after retaining the missing and surplus lift defects. -/
theorem adjacency_trace_with_defects_eq_optimizedCount
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      optimizedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  calc
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      boundedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      adjacency_trace_with_defects_eq_word_matrix_count
        G language hExact n hn
    _ = optimizedPeriodicWordCount G n +
          surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
      rw [(optimizedPeriodicWordCount_eq_boundedPeriodicWordCount G n).symm]

/-- The SAME defect-corrected optimized count transports to every
matrix certified by the unchanged original GraphMatrixRelation. -/
theorem certified_matrix_trace_with_defects_eq_optimizedCount
    (G : LabeledGraph State Alphabet)
    (M : Matrix State State ℕ)
    (hRelation : GraphMatrixRelation G M)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (M ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      optimizedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  calc
    Matrix.trace (M ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      boundedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      certified_graph_matrix_periodic_ledger
        G M hRelation language hExact n hn
    _ = optimizedPeriodicWordCount G n +
          surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
      rw [(optimizedPeriodicWordCount_eq_boundedPeriodicWordCount G n).symm]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosureScan
