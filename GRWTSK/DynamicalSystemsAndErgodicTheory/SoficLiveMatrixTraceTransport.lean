/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPositiveCycleLiveEquiv
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficLiveRepresentationIntegration
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Trace transport under exact original labeled-graph state isomorphisms

There are two independent mathematical mechanisms in this source:
(1) a genuine positive-length based-cycle bijection before
    and after removing dead states, in SoficPositiveCycleLiveEquiv;
(2) an exact all-length labeled-walk matrix recurrence transport
    across an equivalence of actual graph states that preserves
    the original edge predicate at every (source,label,target).

The second argument is not deduced from a periodic-label cardinality:
each original edge-letter multiplicity is preserved, each
labeledWalkCount endpoint entry is reindexed exactly, and the
original Fintype sum of diagonal matrix entries changes only
its bijective state index. Therefore its trace is invariant
for ALL n, including n=0, under this genuine state isomorphism.

Apply (2) to the existing type equivalence between the finite
q-round surviving graph and the right-live graph. Combine with
(1) to conclude that original positive-length graph adjacency
traces are preserved under the concrete finite pruning algorithm.

The positivity n>0 is essential only for comparison of the
UNPRUNED original graph with the right-live graph. At n=0
the original matrix identity counts ALL original states and
can lose dead ones. No equality of graph states or matrix
coefficients across unrelated presentations is asserted.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLiveMatrixTraceTransport

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePruning
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLiveSubgraph
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLiveRepresentationIntegration
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPositiveCycleLiveEquiv
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficDeadEndPruning

universe u v w
variable {S : Type u} {T : Type w} {Alphabet : Type v}
variable [Fintype S] [DecidableEq S]
variable [Fintype T] [DecidableEq T] [Fintype Alphabet]

/-- An exact isomorphism of finite edge-LABELED graphs.
In particular it cannot identify parallel original words
or silently change source labels or an edge proposition. -/
def IsLabeledGraphEquiv
    (G : LabeledGraph S Alphabet)
    (H : LabeledGraph T Alphabet)
    (e : S ≃ T) : Prop :=
  ∀ s : S, ∀ a : Alphabet, ∀ t : S,
    G.edge s a t ↔ H.edge (e s) a (e t)

/-- The exact original Nat edge multiplicity at every endpoint
pair is unchanged by a vertex equivalence preserving EACH
original indexed label-edge predicate. -/
theorem edgeMultiplicity_eq_of_graphEquiv
    (G : LabeledGraph S Alphabet)
    (H : LabeledGraph T Alphabet)
    (e : S ≃ T) (hIso : IsLabeledGraphEquiv G H e)
    (s t : S) :
    edgeMultiplicity G s t =
      edgeMultiplicity H (e s) (e t) := by
  classical
  unfold edgeMultiplicity
  apply Finset.sum_congr rfl
  intro a _
  rw [hIso s a t]

/-- Every exact source walk-count entry, including its full
intermediate-state and letter multiplicity, transports to
the same integer after bijective state reindexing. -/
theorem labeledWalkCount_eq_of_graphEquiv
    (G : LabeledGraph S Alphabet)
    (H : LabeledGraph T Alphabet)
    (e : S ≃ T) (hIso : IsLabeledGraphEquiv G H e)
    (n : ℕ) :
    ∀ s t : S,
      labeledWalkCount G n s t =
        labeledWalkCount H n (e s) (e t) := by
  classical
  induction n with
  | zero =>
      intro s t
      by_cases hs : s = t
      · subst t
        simp [labeledWalkCount]
      · have he : e s ≠ e t := fun h => hs (e.injective h)
        simp [labeledWalkCount, hs, he]
  | succ n ih =>
      intro s t
      change
        (∑ mid : S,
          labeledWalkCount G n s mid * edgeMultiplicity G mid t) =
        (∑ mid : T,
          labeledWalkCount H n (e s) mid *
            edgeMultiplicity H mid (e t))
      calc
        (∑ mid : S,
          labeledWalkCount G n s mid * edgeMultiplicity G mid t) =
          ∑ mid : S,
            labeledWalkCount H n (e s) (e mid) *
              edgeMultiplicity H (e mid) (e t) := by
            apply Finset.sum_congr rfl
            intro mid _
            rw [ih s mid, edgeMultiplicity_eq_of_graphEquiv G H e hIso mid t]
        _ = ∑ mid : T,
              labeledWalkCount H n (e s) mid *
                edgeMultiplicity H mid (e t) :=
          Equiv.sum_comp e (fun mid : T =>
            labeledWalkCount H n (e s) mid *
              edgeMultiplicity H mid (e t))

