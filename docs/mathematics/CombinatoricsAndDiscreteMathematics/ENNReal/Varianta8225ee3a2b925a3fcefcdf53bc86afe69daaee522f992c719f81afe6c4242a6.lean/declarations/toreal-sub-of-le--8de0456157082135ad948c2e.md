# toReal_sub_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fbb2d6d6d9bff445d082976a66e3c5723503487",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1995,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3576a082-f819-d5bd-6790-5407be56736d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25fe1128-b562-cb56-43c7-9e2ea0e703c9",
  "kind": "theorem",
  "lexical_name": "toReal_sub_of_le",
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
  "slug": "toreal-sub-of-le--8de0456157082135ad948c2e",
  "source": {
    "blob": "0fbb2d6d6d9bff445d082976a66e3c5723503487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2001,
    "line": 1995,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de0456157082135ad948c2e781e22ae19ac80b8e6970844d442db31ecb015fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25fe1128-b562-cb56-43c7-9e2ea0e703c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1995–2001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toReal_sub_of_le {a b : ℝ≥0∞} (h : b ≤ a) (ha : a ≠ ∞) :
    (a - b).toReal = a.toReal - b.toReal := by
  lift b to ℝ≥0 using ne_top_of_le_ne_top ha h
  lift a to ℝ≥0 using ha
  simp only [← ENNReal.coe_sub, ENNReal.coe_toReal, NNReal.coe_sub (ENNReal.coe_le_coe.mp h)]
#align ennreal.to_real_sub_of_le ENNReal.toReal_sub_of_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean#L1995).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fbb2d6d6d9bff445d082976a66e3c5723503487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
