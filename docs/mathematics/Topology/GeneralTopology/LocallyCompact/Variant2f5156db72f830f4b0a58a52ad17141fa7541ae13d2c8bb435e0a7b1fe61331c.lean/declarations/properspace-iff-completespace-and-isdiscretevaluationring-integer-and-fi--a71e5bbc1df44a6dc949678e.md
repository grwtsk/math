# properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6adb4a4-991e-e066-d237-a2171d73e93b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4d5e98b-b960-8aa0-4e6c-0397076f3db9",
  "kind": "lemma",
  "lexical_name": "properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField",
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
  "slug": "properspace-iff-completespace-and-isdiscretevaluationring-integer-and-fi--a71e5bbc1df44a6dc949678e",
  "source": {
    "blob": "b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a71e5bbc1df44a6dc949678e893c1bbb6d3814aed50d11eeef94def6792b45b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4d5e98b-b960-8aa0-4e6c-0397076f3db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField :
    ProperSpace K ↔ CompleteSpace K ∧ IsDiscreteValuationRing 𝒪[K] ∧ Finite 𝓀[K] := by
  simp only [properSpace_iff_compactSpace_integer,
      compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField,
      completeSpace_iff_isComplete_univ (α := 𝒪[K]), Subtype.isComplete_iff,
      NormedField.completeSpace_iff_isComplete_closedBall, Set.image_univ,
      Subtype.range_coe_subtype, mem_iff, ← mem_closedBall_zero_iff, Set.setOf_mem_eq]

end Valued.integer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
