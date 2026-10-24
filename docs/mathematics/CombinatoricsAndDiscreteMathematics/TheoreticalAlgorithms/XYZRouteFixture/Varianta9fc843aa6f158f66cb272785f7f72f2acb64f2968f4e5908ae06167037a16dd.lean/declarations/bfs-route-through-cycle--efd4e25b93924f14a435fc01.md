# bfs_route_through_cycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2b7abba-4a96-5685-a8c6-ef6fddc158c1",
  "kind": "theorem",
  "lexical_name": "bfs_route_through_cycle",
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
  "slug": "bfs-route-through-cycle--efd4e25b93924f14a435fc01",
  "source": {
    "blob": "afa04cb59be776bec4589f2bde9c695119d274c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta9fc843aa6f158f66cb272785f7f72f2acb64f2968f4e5908ae06167037a16dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efd4e25b93924f14a435fc016cb0a1ee99de124f6247505312494ca3c782093d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta9fc843aa6f158f66cb272785f7f72f2acb64f2968f4e5908ae06167037a16dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2b7abba-4a96-5685-a8c6-ef6fddc158c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bfs_route_through_cycle :
    fixtureContract.orderedRoute 0 =
      ⟨[0, 1, 3, 2, 4, 5, 6, 7], [1, 2, 0, 5, 3, 8, 9]⟩ := by
  simp [fixtureContract, fixtureEdges, fixtureEdge,
    RoutingContract.orderedRoute, RoutingContract.routeLoop,
    RoutingContract.initialRouteState, RoutingContract.processQueuedHost,
    RoutingContract.discoverOutgoing, RoutingContract.discoverOne,
    RoutingContract.orderedOutgoingEdges, RoutingContract.outgoingEdges,
    RoutingContract.sortedCanonicalEdges, RoutingContract.canonicalEdgeLE,
    RoutingContract.canonicalEdgeLexValue, fixtureHostCode, fixtureEdgeCode]

@[surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta9fc843aa6f158f66cb272785f7f72f2acb64f2968f4e5908ae06167037a16dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta9fc843aa6f158f66cb272785f7f72f2acb64f2968f4e5908ae06167037a16dd.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa04cb59be776bec4589f2bde9c695119d274c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
