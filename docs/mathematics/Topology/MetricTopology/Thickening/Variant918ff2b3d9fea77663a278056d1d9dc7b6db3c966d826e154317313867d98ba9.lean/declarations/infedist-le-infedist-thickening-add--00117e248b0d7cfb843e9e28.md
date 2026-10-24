# infEDist_le_infEDist_thickening_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81cf52111bfa540144e44b1b090fa9420c004b15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 596,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05489a2e-c8a9-ae29-2f07-f4dded7906c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b953941-fab5-b532-65fe-82cbef1f0064",
  "kind": "theorem",
  "lexical_name": "infEDist_le_infEDist_thickening_add",
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
  "slug": "infedist-le-infedist-thickening-add--00117e248b0d7cfb843e9e28",
  "source": {
    "blob": "81cf52111bfa540144e44b1b090fa9420c004b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 596,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00117e248b0d7cfb843e9e28420a03c27fc5f311f6591c297edda963e0062b86",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b953941-fab5-b532-65fe-82cbef1f0064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infEDist_le_infEDist_thickening_add :
    infEDist x s ≤ infEDist x (thickening δ s) + ENNReal.ofReal δ :=
  infEDist_le_infEDist_cthickening_add.trans <| by gcongr; exact thickening_subset_cthickening ..

/-- For the equality, see `thickening_thickening`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81cf52111bfa540144e44b1b090fa9420c004b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
