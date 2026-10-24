# Complete source: GRWTSK.Algebra.GroupTheory.Basic.Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e3a735f448e80a2ec3654de8cd28ad06184980c` · SHA-256 `1553a316b5a3da4403f13f77fe3c2ecb4c5f6a9accef7c16c5abf53a2fb85756`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SwapSmulSelfSmul.Variantf2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SwapSmulSelfSmul.Variantf2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/Perm/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Action.Defs
public import Mathlib.Algebra.Group.End
public import Mathlib.Tactic.Common
public import Mathlib.Data.Set.Function

/-!
# Extra lemmas about permutations

This file proves miscellaneous lemmas about `Equiv.Perm`.

## TODO

Most of the content of this file was moved to `Mathlib/Algebra/Group/End.lean` in
https://github.com/leanprover-community/mathlib4/pull/22141.
It would be good to merge the remaining lemmas with other files, e.g.
`GroupTheory.Perm.ViaEmbedding` looks like it could benefit from such a treatment (splitting into
the algebra and non-algebra parts).
-/


namespace GRWTSK.Algebra.GroupTheory.SwapSmulSelfSmul.Variantf2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1

public section


universe u v

namespace Equiv

variable {α : Type u} {β : Type v}

section Swap

variable [DecidableEq α]

@[simp]
theorem swap_smul_self_smul [MulAction (Perm α) β] (i j : α) (x : β) :
    swap i j • swap i j • x = x := by simp [smul_smul]

theorem swap_smul_involutive [MulAction (Perm α) β] (i j : α) :
    Function.Involutive (swap i j • · : β → β) := swap_smul_self_smul i j

end Swap
end Equiv

open Equiv

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
