# processQueuedHost_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bef355055175d174cdcf1916aa188fb0f7c6e8c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 782,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aafeb9a4-f4c3-f2fd-f7e8-e0986be19d15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a92b5f2-9972-15e0-a281-5dfd00b2c563",
  "kind": "theorem",
  "lexical_name": "processQueuedHost_reachable",
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
  "slug": "processqueuedhost-reachable--7d9d8063d03f87c91ba1b0f3",
  "source": {
    "blob": "bef355055175d174cdcf1916aa188fb0f7c6e8c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 802,
    "line": 782,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d9d8063d03f87c91ba1b0f30482159238eff5991bac0bd4586e7aab38d6fd09",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a92b5f2-9972-15e0-a281-5dfd00b2c563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–802.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem processQueuedHost_reachable
    (contract : RoutingContract Host EdgeId) (start : Host)
    (state : RouteState Host EdgeId) (host : Host) (remaining : List Host)
    (queueEquation : state.queue = host :: remaining)
    (partition : StatePartition state)
    (stateReachable : StateReachable contract start state) :
    StateReachable contract start
      (processQueuedHost contract state host remaining) := by
  have hostMember : host ∈ state.visited := by
    rw [partition, queueEquation]
    simp
  have hostReachable := stateReachable host hostMember
  unfold processQueuedHost
  apply discoverOutgoing_reachable contract start host _ _
  · simpa only [StateReachable] using stateReachable
  · exact hostReachable
  · intro edge member
    exact orderedOutgoingEdges_declared contract host member
  · intro edge member
    exact orderedOutgoingEdges_source contract host member

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef355055175d174cdcf1916aa188fb0f7c6e8c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
