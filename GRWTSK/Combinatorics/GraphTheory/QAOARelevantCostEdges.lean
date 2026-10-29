/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.Combinatorics.GraphTheory.QAOAGirthGraphBridge

set_option autoImplicit false

/-!
# Exact relevant cost edges for finite QAOA edge-cone expectations

The regular-MaxCut argument in the September 25, 2026 OpenAI paper
restricts backward cost edges at depth p to those incident to the
radius-(p-1) neighborhood of the distinguished edge's endpoints.

This module proves this restriction as EXACT finite operator equality.
The earlier forward circuit applies cost then mixer in each round.
Backward Heisenberg recursion thus processes later rounds before earlier
ones, applying each mixer conjugation immediately before its cost layer.
At a round with n later rounds, the incoming operator is local to the
original radius-n vertex cone. Its full-graph cost conjugation agrees
entrywise with the conjugation by only cost edges incident to that cone.

The trimmed recursion thus equals the complete assembled circuit's
two-sided matrix conjugation for any initially S-local kernel, even
when the kernel is non-diagonal. The union of all consulted cost edges
is EXACTLY the edges touching the radius-(p-1) cone for positive p.
At depth zero the union is empty.

This is strictly a finite relevant-edge theorem. Neither a regular
tree neighborhood isomorphism nor transfer of expectations across
different graphs follows merely from this cancellation. Those bridges,
and subsequent tree-to-SK, Parisi and synthesis arguments, remain open.
All Lean declarations here are source-level proof candidates, awaiting
actual compilation, fresh kernel checking and an axiom audit.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOARelevantCostEdges

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACostLayerCone
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOARoundCone
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACircuitMatrix
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGirthGraphBridge

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- The finite cost-edge cone at round depth p. At p=0 it is empty.
At p=n+1 it is the set of represented edges incident to the
original radius-n vertex cone, NOT all edges induced by the next cone. -/
noncomputable def relevantCostEdges
    (G : SimpleEdgePresentation V) (S : Finset V) :
    ℕ → Finset (V × V)
  | 0 => ∅
  | n + 1 => incidentEdges G (cone G S n)

theorem relevantCostEdges_zero
    (G : SimpleEdgePresentation V) (S : Finset V) :
    relevantCostEdges G S 0 = ∅ := rfl

theorem relevantCostEdges_succ
    (G : SimpleEdgePresentation V) (S : Finset V) (n : ℕ) :
    relevantCostEdges G S (n + 1) =
      incidentEdges G (cone G S n) := rfl

/-- Exact membership formula, with the real representative edge set. -/
theorem mem_relevantCostEdges_succ
    (G : SimpleEdgePresentation V) (S : Finset V)
    (n : ℕ) (e : V × V) :
    e ∈ relevantCostEdges G S (n + 1) ↔
      e ∈ G.edges ∧ touches (cone G S n) e := by
  simp only [relevantCostEdges_succ, incidentEdges, Finset.mem_filter]

/-- Both endpoints of an edge actually used by a cost gate belong
to the NEXT vertex cone. No converse inclusion is asserted. -/
theorem relevantCostEdges_endpoints_in_next_cone
    (G : SimpleEdgePresentation V) (S : Finset V)
    (n : ℕ) (e : V × V)
    (he : e ∈ relevantCostEdges G S (n + 1)) :
    e.1 ∈ cone G S (n + 1) ∧ e.2 ∈ cone G S (n + 1) := by
  obtain ⟨hEdge, hTouch⟩ :=
    (mem_relevantCostEdges_succ G S n e).mp he
  constructor
  · change e.1 ∈ incidentClosure G (cone G S n)
    exact endpoint_mem_incidentClosure G (cone G S n)
      e hEdge hTouch e.1 (by simp)
  · change e.2 ∈ incidentClosure G (cone G S n)
    exact endpoint_mem_incidentClosure G (cone G S n)
      e hEdge hTouch e.2 (by simp)

/-- Enlarging the original support cannot remove incident cost edges. -/
theorem incidentEdges_mono
    (G : SimpleEdgePresentation V) {S T : Finset V}
    (hST : S ⊆ T) :
    incidentEdges G S ⊆ incidentEdges G T := by
  intro e he
  simp only [incidentEdges, Finset.mem_filter, touches] at he ⊢
  refine ⟨he.1, ?_⟩
  rcases he.2 with h | h
  · exact Or.inl (hST h)
  · exact Or.inr (hST h)

/-- The relevant set is monotone in circuit depth, using the actual
QAOA cone monotonicity proved by the earlier finite source. -/
theorem relevantCostEdges_subset_next
    (G : SimpleEdgePresentation V) (S : Finset V) (n : ℕ) :
    relevantCostEdges G S n ⊆ relevantCostEdges G S (n + 1) := by
  cases n with
  | zero =>
      change (∅ : Finset (V × V)) ⊆ relevantCostEdges G S 1
      exact Finset.empty_subset _
  | succ k =>
      change incidentEdges G (cone G S k) ⊆
        incidentEdges G (cone G S (k + 1))
      exact incidentEdges_mono G (cone_subset_cone_succ G S k)

