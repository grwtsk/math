/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicStreamBridge
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficFiniteSupportAutomaton
import Mathlib.Dynamics.PeriodicPts.Defs
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact one-sided dynamical shift and periodic-point correspondence

The source's original infinite PeriodicAdmissibleStream specifies
x(k+n)=x(k), all k, and admission of EVERY finite observed block.
Pinned Mathlib defines Function.IsPeriodicPt f n x by f^[n] x=x.

We define the literal one-step left shift on original Nat-indexed
label streams, prove its complete iterate coordinate formula,
and show that the original periodicity predicate is equivalent to
Mathlib's actual dynamical periodic point predicate.

The language-admissible stream subtype is genuinely shift invariant.
Its projection to all infinite label streams SEMICONJUGATES the two
shifts and reflects all periods because it is injective. Consequently
its original minimal period equals the minimal period of the full
one-sided label sequence. We connect this to the EXISTING exact
PeriodicLabelPoint equivalence, not to a replacement graph.

Under the original whole factor-language presentation equality,
the previously constructed bounded periodic ORIGINAL graph-state
run becomes a true Mathlib periodic point of the state-sequence
shift, retaining every original labeled edge and the exact source
infinite label sequence. Its minimal state-shift period divides
m*n and is bounded by card(State)*n, with 1<=m<=card(State).

The cardinal of true admissible shift-periodic points is returned
to the existing exact finite-support periodic word count, and the
original missing/surplus lift compensation is kept unchanged.
This is neither a topological conjugacy nor any spectral, analytic,
Fredholm, zeta or RH identification.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficShiftPeriodicPointBridge

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficExactPeriodicTraceLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicStreamBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteSupportAutomaton

universe u v
variable {Alphabet : Type v}

/-- The actual one-sided shift, acting on the very same original
Nat-indexed stream coordinates. No state quotient or new alphabet. -/
def oneSidedShift (trace : ℕ → Alphabet) : ℕ → Alphabet :=
  fun k => trace (k + 1)

/-- Exact coordinate identity for every iterate of the actual
one-sided shift, including n=0 and all stream indices. -/
theorem oneSidedShift_iterate_apply (n : ℕ) :
    ∀ (trace : ℕ → Alphabet) (k : ℕ),
      (((oneSidedShift (Alphabet := Alphabet))^[n]) trace) k =
        trace (k + n) := by
  induction n with
  | zero =>
      intro trace k
      rfl
  | succ n ih =>
      intro trace k
      calc
        (((oneSidedShift (Alphabet := Alphabet))^[n + 1]) trace) k =
            (((oneSidedShift (Alphabet := Alphabet))^[n])
              (oneSidedShift trace)) k := rfl
        _ = (oneSidedShift trace) (k + n) := ih _ _
        _ = trace (k + (n + 1)) := by
          simp only [oneSidedShift, Nat.add_assoc]

/-- The repository's original every-coordinate period condition
is EXACTLY pinned Mathlib's Function.IsPeriodicPt for this shift.
It is a period-dividing-n statement, not minimal period n. -/
theorem oneSidedShift_isPeriodicPt_iff
    (trace : ℕ → Alphabet) (n : ℕ) :
    Function.IsPeriodicPt
        (oneSidedShift (Alphabet := Alphabet)) n trace ↔
      ∀ k, trace (k + n) = trace k := by
  change
    (((oneSidedShift (Alphabet := Alphabet))^[n]) trace = trace) ↔ _
  constructor
  · intro h k
    have hAt := congrFun h k
    simpa only [oneSidedShift_iterate_apply] using hAt
  · intro h
    funext k
    rw [oneSidedShift_iterate_apply]
    exact h k

/-- The actual original complete finite-factor-language carrier,
without imposing any periodicity condition. -/
def AdmissibleInfiniteStream
    (language : List Alphabet → Prop) : Type v :=
  {trace : ℕ → Alphabet //
    ∀ word : List Alphabet,
      HasFiniteBlock trace word → language word}

/-- The complete factor-language condition is closed under the
literal original left shift. The changed block offset is +1;
no external source words are introduced. -/
def admissibleShift
    (language : List Alphabet → Prop)
    (p : AdmissibleInfiniteStream language) :
    AdmissibleInfiniteStream language :=
  ⟨oneSidedShift p.val, by
    intro word hBlock
    obtain ⟨offset, hAt⟩ := hBlock
    apply p.property word
    refine ⟨offset + 1, ?_⟩
    intro i
    simpa [oneSidedShift, Nat.add_assoc, Nat.add_left_comm,
      Nat.add_comm] using (hAt i)⟩

/-- Projection of the genuine shift-invariant source language is
an honest dynamical semiconjugacy, not merely a graph-path inclusion. -/
theorem admissibleShift_val_semiconj
    (language : List Alphabet → Prop) :
    Function.Semiconj
      (fun p : AdmissibleInfiniteStream language => p.val)
      (admissibleShift language)
      (oneSidedShift (Alphabet := Alphabet)) := by
  intro p
  rfl

/-- Exact reflection as well as preservation of every Mathlib
periodicity predicate; subtype proof fields carry no new freedom. -/
theorem admissibleShift_isPeriodicPt_iff
    (language : List Alphabet → Prop) (n : ℕ)
    (p : AdmissibleInfiniteStream language) :
    Function.IsPeriodicPt (admissibleShift language) n p ↔
      Function.IsPeriodicPt
        (oneSidedShift (Alphabet := Alphabet)) n p.val := by
  constructor
  · intro hp
    exact hp.map (admissibleShift_val_semiconj language)
  · intro hp
    change ((admissibleShift language)^[n] p) = p
    apply Subtype.ext
    have hComm :
        (((admissibleShift language)^[n] p).val) =
          (((oneSidedShift (Alphabet := Alphabet))^[n]) p.val) :=
      ((admissibleShift_val_semiconj language).iterate_right n).eq p
    change (((oneSidedShift (Alphabet := Alphabet))^[n]) p.val) =
      p.val at hp
    exact hComm.trans hp

/-- The minimal period of an admissible source stream is EXACTLY
its minimal period as a full one-sided shift point, not a multiple
created by the subtype or an arbitrary graph-state lift. -/
theorem admissibleShift_minimalPeriod_eq_fullShift
    (language : List Alphabet → Prop)
    (p : AdmissibleInfiniteStream language) :
    Function.minimalPeriod (admissibleShift language) p =
      Function.minimalPeriod
        (oneSidedShift (Alphabet := Alphabet)) p.val := by
  apply (Function.minimalPeriod_eq_minimalPeriod_iff).2
  intro n
  exact admissibleShift_isPeriodicPt_iff language n p

/-- The old PeriodicAdmissibleStream type is literally the true
periodic-point subtype for the original shift-invariant language.
The two maps preserve the entire stream, not just the n-block. -/
noncomputable def periodicAdmissibleStream_equiv_shiftPeriodic
    (language : List Alphabet → Prop) (n : ℕ) :
    PeriodicAdmissibleStream language n ≃
      {p : AdmissibleInfiniteStream language //
        Function.IsPeriodicPt (admissibleShift language) n p} where
  toFun := by
    intro p
    let x : AdmissibleInfiniteStream language :=
      ⟨p.val, p.property.2⟩
    refine ⟨x, ?_⟩
    exact (admissibleShift_isPeriodicPt_iff language n x).2
      ((oneSidedShift_isPeriodicPt_iff p.val n).2 p.property.1)
  invFun := by
    intro p
    refine ⟨p.val.val, ?_⟩
    exact ⟨(oneSidedShift_isPeriodicPt_iff p.val.val n).1
      ((admissibleShift_isPeriodicPt_iff language n p.val).1
        p.property), p.val.property⟩
  left_inv := by
    intro p
    apply Subtype.ext
    rfl
  right_inv := by
    intro p
    apply Subtype.ext
    apply Subtype.ext
    rfl

/-- The EXISTING finite source-periodic label point is now in
equivalence with the actual Mathlib shift-periodic point on the
original full-factor-language carrier. n must be positive for the
finite Fin n to encode the infinite stream. -/
noncomputable def periodicLabelPoint_equiv_shiftPeriodic
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) :
    PeriodicLabelPoint language n hn ≃
      {p : AdmissibleInfiniteStream language //
        Function.IsPeriodicPt (admissibleShift language) n p} :=
  (periodicLabelPoint_equiv_admissibleStream language n hn).trans
    (periodicAdmissibleStream_equiv_shiftPeriodic language n)

/-- The genuine minimal label-shift period divides every stated
period n, by the PINNED Mathlib minimalPeriod_dvd theorem. -/
theorem labelShift_minimalPeriod_dvd
    (language : List Alphabet → Prop) (n : ℕ)
    (p : {x : AdmissibleInfiniteStream language //
      Function.IsPeriodicPt (admissibleShift language) n x}) :
    Function.minimalPeriod (admissibleShift language) p.val ∣ n :=
  p.property.minimalPeriod_dvd

/-- This minimal label period is positive whenever the stated n
is positive. Period-dividing-n is not silently strengthened to
minimal period exactly n. -/
theorem labelShift_minimalPeriod_pos
    (language : List Alphabet → Prop) (n : ℕ) (hn : 0 < n)
    (p : {x : AdmissibleInfiniteStream language //
      Function.IsPeriodicPt (admissibleShift language) n x}) :
    0 < Function.minimalPeriod (admissibleShift language) p.val :=
  p.property.minimalPeriod_pos hn

