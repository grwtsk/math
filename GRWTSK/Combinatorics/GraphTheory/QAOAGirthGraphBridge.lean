/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.Combinatorics.GraphTheory.QAOACircuitMatrix
import Mathlib.Combinatorics.SimpleGraph.Girth

set_option autoImplicit false

/-!
# A Mathlib simple-graph carrier for finite QAOA causal cones and girth

The existing finite-QAOA modules use one oriented representative per
undirected edge. Mathlib girth, degree, and graph-metric constructions
instead use SimpleGraph. This source defines the exact adjacency
translation and checks its symmetric, irreflexive graph properties.

The QAOA incidentClosure is shown to be exactly one step of Mathlib
graph adjacency: keep the original support, and add every neighbor of
one of its vertices. Iterating this native adjacency-neighborhood
therefore gives the same support bound as the assembled QAOA circuit.

The extended girth SimpleGraph.egirth is used rather than the natural
girth, because it takes the value infinity for acyclic graphs.
An explicit high-girth hypothesis excludes every cycle of length at
most the stated bound, including bounds 2*p+1 from the cited paper.
This is a cycle-exclusion theorem, NOT yet a proof that the edge-rooted
p-neighborhood is the finite truncation of a regular tree.

A regular (D+1)-graph degree condition is exposed as an interface on
the faithfully bridged Mathlib simple graph. The actual graph/tree
neighborhood isomorphism and local QAOA expectation transfer between
different graphs remain independent mathematical suppliers.

Everything here is source-level mathematics pending actual compilation,
fresh kernel checking, and a transitive axiom audit. No randomized graph,
SK/Parisi, seed-removal, or QAOA optimality limit is asserted.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGirthGraphBridge

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOARoundCone
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACircuitMatrix

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- Symmetric adjacency of the graph specified by its unique oriented
undirected-edge representatives. -/
def presentedAdj (G : SimpleEdgePresentation V) (u v : V) : Prop :=
  (u, v) ∈ G.edges ∨ (v, u) ∈ G.edges

theorem presentedAdj_symm (G : SimpleEdgePresentation V)
    (u v : V) (h : presentedAdj G u v) : presentedAdj G v u := by
  rcases h with h | h
  · exact Or.inr h
  · exact Or.inl h

theorem presentedAdj_irrefl (G : SimpleEdgePresentation V)
    (v : V) : ¬ presentedAdj G v v := by
  intro h
  rcases h with h | h
  · exact (G.loopless (v, v) h) rfl
  · exact (G.loopless (v, v) h) rfl

/-- The precise Mathlib SimpleGraph represented by the original
finite oriented-edge presentation, with no new mathematical edges. -/
def presentedGraph (G : SimpleEdgePresentation V) : SimpleGraph V where
  Adj := presentedAdj G
  symm := by
    intro u v h
    exact presentedAdj_symm G u v h
  loopless := by
    intro v
    exact presentedAdj_irrefl G v

@[simp] theorem presentedGraph_adj_iff
    (G : SimpleEdgePresentation V) (u v : V) :
    (presentedGraph G).Adj u v ↔
      (u, v) ∈ G.edges ∨ (v, u) ∈ G.edges := Iff.rfl

/-- The represented graph has no self-edge, using the original no-loop
hypothesis rather than postulating an unrelated graph property. -/
theorem presentedGraph_not_adj_self
    (G : SimpleEdgePresentation V) (v : V) :
    ¬ (presentedGraph G).Adj v v :=
  presentedAdj_irrefl G v

/-- One graph adjacency step from S, with every old vertex retained. -/
noncomputable def graphNeighborhood
    (G : SimpleEdgePresentation V) (S : Finset V) : Finset V := by
  classical
  exact S ∪ Finset.univ.filter
    (fun w => ∃ u ∈ S, (presentedGraph G).Adj u w)

theorem mem_graphNeighborhood_iff
    (G : SimpleEdgePresentation V) (S : Finset V) (w : V) :
    w ∈ graphNeighborhood G S ↔
      w ∈ S ∨ ∃ u ∈ S, (presentedGraph G).Adj u w := by
  classical
  simp [graphNeighborhood]

/-- The previous QAOA closure adds precisely the Mathlib neighbors
of the ORIGINAL support, without additional edges or extra layers. -/
theorem mem_incidentClosure_iff
    (G : SimpleEdgePresentation V) (S : Finset V) (w : V) :
    w ∈ incidentClosure G S ↔
      w ∈ S ∨ ∃ u ∈ S, (presentedGraph G).Adj u w := by
  classical
  constructor
  · intro hw
    change w ∈ S ∪ G.edges.biUnion
      (fun e => if e.1 ∈ S ∨ e.2 ∈ S then
        ({e.1, e.2} : Finset V) else ∅) at hw
    rcases Finset.mem_union.mp hw with hwS | hwB
    · exact Or.inl hwS
    · obtain ⟨e, he, hinc⟩ := Finset.mem_biUnion.mp hwB
      by_cases hs : e.1 ∈ S ∨ e.2 ∈ S
      · have hends : w = e.1 ∨ w = e.2 := by
          have hmem : w ∈ ({e.1, e.2} : Finset V) := by
            simpa [hs] using hinc
          simpa using hmem
        rcases hs with hs | hs
        · rcases hends with heq | heq
          · exact Or.inl (by simpa [heq] using hs)
          · right
            refine ⟨e.1, hs, ?_⟩
            change presentedAdj G e.1 w
            exact Or.inl (by simpa [heq] using he)
        · rcases hends with heq | heq
          · right
            refine ⟨e.2, hs, ?_⟩
            change presentedAdj G e.2 w
            exact Or.inr (by simpa [heq] using he)
          · exact Or.inl (by simpa [heq] using hs)
      · have habsurd : False := by simpa [hs] using hinc
        exact False.elim habsurd
  · intro hw
    change w ∈ S ∪ G.edges.biUnion
      (fun e => if e.1 ∈ S ∨ e.2 ∈ S then
        ({e.1, e.2} : Finset V) else ∅)
    rcases hw with hwS | ⟨u, hu, hadj⟩
    · exact Finset.mem_union.mpr (Or.inl hwS)
    · change presentedAdj G u w at hadj
      rcases hadj with h | h
      · apply Finset.mem_union.mpr
        right
        apply Finset.mem_biUnion.mpr
        refine ⟨(u, w), h, ?_⟩
        simp [hu]
      · apply Finset.mem_union.mpr
        right
        apply Finset.mem_biUnion.mpr
        refine ⟨(w, u), h, ?_⟩
        simp [hu]

