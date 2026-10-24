# le_rieszMeasure_of_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58f395a4c479e254b20ff7e3d40997094ea96bee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9704a2ef-47a3-0611-c5db-3db73cb7898c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:785d7a22-a0a9-2a6a-77f2-76e7ef9c84a1",
  "kind": "lemma",
  "lexical_name": "le_rieszMeasure_of_tsupport_subset",
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
  "slug": "le-rieszmeasure-of-tsupport-subset--f898773f4bf6ece1a8850f4e",
  "source": {
    "blob": "58f395a4c479e254b20ff7e3d40997094ea96bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 345,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f898773f4bf6ece1a8850f4e8101e5376185b2ac3b0a11ce80fca9790d24990f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:785d7a22-a0a9-2a6a-77f2-76e7ef9c84a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_rieszMeasure_of_tsupport_subset {f : C_c(X, ℝ≥0)} (hf : ∀ x, f x ≤ 1) {V : Set X}
    (h : tsupport f ⊆ V) : .ofNNReal (Λ f) ≤ rieszMeasure Λ V := by
  apply le_trans _ (measure_mono h)
  apply le_rieszMeasure_of_isCompact_tsupport_subset Λ hf f.hasCompactSupport
  exact subset_rfl

end NNRealRMK
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f395a4c479e254b20ff7e3d40997094ea96bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
