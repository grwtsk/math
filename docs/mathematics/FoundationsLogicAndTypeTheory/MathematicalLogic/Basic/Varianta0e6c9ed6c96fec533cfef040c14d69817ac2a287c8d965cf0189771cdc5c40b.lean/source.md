# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4164d6acca24e6ab5f5dc8b481c7672032c63250` · SHA-256 `e30672b4747d30596b5daae9cfe0e52537e19b85d574b1a009edd86ab8f86472`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SwapSmulSelfSmul.Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SwapSmulSelfSmul.Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca","mathematical_subject":"Logic.Foundations","original_sha256":"aa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Perm/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.End
import Mathlib.Logic.Equiv.Set
import Mathlib.Tactic.Common

/-!
# Extra lemmas about permutations

This file proves miscellaneous lemmas about `Equiv.Perm`.

## TODO

Most of the content of this file was moved to `Algebra.Group.End` in
https://github.com/leanprover-community/mathlib4/pull/22141.
It would be good to merge the remaining lemmas with other files, eg `GroupTheory.Perm.ViaEmbedding`
looks like it could benefit from such a treatment (splitting into the algebra and non-algebra parts)
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SwapSmulSelfSmul.Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca

universe u v

namespace Equiv

variable {α : Type u} {β : Type v}

namespace Perm

@[simp] lemma image_inv (f : Perm α) (s : Set α) : ↑f⁻¹ '' s = f ⁻¹' s := f⁻¹.image_eq_preimage _

@[simp] lemma preimage_inv (f : Perm α) (s : Set α) : ↑f⁻¹ ⁻¹' s = f '' s :=
  (f.image_eq_preimage _).symm

end Perm

section Swap

variable [DecidableEq α]

@[simp]
theorem swap_smul_self_smul [MulAction (Perm α) β] (i j : α) (x : β) :
    swap i j • swap i j • x = x := by simp [smul_smul]

theorem swap_smul_involutive [MulAction (Perm α) β] (i j : α) :
    Function.Involutive (swap i j • · : β → β) := swap_smul_self_smul i j

end Swap
end Equiv

open Equiv Function

namespace Set
variable {α : Type*} {f : Perm α} {s : Set α}

lemma BijOn.perm_inv (hf : BijOn f s s) : BijOn ↑(f⁻¹) s s := hf.symm f.invOn

lemma MapsTo.perm_pow : MapsTo f s s → ∀ n : ℕ, MapsTo (f ^ n) s s := by
  simp_rw [Equiv.Perm.coe_pow]; exact MapsTo.iterate
lemma SurjOn.perm_pow : SurjOn f s s → ∀ n : ℕ, SurjOn (f ^ n) s s := by
  simp_rw [Equiv.Perm.coe_pow]; exact SurjOn.iterate
lemma BijOn.perm_pow : BijOn f s s → ∀ n : ℕ, BijOn (f ^ n) s s := by
  simp_rw [Equiv.Perm.coe_pow]; exact BijOn.iterate

lemma BijOn.perm_zpow (hf : BijOn f s s) : ∀ n : ℤ, BijOn (f ^ n) s s
  | Int.ofNat n => hf.perm_pow n
  | Int.negSucc n => (hf.perm_pow (n + 1)).perm_inv

end Set
```
