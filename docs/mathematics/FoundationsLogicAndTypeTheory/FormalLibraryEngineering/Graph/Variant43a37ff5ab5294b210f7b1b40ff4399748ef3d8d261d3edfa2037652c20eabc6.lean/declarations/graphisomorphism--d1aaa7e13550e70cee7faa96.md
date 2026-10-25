# GraphIsomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8766489562a7bd73d865a27f163eb3addf07a51e3573767af819af9d4b8c6c9a",
  "kind": "structure",
  "lexical_name": "GraphIsomorphism",
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
  "slug": "graphisomorphism--d1aaa7e13550e70cee7faa96",
  "source": {
    "blob": "5e94f8464599f2151bd56f3d70135c7465717dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1aaa7e13550e70cee7faa9665da2ce5c33b4379de4c50f8a52c393db5f8a81c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8766489562a7bd73d865a27f163eb3addf07a51e3573767af819af9d4b8c6c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e94f8464599f2151bd56f3d70135c7465717dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
