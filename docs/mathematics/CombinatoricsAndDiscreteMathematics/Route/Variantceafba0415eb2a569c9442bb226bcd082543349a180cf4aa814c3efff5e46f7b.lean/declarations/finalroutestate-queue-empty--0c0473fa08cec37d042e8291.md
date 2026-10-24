# finalRouteState_queue_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b2a0954-8c52-195b-6e6f-ea8fd6249956",
  "kind": "theorem",
  "lexical_name": "finalRouteState_queue_empty",
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
  "slug": "finalroutestate-queue-empty--0c0473fa08cec37d042e8291",
  "source": {
    "blob": "46186e1914b7bc155d58d530525b482fa0195dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 745,
    "line": 713,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantceafba0415eb2a569c9442bb226bcd082543349a180cf4aa814c3efff5e46f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c0473fa08cec37d042e8291d703a25fa708861ff6aae284c9ab6df9a05a92d0",
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

Occurrence: `result:8b2a0954-8c52-195b-6e6f-ea8fd6249956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finalRouteState_queue_empty
    (contract : RoutingContract Host EdgeId) (start : Host) :
    (routeLoop contract (Fintype.card Host)
      (initialRouteState (EdgeId := EdgeId) start)).queue = [] := by
  let initial : RouteState Host EdgeId :=
    initialRouteState (EdgeId := EdgeId) start
  let final : RouteState Host EdgeId :=
    routeLoop contract (Fintype.card Host) initial
  have initialPartition : StatePartition initial := by
    simp [initial, StatePartition, initialRouteState]
  have finalPartition : StatePartition final :=
    routeLoop_partition contract (Fintype.card Host) initial initialPartition
  have finalNodup : StateNodup final :=
    routeLoop_nodup contract (Fintype.card Host) initial
      (by simp [initial, StateNodup, initialRouteState])
  by_contra finalQueueNonempty
  have processedLength : final.processed.length = Fintype.card Host := by
    simpa [final, initial, initialRouteState] using
      routeLoop_processed_length_of_queue_ne_nil contract
        (Fintype.card Host) initial finalQueueNonempty
  have queueLengthPositive : 0 < final.queue.length :=
    List.length_pos_iff.mpr finalQueueNonempty
  have visitedLength :
      final.visited.length = final.processed.length + final.queue.length := by
    rw [finalPartition]
    simp
  have tooMany : Fintype.card Host < final.visited.length := by
    omega
  exact (not_lt_of_ge finalNodup.length_le_card) tooMany

/-! Every discovered host is semantically reachable in the declared directed
graph. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantceafba0415eb2a569c9442bb226bcd082543349a180cf4aa814c3efff5e46f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantceafba0415eb2a569c9442bb226bcd082543349a180cf4aa814c3efff5e46f7b.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46186e1914b7bc155d58d530525b482fa0195dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
