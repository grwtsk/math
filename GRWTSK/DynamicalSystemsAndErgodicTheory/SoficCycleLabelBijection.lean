/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicFiberLedger
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# When actual based graph cycles equal periodic points of a labeled shift

The finite graph cycles are the original inductive LabeledWalkData.
The label points are the original PeriodicLabelPoint: every finite
factor of the repeated length-n block must be in the requested language.

The three precise conditions for a label-preserving cycle equivalence are:
* every based graph cycle's repeated block lies in the factor shift;
* different based cycles have different emitted length-n blocks;
* every admissible periodic label block has a based n-cycle lift.

This is a necessary-and-sufficient criterion, not an assertion that
arbitrary exact finite-word presentations enjoy unique periodic lifts.
The existing double-loop and alternating-state fixtures rule out that
assertion. The graph-to-matrix theorem below uses all three conditions
and the already proved cardinality of ACTUAL inductive cycle data.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleLabelBijection

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Every finite block of the ACTUAL cyclic repetition of a graph cycle's
emitted labels lies in the chosen shift language. This is the exact
well-definedness condition for the canonical graph-cycle label map. -/
def CycleWordsAdmissible
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) : Prop :=
  ∀ c : BasedCycleData G n,
    ∀ w : List Alphabet,
      HasFiniteBlock (repeatBlock hn (basedCycleWord G n c)) w → language w

/-- No two distinct ACTUAL based n-cycles have the same emitted block. -/
def FaithfulCycleWords
    (G : LabeledGraph State Alphabet) (n : ℕ) : Prop :=
  Function.Injective (basedCycleWord G n)

/-- Every period-dividing-n label point has an ACTUAL based n-cycle
with exactly the same n-block, not merely a finite path of that word. -/
def CompleteCycleLifts
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) : Prop :=
  ∀ p : PeriodicLabelPoint language n hn,
    ∃ c : BasedCycleData G n, basedCycleWord G n c = p.val

/-- Build the canonical map out of the original based-cycle word.
The only required witness is that its repeated labels are admitted by
the full factor language; no cycle or symbol is invented. -/
noncomputable def cycleLabelPointMap
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (hAdmissible : CycleWordsAdmissible G language n hn) :
    BasedCycleData G n → PeriodicLabelPoint language n hn :=
  fun c => ⟨basedCycleWord G n c, hAdmissible c⟩

@[simp] theorem cycleLabelPointMap_val
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (hAdmissible : CycleWordsAdmissible G language n hn)
    (c : BasedCycleData G n) :
    (cycleLabelPointMap G language n hn hAdmissible c).val =
      basedCycleWord G n c := rfl

/-- Under the actual language-membership condition, the canonical
cycle-to-label map is bijective IFF its actual words are faithful and
all admissible periodic label blocks have a based cycle lift. -/
theorem cycleLabelPointMap_bijective_iff
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (hAdmissible : CycleWordsAdmissible G language n hn) :
    Function.Bijective
        (cycleLabelPointMap G language n hn hAdmissible) ↔
      FaithfulCycleWords G n ∧ CompleteCycleLifts G language n hn := by
  constructor
  · rintro ⟨hinj, hsurj⟩
    constructor
    · intro c d hword
      apply hinj
      apply Subtype.ext
      exact hword
    · intro p
      obtain ⟨c, hc⟩ := hsurj p
      refine ⟨c, ?_⟩
      exact congrArg (fun q : PeriodicLabelPoint language n hn => q.val) hc
  · rintro ⟨hfaithful, hcomplete⟩
    constructor
    · intro c d hcd
      apply hfaithful
      exact congrArg (fun q : PeriodicLabelPoint language n hn => q.val) hcd
    · intro p
      obtain ⟨c, hc⟩ := hcomplete p
      refine ⟨c, ?_⟩
      apply Subtype.ext
      exact hc

/-- A truly label-preserving equivalence between the ACTUAL cycle type
and genuine shift-periodic points, not an arbitrary cardinality match. -/
def HasCycleLabelEquivalence
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) : Prop :=
  ∃ e : BasedCycleData G n ≃ PeriodicLabelPoint language n hn,
    ∀ c : BasedCycleData G n, (e c).val = basedCycleWord G n c

