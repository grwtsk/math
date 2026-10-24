# ball_eq_empty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6459c590098c67e05b4eb7979db41cd8443f386c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad5ee17c-e694-5a06-8797-cd760e80cbf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:530ffab5-b8e2-7260-27a8-61a708c58072",
  "kind": "theorem",
  "lexical_name": "ball_eq_empty_iff",
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
  "slug": "ball-eq-empty-iff--9b60fbf035a12b1b4b06c086",
  "source": {
    "blob": "6459c590098c67e05b4eb7979db41cd8443f386c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 399,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b60fbf035a12b1b4b06c08692adedb3f344950be3de986adbff7cba8ba574af",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:530ffab5-b8e2-7260-27a8-61a708c58072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ball_eq_empty_iff : ball x ε = ∅ ↔ ε = 0 :=
  eq_empty_iff_forall_notMem.trans
    ⟨fun h => le_bot_iff.1 (le_of_not_gt fun ε0 => h _ (mem_ball_self ε0)), fun ε0 _ h =>
      not_lt_of_le (le_of_eq ε0) (pos_of_mem_ball h)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6459c590098c67e05b4eb7979db41cd8443f386c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
