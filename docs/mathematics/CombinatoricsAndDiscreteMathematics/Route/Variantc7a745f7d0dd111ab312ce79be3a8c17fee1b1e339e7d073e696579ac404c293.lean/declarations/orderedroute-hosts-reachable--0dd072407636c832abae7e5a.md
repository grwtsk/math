# orderedRoute_hosts_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45e841a7f50787765f2ff5398760318b9ae2214a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 874,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80a6a420-3cbc-d140-8a44-b86c222e79c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa7b5a1c-7f88-7a6a-b6c2-ab2fc1b98b74",
  "kind": "theorem",
  "lexical_name": "orderedRoute_hosts_reachable",
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
  "slug": "orderedroute-hosts-reachable--0dd072407636c832abae7e5a",
  "source": {
    "blob": "45e841a7f50787765f2ff5398760318b9ae2214a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 891,
    "line": 874,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dd072407636c832abae7e5a3facb56bd446c9daa3cc743bf7080e7106746240",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantc7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa7b5a1c-7f88-7a6a-b6c2-ab2fc1b98b74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 874–891.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem orderedRoute_hosts_reachable
    (contract : RoutingContract Host EdgeId) (start host : Host)
    (member : host ∈ (contract.orderedRoute start).hosts) :
    contract.Reachable start host := by
  let initial : RouteState Host EdgeId :=
    initialRouteState (EdgeId := EdgeId) start
  have partition : StatePartition initial := by
    simp [initial, StatePartition, initialRouteState]
  have reachable : StateReachable contract start initial := by
    intro point pointMember
    simp [initial, initialRouteState] at pointMember
    subst point
    exact Relation.ReflTransGen.refl
  have finalReachable := routeLoop_reachable contract start
    (Fintype.card Host) initial partition reachable
  apply finalReachable host
  simpa [orderedRoute, initial] using member

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantc7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean#L874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e841a7f50787765f2ff5398760318b9ae2214a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
