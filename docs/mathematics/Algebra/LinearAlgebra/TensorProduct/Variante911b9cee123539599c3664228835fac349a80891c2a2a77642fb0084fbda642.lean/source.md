# Complete source: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variante911b9cee123539599c3664228835fac349a80891c2a2a77642fb0084fbda642

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13f4e9e8f8b0788dd39c4682d1a01f87c94a8fce` · SHA-256 `60573901aa64be8ed03fc2f25ce230c408a923e0a74e8f31228f9847e202debf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SubmoduleFGExistsRTensorFgInclusionEq.Variant08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SubmoduleFGExistsRTensorFgInclusionEq.Variant08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Colimit/TensorProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.Colimit.Finiteness
import Mathlib.LinearAlgebra.TensorProduct.DirectLimit

/-!
# Tensor product with direct limit of finitely generated submodules

we show that if `M` and `P` are arbitrary modules and `N` is a finitely generated submodule
of a module `P`, then two elements of `N ⊗ M` have the same image in `P ⊗ M` if and only if
they already have the same image in `N' ⊗ M` for some finitely generated submodule `N' ≥ N`.
This is the theorem `Submodule.FG.exists_rTensor_fg_inclusion_eq`. The key facts used are
that every module is the direct limit of its finitely generated submodules and that tensor
product preserves colimits.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SubmoduleFGExistsRTensorFgInclusionEq.Variant08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204

open TensorProduct

variable {R M P : Type*} [CommSemiring R]
variable [AddCommMonoid M] [Module R M] [AddCommMonoid P] [Module R P]

theorem Submodule.FG.exists_rTensor_fg_inclusion_eq {N : Submodule R P} (hN : N.FG)
    {x y : N ⊗[R] M} (eq : N.subtype.rTensor M x = N.subtype.rTensor M y) :
    ∃ N', N'.FG ∧ ∃ h : N ≤ N', (N.inclusion h).rTensor M x = (N.inclusion h).rTensor M y := by
  classical
  lift N to {N : Submodule R P // N.FG} using hN
  apply_fun (Module.fgSystem.equiv R P).symm.toLinearMap.rTensor M at eq
  apply_fun directLimitLeft _ _ at eq
  simp_rw [← LinearMap.rTensor_comp_apply, ← (LinearEquiv.eq_toLinearMap_symm_comp _ _).mpr
    (Module.fgSystem.equiv_comp_of N), directLimitLeft_rTensor_of] at eq
  have ⟨N', le, eq⟩ := Module.DirectLimit.exists_eq_of_of_eq eq
  exact ⟨_, N'.2, le, eq⟩
```
