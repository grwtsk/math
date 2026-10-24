# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03fa32c596e099b5c01d6394b6c6f31647b32b5d` · SHA-256 `be9f4781e260ce8febb2ec1d20da86f7581096446a6c7e925ac33053d11831d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Const.Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Functor/Const.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Opposites

/-!
# The constant functor

`const J : C ⥤ (J ⥤ C)` is the functor that sends an object `X : C` to the functor `J ⥤ C` sending
every object in `J` to `X`, and every morphism to `𝟙 X`.

When `J` is nonempty, `const` is faithful.

We have `(const J).obj X ⋙ F ≅ (const J).obj (F.obj X)` for any `F : C ⥤ D`.
-/


-- declare the `v`'s first; see `CategoryTheory.Category` for an explanation

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3

universe v₁ v₂ v₃ u₁ u₂ u₃

open CategoryTheory

namespace CategoryTheory.Functor

variable (J : Type u₁) [Category.{v₁} J]
variable {C : Type u₂} [Category.{v₂} C]

/-- The functor sending `X : C` to the constant functor `J ⥤ C` sending everything to `X`.
-/
@[simps]
def const : C ⥤ J ⥤ C where
  obj X :=
    { obj := fun _ => X
      map := fun _ => 𝟙 X }
  map f := { app := fun _ => f }

namespace const

open Opposite

variable {J}

/-- The constant functor `Jᵒᵖ ⥤ Cᵒᵖ` sending everything to `op X`
is (naturally isomorphic to) the opposite of the constant functor `J ⥤ C` sending everything to `X`.
-/
@[simps]
def opObjOp (X : C) : (const Jᵒᵖ).obj (op X) ≅ ((const J).obj X).op where
  hom := { app := fun _ => 𝟙 _ }
  inv := { app := fun _ => 𝟙 _ }

/-- The constant functor `Jᵒᵖ ⥤ C` sending everything to `unop X`
is (naturally isomorphic to) the opposite of
the constant functor `J ⥤ Cᵒᵖ` sending everything to `X`.
-/
def opObjUnop (X : Cᵒᵖ) : (const Jᵒᵖ).obj (unop X) ≅ ((const J).obj X).leftOp where
  hom := { app := fun _ => 𝟙 _ }
  inv := { app := fun _ => 𝟙 _ }

-- Lean needs some help with universes here.
@[simp]
theorem opObjUnop_hom_app (X : Cᵒᵖ) (j : Jᵒᵖ) : (opObjUnop.{v₁, v₂} X).hom.app j = 𝟙 _ :=
  rfl

@[simp]
theorem opObjUnop_inv_app (X : Cᵒᵖ) (j : Jᵒᵖ) : (opObjUnop.{v₁, v₂} X).inv.app j = 𝟙 _ :=
  rfl

@[simp]
theorem unop_functor_op_obj_map (X : Cᵒᵖ) {j₁ j₂ : J} (f : j₁ ⟶ j₂) :
    (unop ((Functor.op (const J)).obj X)).map f = 𝟙 (unop X) :=
  rfl

end const

section

variable {D : Type u₃} [Category.{v₃} D]

/-- These are actually equal, of course, but not definitionally equal
  (the equality requires F.map (𝟙 _) = 𝟙 _). A natural isomorphism is
  more convenient than an equality between functors (compare id_to_iso). -/
@[simps]
def constComp (X : C) (F : C ⥤ D) : (const J).obj X ⋙ F ≅ (const J).obj (F.obj X) where
  hom := { app := fun _ => 𝟙 _ }
  inv := { app := fun _ => 𝟙 _ }

/-- If `J` is nonempty, then the constant functor over `J` is faithful. -/
instance [Nonempty J] : Faithful (const J : C ⥤ J ⥤ C) where
  map_injective e := NatTrans.congr_app e (Classical.arbitrary J)

/-- The canonical isomorphism
`F ⋙ Functor.const J ≅ Functor.const F ⋙ (whiskeringRight J _ _).obj L`. -/
@[simps!]
def compConstIso (F : C ⥤ D) :
    F ⋙ Functor.const J ≅ Functor.const J ⋙ (whiskeringRight J C D).obj F :=
  NatIso.ofComponents
    (fun X => NatIso.ofComponents (fun _ => Iso.refl _) (by simp))
    (by aesop_cat)

/-- The canonical isomorphism
`const D ⋙ (whiskeringLeft J _ _).obj F ≅ const J` -/
@[simps!]
def constCompWhiskeringLeftIso (F : J ⥤ D) :
    const D ⋙ (whiskeringLeft J D C).obj F ≅ const J :=
  NatIso.ofComponents fun X => NatIso.ofComponents fun Y => Iso.refl _

end

end CategoryTheory.Functor
```
