-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalSingleObj.Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MonoidalSingleObj.Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Bicategory/SingleObj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Bicategory.End
import Mathlib.CategoryTheory.Monoidal.Functor

/-!
# Promoting a monoidal category to a single object bicategory.

A monoidal category can be thought of as a bicategory with a single object.

The objects of the monoidal category become the 1-morphisms,
with composition given by tensor product,
and the morphisms of the monoidal category become the 2-morphisms.

We verify that the endomorphisms of that single object recovers the original monoidal category.

One could go much further: the bicategory of monoidal categories
(equipped with monoidal functors and monoidal natural transformations)
is equivalent to the bicategory consisting of
* single object bicategories,
* pseudofunctors, and
* (oplax) natural transformations `η` such that `η.app PUnit.unit = 𝟙 _`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalSingleObj.Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401

namespace CategoryTheory

variable (C : Type*) [Category C] [MonoidalCategory C]

/-- Promote a monoidal category to a bicategory with a single object.
(The objects of the monoidal category become the 1-morphisms,
with composition given by tensor product,
and the morphisms of the monoidal category become the 2-morphisms.)
-/
@[nolint unusedArguments]
def MonoidalSingleObj (C : Type*) [Category C] [MonoidalCategory C] :=
  PUnit
-- The `Inhabited` instance should be constructed by a deriving handler.
-- https://github.com/leanprover-community/mathlib4/issues/380

instance : Inhabited (MonoidalSingleObj C) := by
  unfold MonoidalSingleObj
  infer_instance

open MonoidalCategory

instance : Bicategory (MonoidalSingleObj C) where
  Hom _ _ := C
  id _ := 𝟙_ C
  comp X Y := tensorObj X Y
  whiskerLeft X _ _ f := X ◁ f
  whiskerRight f Z := f ▷ Z
  associator X Y Z := α_ X Y Z
  leftUnitor X := λ_ X
  rightUnitor X := ρ_ X
  whisker_exchange := whisker_exchange

namespace MonoidalSingleObj

/-- The unique object in the bicategory obtained by "promoting" a monoidal category. -/
@[nolint unusedArguments]
protected def star : MonoidalSingleObj C :=
  PUnit.unit

/-- The monoidal functor from the endomorphisms of the single object
when we promote a monoidal category to a single object bicategory,
to the original monoidal category.

We subsequently show this is an equivalence.
-/
@[simps]
def endMonoidalStarFunctor : (EndMonoidal (MonoidalSingleObj.star C)) ⥤ C where
  obj X := X
  map f := f

instance : (endMonoidalStarFunctor C).Monoidal :=
  Functor.CoreMonoidal.toMonoidal
    { εIso := Iso.refl _
      μIso := fun _ _ ↦ Iso.refl _ }

/-- The equivalence between the endomorphisms of the single object
when we promote a monoidal category to a single object bicategory,
and the original monoidal category.
-/
@[simps]
noncomputable def endMonoidalStarFunctorEquivalence :
    EndMonoidal (MonoidalSingleObj.star C) ≌ C where
  functor := endMonoidalStarFunctor C
  inverse :=
    { obj := fun X => X
      map := fun f => f }
  unitIso := Iso.refl _
  counitIso := Iso.refl _

instance endMonoidalStarFunctor_isEquivalence : (endMonoidalStarFunctor C).IsEquivalence :=
  (endMonoidalStarFunctorEquivalence C).isEquivalence_functor

end MonoidalSingleObj

end CategoryTheory
