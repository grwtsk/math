# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpi.Variant84c43fd3f06e0b45b03640d4f89ac8845a095960828efdf1a0063ef5987f4b08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76ed02c7aaf871c7074d93e2c5d82bbc07589f56` · SHA-256 `1fccd01cb67d7a9749eb0c895a6a55b7f76679561cc788d993559d98464bfc4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpiStructOfQuotientMap.Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EffectiveEpiStructOfQuotientMap.Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/TopCat/EffectiveEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.EffectiveEpi.RegularEpi
import Mathlib.Topology.Category.TopCat.Limits.Pullbacks
/-!

# Effective epimorphisms in `TopCat`

This file proves the result `TopCat.effectiveEpi_iff_isQuotientMap`:
The effective epimorphisms in `TopCat` are precisely the quotient maps.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpiStructOfQuotientMap.Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217

universe u

open CategoryTheory Limits Topology

namespace TopCat

/--
Implementation: If `π` is a morphism in `TopCat` which is a quotient map, then it is an effective
epimorphism. The theorem `TopCat.effectiveEpi_iff_isQuotientMap` should be used instead of
this definition.
-/
noncomputable
def effectiveEpiStructOfQuotientMap {B X : TopCat.{u}} (π : X ⟶ B) (hπ : IsQuotientMap π) :
    EffectiveEpiStruct π where
  /- `IsQuotientMap.lift` gives the required morphism -/
  desc e h := ofHom <| hπ.lift e.hom fun a b hab ↦
    CategoryTheory.congr_fun (h
      (ofHom ⟨fun _ ↦ a, continuous_const⟩)
      (ofHom ⟨fun _ ↦ b, continuous_const⟩)
    (by ext; exact hab)) a
  /- `IsQuotientMap.lift_comp` gives the factorisation -/
  fac e h := hom_ext (hπ.lift_comp e.hom
    fun a b hab ↦ CategoryTheory.congr_fun (h
      (ofHom ⟨fun _ ↦ a, continuous_const⟩)
      (ofHom ⟨fun _ ↦ b, continuous_const⟩)
    (by ext; exact hab)) a)
  /- Uniqueness follows from the fact that `IsQuotientMap.lift` is an equivalence (given by
  `IsQuotientMap.liftEquiv`). -/
  uniq e h g hm := by
    suffices g = ofHom (hπ.liftEquiv ⟨e.hom,
      fun a b hab ↦ CategoryTheory.congr_fun (h
          (ofHom ⟨fun _ ↦ a, continuous_const⟩)
          (ofHom ⟨fun _ ↦ b, continuous_const⟩)
          (by ext; exact hab))
        a⟩) by assumption
    apply hom_ext
    rw [hom_ofHom, ← Equiv.symm_apply_eq hπ.liftEquiv]
    ext
    simp only [IsQuotientMap.liftEquiv_symm_apply_coe, ContinuousMap.comp_apply, ← hm]
    rfl

/-- The effective epimorphisms in `TopCat` are precisely the quotient maps. -/
theorem effectiveEpi_iff_isQuotientMap {B X : TopCat.{u}} (π : X ⟶ B) :
    EffectiveEpi π ↔ IsQuotientMap π := by
  /- The backward direction is given by `effectiveEpiStructOfQuotientMap` above. -/
  refine ⟨fun _ ↦ ?_, fun hπ ↦ ⟨⟨effectiveEpiStructOfQuotientMap π hπ⟩⟩⟩
  /- Since `TopCat` has pullbacks, `π` is in fact a `RegularEpi`. This means that it exhibits `B` as
    a coequalizer of two maps into `X`. It suffices to prove that `π` followed by the isomorphism to
    an arbitrary coequalizer is a quotient map. -/
  have hπ : RegularEpi π := inferInstance
  exact isQuotientMap_of_isColimit_cofork _ hπ.isColimit

@[deprecated (since := "2024-10-22")]
alias effectiveEpi_iff_quotientMap := effectiveEpi_iff_isQuotientMap

end TopCat
```
