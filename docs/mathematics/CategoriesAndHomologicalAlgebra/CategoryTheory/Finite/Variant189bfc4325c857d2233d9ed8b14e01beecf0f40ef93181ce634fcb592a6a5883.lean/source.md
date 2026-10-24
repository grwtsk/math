# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58891ed32398e6f37b6d1ad9026ad3ab91eafaca` · SHA-256 `189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Limits.Preserves.Basic
import Mathlib.CategoryTheory.FinCategory

#align_import category_theory.limits.preserves.finite from "leanprover-community/mathlib"@"3974a774a707e2e06046a14c0eaef4654584fada"

/-!
# Preservation of finite (co)limits.

These functors are also known as left exact (flat) or right exact functors when the categories
involved are abelian, or more generally, finitely (co)complete.

## Related results
* `CategoryTheory.Limits.preservesFiniteLimitsOfPreservesEqualizersAndFiniteProducts` :
  see `CategoryTheory/Limits/Constructions/LimitsOfProductsAndEqualizers.lean`. Also provides
  the dual version.
* `CategoryTheory.Limits.preservesFiniteLimitsIffFlat` :
  see `CategoryTheory/Functor/Flat.lean`.

-/


open CategoryTheory

namespace CategoryTheory.Limits

-- declare the `v`'s first; see `CategoryTheory.Category` for an explanation
universe w w₂ v₁ v₂ v₃ u₁ u₂ u₃

variable {C : Type u₁} [Category.{v₁} C]

variable {D : Type u₂} [Category.{v₂} D]

variable {E : Type u₃} [Category.{v₃} E]

variable {J : Type w} [SmallCategory J] {K : J ⥤ C}

/-- A functor is said to preserve finite limits, if it preserves all limits of shape `J`,
where `J : Type` is a finite category.
-/
class PreservesFiniteLimits (F : C ⥤ D) where
  preservesFiniteLimits :
    ∀ (J : Type) [SmallCategory J] [FinCategory J], PreservesLimitsOfShape J F := by infer_instance
#align category_theory.limits.preserves_finite_limits CategoryTheory.Limits.PreservesFiniteLimits

attribute [instance] PreservesFiniteLimits.preservesFiniteLimits

/-- Preserving finite limits also implies preserving limits over finite shapes in higher universes,
though through a noncomputable instance. -/
noncomputable instance (priority := 100) preservesLimitsOfShapeOfPreservesFiniteLimits (F : C ⥤ D)
    [PreservesFiniteLimits F] (J : Type w) [SmallCategory J] [FinCategory J] :
    PreservesLimitsOfShape J F := by
  apply preservesLimitsOfShapeOfEquiv (FinCategory.equivAsType J)
#align category_theory.limits.preserves_limits_of_shape_of_preserves_finite_limits CategoryTheory.Limits.preservesLimitsOfShapeOfPreservesFiniteLimits

-- This is a dangerous instance as it has unbound universe variables.
/-- If we preserve limits of some arbitrary size, then we preserve all finite limits. -/
noncomputable def PreservesLimitsOfSize.preservesFiniteLimits (F : C ⥤ D)
    [PreservesLimitsOfSize.{w, w₂} F] : PreservesFiniteLimits F where
  preservesFiniteLimits J (sJ : SmallCategory J) fJ := by
    haveI := preservesSmallestLimitsOfPreservesLimits F
    exact preservesLimitsOfShapeOfEquiv (FinCategory.equivAsType J) F
#align category_theory.limits.preserves_limits.preserves_finite_limits_of_size CategoryTheory.Limits.PreservesLimitsOfSize.preservesFiniteLimits

-- Added as a specialization of the dangerous instance above, for limits indexed in Type 0.
noncomputable instance (priority := 120) PreservesLimitsOfSize0.preservesFiniteLimits
    (F : C ⥤ D) [PreservesLimitsOfSize.{0, 0} F] : PreservesFiniteLimits F :=
  PreservesLimitsOfSize.preservesFiniteLimits F
#align preserves_limits_of_size.zero.preserves_finite_limits CategoryTheory.Limits.PreservesLimitsOfSize0.preservesFiniteLimits

-- An alternative specialization of the dangerous instance for small limits.
noncomputable instance (priority := 120) PreservesLimits.preservesFiniteLimits (F : C ⥤ D)
    [PreservesLimits F] : PreservesFiniteLimits F :=
  PreservesLimitsOfSize.preservesFiniteLimits F
#align category_theory.limits.preserves_limits.preserves_finite_limits CategoryTheory.Limits.PreservesLimits.preservesFiniteLimits

-- Porting note: is this unnecessary given the instance
-- `PreservesLimitsOfSize0.preservesFiniteLimits`?
/-- We can always derive `PreservesFiniteLimits C` by showing that we are preserving limits at an
arbitrary universe. -/
def preservesFiniteLimitsOfPreservesFiniteLimitsOfSize (F : C ⥤ D)
    (h :
      ∀ (J : Type w) {𝒥 : SmallCategory J} (_ : @FinCategory J 𝒥), PreservesLimitsOfShape J F) :
    PreservesFiniteLimits F where
      preservesFiniteLimits J (_ : SmallCategory J) _ := by
        letI : Category (ULiftHom (ULift J)) := ULiftHom.category
        haveI := h (ULiftHom (ULift J)) CategoryTheory.finCategoryUlift
        exact preservesLimitsOfShapeOfEquiv (ULiftHomULiftCategory.equiv J).symm F
#align category_theory.limits.preserves_finite_limits_of_preserves_finite_limits_of_size CategoryTheory.Limits.preservesFiniteLimitsOfPreservesFiniteLimitsOfSize

noncomputable instance idPreservesFiniteLimits : PreservesFiniteLimits (𝟭 C) :=
  ⟨fun _ _ _ => by infer_instance⟩
#align category_theory.limits.id_preserves_finite_limits CategoryTheory.Limits.idPreservesFiniteLimits

/-- The composition of two left exact functors is left exact. -/
def compPreservesFiniteLimits (F : C ⥤ D) (G : D ⥤ E) [PreservesFiniteLimits F]
    [PreservesFiniteLimits G] : PreservesFiniteLimits (F ⋙ G) :=
  ⟨fun _ _ _ => by infer_instance⟩
#align category_theory.limits.comp_preserves_finite_limits CategoryTheory.Limits.compPreservesFiniteLimits

/- Porting note: adding this class because quantified classes don't behave well
[#2764](https://github.com/leanprover-community/mathlib4/pull/2764) -/
/-- A functor `F` preserves finite products if it preserves all from `Discrete J`
for `Fintype J` -/
class PreservesFiniteProducts (F : C ⥤ D) where
  preserves : ∀ (J : Type) [Fintype J], PreservesLimitsOfShape (Discrete J) F

/-- A functor is said to preserve finite colimits, if it preserves all colimits of
shape `J`, where `J : Type` is a finite category.
-/
class PreservesFiniteColimits (F : C ⥤ D) where
  preservesFiniteColimits :
    ∀ (J : Type) [SmallCategory J] [FinCategory J], PreservesColimitsOfShape J F := by
    infer_instance
#align category_theory.limits.preserves_finite_colimits CategoryTheory.Limits.PreservesFiniteColimits

attribute [instance] PreservesFiniteColimits.preservesFiniteColimits

/-- Preserving finite limits also implies preserving limits over finite shapes in higher universes,
though through a noncomputable instance. -/
noncomputable instance (priority := 100) preservesColimitsOfShapeOfPreservesFiniteColimits
    (F : C ⥤ D) [PreservesFiniteColimits F] (J : Type w) [SmallCategory J] [FinCategory J] :
    PreservesColimitsOfShape J F := by
  apply preservesColimitsOfShapeOfEquiv (FinCategory.equivAsType J)
#align category_theory.limits.preserves_colimits_of_shape_of_preserves_finite_colimits CategoryTheory.Limits.preservesColimitsOfShapeOfPreservesFiniteColimits

-- This is a dangerous instance as it has unbound universe variables.
/-- If we preserve colimits of some arbitrary size, then we preserve all finite colimits. -/
noncomputable def PreservesColimitsOfSize.preservesFiniteColimits (F : C ⥤ D)
    [PreservesColimitsOfSize.{w, w₂} F] : PreservesFiniteColimits F where
  preservesFiniteColimits J (sJ : SmallCategory J) fJ := by
    haveI := preservesSmallestColimitsOfPreservesColimits F
    exact preservesColimitsOfShapeOfEquiv (FinCategory.equivAsType J) F
#align category_theory.limits.preserves_colimits_of_size.preserves_finite_colimits CategoryTheory.Limits.PreservesColimitsOfSize.preservesFiniteColimits

-- Added as a specialization of the dangerous instance above, for colimits indexed in Type 0.
noncomputable instance (priority := 120) PreservesColimitsOfSize0.preservesFiniteColimits
    (F : C ⥤ D) [PreservesColimitsOfSize.{0, 0} F] : PreservesFiniteColimits F :=
  PreservesColimitsOfSize.preservesFiniteColimits F
#align preserves_colimits_of_size.zero.preserves_finite_colimits CategoryTheory.Limits.PreservesColimitsOfSize0.preservesFiniteColimits

-- An alternative specialization of the dangerous instance for small colimits.
noncomputable instance (priority := 120) PreservesColimits.preservesFiniteColimits (F : C ⥤ D)
    [PreservesColimits F] : PreservesFiniteColimits F :=
  PreservesColimitsOfSize.preservesFiniteColimits F
#align category_theory.limits.preserves_colimits.preserves_finite_colimits CategoryTheory.Limits.PreservesColimits.preservesFiniteColimits

-- Porting note: is this unnecessary given the instance
-- `PreservesColimitsOfSize0.preservesFiniteColimits`?
/-- We can always derive `PreservesFiniteColimits C`
by showing that we are preserving colimits at an arbitrary universe. -/
def preservesFiniteColimitsOfPreservesFiniteColimitsOfSize (F : C ⥤ D)
    (h :
      ∀ (J : Type w) {𝒥 : SmallCategory J} (_ : @FinCategory J 𝒥), PreservesColimitsOfShape J F) :
    PreservesFiniteColimits F where
      preservesFiniteColimits J (_ : SmallCategory J) _ := by
        letI : Category (ULiftHom (ULift J)) := ULiftHom.category
        haveI := h (ULiftHom (ULift J)) CategoryTheory.finCategoryUlift
        exact preservesColimitsOfShapeOfEquiv (ULiftHomULiftCategory.equiv J).symm F
#align category_theory.limits.preserves_finite_colimits_of_preserves_finite_colimits_of_size CategoryTheory.Limits.preservesFiniteColimitsOfPreservesFiniteColimitsOfSize

-- porting note: the proof `⟨fun _ _ _ => by infer_instance⟩` used for `idPreservesFiniteLimits`
-- did not work here because of universe problems, could this be solved by tweaking the priorities
-- of some instances?
noncomputable instance idPreservesFiniteColimits : PreservesFiniteColimits (𝟭 C) :=
  PreservesColimits.preservesFiniteColimits.{v₁, v₁} _
#align category_theory.limits.id_preserves_finite_colimits CategoryTheory.Limits.idPreservesFiniteColimits

/-- The composition of two right exact functors is right exact. -/
def compPreservesFiniteColimits (F : C ⥤ D) (G : D ⥤ E) [PreservesFiniteColimits F]
    [PreservesFiniteColimits G] : PreservesFiniteColimits (F ⋙ G) :=
  ⟨fun _ _ _ => by infer_instance⟩
#align category_theory.limits.comp_preserves_finite_colimits CategoryTheory.Limits.compPreservesFiniteColimits

/- Porting note: adding this class because quantified classes don't behave well
[#2764](https://github.com/leanprover-community/mathlib4/pull/2764) -/
/-- A functor `F` preserves finite products if it preserves all from `Discrete J`
for `Fintype J` -/
class PreservesFiniteCoproducts (F : C ⥤ D) where
  preserves : ∀ (J : Type) [Fintype J], PreservesColimitsOfShape (Discrete J) F

end CategoryTheory.Limits
```
