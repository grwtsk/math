# shiftIso_hom_app_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fafd44f-d2c2-dfda-e5eb-09f5ca318803",
  "kind": "lemma",
  "lexical_name": "shiftIso_hom_app_obj",
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
  "slug": "shiftiso-hom-app-obj--e707414f2659d6ab9039d3db",
  "source": {
    "blob": "9a252bcc5f4314bff1a3cd383f1c96e879bb33e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e707414f2659d6ab9039d3dbd25786a111b0092c2cbbcf1ca5e1b0f82715e330",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fafd44f-d2c2-dfda-e5eb-09f5ca318803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftIso_hom_app_obj (n a a' : M) (ha' : n + a = a') (X : C) :
    (shiftIso L G M F' e' n a a' ha').hom.app (L.obj X) =
      (F' a).map ((L.commShiftIso n).inv.app X) ≫
        (e' a).hom.app (X⟦n⟧) ≫ (G.shiftIso n a a' ha').hom.app X ≫ (e' a').inv.app X :=
  (NatTrans.congr_app (((whiskeringLeft C D A).obj L).map_preimage _) X).trans (by simp)

attribute [irreducible] isoZero shiftIso

end induced

variable [HasShift D M] [L.CommShift M]

/-- Given an isomorphism of functors `e : L ⋙ F ≅ G` relating functors `L : C ⥤ D`,
`F : D ⥤ A` and `G : C ⥤ A`, an additive monoid `M`, a family of functors `F' : M → D ⥤ A`
equipped with isomorphisms `e' : ∀ m, L ⋙ F' m ≅ G.shift m`, this is the shift sequence
induced on `F` induced by a shift sequence for the functor `G`, provided that
the functor `(whiskeringLeft C D A).obj L` of precomposition by `L` is fully faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a252bcc5f4314bff1a3cd383f1c96e879bb33e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
