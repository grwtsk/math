# ControlledPlaneModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0df4bfc9f8bd83066bb4d05a48de9a46c2b9d88843b5b9735361571ad8c91a6c",
  "kind": "structure",
  "lexical_name": "ControlledPlaneModel",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "controlledplanemodel--40cfd8691e9acf7b52cb176f",
  "source": {
    "blob": "42b2bd578ebaf63790dfe2c7c67189d1ccc31af8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 16,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Claims/Varianta379f92b58d4a42994f02b11b294cd1541b21c6550729d54ad74ba6c6706625a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40cfd8691e9acf7b52cb176f6c9b9226c74a4eeacede8ecd5d6ffc96d201bde1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Claims/Varianta379f92b58d4a42994f02b11b294cd1541b21c6550729d54ad74ba6c6706625a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0df4bfc9f8bd83066bb4d05a48de9a46c2b9d88843b5b9735361571ad8c91a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ControlledPlaneModel
    (S : RealizationSystem.{uObj, uHom}) where
  Fixed : CategoryLike.{vObj, vHom}

  GraphPrimitive : Type uData
  GraphEdge : Type uData
  GraphMorphism : Type uData
  Factorization : Type uData
  ClosedCoordinate : Type uData
  ControlState : Type uData
  Entity : Type uData
  FixedGraphMorphism : Type uData
  FixedGraphEdge : Type uData
  FixedFactorization : Type uData
  FixedCoordinateValue : Type uData
  RefinementStage : Type uData

  graph : DirectedGraph GraphPrimitive GraphEdge
  entityPrimitive : Entity → GraphPrimitive

  carrier : Carrier2D.{uData}
  fixation :
    CoordinateFixationLayer
      S.carrier.categories.Global Fixed ClosedCoordinate
  fixationSpecification :
    CoordinateFixationSpecification
      S.carrier.categories.Global Fixed ClosedCoordinate
  preservationSpecification :
    CoordinatePreservationSpecification
      S.carrier.categories.Global Fixed

  sieve : FactoringSieve GraphMorphism Factorization
  occurs : GraphEdge → Factorization → Prop
  traversalWeight : TraversalWeight GraphEdge
  fixedSieve :
    ClosedCoordinate → FactoringSieve FixedGraphMorphism FixedFactorization
  fixedOccurs :
    ClosedCoordinate → FixedGraphEdge → FixedFactorization → Prop
  fixedTraversalWeight :
    ClosedCoordinate → TraversalWeight FixedGraphEdge
  sieveTransport :
    ∀ c : ClosedCoordinate,
      SieveTransport
        sieve (fixedSieve c) occurs (fixedOccurs c)

  observation :
    ControlledObservation Entity ControlState carrier.Point
  transition : ControlTransitionData Entity ControlState
  sourceOperation : BinaryOperation Entity
  observedOperation : BinaryOperation (carrier.Point × ControlState)

  fixedAt : ClosedCoordinate → Entity → FixedCoordinateValue
  refinement :
    RefinementSystem
      RefinementStage ClosedCoordinate Entity ControlState carrier.Point

namespace ControlledPlaneModel

/-- The traversal maps underlying the typed sieve transport at a coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Claims/Varianta379f92b58d4a42994f02b11b294cd1541b21c6550729d54ad74ba6c6706625a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Claims/Varianta379f92b58d4a42994f02b11b294cd1541b21c6550729d54ad74ba6c6706625a.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42b2bd578ebaf63790dfe2c7c67189d1ccc31af8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
