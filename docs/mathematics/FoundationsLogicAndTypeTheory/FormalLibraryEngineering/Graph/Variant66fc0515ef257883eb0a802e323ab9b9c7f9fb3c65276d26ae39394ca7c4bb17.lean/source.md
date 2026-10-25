# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4095d470c9f05ba5b790933f64a677c3a5835aeb` · SHA-256 `66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Legacy

namespace Ricci

structure WeightedGraph where
  vertexCount : Nat
  edgeWeight : Fin vertexCount -> Fin vertexCount -> Rat
  symmetric : Prop
  nonnegative : Prop

structure OllivierRicciDescriptor where
  graph : WeightedGraph
  lowerCurvatureBound? : Option Rat
  transportCertificate : Prop

structure FormanRicciDescriptor where
  graph : WeightedGraph
  cellWeightCertificate : Prop

structure GraphRicciFlowDescriptor where
  graph : WeightedGraph
  stepCount : Nat
  curvatureDescriptor : OllivierRicciDescriptor
  explicitHypotheses : Prop

theorem weightedGraph_has_finite_vertex_count (G : WeightedGraph) :
    ∃ n : Nat, G.vertexCount = n := by
  exact ⟨G.vertexCount, rfl⟩

theorem ollivierRicciDescriptor_tracks_graph
    (D : OllivierRicciDescriptor) :
    D.graph = D.graph := by
  rfl

end Ricci

end Legacy
end Surface
```
