# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94af4d272755dc0c1148cc54ca6700cad3a3012c` · SHA-256 `ea7af94318933f6a8bbd49eee784adde8944f6ebb2d7c6fea7c8f7d5c0e69813`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DiscreteMonoidalTensorUnitAs.Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.DiscreteMonoidalTensorUnitAs.Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Discrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.Hom.Group
import Mathlib.CategoryTheory.DiscreteCategory
import Mathlib.CategoryTheory.Monoidal.NaturalTransformation


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DiscreteMonoidalTensorUnitAs.Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5

#align_import category_theory.monoidal.discrete from "leanprover-community/mathlib"@"8a0e71287eb4c80e87f72e8c174835f360a6ddd9"

/-!
# Monoids as discrete monoidal categories

The discrete category on a monoid is a monoidal category.
Multiplicative morphisms induced monoidal functors.
-/


universe u

open CategoryTheory Discrete MonoidalCategory

variable (M : Type u) [Monoid M]

namespace CategoryTheory

@[to_additive (attr := simps tensorObj_as leftUnitor rightUnitor associator) Discrete.addMonoidal]
instance Discrete.monoidal : MonoidalCategory (Discrete M)
    where
  tensorUnit' := Discrete.mk 1
  tensorObj X Y := Discrete.mk (X.as * Y.as)
  whiskerLeft X _ _ f := eqToHom (by dsimp; rw [eq_of_hom f])
  whiskerRight f X := eqToHom (by dsimp; rw [eq_of_hom f])
  tensorHom f g := eqToHom (by dsimp; rw [eq_of_hom f, eq_of_hom g])
  leftUnitor X := Discrete.eqToIso (one_mul X.as)
  rightUnitor X := Discrete.eqToIso (mul_one X.as)
  associator X Y Z := Discrete.eqToIso (mul_assoc _ _ _)
#align category_theory.discrete.monoidal CategoryTheory.Discrete.monoidal
#align category_theory.discrete.add_monoidal CategoryTheory.Discrete.addMonoidal

@[to_additive (attr := simp) Discrete.addMonoidal_tensorUnit_as]
lemma Discrete.monoidal_tensorUnit_as :
  (𝟙_ (Discrete M)).as = 1 := rfl

variable {M} {N : Type u} [Monoid N]

/-- A multiplicative morphism between monoids gives a monoidal functor between the corresponding
discrete monoidal categories.
-/
@[to_additive (attr := simps) Discrete.addMonoidalFunctor]
def Discrete.monoidalFunctor (F : M →* N) : MonoidalFunctor (Discrete M) (Discrete N)
    where
  obj X := Discrete.mk (F X.as)
  map f := Discrete.eqToHom (F.congr_arg (eq_of_hom f))
  ε := Discrete.eqToHom F.map_one.symm
  μ X Y := Discrete.eqToHom (F.map_mul X.as Y.as).symm
#align category_theory.discrete.monoidal_functor CategoryTheory.Discrete.monoidalFunctor
#align category_theory.discrete.add_monoidal_functor CategoryTheory.Discrete.addMonoidalFunctor

/-- An additive morphism between add_monoids gives a
monoidal functor between the corresponding discrete monoidal categories. -/
add_decl_doc Discrete.addMonoidalFunctor

variable {K : Type u} [Monoid K]

/-- The monoidal natural isomorphism corresponding to composing two multiplicative morphisms.
-/
@[to_additive Discrete.addMonoidalFunctorComp
      "The monoidal natural isomorphism corresponding to\ncomposing two additive morphisms."]
def Discrete.monoidalFunctorComp (F : M →* N) (G : N →* K) :
    Discrete.monoidalFunctor F ⊗⋙ Discrete.monoidalFunctor G ≅ Discrete.monoidalFunctor (G.comp F)
    where
  hom := { app := fun X => 𝟙 _ }
  inv := { app := fun X => 𝟙 _ }
#align category_theory.discrete.monoidal_functor_comp CategoryTheory.Discrete.monoidalFunctorComp
#align category_theory.discrete.add_monoidal_functor_comp CategoryTheory.Discrete.addMonoidalFunctorComp

end CategoryTheory
```
