# isClosedUnderLimitsOfShape_inverseImage_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3100e0a04494229f827d4147aa80388c6ce27f6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4a5ff2f-2688-2276-4540-20c81ee8855d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1389dcb2-76b6-7c62-be3e-79ec876e106a",
  "kind": "lemma",
  "lexical_name": "isClosedUnderLimitsOfShape_inverseImage_iff",
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
  "slug": "isclosedunderlimitsofshape-inverseimage-iff--67df21c7277a2258c808df36",
  "source": {
    "blob": "3100e0a04494229f827d4147aa80388c6ce27f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67df21c7277a2258c808df36afc7f3875096018d612273e24cdf2477a06adfac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1389dcb2-76b6-7c62-be3e-79ec876e106a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedUnderLimitsOfShape_inverseImage_iff (P : ObjectProperty D)
    [P.IsClosedUnderIsomorphisms] (e : C ≌ D) :
    (P.inverseImage e.functor).IsClosedUnderLimitsOfShape J ↔ P.IsClosedUnderLimitsOfShape J := by
  refine ⟨fun H ↦ ?_, fun _ ↦ inferInstance⟩
  convert!
    (inferInstance :
      ((P.inverseImage e.functor).inverseImage e.inverse).IsClosedUnderLimitsOfShape J)
  ext X
  simpa using P.prop_iff_of_iso (e.counitIso.app X).symm

end ObjectProperty

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3100e0a04494229f827d4147aa80388c6ce27f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
