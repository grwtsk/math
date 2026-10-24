# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphCut.Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76a17f8641ec86c651522130905b7582d4bcf01e` · SHA-256 `9f14d8c401c969fc97d91a04e90f2b00a2557693e49cb8206331d21da7a77830`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphCut.Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.GraphCut.Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/GraphCut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Basic
import Mathlib.Data.Finset.Sort

/-!
# Immutable finite graph cut

The graph cut owns all finite carriers, endpoint maps, class data, canonical
codes, and source identity needed by one graph-access invocation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphCut.Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f

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
```
