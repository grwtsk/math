# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40f9ac24716ac51f6998dbd8ef4995e461d85765` · SHA-256 `c5988e26e54dacdfc15bd3dd875bca5b71aac7e494486163a919b2d3773d7b33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CreatesFiniteLimits.Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CreatesFiniteLimits.Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Preserves/Creates/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.Creates
import Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits
import Mathlib.CategoryTheory.Limits.Preserves.Finite
import Mathlib.CategoryTheory.FinCategory.AsType

/-!
# Creation of finite limits

This file defines the classes `CreatesFiniteLimits`, `CreatesFiniteColimits`,
`CreatesFiniteProducts` and `CreatesFiniteCoproducts`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CreatesFiniteLimits.Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6

namespace CategoryTheory.Limits


universe w w' v₁ v₂ v₃ u₁ u₂ u₃

variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D]
variable {E : Type u₃} [Category.{v₃} E]

/-- We say that a functor creates finite limits if it creates all limits of shape `J` where
`J : Type` is a finite category. -/
class CreatesFiniteLimits (F : C ⥤ D) where
  /-- `F` creates all finite limits. -/
  createsFiniteLimits :
    ∀ (J : Type) [SmallCategory J] [FinCategory J], CreatesLimitsOfShape J F := by infer_instance

attribute [instance] CreatesFiniteLimits.createsFiniteLimits

noncomputable section

instance (priority := 100) createsLimitsOfShapeOfCreatesFiniteLimits (F : C ⥤ D)
    [CreatesFiniteLimits F] (J : Type w) [SmallCategory J] [FinCategory J] :
    CreatesLimitsOfShape J F :=
  createsLimitsOfShapeOfEquiv (FinCategory.equivAsType J) _

-- Cannot be an instance because of unbound universe variables.
/-- If `F` creates limits of any size, it creates finite limits. -/
def CreatesLimitsOfSize.createsFiniteLimits (F : C ⥤ D)
    [CreatesLimitsOfSize.{w, w'} F] : CreatesFiniteLimits F where
  createsFiniteLimits J _ _ := createsLimitsOfShapeOfEquiv
    ((ShrinkHoms.equivalence.{w} J).trans (Shrink.equivalence.{w'} _)).symm _

instance (priority := 120) CreatesLimitsOfSize0.createsFiniteLimits (F : C ⥤ D)
    [CreatesLimitsOfSize.{0, 0} F] : CreatesFiniteLimits F :=
  CreatesLimitsOfSize.createsFiniteLimits F

instance (priority := 100) CreatesLimits.createsFiniteLimits (F : C ⥤ D)
    [CreatesLimits F] : CreatesFiniteLimits F :=
  CreatesLimitsOfSize.createsFiniteLimits F

/-- If `F` creates finite limits in any universe, then it creates finite limits. -/
def createsFiniteLimitsOfCreatesFiniteLimitsOfSize (F : C ⥤ D)
    (h : ∀ (J : Type w) {_ : SmallCategory J} (_ : FinCategory J), CreatesLimitsOfShape J F) :
    CreatesFiniteLimits F where
  createsFiniteLimits J _ _ :=
    haveI := h (ULiftHom (ULift J)) CategoryTheory.finCategoryUlift
    createsLimitsOfShapeOfEquiv (ULiftHomULiftCategory.equiv J).symm _

instance compCreatesFiniteLimits (F : C ⥤ D) (G : D ⥤ E) [CreatesFiniteLimits F]
    [CreatesFiniteLimits G] : CreatesFiniteLimits (F ⋙ G) where
  createsFiniteLimits _ _ _ := compCreatesLimitsOfShape F G

/-- Transfer creation of finite limits along a natural isomorphism in the functor. -/
def createsFiniteLimitsOfNatIso {F G : C ⥤ D} {h : F ≅ G} [CreatesFiniteLimits F] :
    CreatesFiniteLimits G where
  createsFiniteLimits _ _ _ := createsLimitsOfShapeOfNatIso h

theorem hasFiniteLimits_of_hasLimitsLimits_of_createsFiniteLimits (F : C ⥤ D) [HasFiniteLimits D]
    [CreatesFiniteLimits F] : HasFiniteLimits C where
  out _ _ _ := hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape F

instance (priority := 100) preservesFiniteLimits_of_createsFiniteLimits_and_hasFiniteLimits
    (F : C ⥤ D) [CreatesFiniteLimits F] [HasFiniteLimits D] : PreservesFiniteLimits F where
  preservesFiniteLimits _ _ _ := inferInstance

end

/-- We say that a functor creates finite products if it creates all limits of shape `Discrete J`
where `J : Type` is finite. -/
class CreatesFiniteProducts (F : C ⥤ D) where
  /-- `F` creates all finite limits. -/
  creates :
    ∀ (J : Type) [Fintype J], CreatesLimitsOfShape (Discrete J) F := by infer_instance

attribute [instance] CreatesFiniteProducts.creates

noncomputable section

instance (priority := 100) createsLimitsOfShapeOfCreatesFiniteProducts (F : C ⥤ D)
    [CreatesFiniteProducts F] (J : Type w) [Finite J] : CreatesLimitsOfShape (Discrete J) F :=
  createsLimitsOfShapeOfEquiv
    (Discrete.equivalence (Finite.exists_equiv_fin J).choose_spec.some.symm) F

instance compCreatesFiniteProducts (F : C ⥤ D) (G : D ⥤ E) [CreatesFiniteProducts F]
    [CreatesFiniteProducts G] : CreatesFiniteProducts (F ⋙ G) where
  creates _ _ := compCreatesLimitsOfShape _ _

/-- Transfer creation of finite products along a natural isomorphism in the functor. -/
def createsFiniteProductsOfNatIso {F G : C ⥤ D} {h : F ≅ G} [CreatesFiniteProducts F] :
    CreatesFiniteProducts G where
  creates _ _ := createsLimitsOfShapeOfNatIso h

instance (F : C ⥤ D) [CreatesFiniteLimits F] : CreatesFiniteProducts F where
  creates _ _ := inferInstance

end

/-- We say that a functor creates finite colimits if it creates all colimits of shape `J` where
`J : Type` is a finite category. -/
class CreatesFiniteColimits (F : C ⥤ D) where
  /-- `F` creates all finite colimits. -/
  createsFiniteColimits :
    ∀ (J : Type) [SmallCategory J] [FinCategory J], CreatesColimitsOfShape J F := by infer_instance

attribute [instance] CreatesFiniteColimits.createsFiniteColimits

noncomputable section

instance (priority := 100) createsColimitsOfShapeOfCreatesFiniteColimits (F : C ⥤ D)
    [CreatesFiniteColimits F] (J : Type w) [SmallCategory J] [FinCategory J] :
    CreatesColimitsOfShape J F :=
  createsColimitsOfShapeOfEquiv (FinCategory.equivAsType J) _

-- Cannot be an instance because of unbound universe variables.
/-- If `F` creates colimits of any size, it creates finite colimits. -/
def CreatesColimitsOfSize.createsFiniteColimits (F : C ⥤ D)
    [CreatesColimitsOfSize.{w, w'} F] : CreatesFiniteColimits F where
  createsFiniteColimits J _ _ := createsColimitsOfShapeOfEquiv
    ((ShrinkHoms.equivalence.{w} J).trans (Shrink.equivalence.{w'} _)).symm _

instance (priority := 120) CreatesColimitsOfSize0.createsFiniteColimits (F : C ⥤ D)
    [CreatesColimitsOfSize.{0, 0} F] : CreatesFiniteColimits F :=
  CreatesColimitsOfSize.createsFiniteColimits F

instance (priority := 100) CreatesColimits.createsFiniteColimits (F : C ⥤ D)
    [CreatesColimits F] : CreatesFiniteColimits F :=
  CreatesColimitsOfSize.createsFiniteColimits F

/-- If `F` creates finite colimits in any universe, then it creates finite colimits. -/
def createsFiniteColimitsOfCreatesFiniteColimitsOfSize (F : C ⥤ D)
    (h : ∀ (J : Type w) {_ : SmallCategory J} (_ : FinCategory J), CreatesColimitsOfShape J F) :
    CreatesFiniteColimits F where
  createsFiniteColimits J _ _ :=
    haveI := h (ULiftHom (ULift J)) CategoryTheory.finCategoryUlift
    createsColimitsOfShapeOfEquiv (ULiftHomULiftCategory.equiv J).symm _

instance compCreatesFiniteColimits (F : C ⥤ D) (G : D ⥤ E) [CreatesFiniteColimits F]
    [CreatesFiniteColimits G] : CreatesFiniteColimits (F ⋙ G) where
  createsFiniteColimits _ _ _ := compCreatesColimitsOfShape F G

/-- Transfer creation of finite colimits along a natural isomorphism in the functor. -/
def createsFiniteColimitsOfNatIso {F G : C ⥤ D} {h : F ≅ G} [CreatesFiniteColimits F] :
    CreatesFiniteColimits G where
  createsFiniteColimits _ _ _ := createsColimitsOfShapeOfNatIso h

theorem hasFiniteColimits_of_hasColimits_of_createsFiniteColimits (F : C ⥤ D) [HasFiniteColimits D]
    [CreatesFiniteColimits F] : HasFiniteColimits C where
  out _ _ _ := hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape F

instance (priority := 100) preservesFiniteColimits_of_createsFiniteColimits_and_hasFiniteColimits
    (F : C ⥤ D) [CreatesFiniteColimits F] [HasFiniteColimits D] : PreservesFiniteColimits F where
  preservesFiniteColimits _ _ _ := inferInstance

end

/-- We say that a functor creates finite limits if it creates all limits of shape `J` where
`J : Type` is a finite category. -/
class CreatesFiniteCoproducts (F : C ⥤ D) where
  /-- `F` creates all finite limits. -/
  creates :
    ∀ (J : Type) [Fintype J], CreatesColimitsOfShape (Discrete J) F := by infer_instance

attribute [instance] CreatesFiniteCoproducts.creates

noncomputable section

instance (priority := 100) createsColimitsOfShapeOfCreatesFiniteProducts (F : C ⥤ D)
    [CreatesFiniteCoproducts F] (J : Type w) [Finite J] : CreatesColimitsOfShape (Discrete J) F :=
  createsColimitsOfShapeOfEquiv
    (Discrete.equivalence (Finite.exists_equiv_fin J).choose_spec.some.symm) F

instance compCreatesFiniteCoproducts (F : C ⥤ D) (G : D ⥤ E) [CreatesFiniteCoproducts F]
    [CreatesFiniteCoproducts G] : CreatesFiniteCoproducts (F ⋙ G) where
  creates _ _ := compCreatesColimitsOfShape _ _

/-- Transfer creation of finite limits along a natural isomorphism in the functor. -/
def createsFiniteCoproductsOfNatIso {F G : C ⥤ D} {h : F ≅ G} [CreatesFiniteCoproducts F] :
    CreatesFiniteCoproducts G where
  creates _ _ := createsColimitsOfShapeOfNatIso h

instance (F : C ⥤ D) [CreatesFiniteColimits F] : CreatesFiniteCoproducts F where
  creates _ _ := inferInstance

end

end CategoryTheory.Limits
```
