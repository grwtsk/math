# bfs_route_through_cycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d388fdcf-68d8-2354-f33d-f70e15c90e11",
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
  "slug": "bfs-route-through-cycle--6233d7761e7fd0bfa4954fb4",
  "source": {
    "blob": "07428bfb7615cd9615b63f0c9ed5a0ac0ecb5871",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 200,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6233d7761e7fd0bfa4954fb400c0ac9fc70ab5d29216e8d5b5bb4c58cc4090e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d388fdcf-68d8-2354-f33d-f70e15c90e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bfs_route_through_cycle :
    fixtureContract.orderedRoute 0 =
      ⟨[0, 1, 3, 2, 4, 5, 6, 7], [1, 2, 0, 5, 3, 8, 9]⟩ := by
  simp [fixtureContract_sortedCanonicalEdges, fixtureCanonicalEdges, fixtureEdge,
    RoutingContract.orderedRoute, RoutingContract.routeLoop,
    RoutingContract.initialRouteState, RoutingContract.processQueuedHost,
    RoutingContract.discoverOutgoing, RoutingContract.discoverOne,
    RoutingContract.orderedOutgoingEdges, RoutingContract.outgoingEdges]

@[surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07428bfb7615cd9615b63f0c9ed5a0ac0ecb5871` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
