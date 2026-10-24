# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SiteCategoryMathlib.Variant8527a28b86b45bdad51c9b0ebc8dd264f946ac754227ef8ad264647f1a0d99ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `428e1398108878c3537d4a983198391178210e94` · SHA-256 `8527a28b86b45bdad51c9b0ebc8dd264f946ac754227ef8ad264647f1a0d99ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Category.Basic
import Think.SourceTree.Legacy.Compression.SiteCategory

set_option autoImplicit false

namespace Think.Compression.GrothendieckTopology

open Think.Compression.BitMatrixSite
open CategoryTheory

/-
Mathlib category bridge for the finite bit-matrix site.

This is the first Mathlib-facing categorical integration point: `SiteObject M`
is given a `Category` instance whose morphisms are containment-preserving
`SiteMorphism`s.  It still does not define a Mathlib `GrothendieckTopology`,
a sheaf category, a Lawvere-Tierney topology, an essential geometric morphism,
or a topos.
-/

structure SiteHom {M : BitMatrix}
    (source target : SiteObject M) : Type where
  morphism : SiteMorphism source target

namespace SiteHom

def id {M : BitMatrix} (object : SiteObject M) :
    SiteHom object object :=
  { morphism := SiteMorphism.id object }

def comp {M : BitMatrix} {source middle target : SiteObject M}
    (left : SiteHom source middle)
    (right : SiteHom middle target) : SiteHom source target :=
  { morphism := SiteMorphism.comp left.morphism right.morphism }

end SiteHom

instance siteObjectCategory (M : BitMatrix) :
    Category (SiteObject M) where
  Hom source target := SiteHom source target
  id object := SiteHom.id object
  comp left right := SiteHom.comp left right
  id_comp := by
    intro source target hom
    cases hom
    rfl
  comp_id := by
    intro source target hom
    cases hom
    rfl
  assoc := by
    intro source middle target final left right last
    cases left
    cases right
    cases last
    rfl

structure SiteCategoryMathlibSurface (M : BitMatrix) where
  hasMathlibCategoryInstance : Bool
  grothendieckTopologyInstanceClaim : Bool
  sheafCategoryClaim : Bool
  lawvereTierneyTopologyClaim : Bool
  essentialGeometricMorphismClaim : Bool
  toposClaim : Bool
  theoremPromotionClaim : Bool
deriving Repr, DecidableEq

def defaultSiteCategoryMathlibSurface (M : BitMatrix) :
    SiteCategoryMathlibSurface M :=
  { hasMathlibCategoryInstance := true
    grothendieckTopologyInstanceClaim := false
    sheafCategoryClaim := false
    lawvereTierneyTopologyClaim := false
    essentialGeometricMorphismClaim := false
    toposClaim := false
    theoremPromotionClaim := false }

theorem siteObjectCategory_hom_eq_siteMorphism
    {M : BitMatrix} (source target : SiteObject M) :
    (source ⟶ target) = SiteHom source target := by
  rfl

def siteHomToSiteMorphism
    {M : BitMatrix} {source target : SiteObject M}
    (hom : source ⟶ target) : SiteMorphism source target :=
  hom.morphism

theorem siteObjectCategory_id_eq_siteMorphism_id
    {M : BitMatrix} (object : SiteObject M) :
    siteHomToSiteMorphism (𝟙 object : object ⟶ object) =
      SiteMorphism.id object := by
  rfl

theorem siteObjectCategory_comp_eq_siteMorphism_comp
    {M : BitMatrix} {source middle target : SiteObject M}
    (left : source ⟶ middle) (right : middle ⟶ target) :
    siteHomToSiteMorphism (left ≫ right) =
      SiteMorphism.comp (siteHomToSiteMorphism left)
        (siteHomToSiteMorphism right) := by
  rfl

theorem default_site_category_mathlib_has_category_instance
    (M : BitMatrix) :
    (defaultSiteCategoryMathlibSurface M).hasMathlibCategoryInstance =
      true := by
  rfl

theorem site_category_mathlib_denies_grothendieck_topology_instance
    (M : BitMatrix) :
    (defaultSiteCategoryMathlibSurface M).grothendieckTopologyInstanceClaim =
      false := by
  rfl

theorem site_category_mathlib_denies_sheaf_category
    (M : BitMatrix) :
    (defaultSiteCategoryMathlibSurface M).sheafCategoryClaim = false := by
  rfl

theorem site_category_mathlib_denies_lawvere_tierney_topology
    (M : BitMatrix) :
    (defaultSiteCategoryMathlibSurface M).lawvereTierneyTopologyClaim =
      false := by
  rfl

theorem site_category_mathlib_denies_essential_geometric_morphism
    (M : BitMatrix) :
    (defaultSiteCategoryMathlibSurface M).essentialGeometricMorphismClaim =
      false := by
  rfl

theorem site_category_mathlib_denies_topos
    (M : BitMatrix) :
    (defaultSiteCategoryMathlibSurface M).toposClaim = false := by
  rfl

theorem site_category_mathlib_denies_theorem_promotion
    (M : BitMatrix) :
    (defaultSiteCategoryMathlibSurface M).theoremPromotionClaim =
      false := by
  rfl

end Think.Compression.GrothendieckTopology
```
