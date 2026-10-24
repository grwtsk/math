# Complete source: GRWTSK.Algebra.LinearAlgebra.Monoidal.Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97bc570523d1a8edb28ee6edb555105902439ad3` · SHA-256 `30aea5e56acc33da08c28cb91bd36f23aae1d7ae3625e18183019cb480fe68e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MonoidalCategoryInducingFunctorData.Variant92b52ab29a487f693563d0fcca8819d787e77285629a938b91e1febf29d26742","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92b52ab29a487f693563d0fcca8819d787e77285629a938b91e1febf29d26742","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MonoidalCategoryInducingFunctorData.Variant92b52ab29a487f693563d0fcca8819d787e77285629a938b91e1febf29d26742","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"92b52ab29a487f693563d0fcca8819d787e77285629a938b91e1febf29d26742","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/CoalgCat/Monoidal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/

import Mathlib.Algebra.Category.CoalgCat.Basic
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic
import Mathlib.CategoryTheory.Monoidal.Transport
import Mathlib.RingTheory.Coalgebra.TensorProduct

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


namespace GRWTSK.Algebra.LinearAlgebra.MonoidalCategoryInducingFunctorData.Variant92b52ab29a487f693563d0fcca8819d787e77285629a938b91e1febf29d26742

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
  tensorUnit := CoalgCat.of R R
  associator X Y Z := (Coalgebra.TensorProduct.assoc R X Y Z).toCoalgIso
  leftUnitor X := (Coalgebra.TensorProduct.lid R X).toCoalgIso
  rightUnitor X := (Coalgebra.TensorProduct.rid R X).toCoalgIso

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
