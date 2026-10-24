# denseBeacon_metricDetermining

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d85485f03537bd08aa9a93f884f3776a2e45f86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:216e615a-94ac-ae15-fa4a-b39ceefba997",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b393416d-88f7-31df-bb78-9af6a8677604",
  "kind": "theorem",
  "lexical_name": "denseBeacon_metricDetermining",
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
  "slug": "densebeacon-metricdetermining--d5bfb1eb6e575921c1bc9463",
  "source": {
    "blob": "8d85485f03537bd08aa9a93f884f3776a2e45f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 139,
    "path": "GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5bfb1eb6e575921c1bc9463ef9cc1fca79a2b2e640c7cf9ef03a94ab717e9b2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b393416d-88f7-31df-bb78-9af6a8677604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denseBeacon_metricDetermining
    (beacon : D → X) (dense : DenseRange beacon) :
    MetricDetermining beacon := by
  intro left right
  constructor
  · exact fun index ↦ probeGap_le_distance beacon left right index
  · intro ε εpositive
    obtain ⟨index, nearLeft⟩ :=
      dense.exists_dist_lt left (half_pos εpositive)
    refine ⟨index, ?_⟩
    have leftNear :
        dist left (beacon index) < ε / 2 := by
      simpa [dist_comm] using nearLeft
    have triangle :
        dist left right ≤
          dist left (beacon index) + dist (beacon index) right :=
      dist_triangle left (beacon index) right
    have absoluteLower :
        dist right (beacon index) - dist left (beacon index) ≤
          probeGap beacon left right index := by
      have signed :=
        neg_le_abs (dist left (beacon index) - dist right (beacon index))
      simpa [probeGap] using signed
    rw [dist_comm (beacon index) right] at triangle
    linarith

/--
Existence evidence for a distance profile indexed by a possibly smaller
beacon family.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d85485f03537bd08aa9a93f884f3776a2e45f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
