# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SiteCategory.Variant93cd6a0d63c288e86e05e075e5c7f4a748c6e215560cb79d234153b284d98b55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08cc4b034d641356f566ef00234d7e891a7e7b63` · SHA-256 `93cd6a0d63c288e86e05e075e5c7f4a748c6e215560cb79d234153b284d98b55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Compression.GrothendieckTopology

set_option autoImplicit false

namespace Think.Compression.GrothendieckTopology

open Think.Compression.BitMatrixSite

/-
Finite site category-law surface.

This file records identity and composition laws for the site-facing
object/morphism API. It deliberately remains below a Mathlib `Category`
instance, and it does not claim a Grothendieck topology, sheaf category, or
topos theorem.
-/

structure SiteCategorySurface (M : BitMatrix) where
  hasObjects : Bool
  hasMorphisms : Bool
  hasIdentity : Bool
  hasComposition : Bool
  idLeftLaw : Bool
  idRightLaw : Bool
  associativityLaw : Bool
  mathlibCategoryInstanceClaim : Bool
  grothendieckTopologyInstanceClaim : Bool
  sheafCategoryClaim : Bool
  toposClaim : Bool
deriving Repr, DecidableEq

def defaultSiteCategorySurface (M : BitMatrix) :
    SiteCategorySurface M :=
  { hasObjects := true
    hasMorphisms := true
    hasIdentity := true
    hasComposition := true
    idLeftLaw := true
    idRightLaw := true
    associativityLaw := true
    mathlibCategoryInstanceClaim := false
    grothendieckTopologyInstanceClaim := false
    sheafCategoryClaim := false
    toposClaim := false }

theorem site_morphism_id_left
    {M : BitMatrix} {A B : SiteObject M}
    (f : SiteMorphism A B) :
    SiteMorphism.comp (SiteMorphism.id A) f = f := by
  cases f
  rfl

theorem site_morphism_id_right
    {M : BitMatrix} {A B : SiteObject M}
    (f : SiteMorphism A B) :
    SiteMorphism.comp f (SiteMorphism.id B) = f := by
  cases f
  rfl

theorem site_morphism_assoc
    {M : BitMatrix} {A B C D : SiteObject M}
    (f : SiteMorphism A B)
    (g : SiteMorphism B C)
    (h : SiteMorphism C D) :
    SiteMorphism.comp (SiteMorphism.comp f g) h =
      SiteMorphism.comp f (SiteMorphism.comp g h) := by
  cases f
  cases g
  cases h
  rfl

theorem default_site_category_surface_has_laws
    (M : BitMatrix) :
    (defaultSiteCategorySurface M).idLeftLaw = true ∧
      (defaultSiteCategorySurface M).idRightLaw = true ∧
      (defaultSiteCategorySurface M).associativityLaw = true := by
  exact ⟨rfl, rfl, rfl⟩

theorem site_category_surface_denies_mathlib_category_instance
    (M : BitMatrix) :
    (defaultSiteCategorySurface M).mathlibCategoryInstanceClaim =
      false := by
  rfl

theorem site_category_surface_denies_grothendieck_topology_instance
    (M : BitMatrix) :
    (defaultSiteCategorySurface M).grothendieckTopologyInstanceClaim =
      false := by
  rfl

theorem site_category_surface_denies_sheaf_category
    (M : BitMatrix) :
    (defaultSiteCategorySurface M).sheafCategoryClaim = false := by
  rfl

theorem site_category_surface_denies_topos
    (M : BitMatrix) :
    (defaultSiteCategorySurface M).toposClaim = false := by
  rfl

end Think.Compression.GrothendieckTopology
```
