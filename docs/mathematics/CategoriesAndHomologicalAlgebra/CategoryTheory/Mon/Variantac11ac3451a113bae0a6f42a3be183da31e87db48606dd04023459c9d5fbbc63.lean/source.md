# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mon.Variantac11ac3451a113bae0a6f42a3be183da31e87db48606dd04023459c9d5fbbc63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b01fa90ea94195ce94ec21d267aa0fa038b78e97` · SHA-256 `53f1e56ae811d23b00e6e35eede2707ed8b5d0929bbfb792d50bc89b51d5e059`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MopEquiv.Variante6073d4fdabba7b70f133c779442d5e524399b334c194a3c993a998c7f1d8ab8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6073d4fdabba7b70f133c779442d5e524399b334c194a3c993a998c7f1d8ab8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MopEquiv.Variante6073d4fdabba7b70f133c779442d5e524399b334c194a3c993a998c7f1d8ab8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e6073d4fdabba7b70f133c779442d5e524399b334c194a3c993a998c7f1d8ab8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Opposite/Mon.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
module

public import Mathlib.CategoryTheory.Monoidal.Mon

/-!
# Monoid objects internal to monoidal opposites

In this file, we record the equivalence between `Mon C` and `Mon Cᴹᵒᵖ`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MopEquiv.Variante6073d4fdabba7b70f133c779442d5e524399b334c194a3c993a998c7f1d8ab8

@[expose] public section

namespace MonObj

open CategoryTheory MonoidalCategory MonoidalOpposite

variable {C : Type*} [Category* C] [MonoidalCategory C]

section mop

variable (M : C) [MonObj M]

set_option backward.defeqAttrib.useBackward true in
/-- If `M : C` is a monoid object, then `mop M : Cᴹᵒᵖ` too. -/
@[simps!]
instance mopMonObj : MonObj (mop M) where
  mul := MonObj.mul.mop
  one := MonObj.one.mop
  mul_one := by
    apply mopEquiv C |>.fullyFaithfulInverse.map_injective
    simp
  one_mul := by
    apply mopEquiv C |>.fullyFaithfulInverse.map_injective
    simp
  mul_assoc := by
    apply mopEquiv C |>.fullyFaithfulInverse.map_injective
    simp

variable {M} in
/-- If `f` is a morphism of monoid objects internal to `C`,
then `f.mop` is a morphism of monoid objects internal to `Cᴹᵒᵖ`. -/
instance mop_isMonHom {N : C} [MonObj N]
    (f : M ⟶ N) [IsMonHom f] : IsMonHom f.mop where
  mul_hom := by
    apply mopEquiv C |>.fullyFaithfulInverse.map_injective
    simpa [-IsMonHom.mul_hom] using! IsMonHom.mul_hom f
  one_hom := by
    apply mopEquiv C |>.fullyFaithfulInverse.map_injective
    simpa [-IsMonHom.one_hom] using! IsMonHom.one_hom f

end mop

section unmop

variable (M : Cᴹᵒᵖ) [MonObj M]

set_option backward.defeqAttrib.useBackward true in
/-- If `M : Cᴹᵒᵖ` is a monoid object, then `unmop M : C` too. -/
@[simps -isSimp] -- not making them simp because it causes a loop.
instance unmopMonObj : MonObj (unmop M) where
  mul := MonObj.mul.unmop
  one := MonObj.one.unmop
  mul_one := by
    apply mopEquiv C |>.fullyFaithfulFunctor.map_injective
    simp
  one_mul := by
    apply mopEquiv C |>.fullyFaithfulFunctor.map_injective
    simp
  mul_assoc := by
    apply mopEquiv C |>.fullyFaithfulFunctor.map_injective
    simp

variable {M} in
/-- If `f` is a morphism of monoid objects internal to `Cᴹᵒᵖ`,
so is `f.unmop`. -/
instance unmop_isMonHom {N : Cᴹᵒᵖ} [MonObj N]
    (f : M ⟶ N) [IsMonHom f] : IsMonHom f.unmop where
  mul_hom := by
    apply mopEquiv C |>.fullyFaithfulFunctor.map_injective
    simpa [-IsMonHom.mul_hom] using! IsMonHom.mul_hom f
  one_hom := by
    apply mopEquiv C |>.fullyFaithfulFunctor.map_injective
    simpa [-IsMonHom.one_hom] using! IsMonHom.one_hom f

end unmop

set_option backward.isDefEq.respectTransparency.types false in
variable (C) in
/-- The equivalence of categories between monoids internal to `C`
and monoids internal to the monoidal opposite of `C`. -/
@[simps!]
def mopEquiv : Mon C ≌ Mon Cᴹᵒᵖ where
  functor :=
    { obj M := ⟨mop M.X⟩
      map f := ⟨f.hom.mop⟩ }
  inverse :=
    { obj M := ⟨unmop M.X⟩
      map f := ⟨f.hom.unmop⟩ }
  unitIso := .refl _
  counitIso := .refl _

/-- The equivalence of categories between monoids internal to `C`
and monoids internal to the monoidal opposite of `C` lies over
the equivalence `C ≌ Cᴹᵒᵖ` via the forgetful functors. -/
@[simps!]
def mopEquivCompForgetIso :
    (mopEquiv C).functor ⋙ Mon.forget Cᴹᵒᵖ ≅
    Mon.forget C ⋙ (MonoidalOpposite.mopEquiv C).functor :=
  .refl _

end MonObj
```
