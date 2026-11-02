/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCycleRepetitionFromWalk
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The actual graph-to-periodic-label map and its exact trace defect

The original finite labeled graph, inductive LabeledWalkData, based-cycle
word, genuine period-dividing-n factor-language points, and natural-number
adjacency matrix are unchanged. The previous closed-walk theorem constructs
the periodic graph-state run at every positive length. Hence for a language
exactly equal to GraphLanguage G, the unique label-preserving map from
ACTUAL based cycles to genuine shift points exists without an added hypothesis.

The original finite lift-fiber ledger can now be instantiated for *every*
exact-language presentation: trace + missing = label points + surplus.
Neither missing labels nor surplus graph lifts may be discarded for an
arbitrary sofic presentation. Faithfulness or complete period-matched lifts
individually supply one-sided bounds, with sharp equality criteria.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficExactPeriodicTraceLedger

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleLabelBijection
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepetitionFromWalk

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Source-determined map from *actual* based graph cycles to
period-dividing-n points of the exact labeled shift. The map preserves
basedCycleWord definitionally and needs no manually chosen lift map. -/
noncomputable def canonicalCycleMap
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    BasedCycleData G n → PeriodicLabelPoint language n hn :=
  cycleLabelPointMap G language n hn
    (cycleWordsAdmissible_of_exact_original_graph G language hExact n hn)

@[simp] theorem canonicalCycleMap_val
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) (c : BasedCycleData G n) :
    (canonicalCycleMap G language hExact n hn c).val =
      basedCycleWord G n c := rfl

/-- Closes the original ledger's previously named map-existence
proposition for every exact finite-word-language graph. This does NOT
assert that the map is injective or surjective. -/
theorem hasLabelPreservingCycleMap_of_exact
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    HasLabelPreservingCycleMap G language n hn := by
  refine ⟨canonicalCycleMap G language hExact n hn, ?_⟩
  intro c
  rfl

/-- There is no freedom to reassign an actual closed graph walk to a
different label point while preserving its original emitted block. -/
theorem canonicalCycleMap_unique
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (f : BasedCycleData G n → PeriodicLabelPoint language n hn)
    (hLabels : ∀ c : BasedCycleData G n,
      (f c).val = basedCycleWord G n c) :
    f = canonicalCycleMap G language hExact n hn := by
  funext c
  apply Subtype.ext
  simpa only [canonicalCycleMap, cycleLabelPointMap] using hLabels c

/-- Original matrix trace counts the exact original graph-cycle
fibers over every genuine period-n label point, including multiplicity. -/
theorem exact_trace_eq_sum_cycle_fibers
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) =
      ∑ p : PeriodicLabelPoint language n hn,
        liftFiberCount (canonicalCycleMap G language hExact n hn) p := by
  exact trace_eq_sum_label_lift_fibers G language n hn
    (canonicalCycleMap G language hExact n hn)
    (by intro c; rfl)

/-- The unconditional exact graph-to-label defect identity under
whole-language equality, with both missing and surplus counts retained. -/
theorem exact_trace_add_unlifted_eq_label_card_add_surplus
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      Fintype.card (PeriodicLabelPoint language n hn) +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  exact trace_add_unlifted_eq_label_card_add_surplus G language n hn
    (canonicalCycleMap G language hExact n hn)
    (by intro c; rfl)

/-- Equal trace and periodic-label cardinalities are equivalent to
BALANCED lift defects. Equality of the two numbers by itself does NOT
imply that the cycle-label map is bijective. -/
theorem exact_trace_eq_periodic_card_iff_balanced_defects
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) =
      Fintype.card (PeriodicLabelPoint language n hn) ↔
    unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  exact (trace_eq_periodic_card_iff_balanced_defects G language n hn
    (cycleWordsAdmissible_of_exact_original_graph G language hExact n hn))

/-- Faithful ORIGINAL cycle labels give a one-sided trace bound, even
if some genuine periodic-label points have no same-period graph lift. -/
theorem exact_trace_le_periodic_card_of_faithful
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (hFaithful : FaithfulCycleWords G n) :
    Matrix.trace (labeledAdjacency G ^ n) ≤
      Fintype.card (PeriodicLabelPoint language n hn) := by
  classical
  have hinjective : Function.Injective
      (canonicalCycleMap G language hExact n hn) := by
    intro c d hcd
    apply hFaithful
    exact congrArg (fun p : PeriodicLabelPoint language n hn => p.val) hcd
  calc
    Matrix.trace (labeledAdjacency G ^ n) =
        Fintype.card (BasedCycleData G n) :=
      trace_pow_eq_card_based_cycles G n
    _ ≤ Fintype.card (PeriodicLabelPoint language n hn) :=
      Fintype.card_le_of_injective _ hinjective

