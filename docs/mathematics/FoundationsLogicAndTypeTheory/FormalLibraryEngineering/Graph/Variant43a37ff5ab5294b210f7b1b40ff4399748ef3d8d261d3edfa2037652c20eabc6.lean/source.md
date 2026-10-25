# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e94f8464599f2151bd56f3d70135c7465717dad` · SHA-256 `43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Sieve

universe uCoordinate uEdge

namespace FCRS.Transport

/-- Intensional declarations and materialized observations are distinct indices. -/
inductive GraphVersionKind where
  | Intensional
  | Materialized
deriving Repr, DecidableEq

/-- Explicit edge-identity policy for a graph version. -/
inductive EdgeIdentityPolicy where
  | PairFunctional
  | WitnessFunctional
  | ProofSensitiveMultigraph
deriving Repr, DecidableEq

/-- A versioned directed graph whose semantic kind is a type index. -/
structure CoordinateGraph
    (kind : GraphVersionKind)
    (Coordinate : Type uCoordinate) (Edge : Type uEdge) where
  version : ArtifactRef .graphVersion
  identityPolicy : EdgeIdentityPolicy
  source : Edge → Coordinate
  target : Edge → Coordinate

/-- One vertex occurrence in one exact graph version. -/
structure VertexOccurrence
    {kind : GraphVersionKind}
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    (graph : CoordinateGraph kind Coordinate Edge)
    (coordinate : Coordinate) where
  occurrenceArtifact : ArtifactRef .vertexOccurrence

/-- One edge occurrence with endpoint equations in one exact graph version. -/
structure EdgeOccurrence
    {kind : GraphVersionKind}
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    (graph : CoordinateGraph kind Coordinate Edge)
    (source target : Coordinate) where
  occurrenceArtifact : ArtifactRef .edgeOccurrence
  edge : Edge
  sourceVertex : VertexOccurrence graph source
  targetVertex : VertexOccurrence graph target
  sourceEquation : graph.source edge = source
  targetEquation : graph.target edge = target

/-- Exact intensional semantics: edge membership iff extensional sieve acceptance. -/
structure IntensionalGraphSemantics
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    (specification : SieveSpecification Coordinate)
    (graph : CoordinateGraph .Intensional Coordinate Edge) where
  evidenceArtifact : ArtifactRef .intensionalSemantics
  realize :
    ∀ {source target},
      specification.accepts source target →
        EdgeOccurrence graph source target
  reflects :
    ∀ {source target},
      EdgeOccurrence graph source target →
        specification.accepts source target

namespace IntensionalGraphSemantics

/-- Derived extensional characterization of intensional edge membership. -/
theorem edgeIff
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    {specification : SieveSpecification Coordinate}
    {graph : CoordinateGraph .Intensional Coordinate Edge}
    (semantics : IntensionalGraphSemantics specification graph)
    (source target : Coordinate) :
    specification.accepts source target ↔
      Nonempty (EdgeOccurrence graph source target) := by
  constructor
  · intro hAccepts
    exact ⟨semantics.realize hAccepts⟩
  · rintro ⟨occurrence⟩
    exact semantics.reflects occurrence

end IntensionalGraphSemantics

/-- Realization rule for explicit materialized occurrences only. -/
structure RealizationContract
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    (soundness : SieveSoundness procedure)
    (materializedGraph : CoordinateGraph .Materialized Coordinate Edge) where
  version : ArtifactRef .realizationRule
  realizeMaterialized :
    ∀ {source target}
      (evaluation : SieveEvaluation procedure source target),
      SieveWitness soundness evaluation →
        EdgeOccurrence materializedGraph source target

/-- Activity record joining one exact sieve witness to one occurrence. -/
structure RealizationRecord
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {materializedGraph : CoordinateGraph .Materialized Coordinate Edge}
    (contract : RealizationContract soundness materializedGraph)
    {source target : Coordinate}
    (evaluation : SieveEvaluation procedure source target)
    (witness : SieveWitness soundness evaluation) where
  recordArtifact : ArtifactRef .realizationRecord
  realizationActivity : ArtifactRef .realizationEvent
  occurrence : EdgeOccurrence materializedGraph source target
  occurrenceExact :
    occurrence = contract.realizeMaterialized evaluation witness
  edgeIdentityPolicy : EdgeIdentityPolicy
  identityPolicyExact : edgeIdentityPolicy = materializedGraph.identityPolicy

/-- Fully retained evidence for one materialized outgoing edge. -/
def MaterializedOutgoingEvidence
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {materializedGraph : CoordinateGraph .Materialized Coordinate Edge}
    (contract : RealizationContract soundness materializedGraph)
    (source : Coordinate) :=
  Σ target,
    Σ evaluation : SieveEvaluation procedure source target,
      Σ witness : SieveWitness soundness evaluation,
        RealizationRecord contract evaluation witness

/-- Materialization is total only on the explicitly supplied source scope. -/
structure SourceTotalRealization
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {materializedGraph : CoordinateGraph .Materialized Coordinate Edge}
    (contract : RealizationContract soundness materializedGraph)
    (scope : Coordinate → Prop) where
  realize :
    ∀ source, scope source →
      MaterializedOutgoingEvidence contract source

