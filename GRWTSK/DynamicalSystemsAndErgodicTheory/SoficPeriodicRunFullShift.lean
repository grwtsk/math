/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCycleLabelBijection
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Periodic-run factors and a nonvacuous exact graph/shift/matrix example

This module advances the original inductive based-cycle programme in two
source-preserving directions. Every finite block of an actual infinite labeled
graph run has an original WordPath witness. Consequently, any genuine periodic
cycle run gives the previously named CycleWordsAdmissible property for an
exact-language presentation. A coherent infinite run obtained by repeating an
arbitrary LabeledWalkData cycle remains an explicit separate proof obligation;
no exact-language assumption is used to silently manufacture that state run.

The original one-state full-shift graph is an independently constructive,
nonvacuous family: for every finite alphabet and every positive n, the cycle
word map is faithful, the cardinal of actual n-cycles is |Alphabet|^n, every
period-n label block has a cycle lift, and thus the original matrix trace
counts the genuine periodic label points. This family is not proposed as a
universal theorem for arbitrary finite labeled presentations.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleLabelBijection

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-! ## A finite block of an actual infinite graph run is a graph path -/

/-- The path is built step by step from the SOURCE edge witnesses of a
particular state run. The output word is the supplied complete finite block,
not an arbitrary accepted word or an unlabeled adjacency path. -/
theorem wordPath_of_run_block
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet) (states : ℕ → State)
    (hstep : ∀ k, G.edge (states k) (trace k) (states (k + 1)))
    (offset : ℕ) (word : List Alphabet) :
    (∀ i : Fin word.length,
      trace (offset + i.val) = word.get i) →
    WordPath G (states offset) word (states (offset + word.length)) := by
  induction word generalizing offset with
  | nil =>
      intro _
      simpa using (WordPath.nil (states offset))
  | cons a tail ih =>
      intro hblock
      have hfirst : trace offset = a := by
        simpa using (hblock (⟨0, by simp⟩ : Fin (a :: tail).length))
      have htail : ∀ i : Fin tail.length,
          trace ((offset + 1) + i.val) = tail.get i := by
        intro i
        have hj := hblock
          (⟨i.val + 1, by simpa using Nat.succ_lt_succ i.isLt⟩ :
            Fin (a :: tail).length)
        simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hj
      have hedge : G.edge (states offset) a (states (offset + 1)) := by
        rw [← hfirst]
        exact hstep offset
      have hpath := ih (offset + 1) htail
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
        (WordPath.cons a tail hedge hpath)

/-- Every finite observed block of a genuine SOURCE graph run belongs
in the original graph's complete finite-word language. -/
theorem graphLanguage_of_run_block
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet)
    (hrun : RunsOnGraph G trace)
    (word : List Alphabet)
    (hblock : HasFiniteBlock trace word) :
    GraphLanguage G word := by
  rcases hrun with ⟨states, hstep⟩
  rcases hblock with ⟨offset, hletters⟩
  exact ⟨states offset, states (offset + word.length),
    wordPath_of_run_block G trace states hstep offset word hletters⟩

/-- Explicit SOURCE-bound condition: the repeated labels of each
ACTUAL based graph cycle admit an infinite graph-state realization.
This is stronger than one arbitrary finite WordPath and is not
asserted here for an arbitrary graph without its construction. -/
def CycleRepetitionsRun
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n) : Prop :=
  ∀ c : BasedCycleData G n,
    RunsOnGraph G (repeatBlock hn (basedCycleWord G n c))

/-- The precise generic bridge from real periodic graph runs to
admissibility under an exact finite-word-language presentation. -/
theorem cycleWordsAdmissible_of_exact_run
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (hRuns : CycleRepetitionsRun G n hn) :
    CycleWordsAdmissible G language n hn := by
  intro c w hw
  exact (hExact w).2
    (graphLanguage_of_run_block G
      (repeatBlock hn (basedCycleWord G n c)) (hRuns c) w hw)

/-- An actual periodic-run witness, plus faithful cycle labels and
period-compatible lift coverage, suffices for the requested original
matrix-to-shift periodic-point identity. The three inputs remain visible. -/
theorem periodic_point_trace_of_exact_cycle_runs
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (hRuns : CycleRepetitionsRun G n hn)
    (hFaithful : FaithfulCycleWords G n)
    (hComplete : CompleteCycleLifts G language n hn) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      Matrix.trace (labeledAdjacency G ^ n) :=
  graph_to_matrix_periodic_point_card G language n hn
    (cycleWordsAdmissible_of_exact_run G language hExact n hn hRuns)
    hFaithful hComplete

/-! ## Full shift on one actual state: all positive periods -/

/-- Every admitted point of the original full-shift graph language is
exactly an arbitrary finite length-n block. This is an equivalence of
actual types, not a count inferred from an unlabeled adjacency matrix. -/
private def fullShiftPointEquiv (n : ℕ) (hn : 0 < n) :
    PeriodicLabelPoint (GraphLanguage (fullShiftGraph Alphabet)) n hn ≃
      (Fin n → Alphabet) where
  toFun := Subtype.val
  invFun := fun letters =>
    ⟨letters, by
      intro w _
      exact fullShiftGraph_language_all w⟩
  left_inv := by
    intro p
    apply Subtype.ext
    rfl
  right_inv := by
    intro letters
    rfl