/-- Full period-matched coverage gives the OPPOSITE one-sided trace
bound even if multiple actual graph cycles emit the same label point. -/
theorem exact_periodic_card_le_trace_of_complete
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (hComplete : CompleteCycleLifts G language n hn) :
    Fintype.card (PeriodicLabelPoint language n hn) ≤
      Matrix.trace (labeledAdjacency G ^ n) := by
  classical
  have hsurjective : Function.Surjective
      (canonicalCycleMap G language hExact n hn) := by
    intro p
    obtain ⟨c, hc⟩ := hComplete p
    refine ⟨c, ?_⟩
    apply Subtype.ext
    exact hc
  calc
    Fintype.card (PeriodicLabelPoint language n hn) ≤
        Fintype.card (BasedCycleData G n) :=
      Fintype.card_le_of_surjective _ hsurjective
    _ = Matrix.trace (labeledAdjacency G ^ n) :=
      (trace_pow_eq_card_based_cycles G n).symm

/-- Under faithful original cycle labels, equality of the numerical
trace with the periodic-point count is EQUIVALENT to complete
same-period cycle lifts: finite injective maps of equal cardinality
are automatically surjective. -/
theorem exact_trace_eq_periodic_card_iff_complete_of_faithful
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (hFaithful : FaithfulCycleWords G n) :
    Matrix.trace (labeledAdjacency G ^ n) =
        Fintype.card (PeriodicLabelPoint language n hn) ↔
      CompleteCycleLifts G language n hn := by
  classical
  let hAdmissible : CycleWordsAdmissible G language n hn :=
    cycleWordsAdmissible_of_exact_original_graph G language hExact n hn
  constructor
  · intro hTrace
    have hinjective : Function.Injective
        (cycleLabelPointMap G language n hn hAdmissible) := by
      intro c d hcd
      apply hFaithful
      exact congrArg (fun p : PeriodicLabelPoint language n hn => p.val) hcd
    have hcard : Fintype.card (BasedCycleData G n) =
        Fintype.card (PeriodicLabelPoint language n hn) := by
      calc
        Fintype.card (BasedCycleData G n) =
            Matrix.trace (labeledAdjacency G ^ n) :=
          (trace_pow_eq_card_based_cycles G n).symm
        _ = Fintype.card (PeriodicLabelPoint language n hn) := hTrace
    have hBijective : Function.Bijective
        (cycleLabelPointMap G language n hn hAdmissible) :=
      (Fintype.bijective_iff_injective_and_card _).2 ⟨hinjective, hcard⟩
    exact ((cycleLabelPointMap_bijective_iff G language n hn hAdmissible).1
      hBijective).2
  · intro hComplete
    exact (periodic_point_card_eq_trace_of_exact_faithful_complete
      G language hExact n hn hFaithful hComplete).symm

/-- Under complete same-period lifts, equality of the trace with the
periodic-point count is EQUIVALENT to source-cycle label faithfulness:
finite surjective maps of equal cardinality are injective. -/
theorem exact_trace_eq_periodic_card_iff_faithful_of_complete
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (hComplete : CompleteCycleLifts G language n hn) :
    Matrix.trace (labeledAdjacency G ^ n) =
        Fintype.card (PeriodicLabelPoint language n hn) ↔
      FaithfulCycleWords G n := by
  classical
  let hAdmissible : CycleWordsAdmissible G language n hn :=
    cycleWordsAdmissible_of_exact_original_graph G language hExact n hn
  constructor
  · intro hTrace
    have hsurjective : Function.Surjective
        (cycleLabelPointMap G language n hn hAdmissible) := by
      intro p
      obtain ⟨c, hc⟩ := hComplete p
      refine ⟨c, ?_⟩
      apply Subtype.ext
      exact hc
    have hcard : Fintype.card (BasedCycleData G n) =
        Fintype.card (PeriodicLabelPoint language n hn) := by
      calc
        Fintype.card (BasedCycleData G n) =
            Matrix.trace (labeledAdjacency G ^ n) :=
          (trace_pow_eq_card_based_cycles G n).symm
        _ = Fintype.card (PeriodicLabelPoint language n hn) := hTrace
    have hBijective : Function.Bijective
        (cycleLabelPointMap G language n hn hAdmissible) :=
      (Fintype.bijective_iff_surjective_and_card _).2 ⟨hsurjective, hcard⟩
    exact ((cycleLabelPointMap_bijective_iff G language n hn hAdmissible).1
      hBijective).1
  · intro hFaithful
    exact (periodic_point_card_eq_trace_of_exact_faithful_complete
      G language hExact n hn hFaithful hComplete).symm

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficExactPeriodicTraceLedger
