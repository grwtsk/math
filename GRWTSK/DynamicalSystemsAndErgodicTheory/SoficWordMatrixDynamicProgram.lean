/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicWordMatrix
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact dynamic-product representation of original word-lift matrices

The original wordLiftMatrix counts ACTUAL snoc-inductive
LabeledWalkData witnesses that emit exactly one given list of labels.
This module proves a last-letter cardinal recurrence and returns
the same matrix as the finite product of ORIGINAL per-label edge
indicator matrices, one matrix multiplication per emitted symbol.

No graph, original LabeledWalkData, wordLiftMatrix, adjacency, or
whole factor-language definition is replaced. In particular,
different intermediate graph states still count separately;
identical emitted words need not identify graph based cycles.

The fold representation avoids explicitly enumerating all full
walk witnesses as a mathematical computation strategy. It does
not assert a runtime speed benchmark, Boolean-semiring refinement,
or native Lean proof acceptance without independent evidence.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordMatrixDynamicProgram

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- One actual emitted letter and its source edge predicate.
Unlike the all-letter adjacency, this matrix fixes the letter. -/
noncomputable def letterStepMatrix
    (G : LabeledGraph State Alphabet) (a : Alphabet) :
    Matrix State State ℕ :=
  fun s t => if G.edge s a t then 1 else 0

/-- The original all-letter adjacency sums the letter-specific
matrices, including different label choices at the same endpoints. -/
theorem labeledAdjacency_eq_sum_letterSteps
    (G : LabeledGraph State Alphabet) :
    labeledAdjacency G = ∑ a : Alphabet, letterStepMatrix G a := by
  classical
  funext s t
  simp [labeledAdjacency, edgeMultiplicity,
    letterStepMatrix, Finset.sum_apply]

/-- Zero-length exact-word witnesses are precisely the ORIGINAL
zero-length LabeledWalkData; each emits the empty word. -/
private def zeroExactWordEquiv
    (G : LabeledGraph State Alphabet) (s t : State) :
    {p : LabeledWalkData G 0 s t // walkDataLabels G p = []} ≃
      LabeledWalkData G 0 s t where
  toFun := Subtype.val
  invFun := fun p => ⟨p, by cases p; rfl⟩
  left_inv := by
    rintro ⟨p, hp⟩
    rfl
  right_inv := by
    intro p
    rfl

/-- The exact empty-word matrix is the identity even when the
original finite state carrier is empty. -/
theorem wordLiftMatrix_nil
    (G : LabeledGraph State Alphabet) :
    wordLiftMatrix G [] = 1 := by
  classical
  funext s t
  calc
    wordLiftMatrix G [] s t =
        Fintype.card (LabeledWalkData G 0 s t) :=
      Fintype.card_congr (zeroExactWordEquiv G s t)
    _ = labeledWalkCount G 0 s t :=
      labeledWalkData_card_eq_walkCount G 0 s t
    _ = (1 : Matrix State State ℕ) s t := by
      simp [labeledWalkCount, Matrix.one_apply]

/-- One exact original snoc walk splits into its ACTUAL
penultimate state, prefix witness with the exact prefix labels,
and one proof of the final source edge. This is a genuine
equivalence of witness TYPES, not a Boolean path oracle. -/
private def exactSnocWordEquiv
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) (a : Alphabet) (s t : State) :
    (Σ mid : State,
      {p : LabeledWalkData G w.length s mid //
        walkDataLabels G p = w} × PLift (G.edge mid a t)) ≃
      {p : LabeledWalkData G (w.length + 1) s t //
        walkDataLabels G p = w ++ [a]} where
  toFun := by
    rintro ⟨mid, ⟨prefix, hprefix⟩, ⟨hedge⟩⟩
    refine ⟨LabeledWalkData.snoc prefix a hedge, ?_⟩
    simpa only [walkDataLabels, hprefix]
  invFun := by
    rintro ⟨p, hp⟩
    cases p with
    | snoc (middle := mid) prefix b hedge =>
      have hconcat : walkDataLabels G prefix ++ [b] = w ++ [a] := by
        simpa only [walkDataLabels] using hp
      have hlen : (walkDataLabels G prefix).length = w.length :=
        walkDataLabels_length G prefix
      obtain ⟨hwords, hlast⟩ := List.append_inj hconcat hlen
      have hab : b = a := by simpa using hlast
      subst b
      exact ⟨mid, ⟨⟨prefix, hwords⟩, ⟨hedge⟩⟩⟩
  left_inv := by
    rintro ⟨mid, ⟨prefix, hprefix⟩, ⟨hedge⟩⟩
    rfl
  right_inv := by
    rintro ⟨p, hp⟩
    cases p with
    | snoc prefix b hedge =>
      have hconcat : walkDataLabels G prefix ++ [b] = w ++ [a] := by
        simpa only [walkDataLabels] using hp
      have hlen : (walkDataLabels G prefix).length = w.length :=
        walkDataLabels_length G prefix
      obtain ⟨hwords, hlast⟩ := List.append_inj hconcat hlen
      have hab : b = a := by simpa using hlast
      subst b
      apply Subtype.ext
      rfl

