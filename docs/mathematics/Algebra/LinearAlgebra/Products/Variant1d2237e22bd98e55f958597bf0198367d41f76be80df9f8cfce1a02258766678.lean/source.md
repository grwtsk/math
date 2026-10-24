# Complete source: GRWTSK.Algebra.LinearAlgebra.Products.Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee5b86a2f0f9fb15273fe172054eb3b921685e5a` · SHA-256 `e8c3077e36688cefce08a030832f798b6d443d7e16b19bb6d4bdf30c86b1276d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProductCone.Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ProductCone.Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Products.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.LinearAlgebra.Pi
import Mathlib.Algebra.Category.ModuleCat.Basic


namespace GRWTSK.Algebra.LinearAlgebra.ProductCone.Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac

#align_import algebra.category.Module.products from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!
# The concrete products in the category of modules are products in the categorical sense.
-/


open CategoryTheory

open CategoryTheory.Limits

universe u v w

namespace ModuleCat

variable {R : Type u} [Ring R]

variable {ι : Type v} (Z : ι → ModuleCatMax.{v, w} R)

set_option linter.uppercaseLean3 false

/-- The product cone induced by the concrete product. -/
def productCone : Fan Z :=
  Fan.mk (ModuleCat.of R (∀ i : ι, Z i)) fun i => (LinearMap.proj i : (∀ i : ι, Z i) →ₗ[R] Z i)
#align Module.product_cone ModuleCat.productCone

/-- The concrete product cone is limiting. -/
def productConeIsLimit : IsLimit (productCone Z) where
  lift s := (LinearMap.pi fun j => s.π.app ⟨j⟩ : s.pt →ₗ[R] ∀ i : ι, Z i)
  fac s j := by
    cases j
    aesop
  uniq s m w := by
    ext x
    funext i
    exact LinearMap.congr_fun (w ⟨i⟩) x
#align Module.product_cone_is_limit ModuleCat.productConeIsLimit

-- While we could use this to construct a `HasProducts (ModuleCat R)` instance,
-- we already have `HasLimits (ModuleCat R)` in `Algebra.Category.ModuleCat.Limits`.
variable [HasProduct Z]

/-- The categorical product of a family of objects in `ModuleCat`
agrees with the usual module-theoretical product.
-/
noncomputable def piIsoPi : ∏ Z ≅ ModuleCat.of R (∀ i, Z i) :=
  limit.isoLimitCone ⟨_, productConeIsLimit Z⟩
#align Module.pi_iso_pi ModuleCat.piIsoPi

-- We now show this isomorphism commutes with the inclusion of the kernel into the source.
@[simp, elementwise]
theorem piIsoPi_inv_kernel_ι (i : ι) :
    (piIsoPi Z).inv ≫ Pi.π Z i = (LinearMap.proj i : (∀ i : ι, Z i) →ₗ[R] Z i) :=
  limit.isoLimitCone_inv_π _ _
#align Module.pi_iso_pi_inv_kernel_ι ModuleCat.piIsoPi_inv_kernel_ι

@[simp, elementwise]
theorem piIsoPi_hom_ker_subtype (i : ι) :
    (piIsoPi Z).hom ≫ (LinearMap.proj i : (∀ i : ι, Z i) →ₗ[R] Z i) = Pi.π Z i :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ (limit.isLimit _) (Discrete.mk i)
#align Module.pi_iso_pi_hom_ker_subtype ModuleCat.piIsoPi_hom_ker_subtype

end ModuleCat
```
