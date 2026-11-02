/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficDeadEndPruning
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficRightLivePeriodicInvariant
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Unify original right-live representations and exact shift semantics

Two independently published source branches construct right-live
original graph states:
* SoficRightLiveSubgraph.RightLive, from an actual infinite
  source state/label run;
* SoficRightInfiniteContinuation.GraphRunFrom, from the exact
  SAME original run data.
They are DEFINITIONALLY equivalent, not merely similarly named.
Their derived labeled graphs retain identical original state
values, letters, and edge propositions.

A third branch computes the same live vertex predicate by
finite q-round dead-end pruning with an EXPLICIT decision
procedure for the original G.edge. We exhibit an actual
state equivalence, a typed source-path correspondence, and
the resulting equality of unrooted finite-word languages.

The previously published periodic-label invariance theorem
already proves that trimming does not change true periodic
labels. We strengthen it here to the COMPLETE infinite
factor-language condition, hence literal equality of the
genuine product-topological subshift carriers. This equality
does NOT say the original finite-path language is preserved:
dead-end words can disappear.

The finite pruned graph has an actual labeled outgoing edge
at every retained state, so a second dead-end pruning round
removes nothing. No original adjacency trace multiplicity,
period-compatible cycle bijection, arithmetic cancellation,
or analytical source equation is asserted by this result.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLiveRepresentationIntegration

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteTraceCompactness
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightInfiniteContinuation
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePruning
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePeriodicInvariant
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLiveSubgraph
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalLanguageBoundary
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficDeadEndPruning

universe u v
variable {State : Type u} {Alphabet : Type v}

/-- These earlier definitions are the EXACT same proposition:
there is an ORIGINAL infinite labeled graph run starting at s. -/
theorem rightLive_iff_graphRunFrom
    (G : LabeledGraph State Alphabet) (s : State) :
    RightLive G s ↔ GraphRunFrom G s := Iff.rfl

/-- The earlier two live-graph constructions literally restrict
the SAME state carrier by the SAME original edge predicate.
This comparison introduces no new graph homomorphism premise. -/
theorem rightLiveGraph_eq_rightLiveSubgraph
    (G : LabeledGraph State Alphabet) :
    rightLiveGraph G = rightLiveSubgraph G := rfl

variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- The q-round finite retained-state subtype has precisely
the same ORIGINAL vertices as the previously published live
graph. Both maps are the identity on underlying State. -/
noncomputable def prunedState_equiv_rightLiveState
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) :
    {s : State // s ∈ retainedAfter G decEdge (Fintype.card State)} ≃
      RightLiveState G where
  toFun := fun s =>
    ⟨s.val, (rightLive_iff_graphRunFrom G s.val).mp
      ((mem_retainedAfter_card_iff_rightLive G decEdge s.val).mp s.property)⟩
  invFun := fun s =>
    ⟨s.val, (mem_retainedAfter_card_iff_rightLive G decEdge s.val).mpr
      ((rightLive_iff_graphRunFrom G s.val).mpr s.property)⟩
  left_inv := by
    intro s
    apply Subtype.ext
    rfl
  right_inv := by
    intro s
    apply Subtype.ext
    rfl

/-- The finite pruned graph keeps ONLY original vertices
certified to survive q rounds. The letters and all original
source/letter/target edge propositions are identical. -/
def finitePrunedGraph
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) :
    LabeledGraph
      {s : State // s ∈ retainedAfter G decEdge (Fintype.card State)}
      Alphabet where
  edge := fun s a t => G.edge s.val a t.val

/-- Exact actual-path transport: the q-round finite graph to
the already published right-live graph. No graph cycles or
multiplicities are quotiented in the path correspondence. -/
theorem finitePrunedWordPath_to_rightLive
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) :
    ∀ {s t : {x : State //
          x ∈ retainedAfter G decEdge (Fintype.card State)}}
      {word : List Alphabet},
      WordPath (finitePrunedGraph G decEdge) s word t →
        WordPath (rightLiveGraph G)
          (prunedState_equiv_rightLiveState G decEdge s)
          word
          (prunedState_equiv_rightLiveState G decEdge t) := by
  intro s t word hpath
  induction hpath with
  | nil s =>
      exact WordPath.nil _
  | cons a word hedge tail ih =>
      exact WordPath.cons a word hedge ih

