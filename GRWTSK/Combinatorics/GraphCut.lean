import Mathematics.GraphAccess.Basic
import Mathlib.Data.Finset.Sort

/-!
# Immutable finite graph cut

The graph cut owns all finite carriers, endpoint maps, class data, canonical
codes, and source identity needed by one graph-access invocation.
-/

namespace Mathematics.GraphAccess

universe uNode uEdge uClass

set_option linter.checkUnivs false in
structure GraphCut where
  Node : Type uNode
  Edge : Type uEdge
  EdgeClass : Type uClass
  nodeFintype : Fintype Node
  edgeFintype : Fintype Edge
  edgeClassFintype : Fintype EdgeClass
  nodeDecEq : DecidableEq Node
  edgeDecEq : DecidableEq Edge
  edgeClassDecEq : DecidableEq EdgeClass
  nodeOrder : LinearOrder Node
  edgeOrder : LinearOrder Edge
  edgeClassOrder : LinearOrder EdgeClass
  source : Edge → Node
  target : Edge → Node
  edgeClass : Edge → EdgeClass
  nodeCode : Node → CanonicalCode
  edgeCode : Edge → CanonicalCode
  edgeClassCode : EdgeClass → CanonicalCode
  nodeCode_injective : Function.Injective nodeCode
  edgeCode_injective : Function.Injective edgeCode
  edgeClassCode_injective :
    Function.Injective edgeClassCode
  nodeOrder_coherent :
    ∀ left right, left < right ↔
      nodeCode left < nodeCode right
  edgeOrder_coherent :
    ∀ left right, left < right ↔
      edgeCode left < edgeCode right
  edgeClassOrder_coherent :
    ∀ left right, left < right ↔
      edgeClassCode left < edgeClassCode right
  digest : CutDigest
  sourceEvent : SourceEventId
  revision : Nat

attribute [instance] GraphCut.nodeFintype
  GraphCut.edgeFintype GraphCut.edgeClassFintype
  GraphCut.nodeDecEq GraphCut.edgeDecEq
  GraphCut.edgeClassDecEq GraphCut.nodeOrder
  GraphCut.edgeOrder GraphCut.edgeClassOrder

namespace GraphCut

def nodeSet (G : GraphCut) : Finset G.Node :=
  Finset.univ

def edgeSet (G : GraphCut) : Finset G.Edge :=
  Finset.univ

def orderedNodes (G : GraphCut) : List G.Node :=
  G.nodeSet.sort (· ≤ ·)

def orderedEdges (G : GraphCut) : List G.Edge :=
  G.edgeSet.sort (· ≤ ·)

@[simp]
theorem mem_orderedNodes
    (G : GraphCut)
    (node : G.Node) :
    node ∈ G.orderedNodes := by
  simp [orderedNodes, nodeSet]

theorem node_mem_orderedNodes
    (G : GraphCut)
    (node : G.Node) :
    node ∈ G.orderedNodes :=
  G.mem_orderedNodes node

@[simp]
theorem mem_orderedEdges
    (G : GraphCut)
    (edge : G.Edge) :
    edge ∈ G.orderedEdges := by
  simp [orderedEdges, edgeSet]

theorem edge_mem_orderedEdges
    (G : GraphCut)
    (edge : G.Edge) :
    edge ∈ G.orderedEdges :=
  G.mem_orderedEdges edge

theorem orderedNodes_nodup
    (G : GraphCut) :
    G.orderedNodes.Nodup :=
  Finset.sort_nodup _ _

theorem orderedEdges_nodup
    (G : GraphCut) :
    G.orderedEdges.Nodup :=
  Finset.sort_nodup _ _

theorem orderedNodes_sorted
    (G : GraphCut) :
    G.orderedNodes.Pairwise (· < ·) :=
  by
    simpa only [orderedNodes] using
      (Finset.sortedLT_sort G.nodeSet).pairwise

theorem orderedEdges_sorted
    (G : GraphCut) :
    G.orderedEdges.Pairwise (· < ·) :=
  by
    simpa only [orderedEdges] using
      (Finset.sortedLT_sort G.edgeSet).pairwise

end GraphCut

end Mathematics.GraphAccess
