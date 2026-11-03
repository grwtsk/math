/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficTopologicalFactorSpace
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficFiniteSupportAutomaton
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Original topological subshift periodic points and graph-lift return

The previous module identifies the REAL closed additive one-sided
subshift carrier with the original complete-factor admissible
stream carrier by an explicit identity-on-stream equivalence.

Here the equivalence is lifted to genuine Mathlib shift-periodic
subtypes. Composing with the already proved ORIGINAL
PeriodicLabelPoint equivalence returns exact finite labels,
minimal periods, a bounded positive-period ORIGINAL graph-state
lift, and the SAME signed missing/surplus adjacency trace ledger.

The existing discrete, inhabited alphabet assumptions are explicit.
No finite-path graph language is equated with the realized infinite
topological language unless an extension premise is proved.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalPeriodicReturn

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficExactPeriodicTraceLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicStreamBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficShiftPeriodicPointBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteSupportAutomaton
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace

universe u v
variable {Alphabet : Type v}
  [TopologicalSpace Alphabet] [DiscreteTopology Alphabet] [Inhabited Alphabet]

/-- The actual closed subshift's period-n subtype agrees with
the original full-factor-language shift's period-n subtype.
This is an EQUIV of true points, not just a card coincidence. -/
noncomputable def topologicalPeriodic_equiv_shiftPeriodic
    (language : List Alphabet → Prop) (n : ℕ) :
    {p : TopologicalAdmissibleStream language //
      Function.IsPeriodicPt (topologicalShift language) n p} ≃
    {p : AdmissibleInfiniteStream language //
      Function.IsPeriodicPt (admissibleShift language) n p} :=
  Equiv.subtypeEquiv (topologicalStream_equiv_admissibleStream language)
    (fun p => topologicalShift_isPeriodicPt_iff language n p)

/-- Source-EXACT original period-n finite label points are now
equivalent to actual period-n points of a genuine closed
one-sided topological subshift. Positive n is explicit. -/
noncomputable def topologicalPeriodic_equiv_originalLabelPoint
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) :
    {p : TopologicalAdmissibleStream language //
      Function.IsPeriodicPt (topologicalShift language) n p} ≃
      PeriodicLabelPoint language n hn :=
  (topologicalPeriodic_equiv_shiftPeriodic language n).trans
    (periodicLabelPoint_equiv_shiftPeriodic language n hn).symm

/-- The true topological shift does NOT alter minimal label
periods: its identity-on-stream equivalence reflects all
periodicity predicates, and the pinned Mathlib theorem returns
equality of minimal periods on the full alphabet shift. -/
theorem topologicalShift_minimalPeriod_eq_fullShift
    (language : List Alphabet → Prop)
    (p : TopologicalAdmissibleStream language) :
    Function.minimalPeriod (topologicalShift language) p =
      Function.minimalPeriod
        (oneSidedShift (Alphabet := Alphabet)) p.val := by
  let e := topologicalStream_equiv_admissibleStream language
  calc
    Function.minimalPeriod (topologicalShift language) p =
        Function.minimalPeriod (admissibleShift language) (e p) := by
      apply (Function.minimalPeriod_eq_minimalPeriod_iff).2
      intro n
      exact topologicalShift_isPeriodicPt_iff language n p
    _ = Function.minimalPeriod
          (oneSidedShift (Alphabet := Alphabet)) (e p).val :=
      admissibleShift_minimalPeriod_eq_fullShift language (e p)
    _ = Function.minimalPeriod
          (oneSidedShift (Alphabet := Alphabet)) p.val := rfl

/-- For true positive-period topological points, the minimal
topological shift period divides n, not necessarily equals n. -/
theorem topologicalShift_minimalPeriod_dvd
    (language : List Alphabet → Prop)
    (n : ℕ)
    (p : {x : TopologicalAdmissibleStream language //
      Function.IsPeriodicPt (topologicalShift language) n x}) :
    Function.minimalPeriod (topologicalShift language) p.val ∣ n :=
  p.property.minimalPeriod_dvd

/-- The minimal period is positive whenever the original period
index is positive. -/
theorem topologicalShift_minimalPeriod_pos
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (p : {x : TopologicalAdmissibleStream language //
      Function.IsPeriodicPt (topologicalShift language) n x}) :
    0 < Function.minimalPeriod (topologicalShift language) p.val :=
  p.property.minimalPeriod_pos hn

variable {State : Type u}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- The actual ORIGINAL graph edge sequence lifts each genuine
topological period-n point at a bounded multiple m*n. Its emitted
infinite labels equal the underlying topological point at EVERY
natural index. The graph-state shift is Mathlib periodic. -/
theorem topologicalPeriodicPoint_has_bounded_graphShift_lift
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (x : {p : TopologicalAdmissibleStream language //
      Function.IsPeriodicPt (topologicalShift language) n p}) :
    ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ states : ℕ → State,
        Function.IsPeriodicPt
          (oneSidedShift (Alphabet := State)) (m * n) states ∧
        ∀ k, G.edge (states k) (x.val.val k) (states (k + 1)) := by
  let q : {p : AdmissibleInfiniteStream language //
      Function.IsPeriodicPt (admissibleShift language) n p} :=
    topologicalPeriodic_equiv_shiftPeriodic language n x
  obtain ⟨m, hm, hBound, states, hPeriod, hEdges⟩ :=
    shiftPeriodicPoint_has_bounded_graphShift_lift
      G language hExact n hn q
  have hSame : q.val.val = x.val.val := rfl
  refine ⟨m, hm, hBound, states, hPeriod, ?_⟩
  intro k
  simpa only [hSame] using hEdges k

/-- This returns the SHARP bounded original state-period result
without claiming same-period, unique or faithful graph lifts. -/
theorem topologicalPeriodicPoint_has_bounded_minimal_state_period
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (x : {p : TopologicalAdmissibleStream language //
      Function.IsPeriodicPt (topologicalShift language) n p}) :
    ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ states : ℕ → State,
        Function.minimalPeriod
          (oneSidedShift (Alphabet := State)) states ∣ m * n ∧
        Function.minimalPeriod
          (oneSidedShift (Alphabet := State)) states ≤
            Fintype.card State * n ∧
        ∀ k, G.edge (states k) (x.val.val k) (states (k + 1)) := by
  obtain ⟨m, hm, hBound, states, hPeriod, hEdge⟩ :=
    topologicalPeriodicPoint_has_bounded_graphShift_lift
      G language hExact n hn x
  have hDiv := hPeriod.minimalPeriod_dvd
  have hLe :
      Function.minimalPeriod
        (oneSidedShift (Alphabet := State)) states ≤ m * n :=
    Nat.le_of_dvd (Nat.mul_pos hm hn) hDiv
  refine ⟨m, hm, hBound, states, hDiv, ?_, hEdge⟩
  exact hLe.trans (Nat.mul_le_mul_right n hBound)

/-- A finite count of TRUE period-n points in the potentially
infinite topological subshift comes only from the explicit
equivalence with the original finite label-point subtype. -/
noncomputable def topologicalPeriodicPointCount
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) : ℕ :=
  @Fintype.card
    {p : TopologicalAdmissibleStream language //
      Function.IsPeriodicPt (topologicalShift language) n p}
    (Fintype.ofEquiv (PeriodicLabelPoint language n hn)
      (topologicalPeriodic_equiv_originalLabelPoint language n hn).symm)

/-- The number of true topological period-n points is EXACTLY
the original finite label-point cardinality. -/
theorem topologicalPeriodicPointCount_eq_originalLabelCard
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) :
    topologicalPeriodicPointCount language n hn =
      Fintype.card (PeriodicLabelPoint language n hn) := by
  classical
  letI : Fintype
      {p : TopologicalAdmissibleStream language //
        Function.IsPeriodicPt (topologicalShift language) n p} :=
    Fintype.ofEquiv (PeriodicLabelPoint language n hn)
      (topologicalPeriodic_equiv_originalLabelPoint language n hn).symm
  change Fintype.card
      {p : TopologicalAdmissibleStream language //
        Function.IsPeriodicPt (topologicalShift language) n p} =
      Fintype.card (PeriodicLabelPoint language n hn)
  exact Fintype.card_congr
    (topologicalPeriodic_equiv_originalLabelPoint language n hn)

/-- The true topological period-n count is the SAME original
bounded support-cycle count, assuming exact whole finite
graph-language equality and n>0. -/
theorem topologicalPeriodicPointCount_eq_sourceSupportCount
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    topologicalPeriodicPointCount language n hn =
      sourceSupportPeriodicWordCount G n := by
  calc
    topologicalPeriodicPointCount language n hn =
        Fintype.card (PeriodicLabelPoint language n hn) :=
      topologicalPeriodicPointCount_eq_originalLabelCard language n hn
    _ = sourceSupportPeriodicWordCount G n :=
      periodicLabelPoint_card_eq_sourceSupportCount G language hExact n hn

/-- The original adjacency trace still counts based graph
n-cycles WITH multiplicity. The topological interpretation
does not erase its missing-lift and surplus-lift defects. -/
theorem adjacency_trace_with_defects_eq_topologicalPeriodicCount
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      topologicalPeriodicPointCount language n hn +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  calc
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      Fintype.card (PeriodicLabelPoint language n hn) +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      exact_trace_add_unlifted_eq_label_card_add_surplus
        G language hExact n hn
    _ = topologicalPeriodicPointCount language n hn +
          surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
      rw [(topologicalPeriodicPointCount_eq_originalLabelCard
        language n hn).symm]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalPeriodicReturn
