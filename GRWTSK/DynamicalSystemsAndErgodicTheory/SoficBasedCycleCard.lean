/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicMatrixTrace
import Mathlib.Data.Fintype.BigOperators
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact finite cardinality of actual inductive labeled graph cycles

The ORIGINAL source LabeledWalkData records every intermediate state
and edge label. A walk of length n+1 is equivalent to a length-n
walk followed by an actual chosen labeled edge. Zero-length walks
carry exactly the state equality. Finite cardinalities give the
EXACT original last-edge counting recurrence and thereby discharge
the PREEXISTING ExactBasedCycleCard proposition.

This is a standalone Lean SOURCE PROOF CANDIDATE, not a native-verified
declaration. The original source graph, full-language transversal,
word-path presentation and matrix recurrence are not redefined.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Zero steps carry exactly a proof of endpoint equality.
The proof witness is proof-irrelevant; no edge-label choice occurs. -/
private def zeroWalkEquiv (G : LabeledGraph State Alphabet) (s t : State) :
    LabeledWalkData G 0 s t ≃ PLift (s = t) where
  toFun := by
    intro p
    cases p
    exact ⟨rfl⟩
  invFun := by
    intro q
    rcases q with ⟨h⟩
    cases h
    exact LabeledWalkData.nil s
  left_inv := by
    intro p
    cases p
    rfl
  right_inv := by
    intro q
    rcases q with ⟨h⟩
    cases h
    rfl