/-- Union of all cost-edge sets actually consulted by a truncated
Heisenberg circuit. The head uses the original radius given by the
number of rounds in the tail, because the tail is processed first. -/
noncomputable def consultedCostEdges
    (G : SimpleEdgePresentation V) (S : Finset V) :
    List (ℝ × ℝ) → Finset (V × V)
  | [] => ∅
  | _ :: rest =>
      incidentEdges G (cone G S rest.length) ∪
        consultedCostEdges G S rest

/-- All cost edges consulted across a p-round circuit are EXACTLY
the edges incident to the original radius-(p-1) vertex cone for p>0.
This is stronger than bounding them by the entire graph or by every
edge induced by the radius-p vertex set. -/
theorem consultedCostEdges_eq_relevant
    (G : SimpleEdgePresentation V) (S : Finset V)
    (angles : List (ℝ × ℝ)) :
    consultedCostEdges G S angles =
      relevantCostEdges G S angles.length := by
  induction angles with
  | nil =>
      rfl
  | cons pair rest ih =>
      change incidentEdges G (cone G S rest.length) ∪
          consultedCostEdges G S rest =
        incidentEdges G (cone G S rest.length)
      rw [ih]
      have hsubset :=
        relevantCostEdges_subset_next G S rest.length
      change relevantCostEdges G S rest.length ⊆
        incidentEdges G (cone G S rest.length) at hsubset
      apply Finset.Subset.antisymm
      · intro e he
        rcases Finset.mem_union.mp he with h | h
        · exact h
        · exact hsubset h
      · exact Finset.subset_union_left

/-- Every cost edge consulted by the trimmed finite circuit is a
genuine represented graph edge; no extra adjacency is assumed. -/
theorem consultedCostEdges_subset_graph
    (G : SimpleEdgePresentation V) (S : Finset V)
    (angles : List (ℝ × ℝ)) :
    consultedCostEdges G S angles ⊆ G.edges := by
  rw [consultedCostEdges_eq_relevant]
  cases angles with
  | nil =>
      simp [relevantCostEdges]
  | cons pair rest =>
      intro e he
      exact ((mem_relevantCostEdges_succ
        G S rest.length e).mp he).1

/-- Trimmed finite Heisenberg circuit: full mixer conjugation, but
cost phases restricted to edges incident to the suffix's original
support cone. The definition is independent of any tree transport. -/
noncomputable def relevantCircuitHeisenberg
    (G : SimpleEdgePresentation V) (S : Finset V) :
    List (ℝ × ℝ) → Kernel V → Kernel V
  | [], K => K
  | pair :: rest, K =>
      incidentCostConjugate G pair.1 (cone G S rest.length)
        (mixerLayerHeisenberg pair.2
          (relevantCircuitHeisenberg G S rest K))

/-- Every backward full cost phase can be exactly replaced by the
incident phase at that suffix radius, for ANY original S-local
operator kernel, including arbitrary non-diagonal operators. -/
theorem relevantCircuitHeisenberg_eq_full
    (G : SimpleEdgePresentation V) (S : Finset V)
    (angles : List (ℝ × ℝ)) :
    ∀ K : Kernel V, IsLocalKernel S K →
      relevantCircuitHeisenberg G S angles K =
        qaoaCircuitHeisenberg G angles K := by
  induction angles with
  | nil =>
      intro K hK
      rfl
  | cons pair rest ih =>
      intro K hK
      change
        incidentCostConjugate G pair.1 (cone G S rest.length)
          (mixerLayerHeisenberg pair.2
            (relevantCircuitHeisenberg G S rest K)) =
        fullCostConjugate G pair.1
          (mixerLayerHeisenberg pair.2
            (qaoaCircuitHeisenberg G rest K))
      rw [ih K hK]
      have hRest :=
        qaoaCircuitHeisenberg_local G S rest K hK
      have hMixer :=
        mixerLayerHeisenberg_local pair.2
          (cone G S rest.length)
          (qaoaCircuitHeisenberg G rest K) hRest
      exact (fullCostConjugate_eq_incidentCostConjugate
        G pair.1 (cone G S rest.length)
        (mixerLayerHeisenberg pair.2
          (qaoaCircuitHeisenberg G rest K)) hMixer).symm

/-- The trimmed recursion equals the full assembled QAOA CIRCUIT
matrix conjugation, not merely an analogous formal gate word. -/
theorem relevantCircuitHeisenberg_eq_circuitMatrix
    (G : SimpleEdgePresentation V) (S : Finset V)
    (angles : List (ℝ × ℝ)) (K : Kernel V)
    (hK : IsLocalKernel S K) :
    relevantCircuitHeisenberg G S angles K =
      kernelConjugate (qaoaCircuitKernel G angles) K := by
  calc
    _ = qaoaCircuitHeisenberg G angles K :=
      relevantCircuitHeisenberg_eq_full G S angles K hK
    _ = kernelConjugate (qaoaCircuitKernel G angles) K :=
      (qaoaCircuitKernel_conjugate_eq_heisenberg G angles K).symm

