# tendsto_const_mul_rpow_nhds_zero_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b79c297581f63239e13df3987eb562f87864f86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fce1344-48f7-26b2-cc5d-4110bd0a44be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a70902a8-3fe7-cefb-775d-227cb9627858",
  "kind": "theorem",
  "lexical_name": "tendsto_const_mul_rpow_nhds_zero_of_pos",
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
  "slug": "tendsto-const-mul-rpow-nhds-zero-of-pos--e0c328caab48e9998ce3d60a",
  "source": {
    "blob": "7b79c297581f63239e13df3987eb562f87864f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 482,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0c328caab48e9998ce3d60afe2cad92b3e83c2458ace6b749932450ea4fe52a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a70902a8-3fe7-cefb-775d-227cb9627858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_mul_rpow_nhds_zero_of_pos {c : ℝ≥0∞} (hc : c ≠ ∞) {y : ℝ} (hy : 0 < y) :
    Tendsto (fun x : ℝ≥0∞ => c * x ^ y) (𝓝 0) (𝓝 0) := by
  convert! ENNReal.Tendsto.const_mul (ENNReal.continuous_rpow_const.tendsto 0) _
  · simp [hy]
  · exact Or.inr hc

end ENNReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b79c297581f63239e13df3987eb562f87864f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
