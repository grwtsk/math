# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIso.Variant5da6cfec1c39260de8473294adea7eb9db470368b41a7075e8a2598f1382f683

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03d8b1ec4a0b5c535c31b7f3d8663f2ea771e073` · SHA-256 `94d24e49a6bcb6eb7ffdba5b9cf7a390d54584bf3e853f78b1449f3f95016b1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIsomorphismsForget.Variant0fff1ccd5c6f98a1ffcf56013c7fe2db9b4cf652f2bbae0091efa073215b6685","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fff1ccd5c6f98a1ffcf56013c7fe2db9b4cf652f2bbae0091efa073215b6685","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ReflectsIsomorphismsForget.Variant0fff1ccd5c6f98a1ffcf56013c7fe2db9b4cf652f2bbae0091efa073215b6685","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0fff1ccd5c6f98a1ffcf56013c7fe2db9b4cf652f2bbae0091efa073215b6685","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ConcreteCategory/ReflectsIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.ConcreteCategory.Basic
import Mathlib.CategoryTheory.Functor.ReflectsIso.Basic

/-!
A `forget₂ C D` forgetful functor between concrete categories `C` and `D`
whose forgetful functors both reflect isomorphisms, itself reflects isomorphisms.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIsomorphismsForget.Variant0fff1ccd5c6f98a1ffcf56013c7fe2db9b4cf652f2bbae0091efa073215b6685

universe u

namespace CategoryTheory

instance : (forget (Type u)).ReflectsIsomorphisms where reflects _ _ _ {i} := i

variable (C : Type (u + 1)) [Category C] [HasForget.{u} C]
variable (D : Type (u + 1)) [Category D] [HasForget.{u} D]

-- This should not be an instance, as it causes a typeclass loop
-- with `CategoryTheory.hasForgetToType`.
/-- A `forget₂ C D` forgetful functor between concrete categories `C` and `D`
where `forget C` reflects isomorphisms, itself reflects isomorphisms.
-/
theorem reflectsIsomorphisms_forget₂ [HasForget₂ C D] [(forget C).ReflectsIsomorphisms] :
    (forget₂ C D).ReflectsIsomorphisms :=
  { reflects := fun X Y f {i} => by
      haveI i' : IsIso ((forget D).map ((forget₂ C D).map f)) := Functor.map_isIso (forget D) _
      haveI : IsIso ((forget C).map f) := by
        have := @HasForget₂.forget_comp C D
        rwa [← this]
      apply isIso_of_reflects_iso f (forget C) }

end CategoryTheory
```
