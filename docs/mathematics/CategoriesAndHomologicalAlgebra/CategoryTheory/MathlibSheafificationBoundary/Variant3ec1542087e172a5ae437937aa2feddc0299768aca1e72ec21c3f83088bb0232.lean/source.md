# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MathlibSheafificationBoundary.Variant3ec1542087e172a5ae437937aa2feddc0299768aca1e72ec21c3f83088bb0232

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b99358a55a4210ded86f81efa21d662b570cfebe` · SHA-256 `3ec1542087e172a5ae437937aa2feddc0299768aca1e72ec21c3f83088bb0232`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Sites.Sheafification
import Think.SourceTree.Legacy.Compression.MathlibSheafCategoryBoundary

set_option autoImplicit false

namespace Think.Compression.GrothendieckTopology

open Think.Compression.BitMatrixSite
open CategoryTheory

universe u v

/-
Mathlib sheafification API boundary for the finite bit-matrix site.

The finite site now has a Mathlib category, a generated Mathlib Grothendieck
topology, and a Mathlib sheaf-category entrance. This file identifies the exact
Mathlib sheafification API symbols available in v4.30.0, but does not construct
or assume a site-specific sheafification instance. It still does not claim a
sheafification adjunction instance for this site, Lawvere-Tierney topology,
essential geometric morphism, topos, or theorem-promotion bridge.
-/

/-- Mathlib's weak sheafification typeclass, specialized to the bit-matrix site. -/
abbrev BitMatrixHasWeakSheafify
    (M : BitMatrix) (A : Type u) [Category.{v} A] : Prop :=
  HasWeakSheafify (coverGeneratedTopology M) A

/-- Mathlib's left-exact sheafification typeclass, specialized to the bit-matrix site. -/
abbrev BitMatrixHasSheafify
    (M : BitMatrix) (A : Type u) [Category.{v} A] : Prop :=
  HasSheafify (coverGeneratedTopology M) A

/-- The Mathlib sheafification functor API, available only under `HasWeakSheafify`. -/
noncomputable abbrev BitMatrixPresheafToSheaf
    (M : BitMatrix) (A : Type u) [Category.{v} A]
    [HasWeakSheafify (coverGeneratedTopology M) A] :
    BitMatrixPresheaf M A ⥤ BitMatrixSheafCategory M A :=
  presheafToSheaf (coverGeneratedTopology M) A

/-- The Mathlib sheafification adjunction API, available only under `HasWeakSheafify`. -/
noncomputable abbrev BitMatrixSheafificationAdjunction
    (M : BitMatrix) (A : Type u) [Category.{v} A]
    [HasWeakSheafify (coverGeneratedTopology M) A] :
    BitMatrixPresheafToSheaf M A ⊣ sheafToPresheaf (coverGeneratedTopology M) A :=
  sheafificationAdjunction (coverGeneratedTopology M) A

/-- The object-level Mathlib sheafify API, available only under `HasWeakSheafify`. -/
noncomputable abbrev BitMatrixSheafify
    (M : BitMatrix) {A : Type u} [Category.{v} A]
    [HasWeakSheafify (coverGeneratedTopology M) A]
    (P : BitMatrixPresheaf M A) : BitMatrixPresheaf M A :=
  sheafify (coverGeneratedTopology M) P

/-- The unit map into Mathlib sheafification, available only under `HasWeakSheafify`. -/
noncomputable abbrev BitMatrixToSheafify
    (M : BitMatrix) {A : Type u} [Category.{v} A]
    [HasWeakSheafify (coverGeneratedTopology M) A]
    (P : BitMatrixPresheaf M A) : P ⟶ BitMatrixSheafify M P :=
  toSheafify (coverGeneratedTopology M) P

/-- The Mathlib sheafification endofunctor API, available only under `HasWeakSheafify`. -/
noncomputable abbrev BitMatrixSheafificationFunctor
    (M : BitMatrix) (A : Type u) [Category.{v} A]
    [HasWeakSheafify (coverGeneratedTopology M) A] :
    BitMatrixPresheaf M A ⥤ BitMatrixPresheaf M A :=
  sheafification (coverGeneratedTopology M) A

structure MathlibSheafificationBoundarySurface (M : BitMatrix) where
  hasPresheafInterface : Bool
  hasSheafCategoryEntrance : Bool
  sheafificationApiNamed : Bool
  hasWeakSheafifyInstanceAssumed : Bool
  hasSheafifyInstanceAssumed : Bool
  constructedSheafification : Bool
  sheafificationAdjunctionClaim : Bool
  lawvereTierneyTopologyClaim : Bool
  essentialGeometricMorphismClaim : Bool
  toposClaim : Bool
  theoremPromotionClaim : Bool
deriving Repr, DecidableEq

def defaultMathlibSheafificationBoundarySurface
    (M : BitMatrix) : MathlibSheafificationBoundarySurface M :=
  { hasPresheafInterface := true
    hasSheafCategoryEntrance := true
    sheafificationApiNamed := true
    hasWeakSheafifyInstanceAssumed := false
    hasSheafifyInstanceAssumed := false
    constructedSheafification := false
    sheafificationAdjunctionClaim := false
    lawvereTierneyTopologyClaim := false
    essentialGeometricMorphismClaim := false
    toposClaim := false
    theoremPromotionClaim := false }

theorem bitmatrix_hasWeakSheafify_is_mathlib_api
    (M : BitMatrix) (A : Type u) [Category.{v} A] :
    BitMatrixHasWeakSheafify M A =
      HasWeakSheafify (coverGeneratedTopology M) A := by
  rfl

theorem bitmatrix_hasSheafify_is_mathlib_api
    (M : BitMatrix) (A : Type u) [Category.{v} A] :
    BitMatrixHasSheafify M A =
      HasSheafify (coverGeneratedTopology M) A := by
  rfl

theorem bitmatrix_presheafToSheaf_is_mathlib_api
    (M : BitMatrix) (A : Type u) [Category.{v} A]
    [HasWeakSheafify (coverGeneratedTopology M) A] :
    BitMatrixPresheafToSheaf M A =
      presheafToSheaf (coverGeneratedTopology M) A := by
  rfl

theorem bitmatrix_sheafificationAdjunction_is_mathlib_api
    (M : BitMatrix) (A : Type u) [Category.{v} A]
    [HasWeakSheafify (coverGeneratedTopology M) A] :
    BitMatrixSheafificationAdjunction M A =
      sheafificationAdjunction (coverGeneratedTopology M) A := by
  rfl

theorem bitmatrix_sheafificationFunctor_is_mathlib_api
    (M : BitMatrix) (A : Type u) [Category.{v} A]
    [HasWeakSheafify (coverGeneratedTopology M) A] :
    BitMatrixSheafificationFunctor M A =
      sheafification (coverGeneratedTopology M) A := by
  rfl

theorem sheafification_boundary_has_presheaf_interface
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).hasPresheafInterface =
      true := by
  rfl

theorem sheafification_boundary_has_sheaf_category_entrance
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).hasSheafCategoryEntrance =
      true := by
  rfl

theorem sheafification_boundary_names_mathlib_api
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).sheafificationApiNamed =
      true := by
  rfl

theorem sheafification_boundary_assumes_no_weak_sheafify_instance
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).hasWeakSheafifyInstanceAssumed =
      false := by
  rfl

theorem sheafification_boundary_assumes_no_sheafify_instance
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).hasSheafifyInstanceAssumed =
      false := by
  rfl

theorem sheafification_api_requires_explicit_weak_instance
    (M : BitMatrix) (A : Type u) [Category.{v} A] :
    (defaultMathlibSheafificationBoundarySurface M).hasWeakSheafifyInstanceAssumed =
      false := by
  rfl

theorem sheafification_api_requires_explicit_sheafify_instance
    (M : BitMatrix) (A : Type u) [Category.{v} A] :
    (defaultMathlibSheafificationBoundarySurface M).hasSheafifyInstanceAssumed =
      false := by
  rfl

theorem sheafification_boundary_does_not_construct_sheafification
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).constructedSheafification =
      false := by
  rfl

theorem sheafification_boundary_denies_adjunction
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).sheafificationAdjunctionClaim =
      false := by
  rfl

theorem sheafification_boundary_does_not_manufacture_adjunction
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).sheafificationAdjunctionClaim =
      false := by
  rfl

theorem sheafification_boundary_denies_lawvere_tierney
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).lawvereTierneyTopologyClaim =
      false := by
  rfl

theorem sheafification_boundary_denies_essential_geometric_morphism
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).essentialGeometricMorphismClaim =
      false := by
  rfl

theorem sheafification_boundary_denies_topos
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).toposClaim = false := by
  rfl

theorem sheafification_boundary_does_not_promote_to_topos
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).toposClaim = false := by
  rfl

theorem sheafification_boundary_denies_theorem_promotion
    (M : BitMatrix) :
    (defaultMathlibSheafificationBoundarySurface M).theoremPromotionClaim =
      false := by
  rfl

end Think.Compression.GrothendieckTopology
```
