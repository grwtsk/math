# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeometricMorphism.Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38eff93aab6df7d073535f3f5e1fd31930145ea1` · SHA-256 `00f0455e4861f05a8a8e659d96f8e4b21e406e730319bad3b8810f666940f63d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeometricMorphism.Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GeometricMorphism.Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Logic/Mathlib/GeometricMorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Logic.Mathlib.Knowledge


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeometricMorphism.Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410

namespace Think.Logic.MathlibEcosystem

open CategoryTheory
open CategoryTheory.Limits

structure GeometricMorphism
    (E F : Type u) [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F] where
  inverseImage : CategoryTheory.Functor E F
  directImage : CategoryTheory.Functor F E
  adjunction : CategoryTheory.Adjunction inverseImage directImage
  inverseImageLeftExact : PreservesFiniteLimits inverseImage
  leftExactReceiptHash : String
  directImageReceiptHash : String
  adjunctionReceiptHash : String
  claimBearing : Bool

theorem geometric_morphism_has_left_exact_inverse_image
    {E F : Type u} [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F]
    (G : GeometricMorphism E F) :
    PreservesFiniteLimits G.inverseImage :=
by
  exact G.inverseImageLeftExact

def geometric_morphism_direct_image_is_right_adjoint
    {E F : Type u} [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F]
    (G : GeometricMorphism E F) :
    CategoryTheory.Adjunction G.inverseImage G.directImage :=
by
  exact G.adjunction

/-- Unit-counit data for constructing the direct image as right adjoint. -/
structure UnitCounitBridge
    {E F : Type u} [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F]
    (inverseImage : CategoryTheory.Functor E F)
    (directImage : CategoryTheory.Functor F E) where
  unit : 𝟭 E ⟶ inverseImage ⋙ directImage
  counit : directImage ⋙ inverseImage ⟶ 𝟭 F
  leftTriangle :
    ∀ X : E,
      inverseImage.map (unit.app X) ≫ counit.app (inverseImage.obj X) =
      𝟙 (inverseImage.obj X)
  rightTriangle :
    ∀ Y : F,
      unit.app (directImage.obj Y) ≫ directImage.map (counit.app Y) =
      𝟙 (directImage.obj Y)

/-- Construct the adjunction from explicit unit and counit triangle data. -/
def UnitCounitBridge.toAdjunction
    {E F : Type u} [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F]
    {inverseImage : CategoryTheory.Functor E F}
    {directImage : CategoryTheory.Functor F E}
    (B : UnitCounitBridge inverseImage directImage) :
    CategoryTheory.Adjunction inverseImage directImage :=
{
  unit := B.unit
  counit := B.counit
  left_triangle_components := B.leftTriangle
  right_triangle_components := B.rightTriangle
}

/-- A geometric morphism bridge between two Knowledge sites. -/
structure KnowledgeSitesAdjunction
    (C D : Type u) [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    (KC : KnowledgeTopology C)
    (KD : KnowledgeTopology D) where
  inverseImage : CategoryTheory.Functor (CategoryTheory.Sheaf KC.J (Type u)) (CategoryTheory.Sheaf KD.J (Type u))
  directImage : CategoryTheory.Functor (CategoryTheory.Sheaf KD.J (Type u)) (CategoryTheory.Sheaf KC.J (Type u))
  unitCounit : UnitCounitBridge inverseImage directImage
  inverseImageLeftExact : PreservesFiniteLimits inverseImage
  sourceTopologyHash : String
  targetTopologyHash : String
  directImageReceiptHash : String
  leftExactReceiptHash : String
  claimBearing : Bool

def KnowledgeSitesAdjunction.adjunction
    {C D : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    {KC : KnowledgeTopology C}
    {KD : KnowledgeTopology D}
    (G : KnowledgeSitesAdjunction C D KC KD) :
    CategoryTheory.Adjunction G.inverseImage G.directImage :=
  G.unitCounit.toAdjunction

def KnowledgeSitesAdjunction.direct_image_is_right_adjoint
    {C D : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    {KC : KnowledgeTopology C}
    {KD : KnowledgeTopology D}
    (G : KnowledgeSitesAdjunction C D KC KD) :
    CategoryTheory.Adjunction G.inverseImage G.directImage :=
by
  exact G.adjunction

theorem KnowledgeSitesAdjunction.inverse_image_left_exact
    {C D : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    {KC : KnowledgeTopology C}
    {KD : KnowledgeTopology D}
    (G : KnowledgeSitesAdjunction C D KC KD) :
    PreservesFiniteLimits G.inverseImage :=
by
  exact G.inverseImageLeftExact

/-- A truth assertion attached to a sheaf in one Knowledge topology. -/
structure SheafTruth
    (C : Type u) [CategoryTheory.Category.{v} C]
    (K : KnowledgeTopology C) where
  sheaf : CategoryTheory.Sheaf K.J (Type u)
  statement : Prop
  proof : statement

/-- Pull a proven sheaf assertion across a Knowledge-site inverse image. -/
def SheafTruth.pullback
    {C D : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    {KC : KnowledgeTopology C}
    {KD : KnowledgeTopology D}
    (G : KnowledgeSitesAdjunction C D KC KD)
    (T : SheafTruth C KC) : SheafTruth D KD where
  sheaf := G.inverseImage.obj T.sheaf
  statement := T.statement
  proof := T.proof

/-- Proven sheaf assertions remain true after inverse-image transfer. -/
theorem KnowledgeSitesAdjunction.pullback_truth_preserved
    {C D : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    {KC : KnowledgeTopology C}
    {KD : KnowledgeTopology D}
    (G : KnowledgeSitesAdjunction C D KC KD)
    (T : SheafTruth C KC) :
    (SheafTruth.pullback G T).statement :=
by
  exact T.proof

end Think.Logic.MathlibEcosystem
```
