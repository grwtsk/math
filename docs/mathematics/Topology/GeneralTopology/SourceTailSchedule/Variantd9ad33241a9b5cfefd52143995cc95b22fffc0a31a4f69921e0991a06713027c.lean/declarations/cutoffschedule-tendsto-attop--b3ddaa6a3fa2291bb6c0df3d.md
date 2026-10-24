# cutoffSchedule_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd49ced25bbb9580b5f5db23df8cdd9451317e1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0719aebb-050a-30dd-481d-e21e7e1c1c44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67917690-218d-f97f-f397-053ca97c8585",
  "kind": "theorem",
  "lexical_name": "cutoffSchedule_tendsto_atTop",
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
  "slug": "cutoffschedule-tendsto-attop--b3ddaa6a3fa2291bb6c0df3d",
  "source": {
    "blob": "dd49ced25bbb9580b5f5db23df8cdd9451317e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3ddaa6a3fa2291bb6c0df3d23de15231c56dd6e8ff005ef7fb1a9d2f3d9a9f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67917690-218d-f97f-f397-053ca97c8585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffSchedule_tendsto_atTop : Tendsto cutoffSchedule atTop atTop := by
  have hL : Tendsto logScale atTop atTop :=
    tendsto_const_nhds.add_atTop (Real.tendsto_log_atTop.comp tendsto_natCast_atTop_atTop)
  exact ((tendsto_pow_atTop (by norm_num : (3 : ℕ) ≠ 0)).comp
    tendsto_natCast_atTop_atTop).atTop_mul_atTop₀
      ((tendsto_pow_atTop (by norm_num : (2 : ℕ) ≠ 0)).comp hL)

end
end SourceTailScheduleScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd49ced25bbb9580b5f5db23df8cdd9451317e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
