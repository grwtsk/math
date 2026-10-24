# PresheafOfModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ae349ff8c7328ec97c7e1a4823945b99c8f832f06cac7ee2f393f17bb02fa3f",
  "kind": "structure",
  "lexical_name": "PresheafOfModules",
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
  "slug": "presheafofmodules--ee53318555e6de80524a1abb",
  "source": {
    "blob": "5f3e34bdcd4fb1435d3f3debddf30f3695f8da4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee53318555e6de80524a1abbd284219092c9555e597f05956aa6a1bc52262fa8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ae349ff8c7328ec97c7e1a4823945b99c8f832f06cac7ee2f393f17bb02fa3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PresheafOfModules where
  /-- a family of modules over `R.obj X` for all `X` -/
  obj (X : Cᵒᵖ) : ModuleCat.{v} (R.obj X)
  /-- the restriction maps of a presheaf of modules -/
  map {X Y : Cᵒᵖ} (f : X ⟶ Y) : obj X ⟶ (ModuleCat.restrictScalars (R.map f).hom).obj (obj Y)
  map_id (X : Cᵒᵖ) :
    map (𝟙 X) = (ModuleCat.restrictScalarsId' (R.map (𝟙 X)).hom
      (congrArg RingCat.Hom.hom (R.map_id X))).inv.app _ := by
        cat_disch
  map_comp {X Y Z : Cᵒᵖ} (f : X ⟶ Y) (g : Y ⟶ Z) :
    map (f ≫ g) = map f ≫ (ModuleCat.restrictScalars _).map (map g) ≫
      (ModuleCat.restrictScalarsComp' (R.map f).hom (R.map g).hom (R.map (f ≫ g)).hom
        (congrArg RingCat.Hom.hom <| R.map_comp f g)).inv.app _ := by cat_disch

namespace PresheafOfModules

attribute [simp] map_id map_comp
attribute [reassoc] map_comp

#adaptation_note /-- https://github.com/leanprover/lean4/pull/12564
This is required for `Algebra.Category.ModuleCat.Differentials.Presheaf` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f3e34bdcd4fb1435d3f3debddf30f3695f8da4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
