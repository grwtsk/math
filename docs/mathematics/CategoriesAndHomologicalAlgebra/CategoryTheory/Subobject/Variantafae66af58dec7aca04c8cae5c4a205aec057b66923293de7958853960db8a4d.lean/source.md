# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4875abda74d42af3de8ed6940fa3b9f408a24e8` · SHA-256 `b235eb3b21cd4cbc3b3cb7a127143d0bdb3c843af83b7703bdad5f650e07b6c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SubobjectModule.Variantaa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SubobjectModule.Variantaa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"aa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Subobject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.ModuleCat.EpiMono
import Mathlib.Algebra.Category.ModuleCat.Kernels
import Mathlib.CategoryTheory.Subobject.WellPowered
import Mathlib.CategoryTheory.Subobject.Limits

/-!
# Subobjects in the category of `R`-modules

We construct an explicit order isomorphism between the categorical subobjects of an `R`-module `M`
and its submodules. This immediately implies that the category of `R`-modules is well-powered.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SubobjectModule.Variantaa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9

open CategoryTheory

open CategoryTheory.Subobject

open CategoryTheory.Limits

open ModuleCat

universe v u

namespace ModuleCat

variable {R : Type u} [Ring R] (M : ModuleCat.{v} R)

/-- The categorical subobjects of a module `M` are in one-to-one correspondence with its
    submodules. -/
noncomputable def subobjectModule : Subobject M ≃o Submodule R M :=
  OrderIso.symm
    { invFun := fun S => LinearMap.range S.arrow.hom
      toFun := fun N => Subobject.mk (ofHom N.subtype)
      right_inv := fun S => Eq.symm (by
        fapply eq_mk_of_comm
        · apply LinearEquiv.toModuleIso
          apply LinearEquiv.ofBijective (LinearMap.codRestrict
            (LinearMap.range S.arrow.hom) S.arrow.hom _)
          constructor
          · simp [← LinearMap.ker_eq_bot, LinearMap.ker_codRestrict]
            rw [ker_eq_bot_of_mono]
          · rw [← LinearMap.range_eq_top, LinearMap.range_codRestrict,
              Submodule.comap_subtype_self]
            exact LinearMap.mem_range_self _
        · ext x
          rfl)
      left_inv := fun N => by
        convert congr_arg LinearMap.range (ModuleCat.hom_ext_iff.mp
            (underlyingIso_arrow (ofHom N.subtype))) using 1
        · have :
            (underlyingIso (ofHom N.subtype)).inv =
              ofHom (underlyingIso (ofHom N.subtype)).symm.toLinearEquiv.toLinearMap := by
              ext x
              rfl
          rw [this, hom_comp, hom_ofHom, LinearEquiv.range_comp]
        · exact (Submodule.range_subtype _).symm
      map_rel_iff' := fun {S T} => by
        refine ⟨fun h => ?_, fun h => mk_le_mk_of_comm (↟(Submodule.inclusion h)) rfl⟩
        convert LinearMap.range_comp_le_range (ofMkLEMk _ _ h).hom (ofHom T.subtype).hom
        · rw [← hom_comp, ofMkLEMk_comp]
          exact (Submodule.range_subtype _).symm
        · exact (Submodule.range_subtype _).symm }

instance wellPowered_moduleCat : WellPowered.{v} (ModuleCat.{v} R) :=
  ⟨fun M => ⟨⟨_, ⟨(subobjectModule M).toEquiv⟩⟩⟩⟩

attribute [local instance] hasKernels_moduleCat

/-- Bundle an element `m : M` such that `f m = 0` as a term of `kernelSubobject f`. -/
noncomputable def toKernelSubobject {M N : ModuleCat.{v} R} {f : M ⟶ N} :
    LinearMap.ker f.hom →ₗ[R] kernelSubobject f :=
  (kernelSubobjectIso f ≪≫ ModuleCat.kernelIsoKer f).inv.hom

@[simp]
theorem toKernelSubobject_arrow {M N : ModuleCat R} {f : M ⟶ N} (x : LinearMap.ker f.hom) :
    (kernelSubobject f).arrow (toKernelSubobject x) = x.1 := by
  -- Porting note (https://github.com/leanprover-community/mathlib4/pull/10959): the whole proof was just `simp [toKernelSubobject]`.
  simp [toKernelSubobject, -hom_comp, ← ConcreteCategory.comp_apply]

/-- An extensionality lemma showing that two elements of a cokernel by an image
are equal if they differ by an element of the image.

The application is for homology:
two elements in homology are equal if they differ by a boundary.
-/
theorem cokernel_π_imageSubobject_ext {L M N : ModuleCat.{v} R} (f : L ⟶ M) [HasImage f]
    (g : (imageSubobject f : ModuleCat.{v} R) ⟶ N) [HasCokernel g] {x y : N} (l : L)
    (w : x = y + g (factorThruImageSubobject f l)) : cokernel.π g x = cokernel.π g y := by
  subst w
  simp

end ModuleCat
```