/-- Necessary and sufficient conditions for the desired graph/shift
periodic-point equivalence, with NO unspecified map or hidden axiom.
The first condition cannot be omitted when language is arbitrary;
for an exact graph language it becomes the finite-block cyclic-path
admissibility lemma, a separate source-specific proof obligation. -/
theorem hasCycleLabelEquivalence_iff
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) :
    HasCycleLabelEquivalence G language n hn ↔
      CycleWordsAdmissible G language n hn ∧
      FaithfulCycleWords G n ∧
      CompleteCycleLifts G language n hn := by
  constructor
  · rintro ⟨e, he⟩
    refine ⟨?_, ?_, ?_⟩
    · intro c w hblock
      apply (e c).property w
      simpa only [he c] using hblock
    · intro c d hword
      apply e.injective
      apply Subtype.ext
      exact (he c).trans (hword.trans (he d).symm)
    · intro p
      refine ⟨e.symm p, ?_⟩
      calc
        basedCycleWord G n (e.symm p) = (e (e.symm p)).val := (he _).symm
        _ = p.val := by simp
  · rintro ⟨hAdmissible, hfaithful, hcomplete⟩
    have hbij : Function.Bijective
        (cycleLabelPointMap G language n hn hAdmissible) :=
      (cycleLabelPointMap_bijective_iff G language n hn hAdmissible).2
        ⟨hfaithful, hcomplete⟩
    refine ⟨Equiv.ofBijective
      (cycleLabelPointMap G language n hn hAdmissible) hbij, ?_⟩
    intro c
    rfl

/-- A label-preserving unique-lift presentation of the ACTUAL graph
makes the number of period-dividing-n shift points equal to the trace
of the original labeled adjacency matrix to the nth power. -/
theorem graph_to_matrix_periodic_point_card
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (hAdmissible : CycleWordsAdmissible G language n hn)
    (hfaithful : FaithfulCycleWords G n)
    (hcomplete : CompleteCycleLifts G language n hn) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      Matrix.trace (labeledAdjacency G ^ n) := by
  obtain ⟨e, _⟩ :=
    (hasCycleLabelEquivalence_iff G language n hn).2
      ⟨hAdmissible, hfaithful, hcomplete⟩
  calc
    Fintype.card (PeriodicLabelPoint language n hn) =
        Fintype.card (BasedCycleData G n) :=
      (Fintype.card_congr e).symm
    _ = Matrix.trace (labeledAdjacency G ^ n) :=
      (trace_pow_eq_card_based_cycles G n).symm

/-- A uniform cycle-admissibility, unique-lift and lift-coverage
certificate yields the trace/periodic-point identity at EVERY
positive period, rather than at only one selected sample length. -/
theorem graph_to_matrix_all_positive_periods
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hAdmissible : ∀ n : ℕ, ∀ hn : 0 < n,
      CycleWordsAdmissible G language n hn)
    (hfaithful : ∀ n : ℕ, ∀ hn : 0 < n, FaithfulCycleWords G n)
    (hcomplete : ∀ n : ℕ, ∀ hn : 0 < n,
      CompleteCycleLifts G language n hn)
    (n : ℕ) (hn : 0 < n) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      Matrix.trace (labeledAdjacency G ^ n) :=
  graph_to_matrix_periodic_point_card G language n hn
    (hAdmissible n hn) (hfaithful n hn) (hcomplete n hn)

/-- Even if the two COUNTS coincide, the canonical labeling need not
be bijective: excess graph lifts may balance missing label points.
This identity follows from the original finite lift-fiber ledger. -/
theorem trace_eq_periodic_card_iff_balanced_defects
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (hAdmissible : CycleWordsAdmissible G language n hn) :
    Matrix.trace (labeledAdjacency G ^ n) =
      Fintype.card (PeriodicLabelPoint language n hn) ↔
    unliftedLabelCount (cycleLabelPointMap G language n hn hAdmissible) =
      surplusLabelLiftCount (cycleLabelPointMap G language n hn hAdmissible) := by
  have hledger := trace_add_unlifted_eq_label_card_add_surplus
    G language n hn
    (cycleLabelPointMap G language n hn hAdmissible)
    (by intro c; rfl)
  omega

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleLabelBijection
