# dist_right_lineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa06ff53bd699742ee3a3ca489f05aa2a6c70d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c86814c3-f1aa-0695-7aa6-863ccd348475",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dc34fde-784b-f23d-ae1b-b865417e24aa",
  "kind": "theorem",
  "lexical_name": "dist_right_lineMap",
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
  "slug": "dist-right-linemap--82e0c0663ab1af02579df5f6",
  "source": {
    "blob": "daa06ff53bd699742ee3a3ca489f05aa2a6c70d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 115,
    "path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variant28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e0c0663ab1af02579df5f6e1973076ec74d9f55a5b67f6522c4316d4489e6e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AddTorsor/Variant28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc34fde-784b-f23d-ae1b-b865417e24aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_right_lineMap (p₁ p₂ : P) (c : 𝕜) : dist p₂ (lineMap p₁ p₂ c) = ‖1 - c‖ * dist p₁ p₂ :=
  (dist_comm _ _).trans (dist_lineMap_right _ _ _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AddTorsor/Variant28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AddTorsor/Variant28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa06ff53bd699742ee3a3ca489f05aa2a6c70d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