variable {State : Type u}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Existing original based-cycle and graph-run construction,
expressed in both ACTUAL Mathlib shift periodic-point types.
The graph's state period is a positive multiple m*n of the
observed label period, bounded by m<=card State. -/
theorem shiftPeriodicPoint_has_bounded_graphShift_lift
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (x : {p : AdmissibleInfiniteStream language //
      Function.IsPeriodicPt (admissibleShift language) n p}) :
    ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ states : ℕ → State,
        Function.IsPeriodicPt
          (oneSidedShift (Alphabet := State)) (m * n) states ∧
        ∀ k, G.edge (states k) (x.val.val k) (states (k + 1)) := by
  let p : PeriodicAdmissibleStream language n :=
    (periodicAdmissibleStream_equiv_shiftPeriodic language n).symm x
  have hpval : p.val = x.val.val := rfl
  obtain ⟨m, hm, hBound, states, hStatePeriod, hEdges⟩ :=
    admissibleStream_has_bounded_graph_state_run
      G language hExact n hn p
  refine ⟨m, hm, hBound, states, ?_, ?_⟩
  · exact (oneSidedShift_isPeriodicPt_iff states (m * n)).2
      hStatePeriod
  · intro k
    simpa only [hpval] using hEdges k

/-- A sharper dynamical consumer: the *minimal* shift-period of
the actual graph-state run divides m*n and is at most
card(State)*n. This is not an equality or a unique lift. -/
theorem shiftPeriodicPoint_has_bounded_minimal_state_period
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (x : {p : AdmissibleInfiniteStream language //
      Function.IsPeriodicPt (admissibleShift language) n p}) :
    ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ states : ℕ → State,
        (Function.minimalPeriod
            (oneSidedShift (Alphabet := State)) states ∣ m * n) ∧
        Function.minimalPeriod
          (oneSidedShift (Alphabet := State)) states ≤
            Fintype.card State * n ∧
        ∀ k, G.edge (states k) (x.val.val k) (states (k + 1)) := by
  obtain ⟨m, hm, hBound, states, hStatePeriod, hEdges⟩ :=
    shiftPeriodicPoint_has_bounded_graphShift_lift
      G language hExact n hn x
  have hDvd := hStatePeriod.minimalPeriod_dvd
  have hMinLe :
      Function.minimalPeriod
        (oneSidedShift (Alphabet := State)) states ≤ m * n :=
    Nat.le_of_dvd (Nat.mul_pos hm hn) hDvd
  have hBoundMin :
      Function.minimalPeriod
        (oneSidedShift (Alphabet := State)) states ≤
          Fintype.card State * n :=
    hMinLe.trans (Nat.mul_le_mul_right n hBound)
  exact ⟨m, hm, hBound, states, hDvd, hBoundMin, hEdges⟩

/-- Finite cardinality of this infinite stream periodic-point
subtype is specified by its EXACT original Fin n label-point
equivalence, rather than assuming all infinite streams are finite. -/
noncomputable def shiftPeriodicPointCount
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) : ℕ :=
  @Fintype.card
    {p : AdmissibleInfiniteStream language //
      Function.IsPeriodicPt (admissibleShift language) n p}
    (Fintype.ofEquiv (PeriodicLabelPoint language n hn)
      (periodicLabelPoint_equiv_shiftPeriodic language n hn))

theorem shiftPeriodicPointCount_eq_originalLabelCard
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) :
    shiftPeriodicPointCount language n hn =
      Fintype.card (PeriodicLabelPoint language n hn) := by
  classical
  letI : Fintype
      {p : AdmissibleInfiniteStream language //
        Function.IsPeriodicPt (admissibleShift language) n p} :=
    Fintype.ofEquiv (PeriodicLabelPoint language n hn)
      (periodicLabelPoint_equiv_shiftPeriodic language n hn)
  change Fintype.card
      {p : AdmissibleInfiniteStream language //
        Function.IsPeriodicPt (admissibleShift language) n p} =
      Fintype.card (PeriodicLabelPoint language n hn)
  exact (Fintype.card_congr
    (periodicLabelPoint_equiv_shiftPeriodic language n hn)).symm

/-- Distinct genuine Mathlib shift-periodic points are counted by
the already source-proved ORIGINAL finite support-cycle observer,
not by graph-cycle multiplicity. -/
theorem shiftPeriodicPointCount_eq_sourceSupportCount
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n) :
    shiftPeriodicPointCount language n hn =
      sourceSupportPeriodicWordCount G n := by
  calc
    shiftPeriodicPointCount language n hn =
        Fintype.card (PeriodicLabelPoint language n hn) :=
      shiftPeriodicPointCount_eq_originalLabelCard language n hn
    _ = sourceSupportPeriodicWordCount G n :=
      periodicLabelPoint_card_eq_sourceSupportCount
        G language hExact n hn

/-- The original graph adjacency counts based n-cycles WITH
multiplicity. Even for true Mathlib shift-periodic points,
its exact trace identity must retain BOTH signed lift defects. -/
theorem adjacency_trace_add_unlifted_eq_shiftPeriodicCount_add_surplus
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      shiftPeriodicPointCount language n hn +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  calc
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      sourceSupportPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      adjacency_trace_add_unlifted_eq_support_count_add_surplus
        G language hExact n hn
    _ = shiftPeriodicPointCount language n hn +
          surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
      rw [(shiftPeriodicPointCount_eq_sourceSupportCount
        G language hExact n hn).symm]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficShiftPeriodicPointBridge
