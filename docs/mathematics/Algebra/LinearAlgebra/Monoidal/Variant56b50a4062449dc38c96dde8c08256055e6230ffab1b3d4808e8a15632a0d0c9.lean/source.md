# Complete source: GRWTSK.Algebra.LinearAlgebra.Monoidal.Variant56b50a4062449dc38c96dde8c08256055e6230ffab1b3d4808e8a15632a0d0c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `525d3ff7faca1f445bf6055c1b0cc22e0f11eef3` · SHA-256 `f74e59227dfb185240966f38474e49e92dc0efb75f2da25e15c8120cd639f779`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MonoidalCategoryInducingFunctorData.Variant99382c26184d7ff7f269d9b69d8aa8f1716c0c9f07250f949bc3aa215b6abcf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99382c26184d7ff7f269d9b69d8aa8f1716c0c9f07250f949bc3aa215b6abcf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MonoidalCategoryInducingFunctorData.Variant99382c26184d7ff7f269d9b69d8aa8f1716c0c9f07250f949bc3aa215b6abcf7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"99382c26184d7ff7f269d9b69d8aa8f1716c0c9f07250f949bc3aa215b6abcf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/HopfAlgCat/Monoidal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
module

public import Mathlib.Algebra.Category.BialgCat.Monoidal
public import Mathlib.Algebra.Category.HopfAlgCat.Basic
public import Mathlib.RingTheory.HopfAlgebra.TensorProduct

/-!
# The monoidal structure on the category of Hopf algebras

In `Mathlib/RingTheory/HopfAlgebra/TensorProduct.lean`, given two Hopf `R`-algebras `A, B`, we
define a Hopf `R`-algebra instance on `A ⊗[R] B`.

Here, we use this to declare a `MonoidalCategory` instance on the category of Hopf algebras, via
the existing monoidal structure on `BialgCat`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.MonoidalCategoryInducingFunctorData.Variant99382c26184d7ff7f269d9b69d8aa8f1716c0c9f07250f949bc3aa215b6abcf7

@[expose] public section

universe u

namespace HopfAlgCat
open CategoryTheory TensorProduct

variable (R : Type u) [CommRing R]

@[simps] noncomputable instance instMonoidalCategoryStruct :
    MonoidalCategoryStruct.{u} (HopfAlgCat R) where
  tensorObj X Y := of R (X ⊗[R] Y)
  whiskerLeft X _ _ f := ofHom (f.1.lTensor X)
  whiskerRight f X := ofHom (f.1.rTensor X)
  tensorHom f g := ofHom (Bialgebra.TensorProduct.map f.1 g.1)
  tensorUnit := of R R
  associator X Y Z := (Bialgebra.TensorProduct.assoc R R X Y Z).toHopfAlgIso
  leftUnitor X := (Bialgebra.TensorProduct.lid R X).toHopfAlgIso
  rightUnitor X := (Bialgebra.TensorProduct.rid R R X).toHopfAlgIso

/-- The data needed to induce a `MonoidalCategory` structure via
`HopfAlgCat.instMonoidalCategoryStruct` and the forgetful functor to bialgebras. -/
@[simps]
noncomputable def MonoidalCategory.inducingFunctorData :
    Monoidal.InducingFunctorData (forget₂ (HopfAlgCat R) (BialgCat R)) where
  μIso _ _ := Iso.refl _
  whiskerLeft_eq _ _ _ _ := by ext; rfl
  whiskerRight_eq _ _ := by ext; rfl
  tensorHom_eq _ _ := by ext; rfl
  εIso := Iso.refl _
  associator_eq _ _ _ := BialgCat.Hom.ext <| BialgHom.coe_linearMap_injective <|
    TensorProduct.ext <| TensorProduct.ext (by ext; rfl)
  leftUnitor_eq _ := BialgCat.Hom.ext <| BialgHom.coe_linearMap_injective <|
    TensorProduct.ext (by ext; rfl)
  rightUnitor_eq _ := BialgCat.Hom.ext <| BialgHom.coe_linearMap_injective <|
    TensorProduct.ext (by ext; rfl)

noncomputable instance instMonoidalCategory : MonoidalCategory (HopfAlgCat R) :=
  Monoidal.induced (forget₂ _ (BialgCat R)) (MonoidalCategory.inducingFunctorData R)

/-- `forget₂ (HopfAlgCat R) (BialgCat R)` is a monoidal functor. -/
noncomputable instance : (forget₂ (HopfAlgCat R) (BialgCat R)).Monoidal where

end HopfAlgCat
```
