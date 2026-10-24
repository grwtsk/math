# pointedDistanceProfile_witnesses_distance

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
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1a8852c-921d-7dff-e3d1-624115a69423",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77771671-8334-8fc3-1e2f-5735c411330c",
  "kind": "theorem",
  "lexical_name": "pointedDistanceProfile_witnesses_distance",
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
  "slug": "pointeddistanceprofile-witnesses-distance--3a0caa51a5a2dc3b59b70572",
  "source": {
    "blob": "8d85485f03537bd08aa9a93f884f3776a2e45f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 52,
    "path": "GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a0caa51a5a2dc3b59b705723eea10b6abe5f72c2e65be1a86b0b0a5369baf27",
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

Occurrence: `result:77771671-8334-8fc3-1e2f-5735c411330c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pointedDistanceProfile_witnesses_distance
    (base left right : X) :
    |pointedDistanceProfile base left left -
        pointedDistanceProfile base right left| =
      dist left right := by
  have inside :
      pointedDistanceProfile base left left -
          pointedDistanceProfile base right left =
        -dist left right := by
    simp only [pointedDistanceProfile, dist_self, zero_sub]
    ring
  rw [inside, abs_neg, abs_of_nonneg dist_nonneg]

/--
The complete pointed distance profile is injective.  This is the elementary
metric rigidity theorem used by the extension protocol.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d85485f03537bd08aa9a93f884f3776a2e45f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
