# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutGraph.Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20a94673bfd331f3eabd34bc21b182c4b847eb7f` · SHA-256 `bf40122a46b58470a3c44cf34113be78d1c569e52893571d61fe38fe516e5ea3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutGraphAdapter.Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimeCutGraphAdapter.Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/PrimeCutGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PrimeUniverse
import Mathematics.GraphAccess.GraphCut

/-!
# Finite prime-cut graph adapter

The Boolean prime cube is presented to the existing immutable `GraphCut`
contract through explicit bijections.  The adapter does not alter foundational
graph-access modes or authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutGraphAdapter.Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670

namespace Mathematics.SemiLocalDefect

open Mathematics.GraphAccess

universe uPrime

structure PrimeCutGraphAdapter
    (primeUniverse :
      FinitePrimeUniverse.{uPrime}) where
  graph : GraphCut.{uPrime, uPrime, 0}
  nodeEquiv :
    graph.Node ≃ Finset primeUniverse.Prime
  edgeEquiv :
    graph.Edge ≃ PrimeInsertionEdge primeUniverse
  source_coherent :
    ∀ edge,
      nodeEquiv (graph.source edge) =
        (edgeEquiv edge).source
  target_coherent :
    ∀ edge,
      nodeEquiv (graph.target edge) =
        (edgeEquiv edge).target
  nodeCount :
    Fintype.card graph.Node =
      2 ^ Fintype.card primeUniverse.Prime
  edgeCount :
    Fintype.card graph.Edge =
      Fintype.card primeUniverse.Prime *
        2 ^ (Fintype.card primeUniverse.Prime - 1)
  digestBindsUniverse : Prop
  digestBindsUniverseProof :
    digestBindsUniverse

theorem PrimeCutGraphAdapter.edge_strictly_enlarges
    {primeUniverse :
      FinitePrimeUniverse.{uPrime}}
    (adapter : PrimeCutGraphAdapter primeUniverse)
    (edge : adapter.graph.Edge) :
    adapter.nodeEquiv
        (adapter.graph.source edge) ⊂
      adapter.nodeEquiv
        (adapter.graph.target edge) := by
  rw [adapter.source_coherent,
    adapter.target_coherent]
  exact
    (adapter.edgeEquiv edge).source_ssubset_target

end Mathematics.SemiLocalDefect
```
