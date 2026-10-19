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
