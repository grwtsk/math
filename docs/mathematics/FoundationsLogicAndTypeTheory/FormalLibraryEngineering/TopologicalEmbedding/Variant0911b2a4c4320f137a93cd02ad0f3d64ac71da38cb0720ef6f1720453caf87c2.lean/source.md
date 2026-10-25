# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologicalEmbedding.Variant0911b2a4c4320f137a93cd02ad0f3d64ac71da38cb0720ef6f1720453caf87c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e41800003cdfec81b8aad9ef1d9053807d2fef45` · SHA-256 `0911b2a4c4320f137a93cd02ad0f3d64ac71da38cb0720ef6f1720453caf87c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalGraphRealization

/-
Topological graph-realization witnesses.  Unlike the signature-level
`InjectiveS2Realization` and `InjectiveS3Realization`, every witness in this
file has the quotient graph realization as its domain and carries an actual
homeomorphism onto its image.
-/

universe uVertex uEdge uInterval uTarget u1 u2 u3

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane
open FCRS.Topology

/-- A genuine topological embedding of the quotient realization `|G|` in `Y`. -/
structure TopologicalGraphEmbedding
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (Y : Type uTarget)
    (TY : TopologicalSpaceLike Y) where
  embedding :
    FCRS.Topology.TopologicalEmbedding
      (GraphPoint G I) Y (graphRealizationTopology G I) TY

/-- Existence of a genuine topological graph embedding in the supplied `S²`. -/
def HasTopologicalPlanarWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S2 : Sphere2.{u2}) : Prop :=
  Nonempty
    (TopologicalGraphEmbedding G I S2.Point S2.topology)

/-- Existence of a genuine topological graph embedding in the supplied `S³`. -/
def HasTopologicalSpatialWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S3 : Sphere3.{u3}) : Prop :=
  Nonempty
    (TopologicalGraphEmbedding G I S3.Point S3.topology)

/--
An `S¹` placement with the discrete vertex topology homeomorphic to its image.
This is stronger than a bare injection of vertices into an opaque carrier.
-/
structure TopologicalS1VertexPlacement
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (S1 : Sphere1.{u1}) where
  embedding :
    FCRS.Topology.TopologicalEmbedding
      Vertex S1.Point (discreteTopology Vertex) S1.topology

/-- A supplied topological inclusion of the boundary sphere in `S²`. -/
structure TopologicalSphereBoundary
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) where
  inclusion :
    FCRS.Topology.TopologicalEmbedding
      S1.Point S2.Point S1.topology S2.topology

/--
True boundary-compatible planarity: the quotient graph embedding agrees on
canonical vertex points with one fixed topological `S¹` placement and boundary
inclusion.  Ordinary planarity does not construct this extra compatibility.
-/
structure CircleCompatibleTopologicalEmbedding2
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1})
    (S2 : Sphere2.{u2})
    (V : TopologicalS1VertexPlacement G S1)
    (B : TopologicalSphereBoundary S1 S2)
    (graphEmbedding :
      TopologicalGraphEmbedding G I S2.Point S2.topology) : Prop where
  vertexCompatibility :
    ∀ v,
      graphEmbedding.embedding.toFun (vertexPoint G I v) =
        B.inclusion.toFun (V.embedding.toFun v)

/-- A minimal law-bearing cyclic-order relation. -/
structure CyclicOrder (A : Type uVertex) where
  between : A → A → A → Prop
  distinct :
    ∀ {a b c}, between a b c → a ≠ b ∧ b ≠ c ∧ a ≠ c
  cyclic : ∀ {a b c}, between a b c → between b c a
  asymmetric : ∀ {a b c}, between a b c → ¬ between c b a
  transitive :
    ∀ {a b c d}, between a b c → between a c d → between a b d
  total :
    ∀ {a b c}, a ≠ b → b ≠ c → a ≠ c →
      between a b c ∨ between c b a

/-- A map preserves the declared cyclic orientation. -/
def PreservesCyclicOrder
    {A : Type uVertex} {B : Type uTarget}
    (source : CyclicOrder A) (target : CyclicOrder B)
    (f : A → B) : Prop :=
  ∀ a b c, source.between a b c → target.between (f a) (f b) (f c)

/-- Optional cyclic-order contract for a fixed boundary placement. -/
structure CyclicOrderCompatibleVertexPlacement
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {S1 : Sphere1.{u1}}
    (V : TopologicalS1VertexPlacement G S1) where
  vertexOrder : CyclicOrder Vertex
  boundaryOrder : CyclicOrder S1.Point
  preserves :
    PreservesCyclicOrder vertexOrder boundaryOrder V.embedding.toFun

/--
A topological embedding of the whole quotient prevents two distinct edge
interior points from crossing in the target.  This is derived from the
embedding's injectivity and the quotient's edge-interior disjointness theorem.
-/
theorem topologicalGraphEmbedding_prevents_distinct_interior_crossings
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge} {I : ClosedInterval.{uInterval}}
    {Y : Type uTarget} {TY : TopologicalSpaceLike Y}
    (E : TopologicalGraphEmbedding G I Y TY)
    {e f : Edge} (hef : e ≠ f)
    {t u : I.Point}
    (ht : I.interior t) (hu : I.interior u) :
    E.embedding.toFun (edgePath G I e t) ≠
      E.embedding.toFun (edgePath G I f u) := by
  intro hcross
  have hpoint : edgePath G I e t = edgePath G I f u :=
    E.embedding.injective hcross
  exact distinct_edgeInteriors_disjoint hef
    ⟨t, ht, rfl⟩ ⟨u, hu, hpoint.symm⟩

end FCRS.ControlledSpherical
```
