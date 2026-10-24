# whiskerRight_quotientCompMapHomotopyCategoryPlusIso_hom_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a183ab44-d794-3043-8e80-982b4e2cf931",
  "kind": "lemma",
  "lexical_name": "whiskerRight_quotientCompMapHomotopyCategoryPlusIso_hom_ι",
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
  "slug": "whiskerright-quotientcompmaphomotopycategoryplusiso-hom--074d0d0a7f885360c0049758",
  "source": {
    "blob": "14ec6f44be4862164c71211ca65ff3630728309f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 357,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb62dbd3261db258b46afd0bd8479ff418d1866413f880e04c387ccd1ec51b6c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:074d0d0a7f885360c00497584cb364091943af147b1b2f95da9f4e291d88cadc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb62dbd3261db258b46afd0bd8479ff418d1866413f880e04c387ccd1ec51b6c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a183ab44-d794-3043-8e80-982b4e2cf931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerRight_quotientCompMapHomotopyCategoryPlusIso_hom_ι :
    whiskerRight F.quotientCompMapHomotopyCategoryPlusIso.hom (HomotopyCategory.Plus.ι D) =
    (associator _ _ _).hom ≫
      whiskerLeft _ F.mapHomotopyCategoryPlusCompι.hom ≫ (associator _ _ _).inv ≫
      whiskerRight (HomotopyCategory.Plus.quotientCompιIso C).hom _ ≫
      (associator _ _ _).hom ≫ whiskerLeft _ (F.mapHomotopyCategoryFactors (.up ℤ)).hom ≫
      (associator _ _ _).inv ≫ whiskerRight F.mapCochainComplexPlusCompι.inv _ ≫
      (associator _ _ _).hom ≫ whiskerLeft _ (HomotopyCategory.Plus.quotientCompιIso D).inv ≫
      (associator _ _ _).inv := by
  ext K
  dsimp
  simp only [quotientCompMapHomotopyCategoryPlusIso_hom_app_hom,
    mapHomotopyCategoryPlusCompι_hom_app, HomotopyCategory.Plus.quotientCompιIso_hom_app,
    mapCochainComplexPlusCompι_inv_app, HomotopyCategory.Plus.quotientCompιIso_inv_app,
    Category.comp_id, Category.id_comp, comp_obj,
    (F.mapHomotopyCategory (.up ℤ)).map_id ((HomotopyCategory.quotient C (.up ℤ)).obj K.obj),
    (HomotopyCategory.quotient D (.up ℤ)).map_id (F.mapCochainComplexPlus.obj K).obj,
    Functor.mapHomotopyCategoryFactors_hom_app]
  simp [mapHomotopyCategoryPlus, HomotopyCategory.Plus.quotient]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb62dbd3261db258b46afd0bd8479ff418d1866413f880e04c387ccd1ec51b6c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb62dbd3261db258b46afd0bd8479ff418d1866413f880e04c387ccd1ec51b6c5.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ec6f44be4862164c71211ca65ff3630728309f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
