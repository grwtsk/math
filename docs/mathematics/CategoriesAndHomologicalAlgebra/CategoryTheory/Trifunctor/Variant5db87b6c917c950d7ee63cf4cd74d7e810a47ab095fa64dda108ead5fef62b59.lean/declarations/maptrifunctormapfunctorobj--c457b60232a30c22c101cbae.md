# mapTrifunctorMapFunctorObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa2dc630a59ff8fa0cde681bdc3e7e48e84d4d1333ad774da5978447c5049f46",
  "kind": "def",
  "lexical_name": "mapTrifunctorMapFunctorObj",
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
  "slug": "maptrifunctormapfunctorobj--c457b60232a30c22c101cbae",
  "source": {
    "blob": "a46bf95c469160735713e970381cf9bae9a12514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c457b60232a30c22c101cbae37b850e5a7426f6b0f59da583f0861275a0dde1f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa2dc630a59ff8fa0cde681bdc3e7e48e84d4d1333ad774da5978447c5049f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapTrifunctorMapFunctorObj (X₁ : GradedObject I₁ C₁)
    [∀ X₂ X₃, HasMap ((((mapTrifunctor F I₁ I₂ I₃).obj X₁).obj X₂).obj X₃) p] :
    GradedObject I₂ C₂ ⥤ GradedObject I₃ C₃ ⥤ GradedObject J C₄ where
  obj X₂ :=
    { obj := fun X₃ => mapTrifunctorMapObj F p X₁ X₂ X₃
      map := fun {_ _} φ => mapTrifunctorMapMap F p (𝟙 X₁) (𝟙 X₂) φ
      map_id := fun X₃ => by
        ext j i₁ i₂ i₃ h
        simp only [ι_mapTrifunctorMapMap, categoryOfGradedObjects_id, Functor.map_id,
          NatTrans.id_app, id_comp, comp_id]
      map_comp := fun {X₃ Y₃ Z₃} φ ψ => by
        ext j i₁ i₂ i₃ h
        simp only [ι_mapTrifunctorMapMap, categoryOfGradedObjects_id, Functor.map_id,
          NatTrans.id_app, categoryOfGradedObjects_comp, Functor.map_comp, assoc, id_comp,
          ι_mapTrifunctorMapMap_assoc] }
  map {X₂ Y₂} φ :=
    { app := fun X₃ => mapTrifunctorMapMap F p (𝟙 X₁) φ (𝟙 X₃)
      naturality := fun {X₃ Y₃} ψ => by
        ext j i₁ i₂ i₃ h
        dsimp
        simp only [ι_mapTrifunctorMapMap_assoc, categoryOfGradedObjects_id, Functor.map_id,
          NatTrans.id_app, ι_mapTrifunctorMapMap, id_comp, NatTrans.naturality_assoc] }
  map_id X₂ := by
    ext X₃ j i₁ i₂ i₃ h
    simp only [ι_mapTrifunctorMapMap, categoryOfGradedObjects_id, Functor.map_id,
      NatTrans.id_app, id_comp, comp_id]
  map_comp {X₂ Y₂ Z₂} φ ψ := by
    ext X₃ j i₁ i₂ i₃
    simp only [ι_mapTrifunctorMapMap, categoryOfGradedObjects_id, Functor.map_id,
      NatTrans.id_app, categoryOfGradedObjects_comp, Functor.map_comp, NatTrans.comp_app,
      id_comp, assoc, ι_mapTrifunctorMapMap_assoc]

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Given a trifunctor `F : C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` and a map `p : I₁ × I₂ × I₃ → J`,
this is the functor
`GradedObject I₁ C₁ ⥤ GradedObject I₂ C₂ ⥤ GradedObject I₃ C₃ ⥤ GradedObject J C₄`
sending `X₁ : GradedObject I₁ C₁`, `X₂ : GradedObject I₂ C₂` and `X₃ : GradedObject I₃ C₃`
to the `J`-graded object sending `j` to the coproduct of
`((F.obj (X₁ i₁)).obj (X₂ i₂)).obj (X₃ i₃)` for `p ⟨i₁, i₂, i₃⟩ = j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46bf95c469160735713e970381cf9bae9a12514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