/-- Exact clipping also retains the original finite support bound. -/
theorem relevantCircuitHeisenberg_local
    (G : SimpleEdgePresentation V) (S : Finset V)
    (angles : List (ℝ × ℝ)) (K : Kernel V)
    (hK : IsLocalKernel S K) :
    IsLocalKernel (cone G S angles.length)
      (relevantCircuitHeisenberg G S angles K) := by
  rw [relevantCircuitHeisenberg_eq_full G S angles K hK]
  exact qaoaCircuitHeisenberg_local G S angles K hK

/-- Distinguished edge observable: the complete QAOA finite-circuit
Heisenberg result is exactly recovered by the relevant cost-edge word,
with radius p-1 for a nonzero depth p. -/
theorem edge_relevantCircuit_eq_fullMatrix
    (G : SimpleEdgePresentation V) (angles : List (ℝ × ℝ))
    (e : V × V) :
    relevantCircuitHeisenberg G
        ({e.1, e.2} : Finset V) angles
        (edgeObservableKernel e) =
      kernelConjugate (qaoaCircuitKernel G angles)
        (edgeObservableKernel e) := by
  exact relevantCircuitHeisenberg_eq_circuitMatrix G
    ({e.1, e.2} : Finset V) angles
    (edgeObservableKernel e) (edgeObservableKernel_local e)

/-- All actually relevant cost-edge endpoints of an edge observable at
depth n+1 lie in its radius-(n+1) vertex cone; the CONVERSE need not hold. -/
theorem edge_relevantCostEdges_endpoints
    (G : SimpleEdgePresentation V) (e f : V × V)
    (n : ℕ)
    (hf : f ∈ relevantCostEdges G
      ({e.1, e.2} : Finset V) (n + 1)) :
    f.1 ∈ cone G ({e.1, e.2} : Finset V) (n + 1) ∧
      f.2 ∈ cone G ({e.1, e.2} : Finset V) (n + 1) :=
  relevantCostEdges_endpoints_in_next_cone G
    ({e.1, e.2} : Finset V) n f hf

/-! ## A finite obstruction to replacing the edge cone by the induced vertex ball -/

/-- A four-cycle with one edge representative per underlying undirected
edge. This is only a FINITE graph carrier, not a proof of its Mathlib
girth value or of any probabilistic regular-graph assertion. -/
def fourCyclePresentation : SimpleEdgePresentation (Fin 4) where
  edges := {
    ((0 : Fin 4), (1 : Fin 4)),
    ((1 : Fin 4), (2 : Fin 4)),
    ((2 : Fin 4), (3 : Fin 4)),
    ((3 : Fin 4), (0 : Fin 4))
  }
  loopless := by decide
  noReverse := by decide

/-- At depth one, the opposite edge (2,3) of this four-cycle has BOTH
endpoints in the radius-one vertex cone of the distinguished edge
(0,1), but is NOT among the cost edges touching the original support.
This formally separates the relevant edge cone from all edges induced
on the larger vertex cone. -/
theorem fourCycle_fringe_edge_not_relevant :
    ((2 : Fin 4), (3 : Fin 4)) ∈ fourCyclePresentation.edges ∧
    (2 : Fin 4) ∈ cone fourCyclePresentation
      ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)) 1 ∧
    (3 : Fin 4) ∈ cone fourCyclePresentation
      ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)) 1 ∧
    ((2 : Fin 4), (3 : Fin 4)) ∉ relevantCostEdges fourCyclePresentation
      ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)) 1 := by
  constructor
  · decide
  constructor
  · change (2 : Fin 4) ∈ incidentClosure fourCyclePresentation
      ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4))
    apply (mem_incidentClosure_iff fourCyclePresentation
      ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)) 2).mpr
    right
    refine ⟨1, by decide, ?_⟩
    change presentedAdj fourCyclePresentation (1 : Fin 4) (2 : Fin 4)
    exact Or.inl (by decide)
  constructor
  · change (3 : Fin 4) ∈ incidentClosure fourCyclePresentation
      ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4))
    apply (mem_incidentClosure_iff fourCyclePresentation
      ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)) 3).mpr
    right
    refine ⟨0, by decide, ?_⟩
    change presentedAdj fourCyclePresentation (0 : Fin 4) (3 : Fin 4)
    exact Or.inr (by decide)
  · intro he
    have ht : touches
        ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4))
        ((2 : Fin 4), (3 : Fin 4)) :=
      ((mem_relevantCostEdges_succ fourCyclePresentation
        ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4))
        0 ((2 : Fin 4), (3 : Fin 4))).mp he).2
    have hnot : ¬ touches
        ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4))
        ((2 : Fin 4), (3 : Fin 4)) := by decide
    exact hnot ht

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOARelevantCostEdges
