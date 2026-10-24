# preimage_toSnowflaking_closedEBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a199811081de44d2c0f3df3ad7ed430799338a2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:652bbb31-8c68-b829-886d-f0f666721767",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c867ce8-d534-9e6d-4800-97ee661c5179",
  "kind": "theorem",
  "lexical_name": "preimage_toSnowflaking_closedEBall",
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
  "slug": "preimage-tosnowflaking-closedeball--7f3f459878dc5df5aaa4b032",
  "source": {
    "blob": "a199811081de44d2c0f3df3ad7ed430799338a2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 350,
    "path": "GRWTSK/Topology/MetricTopology/Snowflaking/Variant0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f3f459878dc5df5aaa4b0321ade721540d21e9743481e60dc797b644bc72d83",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Snowflaking/Variant0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c867ce8-d534-9e6d-4800-97ee661c5179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_toSnowflaking_closedEBall (x : Snowflaking X α hα₀ hα₁) (d : ℝ≥0∞) :
    toSnowflaking ⁻¹' Metric.closedEBall x d = Metric.closedEBall x.ofSnowflaking (d ^ α⁻¹) := by
  rw [toSnowflaking.preimage_eq_iff_eq_image, image_toSnowflaking_closedEBall,
    toSnowflaking_ofSnowflaking, ENNReal.rpow_inv_rpow hα₀.ne']

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Snowflaking/Variant0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Snowflaking/Variant0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a199811081de44d2c0f3df3ad7ed430799338a2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
