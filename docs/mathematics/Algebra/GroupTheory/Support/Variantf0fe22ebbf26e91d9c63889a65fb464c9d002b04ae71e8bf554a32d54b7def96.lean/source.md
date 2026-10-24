# Complete source: GRWTSK.Algebra.GroupTheory.Support.Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb45581a4210bde963c8c3d32234ea72d33952b5` · SHA-256 `8658eae897d71205c2387e26f63ca13523d6c62819ed68ec8fc482fc62287f8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulSupportCompInvSmul.Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulSupportCompInvSmul.Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30","mathematical_subject":"Algebra.Groups","original_sha256":"d09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Pointwise/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Algebra.Group.Support
import Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set

/-!
# Support of a function composed with a scalar action

We show that the support of `x ↦ f (c⁻¹ • x)` is equal to `c • support f`.
-/



namespace GRWTSK.Algebra.GroupTheory.MulSupportCompInvSmul.Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30

open Pointwise

open Function Set

section Group

variable {α β γ : Type*} [Group α] [MulAction α β]

theorem mulSupport_comp_inv_smul [One γ] (c : α) (f : β → γ) :
    (mulSupport fun x ↦ f (c⁻¹ • x)) = c • mulSupport f := by
  ext x
  simp only [mem_smul_set_iff_inv_smul_mem, mem_mulSupport]

/- Note: to_additive also automatically translates `SMul` to `VAdd`, so we give the additive version
manually. -/
theorem support_comp_inv_smul [Zero γ] (c : α) (f : β → γ) :
    (support fun x ↦ f (c⁻¹ • x)) = c • support f := by
  ext x
  simp only [mem_smul_set_iff_inv_smul_mem, mem_support]

end Group

section GroupWithZero

variable {α β γ : Type*} [GroupWithZero α] [MulAction α β]

theorem mulSupport_comp_inv_smul₀ [One γ] {c : α} (hc : c ≠ 0) (f : β → γ) :
    (mulSupport fun x ↦ f (c⁻¹ • x)) = c • mulSupport f := by
  ext x
  simp only [mem_smul_set_iff_inv_smul_mem₀ hc, mem_mulSupport]

/- Note: to_additive also automatically translates `SMul` to `VAdd`, so we give the additive version
manually. -/
theorem support_comp_inv_smul₀ [Zero γ] {c : α} (hc : c ≠ 0) (f : β → γ) :
    (support fun x ↦ f (c⁻¹ • x)) = c • support f := by
  ext x
  simp only [mem_smul_set_iff_inv_smul_mem₀ hc, mem_support]

end GroupWithZero
```