private theorem fullShiftPoint_card (n : ℕ) (hn : 0 < n) :
    Fintype.card
        (PeriodicLabelPoint (GraphLanguage (fullShiftGraph Alphabet)) n hn) =
      Fintype.card Alphabet ^ n := by
  classical
  calc
    Fintype.card
        (PeriodicLabelPoint (GraphLanguage (fullShiftGraph Alphabet)) n hn) =
        Fintype.card (Fin n → Alphabet) :=
      Fintype.card_congr (fullShiftPointEquiv (Alphabet := Alphabet) n hn)
    _ = Fintype.card Alphabet ^ n := by simp

private theorem fullShift_edgeMultiplicity :
    edgeMultiplicity (fullShiftGraph Alphabet) () () =
      Fintype.card Alphabet := by
  classical
  simp [edgeMultiplicity, fullShiftGraph]

/-- Independent arithmetic recurrence on the original graph: at each
last step there are exactly |Alphabet| choices and only one state. -/
private theorem fullShift_walkCount (n : ℕ) :
    labeledWalkCount (fullShiftGraph Alphabet) n () () =
      Fintype.card Alphabet ^ n := by
  classical
  induction n with
  | zero =>
      simp [labeledWalkCount]
  | succ n ih =>
      change (∑ m : Unit,
        labeledWalkCount (fullShiftGraph Alphabet) n () m *
          edgeMultiplicity (fullShiftGraph Alphabet) m ()) =
        Fintype.card Alphabet ^ (n + 1)
      simpa [fullShift_edgeMultiplicity, ih, pow_succ]

private theorem fullShift_trace_pow (n : ℕ) :
    Matrix.trace (labeledAdjacency (fullShiftGraph Alphabet) ^ n) =
      Fintype.card Alphabet ^ n := by
  rw [trace_pow_eq_basedClosedWalkCount]
  change (∑ s : Unit,
    labeledWalkCount (fullShiftGraph Alphabet) n s s) =
      Fintype.card Alphabet ^ n
  simpa using (fullShift_walkCount (Alphabet := Alphabet) n)

/-- Nontrivial all-period numeric result for every finite alphabet:
the real full-shift period points equal the trace of the original
one-state labeled adjacency matrix. -/
theorem fullShift_periodic_point_card_eq_trace
    (n : ℕ) (hn : 0 < n) :
    Fintype.card
        (PeriodicLabelPoint (GraphLanguage (fullShiftGraph Alphabet)) n hn) =
      Matrix.trace (labeledAdjacency (fullShiftGraph Alphabet) ^ n) := by
  calc
    Fintype.card
        (PeriodicLabelPoint (GraphLanguage (fullShiftGraph Alphabet)) n hn) =
        Fintype.card Alphabet ^ n :=
      fullShiftPoint_card (Alphabet := Alphabet) n hn
    _ = Matrix.trace (labeledAdjacency (fullShiftGraph Alphabet) ^ n) :=
      (fullShift_trace_pow (Alphabet := Alphabet) n).symm

/-! ## Faithful original cycle words, and the resulting actual equivalence -/