/-- A proof-valued fixed final edge contributes one witness if
that original edge is present, and zero otherwise. -/
private theorem edgeProof_card
    (G : LabeledGraph State Alphabet)
    (s t : State) (a : Alphabet) :
    Fintype.card (PLift (G.edge s a t)) =
      (if G.edge s a t then 1 else 0) := by
  classical
  letI : Fintype (PLift (G.edge s a t)) := Fintype.ofFinite _
  by_cases h : G.edge s a t
  · haveI : Unique (PLift (G.edge s a t)) :=
      { default := ⟨h⟩
        uniq := by
          rintro ⟨hp⟩
          rfl }
    simp only [if_pos h]
    exact Fintype.card_unique
  · haveI : IsEmpty (PLift (G.edge s a t)) :=
      ⟨fun p => h p.down⟩
    simp only [if_neg h]
    exact Fintype.card_eq_zero

/-- EXACT last-letter dynamic recurrence for the original
proof-carrying wordLiftMatrix, with all intermediate states kept. -/
theorem wordLiftMatrix_snoc_apply
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) (a : Alphabet) (s t : State) :
    wordLiftMatrix G (w ++ [a]) s t =
      ∑ mid : State,
        wordLiftMatrix G w s mid *
          (if G.edge mid a t then 1 else 0) := by
  classical
  letI : ∀ mid : State, Fintype (PLift (G.edge mid a t)) :=
    fun _ => Fintype.ofFinite _
  change Fintype.card
      {p : LabeledWalkData G (w ++ [a]).length s t //
        walkDataLabels G p = w ++ [a]} = _
  have hlength : (w ++ [a]).length = w.length + 1 := by simp
  rw [hlength]
  calc
    Fintype.card
        {p : LabeledWalkData G (w.length + 1) s t //
          walkDataLabels G p = w ++ [a]} =
      Fintype.card
        (Σ mid : State,
          {p : LabeledWalkData G w.length s mid //
            walkDataLabels G p = w} × PLift (G.edge mid a t)) :=
      (Fintype.card_congr (exactSnocWordEquiv G w a s t)).symm
    _ = ∑ mid : State,
          Fintype.card
            ({p : LabeledWalkData G w.length s mid //
                walkDataLabels G p = w} × PLift (G.edge mid a t)) := by
      rw [Fintype.card_sigma]
    _ = ∑ mid : State,
          Fintype.card
            {p : LabeledWalkData G w.length s mid //
              walkDataLabels G p = w} *
            Fintype.card (PLift (G.edge mid a t)) := by
      apply Finset.sum_congr rfl
      intro mid _
      rw [Fintype.card_prod]
    _ = ∑ mid : State,
          wordLiftMatrix G w s mid *
            (if G.edge mid a t then 1 else 0) := by
      apply Finset.sum_congr rfl
      intro mid _
      rw [edgeProof_card G mid t a]
      rfl

/-- An exact source word followed by one original letter is one
matrix multiplication by the fixed-letter source edge matrix. -/
theorem wordLiftMatrix_snoc
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) (a : Alphabet) :
    wordLiftMatrix G (w ++ [a]) =
      wordLiftMatrix G w * letterStepMatrix G a := by
  classical
  funext s t
  rw [Matrix.mul_apply]
  exact wordLiftMatrix_snoc_apply G w a s t

/-- One multiplication per actual emitted letter, retaining every
path multiplicity through natural-number matrix arithmetic. -/
noncomputable def wordMatrixProduct
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) : Matrix State State ℕ :=
  w.foldl (fun acc a => acc * letterStepMatrix G a) 1

theorem wordMatrixProduct_snoc
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) (a : Alphabet) :
    wordMatrixProduct G (w ++ [a]) =
      wordMatrixProduct G w * letterStepMatrix G a := by
  simp [wordMatrixProduct, List.foldl_append]

/-- Main source-fidelity optimization: the proof-witness cardinal
word matrix is EXACTLY the finite product of the original
letter-indexed transition matrices, for every word and endpoints. -/
theorem wordLiftMatrix_eq_wordMatrixProduct
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) :
    wordLiftMatrix G w = wordMatrixProduct G w := by
  induction w using List.reverseRecOn with
  | nil =>
      simpa [wordMatrixProduct] using wordLiftMatrix_nil G
  | append_singleton prefix a ih =>
      calc
        wordLiftMatrix G (prefix ++ [a]) =
            wordLiftMatrix G prefix * letterStepMatrix G a :=
          wordLiftMatrix_snoc G prefix a
        _ = wordMatrixProduct G prefix * letterStepMatrix G a := by
          rw [ih]
        _ = wordMatrixProduct G (prefix ++ [a]) :=
          (wordMatrixProduct_snoc G prefix a).symm

/-- Source-bound improvement of the existing word-matrix trace:
one can compute its diagonal from the letter-by-letter product
without ever quotienting actual original path choices. -/
theorem word_matrix_trace_eq_dynamic_product
    (G : LabeledGraph State Alphabet) (w : List Alphabet) :
    Matrix.trace (wordLiftMatrix G w) =
      Matrix.trace (wordMatrixProduct G w) := by
  rw [wordLiftMatrix_eq_wordMatrixProduct G w]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordMatrixDynamicProgram
