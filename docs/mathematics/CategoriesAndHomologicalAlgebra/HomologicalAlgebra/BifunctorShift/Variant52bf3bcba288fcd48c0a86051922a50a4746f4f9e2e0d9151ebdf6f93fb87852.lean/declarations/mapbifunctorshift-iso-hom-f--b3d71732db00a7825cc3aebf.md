# ι_mapBifunctorShift₂Iso_hom_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e69ffe7a-2c67-465d-b830-3f27ba6b889c",
  "kind": "lemma",
  "lexical_name": "ι_mapBifunctorShift₂Iso_hom_f",
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
  "slug": "mapbifunctorshift-iso-hom-f--b3d71732db00a7825cc3aebf",
  "source": {
    "blob": "112a572e913b3b0f36e4c35dd90fbdc571f0fafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d71732db00a7825cc3aebf79c661dd6ba37471cc46cceadc22045ac4076166",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e69ffe7a-2c67-465d-b830-3f27ba6b889c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_mapBifunctorShift₂Iso_hom_f (n₁ n₂ n : ℤ) (h : n₁ + n₂ = n)
    (m₂ m : ℤ) (hm₂ : m₂ = n₂ + y) (hm : m = n + y) :
    ιMapBifunctor K₁ _ F n₁ n₂ n h ≫ (mapBifunctorShift₂Iso K₁ K₂ F y).hom.f n =
      (n₁ * y).negOnePow • (F.obj _).map (shiftFunctorObjXIso K₂ y n₂ m₂ hm₂).hom ≫
        ιMapBifunctor K₁ K₂ F n₁ m₂ m (by lia) ≫
        (shiftFunctorObjXIso (mapBifunctor K₁ K₂ F) y n m hm).inv := by
  dsimp [mapBifunctorShift₂Iso]
  simp only [HomologicalComplex₂.ιTotal_map_assoc,
    HomologicalComplex₂.ι_totalShift₂Iso_hom_f _ _ _ _ _ _ _ hm₂ _ hm]
  simp [HomologicalComplex₂.ιTotal, HomologicalComplex₂.shiftFunctor₂XXIso,
    HomologicalComplex.XIsoOfEq, eqToHom_map]

set_option backward.defeqAttrib.useBackward true in
variable {K₂ L₂} in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112a572e913b3b0f36e4c35dd90fbdc571f0fafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
