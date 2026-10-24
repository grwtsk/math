# frontier_closedBall_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60e5d5067fb70f95a7d75edc1a399ad1ab3f499e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2e79535-dabf-64d5-e8e6-3b6c990c83d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d97b322-2c5d-2cab-4055-df503ec070fd",
  "kind": "lemma",
  "lexical_name": "frontier_closedBall_eq_empty",
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
  "slug": "frontier-closedball-eq-empty--64b39cd59d3eb90059c703f5",
  "source": {
    "blob": "60e5d5067fb70f95a7d75edc1a399ad1ab3f499e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 162,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64b39cd59d3eb90059c703f58a63334ff266ddd64c4b6914a06565fb5c02f3b5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d97b322-2c5d-2cab-4055-df503ec070fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frontier_closedBall_eq_empty {r : ℝ} (hr : r ≠ 0) : frontier (closedBall x r) = ∅ :=
  isClopen_iff_frontier_eq_empty.mp (isClopen_closedBall x hr)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e5d5067fb70f95a7d75edc1a399ad1ab3f499e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
