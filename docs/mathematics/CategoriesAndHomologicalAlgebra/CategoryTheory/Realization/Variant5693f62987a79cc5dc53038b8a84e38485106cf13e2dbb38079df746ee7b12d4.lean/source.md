# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Realization.Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db3acc3690ef38ef64775f6aad86bffbf505816e` · SHA-256 `dd51fcab9a354e8fa8db6f08df9a5e32602229eb2b5557e2220b6cd6e9fc780e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RealizationTheory.Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RealizationTheory.Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ed620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.System

/-!
# Functorial realization of simplicial fabrics

A generic realization is only a functor out of the category of fabrics.  This
module does not call it geometric realization and does not claim a homotopy
colimit implementation.  Functoriality supplies maps and transports reaction
isomorphisms through `mapIso`.

Surjections and system factors are not preserved by an arbitrary realization.
`FactorPreservingRealization` records that stronger behavior, together with an
explicit interpretation of target morphisms as `DAF.System.Hom` values.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RealizationTheory.Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501

open CategoryTheory

namespace DAF.Fabric

universe u

/-- A selected functorial assembly of fabrics into a target category. -/
structure RealizationTheory where
  Target : Type u
  [instCategoryTarget : Category.{u} Target]
  realize : FabricCategory ⥤ Target

attribute [instance] RealizationTheory.instCategoryTarget

namespace Reaction

/-- The global realization map induced functorially by a reaction. -/
def realizationMap
    {F G : Fabric}
    (reaction : Reaction F G)
    (R : RealizationTheory) :
    R.realize.obj F ⟶ R.realize.obj G :=
  R.realize.map reaction

@[simp]
theorem realizationMap_id
    (F : Fabric)
    (R : RealizationTheory) :
    (Reaction.id F).realizationMap R = 𝟙 (R.realize.obj F) :=
  R.realize.map_id F

theorem realizationMap_comp
    {F G H : Fabric}
    (η : Reaction F G)
    (μ : Reaction G H)
    (R : RealizationTheory) :
    (Reaction.comp μ η).realizationMap R =
      η.realizationMap R ≫ μ.realizationMap R :=
  R.realize.map_comp η μ

end Reaction

namespace ReactionIso

/-- Functorial transport of a complete reaction isomorphism. -/
def realizationIso
    {F G : Fabric}
    (η : ReactionIso F G)
    (R : RealizationTheory) :
    R.realize.obj F ≅ R.realize.obj G :=
  R.realize.mapIso η.toIso

@[simp]
theorem realizationIso_hom
    {F G : Fabric}
    (η : ReactionIso F G)
    (R : RealizationTheory) :
    (η.realizationIso R).hom = η.hom.realizationMap R :=
  rfl

@[simp]
theorem realizationIso_inv
    {F G : Fabric}
    (η : ReactionIso F G)
    (R : RealizationTheory) :
    (η.realizationIso R).inv = η.inv.realizationMap R :=
  rfl

end ReactionIso

/--
A realization capability that explicitly carries levelwise system factors to
global system factors.
-/
structure FactorPreservingRealization extends RealizationTheory where
  GlobalSystem : Target → DAF.System
  mapSystem :
    ∀ {X Y : Target},
      (X ⟶ Y) → DAF.System.Hom (GlobalSystem X) (GlobalSystem Y)
  mapSystem_id :
    ∀ X,
      mapSystem (𝟙 X) = DAF.System.Hom.id (GlobalSystem X)
  mapSystem_comp :
    ∀ {X Y Z} (f : X ⟶ Y) (g : Y ⟶ Z),
      mapSystem (f ≫ g) = (mapSystem g).comp (mapSystem f)
  levelwiseFactorToGlobal :
    ∀ {F G : Fabric} (reaction : Reaction F G),
      LevelwiseSystemFactor reaction →
        DAF.System.Factor
          (GlobalSystem (realize.obj F))
          (GlobalSystem (realize.obj G))
  factor_coherent :
    ∀ {F G : Fabric}
      (reaction : Reaction F G)
      (h : LevelwiseSystemFactor reaction),
      (levelwiseFactorToGlobal reaction h).toHom =
        mapSystem (realize.map reaction)

end DAF.Fabric
```
