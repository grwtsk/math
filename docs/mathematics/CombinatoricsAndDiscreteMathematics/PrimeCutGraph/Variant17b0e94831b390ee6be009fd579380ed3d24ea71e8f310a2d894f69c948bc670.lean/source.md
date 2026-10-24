# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutGraph.Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58cac87297eaeafd0bbd9e432c9b0374d3eb9966` · SHA-256 `17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PrimeUniverse
import Mathematics.GraphAccess.GraphCut

/-!
# Finite prime-cut graph adapter

The Boolean prime cube is presented to the existing immutable `GraphCut`
contract through explicit bijections.  The adapter does not alter foundational
graph-access modes or authority.
-/

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
