# mapsTo_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "410d0b9a1cac1c4fc8eb5b2307c6f9b5930da429",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 505,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01e8ca44-aae9-fe23-b228-c2acafb81ea5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b371e2dd-101a-0594-8e4e-d3b437f52fd5",
  "kind": "theorem",
  "lexical_name": "mapsTo_ball",
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
  "slug": "mapsto-ball--f5f6a3370add7415d85735c3",
  "source": {
    "blob": "410d0b9a1cac1c4fc8eb5b2307c6f9b5930da429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 505,
    "path": "GRWTSK/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f6a3370add7415d85735c376e87dabb83678b5cca3117904a6c447eac71121",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b371e2dd-101a-0594-8e4e-d3b437f52fd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapsTo_ball (x : α) (r' : ℝ) :
    MapsTo (f : α → β) (Metric.ball x r') (Metric.ball (f x) (ratio f * r')) :=
  fun y hy => (dist_eq f y x).trans_lt <| (mul_lt_mul_left <| NNReal.coe_pos.2 <| ratio_pos f).2 hy
#align dilation.maps_to_ball Dilation.mapsTo_ball

/-- A dilation maps spheres to spheres and scales the radius by `ratio f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410d0b9a1cac1c4fc8eb5b2307c6f9b5930da429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