/-- A materialized occurrence reflects only under this independent capability. -/
structure RealizationReflection
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    (specification : SieveSpecification Coordinate)
    (materializedGraph : CoordinateGraph .Materialized Coordinate Edge) where
  version : ArtifactRef .realizationReflection
  reflects :
    ∀ {source target},
      EdgeOccurrence materializedGraph source target →
        specification.accepts source target

/-- Declaration that one exact occurrence came from theorem transport. -/
structure TheoremDerivedEdgeDeclaration
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    {graph : CoordinateGraph .Materialized Coordinate Edge}
    {source target : Coordinate}
    (occurrence : EdgeOccurrence graph source target) where
  declarationArtifact : ArtifactRef .theoremDerivedEdgeDeclaration

/-- The graph structure on which a consequence semantically depends. -/
inductive GraphPropertySensitivity where
  | Structural
  | DirectionSensitive
  | TypeSensitive
  | LabelSensitive
  | CoordinateSensitive
deriving Repr, DecidableEq

/-- A graph consequence is a typed proposition, not an edge alias. -/
structure GraphConsequence
    {kind : GraphVersionKind}
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    (graph : CoordinateGraph kind Coordinate Edge) where
  consequenceArtifact : ArtifactRef .graphConsequence
  schema : ArtifactRef .graphPropertySchema
  sensitivity : GraphPropertySensitivity
  statement : Prop

/-- Proof evidence indexed by the exact supporting materialized occurrence. -/
structure GraphConsequenceProof
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    {graph : CoordinateGraph .Materialized Coordinate Edge}
    {source target : Coordinate}
    (occurrence : EdgeOccurrence graph source target)
    (consequence : GraphConsequence graph) where
  proofArtifact : ArtifactRef .consequenceProof
  proof : consequence.statement

/-- Isomorphism regime determines which structure must be preserved. -/
inductive IsomorphismRegime where
  | Unlabeled
  | Directed
  | Typed
  | LabelPreserving
  | CoordinatePreserving
deriving Repr, DecidableEq

namespace IsomorphismRegime

/-- A regime may preserve only consequences whose declared sensitivity it supports. -/
def supports
    (regime : IsomorphismRegime)
    (sensitivity : GraphPropertySensitivity) : Prop :=
  match regime, sensitivity with
  | _, .Structural => True
  | .Directed, .DirectionSensitive => True
  | .Typed, .DirectionSensitive => True
  | .Typed, .TypeSensitive => True
  | .LabelPreserving, .DirectionSensitive => True
  | .LabelPreserving, .TypeSensitive => True
  | .LabelPreserving, .LabelSensitive => True
  | .CoordinatePreserving, _ => True
  | _, _ => False

/-- Minimal regime condition on the vertex map for this coordinate model. -/
def condition
    {Coordinate : Type uCoordinate}
    (regime : IsomorphismRegime)
    (onVertex : Coordinate → Coordinate) : Prop :=
  match regime with
  | .Unlabeled => True
  | .Directed => True
  | .Typed => True
  | .LabelPreserving => ∀ vertex, onVertex vertex = vertex
  | .CoordinatePreserving => ∀ vertex, onVertex vertex = vertex

end IsomorphismRegime

/-- Directed graph isomorphism with an explicit regime condition. -/
structure GraphIsomorphism
    {kind : GraphVersionKind}
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    (regime : IsomorphismRegime)
    (left right : CoordinateGraph kind Coordinate Edge) where
  witnessArtifact : ArtifactRef .isomorphismWitness
  onVertex : Coordinate → Coordinate
  inverseVertex : Coordinate → Coordinate
  onEdge : Edge → Edge
  inverseEdge : Edge → Edge
  leftVertexInverse : ∀ vertex, inverseVertex (onVertex vertex) = vertex
  rightVertexInverse : ∀ vertex, onVertex (inverseVertex vertex) = vertex
  leftEdgeInverse : ∀ edge, inverseEdge (onEdge edge) = edge
  rightEdgeInverse : ∀ edge, onEdge (inverseEdge edge) = edge
  sourceCommutes : ∀ edge, right.source (onEdge edge) = onVertex (left.source edge)
  targetCommutes : ∀ edge, right.target (onEdge edge) = onVertex (left.target edge)
  regimeEvidence : regime.condition onVertex

/-- Proof-carrying graph invariant under one declared isomorphism regime. -/
structure GraphInvariant
    {kind : GraphVersionKind}
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    (graph : CoordinateGraph kind Coordinate Edge) where
  invariantArtifact : ArtifactRef .graphInvariant
  regime : IsomorphismRegime
  consequence : GraphConsequence graph
  regimeSupportsConsequence : regime.supports consequence.sensitivity
  property : CoordinateGraph kind Coordinate Edge → Prop
  consequenceExact : consequence.statement ↔ property graph
  holdsAtGraph : property graph
  preservedUnderRegime :
    ∀ other,
      GraphIsomorphism regime graph other →
        property graph → property other

end FCRS.Transport
```
