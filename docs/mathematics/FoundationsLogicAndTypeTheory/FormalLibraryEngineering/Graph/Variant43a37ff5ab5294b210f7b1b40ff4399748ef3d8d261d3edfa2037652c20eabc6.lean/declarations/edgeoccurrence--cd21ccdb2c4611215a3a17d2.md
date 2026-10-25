# EdgeOccurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62683c57bb87b39019e145711b0f9b6856b7bcb7648dcb570d0942463343b7cf",
  "kind": "structure",
  "lexical_name": "EdgeOccurrence",
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
  "slug": "edgeoccurrence--cd21ccdb2c4611215a3a17d2",
  "source": {
    "blob": "5e94f8464599f2151bd56f3d70135c7465717dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd21ccdb2c4611215a3a17d2fb78ad14debbfe7b1298f909779a527c54361f30",
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

Occurrence: `declaration:62683c57bb87b39019e145711b0f9b6856b7bcb7648dcb570d0942463343b7cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e94f8464599f2151bd56f3d70135c7465717dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
