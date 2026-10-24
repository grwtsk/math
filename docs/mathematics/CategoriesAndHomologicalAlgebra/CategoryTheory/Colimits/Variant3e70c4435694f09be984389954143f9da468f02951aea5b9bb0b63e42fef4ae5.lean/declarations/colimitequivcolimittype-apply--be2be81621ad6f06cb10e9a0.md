# colimitEquivColimitType_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46fb445ebdbc4110e8117402dd9dd29626ab9c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2bf341e4-cc71-ba01-4167-cc9c1eefb621",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94c11feb-0b7b-97f5-5f6f-dbb27e1085e0",
  "kind": "theorem",
  "lexical_name": "colimitEquivColimitType_apply",
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
  "slug": "colimitequivcolimittype-apply--be2be81621ad6f06cb10e9a0",
  "source": {
    "blob": "46fb445ebdbc4110e8117402dd9dd29626ab9c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be2be81621ad6f06cb10e9a0198d254928bb1410e9493d78c8800ac52621ebb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94c11feb-0b7b-97f5-5f6f-dbb27e1085e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitEquivColimitType_apply (j : J) (x : F.obj j) :
    (colimitEquivColimitType F) (colimit.ι F j x) = Quot.mk _ ⟨j, x⟩ := by
  apply (colimitEquivColimitType F).symm.injective
  simp

-- We don’t want to add `simp` to the original lemmas here.
-- `colimit.w_apply` and `colimit.ι_desc_apply` are generated (and tagged `simp`)
-- in `Mathlib/CategoryTheory/ConcreteCategory/Elementwise.lean`.
attribute [elementwise] colimit.ι_map
attribute [simp] colimit.ι_map_apply

variable {F} in
@[deprecated colimit.w_apply (since := "2026-03-06")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46fb445ebdbc4110e8117402dd9dd29626ab9c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