/-- Converse transport: every original right-live labeled path
is a real labeled path in the q-round retained-state graph. -/
theorem rightLiveWordPath_to_finitePruned
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) :
    ∀ {s t : RightLiveState G} {word : List Alphabet},
      WordPath (rightLiveGraph G) s word t →
        WordPath (finitePrunedGraph G decEdge)
          ((prunedState_equiv_rightLiveState G decEdge).symm s)
          word
          ((prunedState_equiv_rightLiveState G decEdge).symm t) := by
  intro s t word hpath
  induction hpath with
  | nil s =>
      exact WordPath.nil _
  | cons a word hedge tail ih =>
      exact WordPath.cons a word hedge ih

/-- Finite pruning computes exactly the finite path language
of the previously published live graph, including the empty
word and empty original state set. -/
theorem finitePrunedGraph_language_iff_rightLive
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (word : List Alphabet) :
    GraphLanguage (finitePrunedGraph G decEdge) word ↔
      GraphLanguage (rightLiveGraph G) word := by
  constructor
  · rintro ⟨s,t,hpath⟩
    exact ⟨prunedState_equiv_rightLiveState G decEdge s,
      prunedState_equiv_rightLiveState G decEdge t,
      finitePrunedWordPath_to_rightLive G decEdge hpath⟩
  · rintro ⟨s,t,hpath⟩
    exact ⟨(prunedState_equiv_rightLiveState G decEdge).symm s,
      (prunedState_equiv_rightLiveState G decEdge).symm t,
      rightLiveWordPath_to_finitePruned G decEdge hpath⟩

/-- Executable Boolean realization is EXACT acceptance by the
finite q-round pruned graph. This connects the existing
computable pruning and exact source WordPath implementations,
without requiring topological assumptions for the query. -/
theorem isRealizedFactor_iff_finitePrunedGraph
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (word : List Alphabet) :
    isRealizedFactor G decEdge word = true ↔
      GraphLanguage (finitePrunedGraph G decEdge) word := by
  calc
    isRealizedFactor G decEdge word = true ↔
        ∃ s t : State, WordPath G s word t ∧ RightLive G t :=
      isRealizedFactor_iff_path_to_rightLive G decEdge word
    _ ↔ RightExtendableGraphWord G word := Iff.rfl
    _ ↔ GraphLanguage (rightLiveGraph G) word :=
      (rightLiveGraph_language_iff_rightExtendable G word).symm
    _ ↔ GraphLanguage (finitePrunedGraph G decEdge) word :=
      (finitePrunedGraph_language_iff_rightLive G decEdge word).symm

/-- The two graph representations have EXACTLY the same
infinite label runs as G. This reuses the existing source
periodic-invariance graph-run result, with no new assumption
of deterministic original edges or a selected start state. -/
theorem originalRuns_iff_finitePrunedRuns
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (trace : ℕ → Alphabet) :
    RunsOnGraph G trace ↔
      RunsOnGraph (finitePrunedGraph G decEdge) trace := by
  constructor
  · intro hrun
    obtain ⟨states, hstep⟩ :=
      (runsOnGraph_original_iff_rightLive G trace).mp hrun
    refine ⟨fun k =>
      (prunedState_equiv_rightLiveState G decEdge).symm
        (states k), ?_⟩
    intro k
    exact hstep k
  · rintro ⟨states,hstep⟩
    refine ⟨fun k => (states k).val, ?_⟩
    intro k
    exact hstep k

/-- ALL original complete finite-factor predicates coincide with
the right-live graph predicate for the SAME infinite label stream.
This is stronger than the already published period-n-only
invariance, and uses the original finite-state compactness proof. -/
theorem allFiniteFactors_original_iff_rightLive
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet) :
    (∀ word : List Alphabet,
      HasFiniteBlock trace word → GraphLanguage G word) ↔
    (∀ word : List Alphabet,
      HasFiniteBlock trace word →
        GraphLanguage (rightLiveGraph G) word) := by
  constructor
  · intro hall
    have hrun : RunsOnGraph G trace :=
      runsOnGraph_of_all_factors G trace hall
    have hLive : RunsOnGraph (rightLiveGraph G) trace :=
      (runsOnGraph_original_iff_rightLive G trace).mp hrun
    intro word hblock
    exact graphLanguage_of_run_block
      (rightLiveGraph G) trace hLive word hblock
  · intro hall word hblock
    obtain ⟨s,t,hpath⟩ := hall word hblock
    exact ⟨s.val,t.val,liveWordPath_to_original G hpath⟩

