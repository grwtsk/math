# nndist_midpoint_midpoint_le

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
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db73b50f-d763-1bb6-3146-42b67d1a3160",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ebfda27-ffb4-7e9b-d9ea-4516f2e7396f",
  "kind": "theorem",
  "lexical_name": "nndist_midpoint_midpoint_le",
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
  "slug": "nndist-midpoint-midpoint-le--ce8902cadebbcac714f13866",
  "source": {
    "blob": "daa06ff53bd699742ee3a3ca489f05aa2a6c70d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 234,
    "path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variant28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8902cadebbcac714f1386695e5145053c539c8e97f8cc895cbb26b8f9f38c3",
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

Occurrence: `result:5ebfda27-ffb4-7e9b-d9ea-4516f2e7396f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_midpoint_midpoint_le (p₁ p₂ p₃ p₄ : V) :
    nndist (midpoint ℝ p₁ p₂) (midpoint ℝ p₃ p₄) ≤ (nndist p₁ p₃ + nndist p₂ p₄) / 2 :=
  dist_midpoint_midpoint_le _ _ _ _

/-- A continuous map between two normed affine spaces is an affine map provided that
it sends midpoints to midpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AddTorsor/Variant28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AddTorsor/Variant28e94df5de85650ea85c4fa7225fac767d1c3b611ebd401f35d3fb48ecc5f33a.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa06ff53bd699742ee3a3ca489f05aa2a6c70d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