/-- The ACTUAL final labeled edge retains its middle state,
letter and proof of the original edge predicate. -/
private def snocWalkEquiv (G : LabeledGraph State Alphabet)
    (n : ℕ) (s t : State) :
    LabeledWalkData G (n + 1) s t ≃
      Σ m : State,
        LabeledWalkData G n s m × {a : Alphabet // G.edge m a t} where
  toFun := by
    intro p
    cases p with
    | snoc (middle := m) prefix letter edge =>
        exact ⟨m, (prefix, ⟨letter, edge⟩)⟩
  invFun := by
    intro p
    exact LabeledWalkData.snoc p.2.1 p.2.2.1 p.2.2.2
  left_inv := by
    intro p
    cases p
    rfl
  right_inv := by
    intro p
    rcases p with ⟨m, prefix, ⟨letter, edge⟩⟩
    rfl

/-- A FINITE witness type for each original index pair and length.
This is an explicit recursively defined instance, not an assumption
that an arbitrary infinite set of graph paths is finite. -/
private noncomputable def finiteWalkData (G : LabeledGraph State Alphabet) :
    (n : ℕ) → (s t : State) → Fintype (LabeledWalkData G n s t)
  | 0, s, t => by
      classical
      exact Fintype.ofEquiv (PLift (s = t)) (zeroWalkEquiv G s t).symm
  | n + 1, s, t => by
      classical
      letI : ∀ m : State, Fintype (LabeledWalkData G n s m) :=
        fun m => finiteWalkData G n s m
      exact Fintype.ofEquiv
        (Σ m : State,
          LabeledWalkData G n s m × {a : Alphabet // G.edge m a t})
        (snocWalkEquiv G n s t).symm

/-- All finite path witnesses inherit finiteness from the FINITE
state and alphabet carriers. -/
noncomputable instance instLabeledWalkDataFintype
    (G : LabeledGraph State Alphabet) (n : ℕ) (s t : State) :
    Fintype (LabeledWalkData G n s t) :=
  finiteWalkData G n s t

/-- The original multiplicity counts labeled edge choices, NOT
distinct endpoint pairs or unlabeled adjacency. -/
private theorem labeledEdgeChoice_card
    (G : LabeledGraph State Alphabet) (s t : State) :
    Fintype.card {a : Alphabet // G.edge s a t} =
      edgeMultiplicity G s t := by
  classical
  calc
    Fintype.card {a : Alphabet // G.edge s a t} =
      (Finset.univ.filter (fun a : Alphabet => G.edge s a t)).card := by
        exact Fintype.card_subtype (fun a : Alphabet => G.edge s a t)
    _ = ∑ a : Alphabet, if G.edge s a t then 1 else 0 := by
        rw [Finset.card_eq_sum_ones, Finset.sum_filter]
    _ = edgeMultiplicity G s t := by
        rfl

/-- Exactly one original zero-step walk when the endpoints agree,
and no zero-step walk between distinct endpoints. -/
private theorem zero_walk_card (G : LabeledGraph State Alphabet)
    (s t : State) :
    Fintype.card (LabeledWalkData G 0 s t) =
      labeledWalkCount G 0 s t := by
  classical
  by_cases h : s = t
  · subst t
    haveI : Unique (PLift (s = s)) :=
      { default := ⟨rfl⟩
        uniq := by
          intro q
          rcases q with ⟨hq⟩
          rfl }
    calc
      Fintype.card (LabeledWalkData G 0 s s) =
          Fintype.card (PLift (s = s)) :=
        Fintype.card_congr (zeroWalkEquiv G s s)
      _ = 1 := Fintype.card_unique
      _ = labeledWalkCount G 0 s s := by simp [labeledWalkCount]
  · haveI : IsEmpty (PLift (s = t)) :=
      ⟨fun q => h q.down⟩
    calc
      Fintype.card (LabeledWalkData G 0 s t) =
          Fintype.card (PLift (s = t)) :=
        Fintype.card_congr (zeroWalkEquiv G s t)
      _ = 0 := Fintype.card_eq_zero
      _ = labeledWalkCount G 0 s t := by simp [labeledWalkCount, h]

/-- The cardinal of ACTUAL labeled-walk witness data obeys
the same original last-edge recurrence at all lengths and endpoints. -/
theorem labeledWalkData_card_eq_walkCount
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    ∀ s t : State,
      Fintype.card (LabeledWalkData G n s t) =
        labeledWalkCount G n s t := by
  classical
  induction n with
  | zero =>
      intro s t
      exact zero_walk_card G s t
  | succ n ih =>
      intro s t
      calc
        Fintype.card (LabeledWalkData G (n + 1) s t) =
            Fintype.card
              (Σ m : State,
                LabeledWalkData G n s m ×
                  {a : Alphabet // G.edge m a t}) :=
          Fintype.card_congr (snocWalkEquiv G n s t)
        _ = ∑ m : State,
              Fintype.card
                (LabeledWalkData G n s m ×
                  {a : Alphabet // G.edge m a t}) := by
          rw [Fintype.card_sigma]
        _ = ∑ m : State,
              Fintype.card (LabeledWalkData G n s m) *
                Fintype.card {a : Alphabet // G.edge m a t} := by
          apply Finset.sum_congr rfl
          intro m _
          rw [Fintype.card_prod]
        _ = ∑ m : State,
              labeledWalkCount G n s m * edgeMultiplicity G m t := by
          apply Finset.sum_congr rfl
          intro m _
          rw [ih s m, labeledEdgeChoice_card G m t]
        _ = labeledWalkCount G (n + 1) s t := rfl

/-- The dependent Sigma of based n-cycles obtains a Fintype from
the explicit Fintype of each LabeledWalkData fiber above. -/

/-- Previously open proposition, with its exact ORIGINAL definition:
cardinality of based graph n-cycles equals the actual last-edge
recursion, without a matrix comparison or periodic-label premise. -/
theorem exactBasedCycleCard
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    ExactBasedCycleCard G n := by
  classical
  unfold ExactBasedCycleCard basedClosedWalkCount
  change Fintype.card (Σ s : State, LabeledWalkData G n s s) =
    ∑ s : State, labeledWalkCount G n s s
  calc
    Fintype.card (Σ s : State, LabeledWalkData G n s s) =
        ∑ s : State, Fintype.card (LabeledWalkData G n s s) := by
      rw [Fintype.card_sigma]
    _ = ∑ s : State, labeledWalkCount G n s s := by
      apply Finset.sum_congr rfl
      intro s _
      exact labeledWalkData_card_eq_walkCount G n s s

/-- The graph's true finite matrix trace is now linked to the
cardinality of its ACTUAL inductive based-cycle type. -/
theorem trace_pow_eq_card_based_cycles
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    Matrix.trace (labeledAdjacency G ^ n) =
      Fintype.card (BasedCycleData G n) := by
  calc
    Matrix.trace (labeledAdjacency G ^ n) =
      basedClosedWalkCount G n :=
        trace_pow_eq_basedClosedWalkCount G n
    _ = Fintype.card (BasedCycleData G n) :=
        (exactBasedCycleCard G n).symm

/-- The two genuine examples give different ACTUAL based-cycle
counts at period one, not merely symbolic adjacency values. -/
theorem duplicate_loop_based_cycle_card_one :
    Fintype.card (BasedCycleData doubleLoopUnitGraph 1) = 2 := by
  calc
    Fintype.card (BasedCycleData doubleLoopUnitGraph 1) =
      Matrix.trace (labeledAdjacency doubleLoopUnitGraph ^ 1) :=
        (trace_pow_eq_card_based_cycles doubleLoopUnitGraph 1).symm
    _ = Matrix.trace (labeledAdjacency doubleLoopUnitGraph) := by rw [pow_one]
    _ = 2 := doubleLoop_trace_one

theorem alternating_based_cycle_card_one :
    Fintype.card (BasedCycleData alternatingUnitGraph 1) = 0 := by
  calc
    Fintype.card (BasedCycleData alternatingUnitGraph 1) =
      Matrix.trace (labeledAdjacency alternatingUnitGraph ^ 1) :=
        (trace_pow_eq_card_based_cycles alternatingUnitGraph 1).symm
    _ = Matrix.trace (labeledAdjacency alternatingUnitGraph) := by rw [pow_one]
    _ = 0 := alternating_trace_one

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
