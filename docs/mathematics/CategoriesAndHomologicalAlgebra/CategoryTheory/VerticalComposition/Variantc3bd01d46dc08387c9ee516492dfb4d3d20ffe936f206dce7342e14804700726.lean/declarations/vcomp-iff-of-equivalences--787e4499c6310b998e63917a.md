# vComp'_iff_of_equivalences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6766c3a34cde2cf7d0be82de92e53978855a3821",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:839fd86a-9223-6fc2-74df-2c8459dfe3a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a754325d-29b4-a3fd-ee27-25479f7dddb5",
  "kind": "lemma",
  "lexical_name": "vComp'_iff_of_equivalences",
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
  "slug": "vcomp-iff-of-equivalences--787e4499c6310b998e63917a",
  "source": {
    "blob": "6766c3a34cde2cf7d0be82de92e53978855a3821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:787e4499c6310b998e63917aa3c27694dc4d4c477b527f5abf80c30add79798c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a754325d-29b4-a3fd-ee27-25479f7dddb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vComp'_iff_of_equivalences (E : C₂ ≌ C₃) (E' : D₂ ≌ D₃)
    (w' : H₂ ⋙ E'.functor ≅ E.functor ⋙ H₃) {L₁₂ : C₁ ⥤ C₃}
    {R₁₂ : D₁ ⥤ D₃} (eL : L₁ ⋙ E.functor ≅ L₁₂)
    (eR : R₁ ⋙ E'.functor ≅ R₁₂) :
    (w.vComp' w'.hom eL eR).GuitartExact ↔ w.GuitartExact := by
  rw [← vComp_iff_of_equivalences w E E' w', TwoSquare.vComp', whiskerVertical_iff]

end GuitartExact

end VerticalComposition

end TwoSquare

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6766c3a34cde2cf7d0be82de92e53978855a3821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
