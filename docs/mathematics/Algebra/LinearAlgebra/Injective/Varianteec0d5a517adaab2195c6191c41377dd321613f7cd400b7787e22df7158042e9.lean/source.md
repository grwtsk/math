# Complete source: GRWTSK.Algebra.LinearAlgebra.Injective.Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddb87942d8d1cea0278c1bff73692362b2ded6dc` · SHA-256 `a3e4057625da9493597376611930c8e7c4f6e6c13ef822447e22956d0149a6a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.InjectiveObjectOfInjectiveModule.Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.InjectiveObjectOfInjectiveModule.Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"cdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Injective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.Algebra.Module.Injective
import Mathlib.CategoryTheory.Preadditive.Injective.Basic
import Mathlib.Algebra.Category.ModuleCat.EpiMono

/-!
# Injective objects in the category of $R$-modules
-/


namespace GRWTSK.Algebra.LinearAlgebra.InjectiveObjectOfInjectiveModule.Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398

open CategoryTheory

universe u v
variable (R : Type u) (M : Type v) [Ring R] [AddCommGroup M] [Module R M]
namespace Module

theorem injective_object_of_injective_module [inj : Injective R M] :
    CategoryTheory.Injective (ModuleCat.of R M) where
  factors g f m :=
    have ⟨l, h⟩ := inj.out f.hom ((ModuleCat.mono_iff_injective f).mp m) g.hom
    ⟨ModuleCat.ofHom l, by ext x; simpa using h x⟩

theorem injective_module_of_injective_object
    [inj : CategoryTheory.Injective <| ModuleCat.of R M] :
    Module.Injective R M where
  out X Y _ _ _ _ f hf g := by
    have : CategoryTheory.Mono (ModuleCat.ofHom f) := (ModuleCat.mono_iff_injective _).mpr hf
    obtain ⟨l, h⟩ := inj.factors (ModuleCat.ofHom g) (ModuleCat.ofHom f)
    obtain rfl := ModuleCat.hom_ext_iff.mp h
    exact ⟨l.hom, fun _ => rfl⟩

theorem injective_iff_injective_object :
    Module.Injective R M ↔
    CategoryTheory.Injective (ModuleCat.of R M) :=
  ⟨fun _ => injective_object_of_injective_module R M,
   fun _ => injective_module_of_injective_object R M⟩

end Module


instance ModuleCat.ulift_injective_of_injective.{v'}
    [Small.{v} R] [AddCommGroup M] [Module R M]
    [CategoryTheory.Injective <| ModuleCat.of R M] :
    CategoryTheory.Injective <| ModuleCat.of R (ULift.{v'} M) :=
  Module.injective_object_of_injective_module
    (inj := Module.ulift_injective_of_injective
      (inj := Module.injective_module_of_injective_object _ _))
```