/-- Under a genuine labeled-graph STATE equivalence, the
ORIGINAL adjacency traces agree for EVERY n >= 0.
Unlike dead-state pruning, the state types have equal cardinal. -/
theorem trace_pow_eq_of_graphEquiv
    (G : LabeledGraph S Alphabet)
    (H : LabeledGraph T Alphabet)
    (e : S ≃ T) (hIso : IsLabeledGraphEquiv G H e)
    (n : ℕ) :
    Matrix.trace (labeledAdjacency G ^ n) =
      Matrix.trace (labeledAdjacency H ^ n) := by
  classical
  calc
    Matrix.trace (labeledAdjacency G ^ n) =
        ∑ s : S, labeledWalkCount G n s s :=
      trace_pow_eq_basedClosedWalkCount G n
    _ = ∑ s : S, labeledWalkCount H n (e s) (e s) := by
      apply Finset.sum_congr rfl
      intro s _
      exact labeledWalkCount_eq_of_graphEquiv G H e hIso n s s
    _ = ∑ t : T, labeledWalkCount H n t t :=
      Equiv.sum_comp e (fun t : T => labeledWalkCount H n t t)
    _ = Matrix.trace (labeledAdjacency H ^ n) :=
      (trace_pow_eq_basedClosedWalkCount H n).symm

variable {State : Type u}
variable [Fintype State] [DecidableEq State]

/-- Exact edge-by-edge source isomorphism between the concrete
q-round pruned graph and the original right-live graph. The
state map transports only proof-valued liveness fields;
the literal original underlying state and label are unchanged. -/
theorem finitePrunedGraph_labeled_isomorphism
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) :
    IsLabeledGraphEquiv
      (finitePrunedGraph G decEdge) (rightLiveGraph G)
      (prunedState_equiv_rightLiveState G decEdge) := by
  intro s a t
  rfl

/-- The two independently developed right-live graph
representations and the q-round concrete survivor graph have
exactly the SAME based-cycle adjacency traces for EVERY n>=0,
because their source state types are actually bijective. -/
theorem finitePruned_trace_eq_rightLive_trace
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (n : ℕ) :
    Matrix.trace (labeledAdjacency (finitePrunedGraph G decEdge) ^ n) =
      Matrix.trace (labeledAdjacency (rightLiveGraph G) ^ n) := by
  classical
  letI : Fintype
      {s : State // s ∈ retainedAfter G decEdge (Fintype.card State)} :=
    Fintype.ofFinite _
  letI : DecidableEq
      {s : State // s ∈ retainedAfter G decEdge (Fintype.card State)} :=
    Classical.decEq _
  letI : Fintype (RightLiveState G) := Fintype.ofFinite _
  letI : DecidableEq (RightLiveState G) := Classical.decEq _
  exact trace_pow_eq_of_graphEquiv
    (finitePrunedGraph G decEdge) (rightLiveGraph G)
    (prunedState_equiv_rightLiveState G decEdge)
    (finitePrunedGraph_labeled_isomorphism G decEdge) n

/-- MAIN original graph theorem: for every positive n, finite
q-round dead-end pruning preserves the complete ORIGINAL
Nat-valued adjacency-matrix trace, including every based
cycle multiplicity. This uses the actual cycle witness
equivalence, not equality of distinct periodic-label counts. -/
theorem positive_trace_eq_finitePruned_trace
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) =
      Matrix.trace (labeledAdjacency (finitePrunedGraph G decEdge) ^ n) := by
  classical
  letI : Fintype (LiveVertex G) := Fintype.ofFinite _
  letI : DecidableEq (LiveVertex G) := Classical.decEq _
  letI : Fintype
      {s : State // s ∈ retainedAfter G decEdge (Fintype.card State)} :=
    Fintype.ofFinite _
  letI : DecidableEq
      {s : State // s ∈ retainedAfter G decEdge (Fintype.card State)} :=
    Classical.decEq _
  letI : Fintype (RightLiveState G) := Fintype.ofFinite _
  letI : DecidableEq (RightLiveState G) := Classical.decEq _
  calc
    Matrix.trace (labeledAdjacency G ^ n) =
        Matrix.trace (labeledAdjacency (rightLiveSubgraph G) ^ n) :=
      positive_trace_eq_rightLive_trace G n hn
    _ = Matrix.trace (labeledAdjacency (rightLiveGraph G) ^ n) := by
      rw [rightLiveGraph_eq_rightLiveSubgraph G]
    _ = Matrix.trace
          (labeledAdjacency (finitePrunedGraph G decEdge) ^ n) :=
      (finitePruned_trace_eq_rightLive_trace G decEdge n).symm

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLiveMatrixTraceTransport
