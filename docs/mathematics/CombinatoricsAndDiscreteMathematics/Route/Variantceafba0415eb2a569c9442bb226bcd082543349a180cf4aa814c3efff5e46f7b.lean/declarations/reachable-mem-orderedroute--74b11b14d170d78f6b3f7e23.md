# reachable_mem_orderedRoute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b22132a-3961-931d-62b6-933892b30b18",
  "kind": "theorem",
  "lexical_name": "reachable_mem_orderedRoute",
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
  "slug": "reachable-mem-orderedroute--74b11b14d170d78f6b3f7e23",
  "source": {
    "blob": "46186e1914b7bc155d58d530525b482fa0195dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 960,
    "line": 925,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantceafba0415eb2a569c9442bb226bcd082543349a180cf4aa814c3efff5e46f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74b11b14d170d78f6b3f7e23158ae83cb2b813973305c60d75efe56cbbad91b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantceafba0415eb2a569c9442bb226bcd082543349a180cf4aa814c3efff5e46f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b22132a-3961-931d-62b6-933892b30b18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–960.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem reachable_mem_orderedRoute
    (contract : RoutingContract Host EdgeId) (start host : Host)
    (reachable : contract.Reachable start host) :
    host ∈ (contract.orderedRoute start).hosts := by
  let initial : RouteState Host EdgeId :=
    initialRouteState (EdgeId := EdgeId) start
  let final : RouteState Host EdgeId :=
    routeLoop contract (Fintype.card Host) initial
  have initialClosed : StateProcessedClosed contract initial := by
    simp [StateProcessedClosed, initial, initialRouteState]
  have finalClosed : StateProcessedClosed contract final :=
    routeLoop_closed contract (Fintype.card Host) initial initialClosed
  have initialPartition : StatePartition initial := by
    simp [StatePartition, initial, initialRouteState]
  have finalPartition : StatePartition final :=
    routeLoop_partition contract (Fintype.card Host) initial initialPartition
  have finalQueueEmpty : final.queue = [] := by
    simpa [final, initial] using finalRouteState_queue_empty contract start
  have visitedProcessed : final.visited = final.processed := by
    rw [finalPartition, finalQueueEmpty]
    simp
  have startVisited : start ∈ final.visited := by
    have hprefix := routeLoop_visited_prefix contract (Fintype.card Host) initial
    apply hprefix.subset
    simp [initial, initialRouteState]
  have hostVisited : host ∈ final.visited := by
    induction reachable with
    | refl => exact startVisited
    | @tail middle target prior step ih =>
        have middleProcessed : middle ∈ final.processed := by
          rw [← visitedProcessed]
          exact ih
        exact finalClosed middle middleProcessed target step
  simpa [orderedRoute, final, initial] using hostVisited

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantceafba0415eb2a569c9442bb226bcd082543349a180cf4aa814c3efff5e46f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantceafba0415eb2a569c9442bb226bcd082543349a180cf4aa814c3efff5e46f7b.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46186e1914b7bc155d58d530525b482fa0195dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
