# Complete source: GRWTSK.Algebra.LinearAlgebra.Rat.Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64f9ceb24ea52be4f04f0cee117ddc25e69baab2` · SHA-256 `528521006db43e34f5dbfcb33db9e484a451a133dbc4e31a0e4eb0a61229d76f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AddMonoidHomToRatLinearMap.Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AddMonoidHomToRatLinearMap.Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/LinearMap/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nathaniel Thomas, Jeremy Avigad, Johannes Hölzl, Mario Carneiro, Anne Baanen,
  Frédéric Dupuis, Heather Macbeth
-/
import Mathlib.Algebra.Module.Rat
import Mathlib.Algebra.Module.LinearMap.Defs

/-!
# Reinterpret an additive homomorphism as a `ℚ`-linear map.
-/


namespace GRWTSK.Algebra.LinearAlgebra.AddMonoidHomToRatLinearMap.Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57

open Function

variable {M M₂ : Type*}

/-- Reinterpret an additive homomorphism as a `ℚ`-linear map. -/
def AddMonoidHom.toRatLinearMap [AddCommGroup M] [Module ℚ M] [AddCommGroup M₂] [Module ℚ M₂]
    (f : M →+ M₂) : M →ₗ[ℚ] M₂ :=
  { f with map_smul' := map_rat_smul f }

theorem AddMonoidHom.toRatLinearMap_injective [AddCommGroup M] [Module ℚ M] [AddCommGroup M₂]
    [Module ℚ M₂] : Function.Injective (@AddMonoidHom.toRatLinearMap M M₂ _ _ _ _) := by
  intro f g h
  ext x
  exact LinearMap.congr_fun h x

@[simp]
theorem AddMonoidHom.coe_toRatLinearMap [AddCommGroup M] [Module ℚ M] [AddCommGroup M₂]
    [Module ℚ M₂] (f : M →+ M₂) : ⇑f.toRatLinearMap = f :=
  rfl
```
