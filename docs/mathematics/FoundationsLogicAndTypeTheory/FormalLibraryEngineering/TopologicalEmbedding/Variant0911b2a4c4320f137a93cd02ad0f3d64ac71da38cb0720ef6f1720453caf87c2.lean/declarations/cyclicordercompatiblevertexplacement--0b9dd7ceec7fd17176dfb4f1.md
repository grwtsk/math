# CyclicOrderCompatibleVertexPlacement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09ba25b21d7e418dacd101df61c9fa8726491c57e7fe658980bb384b85b84d48",
  "kind": "structure",
  "lexical_name": "CyclicOrderCompatibleVertexPlacement",
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
  "slug": "cyclicordercompatiblevertexplacement--0b9dd7ceec7fd17176dfb4f1",
  "source": {
    "blob": "e41800003cdfec81b8aad9ef1d9053807d2fef45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant0911b2a4c4320f137a93cd02ad0f3d64ac71da38cb0720ef6f1720453caf87c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b9dd7ceec7fd17176dfb4f152e94cb07def0e5efb3530cacf7a0668487e8933",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant0911b2a4c4320f137a93cd02ad0f3d64ac71da38cb0720ef6f1720453caf87c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09ba25b21d7e418dacd101df61c9fa8726491c57e7fe658980bb384b85b84d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant0911b2a4c4320f137a93cd02ad0f3d64ac71da38cb0720ef6f1720453caf87c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant0911b2a4c4320f137a93cd02ad0f3d64ac71da38cb0720ef6f1720453caf87c2.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e41800003cdfec81b8aad9ef1d9053807d2fef45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
