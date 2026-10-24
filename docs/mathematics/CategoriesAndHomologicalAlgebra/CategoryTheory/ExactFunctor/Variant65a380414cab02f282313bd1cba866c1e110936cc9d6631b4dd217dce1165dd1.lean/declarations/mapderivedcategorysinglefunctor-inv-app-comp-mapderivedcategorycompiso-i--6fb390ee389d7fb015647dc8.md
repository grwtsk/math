# mapDerivedCategorySingleFunctor_inv_app_comp_mapDerivedCategoryCompIso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac4cc0e6-5914-5cd1-1009-8d1adf998679",
  "kind": "lemma",
  "lexical_name": "mapDerivedCategorySingleFunctor_inv_app_comp_mapDerivedCategoryCompIso_inv_app",
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
  "slug": "mapderivedcategorysinglefunctor-inv-app-comp-mapderivedcategorycompiso-i--6fb390ee389d7fb015647dc8",
  "source": {
    "blob": "702781d39d96e5b5592b48ff77078acb86c978b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 273,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant65a380414cab02f282313bd1cba866c1e110936cc9d6631b4dd217dce1165dd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fb390ee389d7fb015647dc8426a2fbb6319421be9825267aff4d2aa90a1d393",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant65a380414cab02f282313bd1cba866c1e110936cc9d6631b4dd217dce1165dd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac4cc0e6-5914-5cd1-1009-8d1adf998679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapDerivedCategorySingleFunctor_inv_app_comp_mapDerivedCategoryCompIso_inv_app (X : C₁) :
    ((F ⋙ G).mapDerivedCategorySingleFunctor 0).inv.app X ≫
    (mapDerivedCategoryCompIso F G).inv.app ((DerivedCategory.singleFunctor C₁ 0).obj X) =
    (G.mapDerivedCategorySingleFunctor 0).inv.app (F.obj X) ≫
    G.mapDerivedCategory.map ((F.mapDerivedCategorySingleFunctor 0).inv.app X) := by
  rw [← cancel_epi ((G.mapDerivedCategorySingleFunctor 0).hom.app (F.obj X)),
    ← cancel_epi (G.mapDerivedCategory.map ((F.mapDerivedCategorySingleFunctor 0).hom.app X))]
  simp [← mapDerivedCategoryCompIso_hom_app_comp_mapDerivedCategorySingleFunctor_hom_app_assoc,
    ← Functor.map_comp]

end Functor

namespace NatTrans

variable {F : C₁ ⥤ C₂} [F.Additive] [PreservesFiniteLimits F] [PreservesFiniteColimits F]
  {G : C₁ ⥤ C₂} [G.Additive] [PreservesFiniteLimits G] [PreservesFiniteColimits G]

/-- A natural transformation between exact functors between abelian categories
induces a natural transformation between the corresponding induced functors
on the derived categories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant65a380414cab02f282313bd1cba866c1e110936cc9d6631b4dd217dce1165dd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant65a380414cab02f282313bd1cba866c1e110936cc9d6631b4dd217dce1165dd1.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `702781d39d96e5b5592b48ff77078acb86c978b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
