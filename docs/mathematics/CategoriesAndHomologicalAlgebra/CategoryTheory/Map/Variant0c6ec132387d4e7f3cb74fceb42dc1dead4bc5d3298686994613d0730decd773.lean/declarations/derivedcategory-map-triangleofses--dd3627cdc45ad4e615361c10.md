# DerivedCategory.map_triangleOfSESδ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "021718fecc7699c646cf9a76621ecc1e042edbd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9cf63b38-97b7-769c-5c5f-aa3e53a50bc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91faad8d-c2fb-7adf-ca92-9510eac72ba1",
  "kind": "lemma",
  "lexical_name": "DerivedCategory.map_triangleOfSESδ",
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
  "slug": "derivedcategory-map-triangleofses--dd3627cdc45ad4e615361c10",
  "source": {
    "blob": "021718fecc7699c646cf9a76621ecc1e042edbd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd3627cdc45ad4e615361c10b1405fcf1fe65581919cad626b28e27d1d151476",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91faad8d-c2fb-7adf-ca92-9510eac72ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DerivedCategory.map_triangleOfSESδ [HasDerivedCategory.{t} C] [HasDerivedCategory.{t'} D]
    {S : ShortComplex (CochainComplex C ℤ)} (hS : S.ShortExact) :
    dsimp% F.mapDerivedCategory.map (triangleOfSESδ hS) =
    (F.mapDerivedCategoryFactors.hom.app S.X₃) ≫
      triangleOfSESδ (hS.map_of_exact (F.mapHomologicalComplex _)) ≫
        (F.mapDerivedCategoryFactors.inv.app S.X₁)⟦1⟧' ≫
          (F.mapDerivedCategory.commShiftIso (1 : ℤ)).inv.app (Q.obj S.X₁) := by
  have := CochainComplex.mappingCone.quasiIso_descShortComplex hS
  rw [← cancel_epi (F.mapDerivedCategory.map
    (Q.map (CochainComplex.mappingCone.descShortComplex S))), ← Functor.map_comp,
    descShortComplex_triangleOfSESδ, F.mapDerivedCategoryFactors_hom_naturality_assoc,
    ← CochainComplex.mappingCone.mapHomologicalComplexIso_hom_descShortComplex,
    Functor.map_comp_assoc, descShortComplex_triangleOfSESδ_assoc]
  dsimp
  rw  [← Functor.map_comp_assoc]
  rw [← CochainComplex.mappingCone.map_δ, Functor.map_comp_assoc,
    ← F.mapDerivedCategoryFactors_hom_naturality_assoc, Functor.map_comp]
  simp [NatTrans.shift_app, Functor.commShiftIso_comp_hom_app, Functor.commShiftIso_comp_inv_app,
    ← Functor.map_comp_assoc]

set_option backward.defeqAttrib.useBackward true in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `021718fecc7699c646cf9a76621ecc1e042edbd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