/-- In the one-state graph there is no hidden intermediate-state
choice: equality of original emitted label lists forces equality of
the entire inductive LabeledWalkData proofs/edges. -/
private theorem fullShift_walkLabels_injective (n : ℕ) :
    Function.Injective
      (fun p : LabeledWalkData (fullShiftGraph Alphabet) n () () =>
        walkDataLabels (fullShiftGraph Alphabet) p) := by
  induction n with
  | zero =>
      intro p q _
      cases p
      cases q
      rfl
  | succ n ih =>
      intro p q h
      cases p with
      | snoc prefix letter edge =>
        cases q with
        | snoc prefix' letter' edge' =>
          change walkDataLabels (fullShiftGraph Alphabet) prefix ++ [letter] =
            walkDataLabels (fullShiftGraph Alphabet) prefix' ++ [letter'] at h
          have hlen :
              (walkDataLabels (fullShiftGraph Alphabet) prefix).length =
              (walkDataLabels (fullShiftGraph Alphabet) prefix').length := by
            simp [walkDataLabels_length]
          obtain ⟨hpwords, hletters⟩ := List.append_inj h hlen
          have hp : prefix = prefix' := ih prefix prefix' hpwords
          have ha : letter = letter' := by simpa using hletters
          cases hp
          cases ha
          rfl

/-- Functions of Fin n determine the full original label list:
the comparison uses the unmodified basedCycleWord definition. -/
private theorem fullShift_cycleWords_eq_implies_labels_eq
    (n : ℕ)
    (c d : BasedCycleData (fullShiftGraph Alphabet) n)
    (h : basedCycleWord (fullShiftGraph Alphabet) n c =
      basedCycleWord (fullShiftGraph Alphabet) n d) :
    walkDataLabels (fullShiftGraph Alphabet) c.2 =
      walkDataLabels (fullShiftGraph Alphabet) d.2 := by
  apply List.ext_get
  · simp [walkDataLabels_length]
  · intro i hi hj
    have hin : i < n := by
      simpa [walkDataLabels_length] using hi
    have hw := congrFun h (⟨i, hin⟩ : Fin n)
    simpa [basedCycleWord] using hw

/-- The original based-cycle word map is injective for a one-state
full shift at EVERY length, without requiring an arbitrary bijection. -/
theorem fullShift_faithfulCycleWords (n : ℕ) :
    FaithfulCycleWords (fullShiftGraph Alphabet) n := by
  intro c d h
  obtain ⟨⟨⟩, p⟩ := c
  obtain ⟨⟨⟩, q⟩ := d
  have hlabels :
      walkDataLabels (fullShiftGraph Alphabet) p =
        walkDataLabels (fullShiftGraph Alphabet) q :=
    fullShift_cycleWords_eq_implies_labels_eq (Alphabet := Alphabet) n
      ⟨(), p⟩ ⟨(), q⟩ h
  have hp := fullShift_walkLabels_injective (Alphabet := Alphabet) n hlabels
  cases hp
  rfl

/-- No admissibility hypothesis is needed for the original full-shift
graph: it accepts ALL finite words, including the complete infinite
periodic repetition of each source cycle. -/
theorem fullShift_cycleWordsAdmissible
    (n : ℕ) (hn : 0 < n) :
    CycleWordsAdmissible (fullShiftGraph Alphabet)
      (GraphLanguage (fullShiftGraph Alphabet)) n hn := by
  intro c w hw
  exact fullShiftGraph_language_all w

/-- The canonical map has equal finite source/target cardinalities.
Together with the separately proved injection on actual cycles,
finite pigeonhole gives a bijection and hence period-compatible
cycle lift coverage. The cardinal equality is independently
calculated by the original last-edge matrix recurrence. -/
theorem fullShift_hasCycleLabelEquivalence
    (n : ℕ) (hn : 0 < n) :
    HasCycleLabelEquivalence (fullShiftGraph Alphabet)
      (GraphLanguage (fullShiftGraph Alphabet)) n hn := by
  classical
  let G := fullShiftGraph Alphabet
  let language := GraphLanguage G
  have hAdmissible : CycleWordsAdmissible G language n hn :=
    fullShift_cycleWordsAdmissible (Alphabet := Alphabet) n hn
  have hFaithful : FaithfulCycleWords G n :=
    fullShift_faithfulCycleWords (Alphabet := Alphabet) n
  have hinjective : Function.Injective
      (cycleLabelPointMap G language n hn hAdmissible) := by
    intro c d h
    apply hFaithful
    exact congrArg
      (fun p : PeriodicLabelPoint language n hn => p.val) h
  have hcard :
      Fintype.card (BasedCycleData G n) =
        Fintype.card (PeriodicLabelPoint language n hn) := by
    calc
      Fintype.card (BasedCycleData G n) =
          Matrix.trace (labeledAdjacency G ^ n) :=
        (trace_pow_eq_card_based_cycles G n).symm
      _ = Fintype.card (PeriodicLabelPoint language n hn) :=
        (fullShift_periodic_point_card_eq_trace
          (Alphabet := Alphabet) n hn).symm
  have hbijective : Function.Bijective
      (cycleLabelPointMap G language n hn hAdmissible) :=
    (Fintype.bijective_iff_injective_and_card _).2
      ⟨hinjective, hcard⟩
  have hComplete : CompleteCycleLifts G language n hn :=
    ((cycleLabelPointMap_bijective_iff G language n hn hAdmissible).1
      hbijective).2
  exact (hasCycleLabelEquivalence_iff G language n hn).2
    ⟨hAdmissible, hFaithful, hComplete⟩

/-- An actual label-preserving graph-cycle equivalence is now
constructed for every finite alphabet and positive period. The
matrix equality is recovered a SECOND way through this equivalence,
not just by the independent finite cardinality recurrences. -/
theorem fullShift_trace_of_exact_cycle_lifts
    (n : ℕ) (hn : 0 < n) :
    Fintype.card
        (PeriodicLabelPoint (GraphLanguage (fullShiftGraph Alphabet)) n hn) =
      Matrix.trace (labeledAdjacency (fullShiftGraph Alphabet) ^ n) := by
  obtain ⟨e, hLabels⟩ :=
    fullShift_hasCycleLabelEquivalence (Alphabet := Alphabet) n hn
  calc
    Fintype.card
        (PeriodicLabelPoint (GraphLanguage (fullShiftGraph Alphabet)) n hn) =
        Fintype.card (BasedCycleData (fullShiftGraph Alphabet) n) :=
      (Fintype.card_congr e).symm
    _ = Matrix.trace (labeledAdjacency (fullShiftGraph Alphabet) ^ n) :=
      (trace_pow_eq_card_based_cycles (fullShiftGraph Alphabet) n).symm

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift
