# Complete source: GRWTSK.Algebra.LinearAlgebra.Products.Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd6f2a722dee488b95c2601d56174e057f9ac10` · SHA-256 `8d0fcfca02c80db48f667c5cec2db4a514299180fa127abe6514c7cb8504cbba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProductCone.Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ProductCone.Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"aec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Products.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.LinearAlgebra.Pi
import Mathlib.Algebra.DirectSum.Module
import Mathlib.Tactic.CategoryTheory.Elementwise

/-!
# The concrete products in the category of modules are products in the categorical sense.
-/



namespace GRWTSK.Algebra.LinearAlgebra.ProductCone.Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97

open CategoryTheory

open CategoryTheory.Limits

universe u v w

namespace ModuleCat

variable {R : Type u} [Ring R]
variable {ι : Type v} (Z : ι → ModuleCat.{max v w} R)

section product

/-- The product cone induced by the concrete product. -/
def productCone : Fan Z :=
  Fan.mk (ModuleCat.of R (∀ i : ι, Z i)) fun i =>
    ofHom (LinearMap.proj i : (∀ i : ι, Z i) →ₗ[R] Z i)

/-- The concrete product cone is limiting. -/
def productConeIsLimit : IsLimit (productCone Z) where
  lift s := ofHom (LinearMap.pi fun j => (s.π.app ⟨j⟩).hom : s.pt →ₗ[R] ∀ i : ι, Z i)
  uniq s m w := by
    ext x
    funext i
    exact DFunLike.congr_fun (congr_arg Hom.hom (w ⟨i⟩)) x

-- While we could use this to construct a `HasProducts (ModuleCat R)` instance,
-- we already have `HasLimits (ModuleCat R)` in `Algebra.Category.ModuleCat.Limits`.
variable [HasProduct Z]

/-- The categorical product of a family of objects in `ModuleCat`
agrees with the usual module-theoretical product.
-/
noncomputable def piIsoPi : ∏ᶜ Z ≅ ModuleCat.of R (∀ i, Z i) :=
  limit.isoLimitCone ⟨_, productConeIsLimit Z⟩

-- We now show this isomorphism commutes with the inclusion of the kernel into the source.
@[simp, elementwise]
theorem piIsoPi_inv_kernel_ι (i : ι) :
    (piIsoPi Z).inv ≫ Pi.π Z i = ofHom (LinearMap.proj i : (∀ i : ι, Z i) →ₗ[R] Z i) :=
  limit.isoLimitCone_inv_π _ _

@[simp, elementwise]
theorem piIsoPi_hom_ker_subtype (i : ι) :
    (piIsoPi Z).hom ≫ ofHom (LinearMap.proj i : (∀ i : ι, Z i) →ₗ[R] Z i) = Pi.π Z i :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ (limit.isLimit _) (Discrete.mk i)

end product

section coproduct

open DirectSum

variable [DecidableEq ι]

/-- The coproduct cone induced by the concrete product. -/
def coproductCocone : Cofan Z :=
  Cofan.mk (ModuleCat.of R (⨁ i : ι, Z i)) fun i => ofHom (DirectSum.lof R ι (fun i ↦ Z i) i)

/-- The concrete coproduct cone is limiting. -/
def coproductCoconeIsColimit : IsColimit (coproductCocone Z) where
  desc s := ofHom <| DirectSum.toModule R ι _ fun i ↦ (s.ι.app ⟨i⟩).hom
  fac := by
    rintro s ⟨i⟩
    ext (x : Z i)
    simpa only [Discrete.functor_obj_eq_as, coproductCocone, Cofan.mk_pt, Functor.const_obj_obj,
      Cofan.mk_ι_app, hom_comp, LinearMap.coe_comp, Function.comp_apply] using
      DirectSum.toModule_lof (ι := ι) R (M := fun i ↦ Z i) i x
  uniq := by
    rintro s f h
    ext : 1
    refine DirectSum.linearMap_ext _ fun i ↦ ?_
    ext x
    simpa only [LinearMap.coe_comp, Function.comp_apply, hom_ofHom, toModule_lof] using
      congr($(h ⟨i⟩) x)

variable [HasCoproduct Z]

/-- The categorical coproduct of a family of objects in `ModuleCat`
agrees with direct sum.
-/
noncomputable def coprodIsoDirectSum : ∐ Z ≅ ModuleCat.of R (⨁ i, Z i) :=
  colimit.isoColimitCocone ⟨_, coproductCoconeIsColimit Z⟩

@[simp, elementwise]
theorem ι_coprodIsoDirectSum_hom (i : ι) :
    Sigma.ι Z i ≫ (coprodIsoDirectSum Z).hom = ofHom (DirectSum.lof R ι (fun i ↦ Z i) i) :=
  colimit.isoColimitCocone_ι_hom _ _

@[simp, elementwise]
theorem lof_coprodIsoDirectSum_inv (i : ι) :
    ofHom (DirectSum.lof R ι (fun i ↦ Z i) i) ≫ (coprodIsoDirectSum Z).inv = Sigma.ι Z i :=
  (coproductCoconeIsColimit Z).comp_coconePointUniqueUpToIso_hom (colimit.isColimit _) _

end coproduct

end ModuleCat
```
