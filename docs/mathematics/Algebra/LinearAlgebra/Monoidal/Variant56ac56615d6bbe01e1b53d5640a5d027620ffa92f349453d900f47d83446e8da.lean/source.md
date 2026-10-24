# Complete source: GRWTSK.Algebra.LinearAlgebra.Monoidal.Variant56ac56615d6bbe01e1b53d5640a5d027620ffa92f349453d900f47d83446e8da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd43a98d85c3ba1718951e7892ddc0a6ff507b8a` · SHA-256 `0ab365f4060ec047867fd27e7e9fe2f71eb6de3ce8ed9be95ca04e1957f3694f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MonoidalCategoryInducingFunctorData.Variant0573ffc414caf3ea9c485769bb73a30ed325372e6aa2a594624c7c72521cdee5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0573ffc414caf3ea9c485769bb73a30ed325372e6aa2a594624c7c72521cdee5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MonoidalCategoryInducingFunctorData.Variant0573ffc414caf3ea9c485769bb73a30ed325372e6aa2a594624c7c72521cdee5","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0573ffc414caf3ea9c485769bb73a30ed325372e6aa2a594624c7c72521cdee5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/CoalgCat/Monoidal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
module

public import Mathlib.Algebra.Category.CoalgCat.Basic
public import Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic
public import Mathlib.CategoryTheory.Monoidal.Transport
public import Mathlib.RingTheory.Coalgebra.TensorProduct

/-!
# The monoidal category structure on `R`-coalgebras

In `Mathlib/RingTheory/Coalgebra/TensorProduct.lean`, given two `R`-coalgebras `M, N`, we define a
coalgebra instance on `M ⊗[R] N`, as well as the tensor product of two `CoalgHom`s as a
`CoalgHom`, and the associator and left/right unitors for coalgebras as `CoalgEquiv`s.

In this file, we declare a `MonoidalCategory` instance on the category of coalgebras, with data
fields given by the definitions in `Mathlib/RingTheory/Coalgebra/TensorProduct.lean`, and Prop
fields proved by pulling back the `MonoidalCategory` instance on the category of modules,
using `Monoidal.induced`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.MonoidalCategoryInducingFunctorData.Variant0573ffc414caf3ea9c485769bb73a30ed325372e6aa2a594624c7c72521cdee5

@[expose] public section

universe v u

namespace CoalgCat
variable (R : Type u) [CommRing R]

open CategoryTheory Coalgebra
open scoped TensorProduct MonoidalCategory

@[simps]
noncomputable instance instMonoidalCategoryStruct :
    MonoidalCategoryStruct.{u} (CoalgCat R) where
  tensorObj X Y := of R (X ⊗[R] Y)
  whiskerLeft X _ _ f := ofHom (f.1.lTensor X)
  whiskerRight f X := ofHom (f.1.rTensor X)
  tensorHom f g := ofHom (Coalgebra.TensorProduct.map f.1 g.1)
  tensorUnit := ↧R
  associator X Y Z := (Coalgebra.TensorProduct.assoc R R X Y Z).toCoalgIso
  leftUnitor X := (Coalgebra.TensorProduct.lid R X).toCoalgIso
  rightUnitor X := (Coalgebra.TensorProduct.rid R R X).toCoalgIso

/-- The data needed to induce a `MonoidalCategory` structure via
`CoalgCat.instMonoidalCategoryStruct` and the forgetful functor to modules. -/
@[simps]
noncomputable def MonoidalCategory.inducingFunctorData :
    Monoidal.InducingFunctorData (forget₂ (CoalgCat R) (ModuleCat R)) where
  μIso _ _ := Iso.refl _
  whiskerLeft_eq X Y Z f := by ext; rfl
  whiskerRight_eq X f := by ext; rfl
  tensorHom_eq f g := by ext; rfl
  εIso := Iso.refl _
  associator_eq X Y Z := ModuleCat.hom_ext <| TensorProduct.ext <| TensorProduct.ext <| by ext; rfl
  leftUnitor_eq X := ModuleCat.hom_ext <| TensorProduct.ext <| by ext; rfl
  rightUnitor_eq X := ModuleCat.hom_ext <| TensorProduct.ext <| by ext; rfl

noncomputable instance instMonoidalCategory : MonoidalCategory (CoalgCat R) :=
  Monoidal.induced (forget₂ _ (ModuleCat R)) (MonoidalCategory.inducingFunctorData R)

end CoalgCat
```
