# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeometricMorphism.Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3621e6377ddf8470677301ebbec921d442e9aae6` · SHA-256 `71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Mathlib.Knowledge

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