/-- Exact equality of the previous QAOA one-step closure and one
adjacency step on the actual Mathlib graph. -/
theorem incidentClosure_eq_graphNeighborhood
    (G : SimpleEdgePresentation V) (S : Finset V) :
    incidentClosure G S = graphNeighborhood G S := by
  classical
  ext w
  exact (mem_incidentClosure_iff G S w).trans
    (mem_graphNeighborhood_iff G S w).symm

/-- Repeated neighborhoods in the Mathlib adjacency graph. -/
noncomputable def graphCone (G : SimpleEdgePresentation V)
    (S : Finset V) : ℕ → Finset V
  | 0 => S
  | n + 1 => graphNeighborhood G (graphCone G S n)

/-- The QAOA cone equals repeated native graph neighborhoods, at every
finite depth, with exactly the same vertex support. -/
theorem cone_eq_graphCone
    (G : SimpleEdgePresentation V) (S : Finset V) (p : ℕ) :
    cone G S p = graphCone G S p := by
  induction p with
  | zero => rfl
  | succ n ih =>
      change incidentClosure G (cone G S n) =
        graphNeighborhood G (graphCone G S n)
      rw [incidentClosure_eq_graphNeighborhood, ih]

/-- Transport the assembled QAOA circuit's finite edge cone to the
Mathlib adjacency graph, without strengthening its previous hypotheses. -/
theorem qaoaCircuitKernel_edge_graphCone
    (G : SimpleEdgePresentation V)
    (angles : List (ℝ × ℝ)) (e : V × V) :
    IsLocalKernel
      (graphCone G ({e.1, e.2} : Finset V) angles.length)
      (kernelConjugate (qaoaCircuitKernel G angles)
        (edgeObservableKernel e)) := by
  simpa only [cone_eq_graphCone] using
    (qaoaCircuitKernel_edge_cone G angles e)

/-- Exact regular-degree premise on the same finite graph whose
adjacency and cones have been connected to the QAOA carrier. -/
noncomputable def IsRegularDegree
    (G : SimpleEdgePresentation V) (degree : ℕ) : Prop := by
  classical
  exact ∀ v : V, (presentedGraph G).degree v = degree

/-- Extended-girth strict bound, including acyclic graphs with
egirth infinity rather than ordinary girth zero. -/
noncomputable def HasGirthAbove
    (G : SimpleEdgePresentation V) (bound : ℕ) : Prop :=
  (bound : ℕ∞) < (presentedGraph G).egirth

/-- A strict high-girth assumption forbids every cycle of length no
greater than the bound, including cycles in disconnected components. -/
theorem no_short_cycle_of_girthAbove
    (G : SimpleEdgePresentation V) (bound : ℕ)
    (hG : HasGirthAbove G bound)
    {v : V} (w : (presentedGraph G).Walk v v)
    (hw : w.IsCycle) :
    (bound : ℕ∞) < (w.length : ℕ∞) := by
  exact lt_of_lt_of_le hG (SimpleGraph.egirth_le_length hw)

/-- The exact girth threshold used for fixed-depth regular-MaxCut
QAOA in the cited paper, retained as an explicit premise. -/
noncomputable def HighGirthAtDepth
    (G : SimpleEdgePresentation V) (p : ℕ) : Prop :=
  HasGirthAbove G (2 * p + 1)

/-- At threshold 2p+1 every cycle is strictly longer than 2p+1;
tree-neighborhood equivalence is a separate missing theorem. -/
theorem cycles_longer_than_two_depth_add_one
    (G : SimpleEdgePresentation V) (p : ℕ)
    (hG : HighGirthAtDepth G p)
    {v : V} (w : (presentedGraph G).Walk v v)
    (hw : w.IsCycle) :
    ((2 * p + 1 : ℕ) : ℕ∞) < (w.length : ℕ∞) :=
  no_short_cycle_of_girthAbove G (2 * p + 1) hG w hw

/-- Named interface for a finite (D+1)-regular graph with the exact
paper-style girth bound; this does not construct a universal cover. -/
noncomputable def RegularHighGirthAtDepth
    (G : SimpleEdgePresentation V) (D p : ℕ) : Prop :=
  IsRegularDegree G (D + 1) ∧ HighGirthAtDepth G p

/-- Cycle exclusion under the combined regular/high-girth interface;
the degree hypothesis is not needed for this particular consequence. -/
theorem regularHighGirth_no_short_cycle
    (G : SimpleEdgePresentation V) (D p : ℕ)
    (hG : RegularHighGirthAtDepth G D p)
    {v : V} (w : (presentedGraph G).Walk v v)
    (hw : w.IsCycle) :
    ((2 * p + 1 : ℕ) : ℕ∞) < (w.length : ℕ∞) :=
  cycles_longer_than_two_depth_add_one G p hG.2 w hw

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGirthGraphBridge
