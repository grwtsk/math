# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearFunctor.Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17c03c2b437990bb8d8550cde5661bdbb4e4e4ab` · SHA-256 `f202325c03407c1bfebaff2b76a6e599e604606c3fbf66af4cf7037cb0271c65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorLinear.Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorLinear.Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Linear/LinearFunctor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.CategoryTheory.Linear.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorLinear.Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6

#align_import category_theory.linear.linear_functor from "leanprover-community/mathlib"@"829895f162a1f29d0133f4b3538f4cd1fb5bffd3"

/-!
# Linear Functors

An additive functor between two `R`-linear categories is called *linear*
if the induced map on hom types is a morphism of `R`-modules.

# Implementation details

`Functor.Linear` is a `Prop`-valued class, defined by saying that
for every two objects `X` and `Y`, the map
`F.map : (X ⟶ Y) → (F.obj X ⟶ F.obj Y)` is a morphism of `R`-modules.

-/


namespace CategoryTheory

variable (R : Type*) [Semiring R]

/-- An additive functor `F` is `R`-linear provided `F.map` is an `R`-module morphism. -/
class Functor.Linear {C D : Type*} [Category C] [Category D] [Preadditive C] [Preadditive D]
  [Linear R C] [Linear R D] (F : C ⥤ D) [F.Additive] : Prop where
  /-- the functor induces a linear map on morphisms -/
  map_smul : ∀ {X Y : C} (f : X ⟶ Y) (r : R), F.map (r • f) = r • F.map f := by aesop_cat
#align category_theory.functor.linear CategoryTheory.Functor.Linear

section Linear

namespace Functor

section

variable {R}
variable {C D : Type*} [Category C] [Category D] [Preadditive C] [Preadditive D]
  [CategoryTheory.Linear R C] [CategoryTheory.Linear R D] (F : C ⥤ D) [Additive F] [Linear R F]

@[simp]
theorem map_smul {X Y : C} (r : R) (f : X ⟶ Y) : F.map (r • f) = r • F.map f :=
  Functor.Linear.map_smul _ _
#align category_theory.functor.map_smul CategoryTheory.Functor.map_smul

instance : Linear R (𝟭 C) where

instance {E : Type*} [Category E] [Preadditive E] [CategoryTheory.Linear R E] (G : D ⥤ E)
    [Additive G] [Linear R G] : Linear R (F ⋙ G) where

variable (R)

/-- `F.mapLinearMap` is an `R`-linear map whose underlying function is `F.map`. -/
@[simps]
def mapLinearMap {X Y : C} : (X ⟶ Y) →ₗ[R] F.obj X ⟶ F.obj Y :=
  { F.mapAddHom with map_smul' := fun r f => F.map_smul r f }
#align category_theory.functor.map_linear_map CategoryTheory.Functor.mapLinearMap

theorem coe_mapLinearMap {X Y : C} : ⇑(F.mapLinearMap R : (X ⟶ Y) →ₗ[R] _) = F.map := rfl
#align category_theory.functor.coe_map_linear_map CategoryTheory.Functor.coe_mapLinearMap

end

section InducedCategory

variable {C : Type*} {D : Type*} [Category D] [Preadditive D] [CategoryTheory.Linear R D]
  (F : C → D)

instance inducedFunctorLinear : Functor.Linear R (inducedFunctor F) where
#align category_theory.functor.induced_functor_linear CategoryTheory.Functor.inducedFunctorLinear

end InducedCategory

instance fullSubcategoryInclusionLinear {C : Type*} [Category C] [Preadditive C]
    [CategoryTheory.Linear R C] (Z : C → Prop) : (fullSubcategoryInclusion Z).Linear R where
#align category_theory.functor.full_subcategory_inclusion_linear CategoryTheory.Functor.fullSubcategoryInclusionLinear

section

variable {R} {C D : Type*} [Category C] [Category D] [Preadditive C] [Preadditive D] (F : C ⥤ D)
  [Additive F]

instance natLinear : F.Linear ℕ where
  map_smul := F.mapAddHom.map_nsmul
#align category_theory.functor.nat_linear CategoryTheory.Functor.natLinear

instance intLinear : F.Linear ℤ where
  map_smul f r := F.mapAddHom.map_zsmul f r
#align category_theory.functor.int_linear CategoryTheory.Functor.intLinear

variable [CategoryTheory.Linear ℚ C] [CategoryTheory.Linear ℚ D]

instance ratLinear : F.Linear ℚ where
  map_smul f r := F.mapAddHom.toRatLinearMap.map_smul r f
#align category_theory.functor.rat_linear CategoryTheory.Functor.ratLinear

end

end Functor

namespace Equivalence

variable {C D : Type*} [Category C] [Category D] [Preadditive C] [Linear R C] [Preadditive D]
  [Linear R D]

instance inverseLinear (e : C ≌ D) [e.functor.Additive] [e.functor.Linear R] :
  e.inverse.Linear R where
    map_smul r f := by
      apply e.functor.map_injective
      simp
#align category_theory.equivalence.inverse_linear CategoryTheory.Equivalence.inverseLinear

end Equivalence

end Linear

end CategoryTheory
```