/-- ALL complete finite-factor predicates also coincide with
the actual finite q-round pruned graph, for every original
infinite label trace, periodic or not. -/
theorem allFiniteFactors_original_iff_finitePruned
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (trace : ℕ → Alphabet) :
    (∀ word : List Alphabet,
      HasFiniteBlock trace word → GraphLanguage G word) ↔
    (∀ word : List Alphabet,
      HasFiniteBlock trace word →
        GraphLanguage (finitePrunedGraph G decEdge) word) := by
  constructor
  · intro hall word hblock
    exact (finitePrunedGraph_language_iff_rightLive G decEdge word).mpr
      ((allFiniteFactors_original_iff_rightLive G trace).mp
        hall word hblock)
  · intro hall word hblock
    exact (allFiniteFactors_original_iff_rightLive G trace).mpr
      (fun w hw =>
        (finitePrunedGraph_language_iff_rightLive G decEdge w).mp
          (hall w hw)) word hblock

variable [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
  [Inhabited Alphabet]

/-- Stronger than merely preserving periodic counts:
the ORIGINAL closed one-sided topological subshift and the
right-live source graph describe exactly the SAME set of
original Nat-indexed infinite alphabet streams. Their
product-topological carrier is literally equal as a Set. -/
theorem completeFactorSubshift_carrier_eq_rightLive
    (G : LabeledGraph State Alphabet) :
    (completeFactorSubshift (GraphLanguage G)).carrier =
      (completeFactorSubshift
        (GraphLanguage (rightLiveGraph G))).carrier := by
  ext trace
  exact (mem_completeFactorSubshift_iff (GraphLanguage G) trace).trans
    ((allFiniteFactors_original_iff_rightLive G trace).trans
      (mem_completeFactorSubshift_iff
        (GraphLanguage (rightLiveGraph G)) trace).symm)

/-- The q-round executable pruning algorithm therefore preserves
the WHOLE genuine topological shift carrier, not merely the
distinct positive-period label counts. Finite dead-end-only
words may still disappear from the finite graph language. -/
theorem completeFactorSubshift_carrier_eq_finitePruned
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) :
    (completeFactorSubshift (GraphLanguage G)).carrier =
      (completeFactorSubshift
        (GraphLanguage (finitePrunedGraph G decEdge))).carrier := by
  ext trace
  exact (mem_completeFactorSubshift_iff (GraphLanguage G) trace).trans
    ((allFiniteFactors_original_iff_finitePruned G decEdge trace).trans
      (mem_completeFactorSubshift_iff
        (GraphLanguage (finitePrunedGraph G decEdge)) trace).symm)

/-- The true realized infinite-factor languages of the original
graph and its finite pruned graph are identical. This does not
claim equality of the two finite-path languages before pruning. -/
theorem realizedTopologicalFactorLanguage_eq_finitePruned
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (word : List Alphabet) :
    realizedTopologicalFactorLanguage (GraphLanguage G) word ↔
      realizedTopologicalFactorLanguage
        (GraphLanguage (finitePrunedGraph G decEdge)) word := by
  unfold realizedTopologicalFactorLanguage
  rw [completeFactorSubshift_carrier_eq_finitePruned G decEdge]

/-- The earlier true periodic-label-point equivalence extends
without any extra faithful-lift or same-period graph hypothesis
to the q-round source graph, with identical original letter
tuples. This is NOT a graph-state cycle-count equivalence. -/
noncomputable def periodicLabelPoint_equiv_finitePruned
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (n : ℕ) (hn : 0 < n) :
    PeriodicLabelPoint (GraphLanguage G) n hn ≃
      PeriodicLabelPoint (GraphLanguage (finitePrunedGraph G decEdge))
        n hn where
  toFun := fun p => ⟨p.val,
    (allFiniteFactors_original_iff_finitePruned
      G decEdge (repeatBlock hn p.val)).mp p.property⟩
  invFun := fun p => ⟨p.val,
    (allFiniteFactors_original_iff_finitePruned
      G decEdge (repeatBlock hn p.val)).mpr p.property⟩
  left_inv := by
    intro p
    apply Subtype.ext
    rfl
  right_inv := by
    intro p
    apply Subtype.ext
    rfl

/-- Distinct genuine period-dividing-n label points have
exactly the same finite cardinal after q-round pruning. -/
theorem periodicLabelPoint_card_eq_finitePruned
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (n : ℕ) (hn : 0 < n) :
    Fintype.card (PeriodicLabelPoint (GraphLanguage G) n hn) =
      Fintype.card
        (PeriodicLabelPoint (GraphLanguage (finitePrunedGraph G decEdge))
          n hn) := by
  classical
  exact Fintype.card_congr
    (periodicLabelPoint_equiv_finitePruned G decEdge n hn)

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLiveRepresentationIntegration
