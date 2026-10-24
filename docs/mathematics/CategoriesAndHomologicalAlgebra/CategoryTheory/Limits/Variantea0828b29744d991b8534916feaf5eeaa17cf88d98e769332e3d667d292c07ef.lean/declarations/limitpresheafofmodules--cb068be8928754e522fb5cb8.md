# limitPresheafOfModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f66f1a8bca19ca33fa4d8d4f013b0d206cfe29386eae90fae154dd535efa1468",
  "kind": "def",
  "lexical_name": "limitPresheafOfModules",
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
  "slug": "limitpresheafofmodules--cb068be8928754e522fb5cb8",
  "source": {
    "blob": "b39f48817c23e2b4efa573808f7d85f3de7b4e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb068be8928754e522fb5cb823c4980926c6f9f0f1f9993c1d72bbf329675ab1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f66f1a8bca19ca33fa4d8d4f013b0d206cfe29386eae90fae154dd535efa1468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def limitPresheafOfModules : PresheafOfModules R where
  obj X := limit (F ⋙ evaluation R X)
  map {_ Y} f := limMap (whiskerLeft F (restriction R f)) ≫
    (preservesLimitIso (ModuleCat.restrictScalars (R.map f).hom) (F ⋙ evaluation R Y)).inv
  map_id X := by
    dsimp
    rw [← cancel_mono (preservesLimitIso _ _).hom, assoc, Iso.inv_hom_id, comp_id]
    apply limit.hom_ext
    intro j
    dsimp
    simp only [limMap_π, Functor.comp_obj, evaluation_obj, whiskerLeft_app,
      restriction_app, assoc]
    -- Here we should rewrite using `Functor.assoc` but that gives a "motive is type-incorrect"
    erw [preservesLimitIso_hom_π]
    rw [← ModuleCat.restrictScalarsId'App_inv_naturality, map_id,
      ModuleCat.restrictScalarsId'_inv_app]
    dsimp
  map_comp {X Y Z} f g := by
    dsimp
    rw [← cancel_mono (preservesLimitIso _ _).hom, assoc, assoc, assoc, assoc, Iso.inv_hom_id,
      comp_id]
    apply limit.hom_ext
    intro j
    simp only [Functor.comp_obj, evaluation_obj, limMap_π, whiskerLeft_app, restriction_app,
      map_comp, ModuleCat.restrictScalarsComp'_inv_app, Functor.map_comp, assoc]
    -- Here we should rewrite using `Functor.assoc` but that gives a "motive is type-incorrect"
    erw [preservesLimitIso_hom_π]
    rw [← ModuleCat.restrictScalarsComp'App_inv_naturality]
    dsimp
    rw [← Functor.map_comp_assoc, ← Functor.map_comp_assoc, assoc,
      preservesLimitIso_inv_π]
    -- Here we should rewrite using `Functor.assoc` but that gives a "motive is type-incorrect"
    erw [limMap_π]
    dsimp
    simp only [Functor.map_comp, assoc, preservesLimitIso_inv_π_assoc]
    -- Here we should rewrite using `Functor.assoc` but that gives a "motive is type-incorrect"
    erw [limMap_π_assoc]
    dsimp

/-- The (limit) cone for `F : J ⥤ PresheafOfModules.{v} R` that is constructed from the limit
of `F ⋙ evaluation R X` for all `X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39f48817c23e2b4efa573808f7d85f3de7b4e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
