# Functor.essImage.unit_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0438f47effee11c3b2f4a52eb194af2abef0f4f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6d80da6-a971-d966-7ba8-57282f2b8889",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5949d5ba-c8a6-9017-15c9-6a69ab807883",
  "kind": "theorem",
  "lexical_name": "Functor.essImage.unit_isIso",
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
  "slug": "functor-essimage-unit-isiso--7efc6c4ea31dfbe7fca1cd78",
  "source": {
    "blob": "0438f47effee11c3b2f4a52eb194af2abef0f4f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7efc6c4ea31dfbe7fca1cd78cc3be5d33af78436757efdf15c59110bf368f482",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5949d5ba-c8a6-9017-15c9-6a69ab807883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.essImage.unit_isIso [Reflective i] {A : C} (h : i.essImage A) :
    IsIso ((reflectorAdjunction i).unit.app A) := by
  rwa [isIso_unit_app_iff_mem_essImage]

/-- If `η_A` is a split monomorphism, then `A` is in the reflective subcategory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0438f47effee11c3b2f4a52eb194af2abef0f4f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
