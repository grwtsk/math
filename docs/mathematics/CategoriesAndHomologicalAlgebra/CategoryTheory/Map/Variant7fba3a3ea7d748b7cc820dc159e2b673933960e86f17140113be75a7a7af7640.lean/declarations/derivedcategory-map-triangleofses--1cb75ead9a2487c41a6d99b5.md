# DerivedCategory.map_triangleOfSESδ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9e5b4ab-d91f-dfa3-b793-d438231d3275",
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
  "slug": "derivedcategory-map-triangleofses--1cb75ead9a2487c41a6d99b5",
  "source": {
    "blob": "2b2d056ad540e14378fcde7723da58d99f44ccc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant7fba3a3ea7d748b7cc820dc159e2b673933960e86f17140113be75a7a7af7640.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cb75ead9a2487c41a6d99b5566fc4ca3acfc8fc53092f915a10900247e577c9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant7fba3a3ea7d748b7cc820dc159e2b673933960e86f17140113be75a7a7af7640.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9e5b4ab-d91f-dfa3-b793-d438231d3275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–93.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant7fba3a3ea7d748b7cc820dc159e2b673933960e86f17140113be75a7a7af7640.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant7fba3a3ea7d748b7cc820dc159e2b673933960e86f17140113be75a7a7af7640.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2d056ad540e14378fcde7723da58d99f44ccc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
