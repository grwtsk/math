# comp_map_commShiftIso_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d67504de-21a2-8f80-81d7-4e96c43da285",
  "kind": "lemma",
  "lexical_name": "comp_map_commShiftIso_hom_app",
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
  "slug": "comp-map-commshiftiso-hom-app--c65cf2fd0a6b5b83789753a9",
  "source": {
    "blob": "bef622d18beaf3dff4057d0720607a70a13fb460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c65cf2fd0a6b5b83789753a9db470ce8c006d6a02fe5149bfdf66112fbcffc71",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67504de-21a2-8f80-81d7-4e96c43da285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_map_commShiftIso_hom_app (a : A) (X : C) :
    letI := commShift RF α W A
    dsimp% α.app (X⟦a⟧) ≫ RF.map ((L.commShiftIso a).hom.app X) ≫
      (RF.commShiftIso a).hom.app (L.obj X) =
    (F.commShiftIso a).hom.app X ≫ (α.app X)⟦a⟧' := by
  simpa using! (rightDerivedNatTrans_app _ _ (precomposeShiftNatTrans RF α a)
      (postcomposeShiftNatTrans RF α _) W (F.commShiftIso _).hom X)

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] commShiftIso_comp_hom_app in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef622d18beaf3dff4057d0720607a70a13fb460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
