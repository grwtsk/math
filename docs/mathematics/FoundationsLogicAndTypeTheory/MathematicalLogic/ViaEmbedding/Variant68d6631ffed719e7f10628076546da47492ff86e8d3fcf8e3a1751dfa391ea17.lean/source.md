# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ViaEmbedding.Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27bb199e7959bf9cdd50a401962efea240b7d48a` · SHA-256 `1f392ae0ee1aa7f500244f8f731bb013bcc627f8d551dd8140939e06b2ac6bfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ViaEmbedding.Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ViaEmbedding.Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d","mathematical_subject":"Logic.Foundations","original_sha256":"6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Perm/ViaEmbedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
import Mathlib.Algebra.Group.End
import Mathlib.Logic.Embedding.Basic
import Mathlib.Logic.Equiv.Set

/-!
# `Equiv.Perm.viaEmbedding`, a noncomputable analogue of `Equiv.Perm.viaFintypeEmbedding`.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ViaEmbedding.Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d

variable {α β : Type*}

namespace Equiv

namespace Perm

variable (e : Perm α) (ι : α ↪ β)

open scoped Classical in
/-- Noncomputable version of `Equiv.Perm.viaFintypeEmbedding` that does not assume `Fintype` -/
noncomputable def viaEmbedding : Perm β :=
  extendDomain e (ofInjective ι.1 ι.2)

open scoped Classical in
theorem viaEmbedding_apply (x : α) : e.viaEmbedding ι (ι x) = ι (e x) :=
  extendDomain_apply_image e (ofInjective ι.1 ι.2) x

open scoped Classical in
theorem viaEmbedding_apply_of_notMem (x : β) (hx : x ∉ Set.range ι) : e.viaEmbedding ι x = x :=
  extendDomain_apply_not_subtype e (ofInjective ι.1 ι.2) hx

@[deprecated (since := "2025-05-23")]
alias viaEmbedding_apply_of_not_mem := viaEmbedding_apply_of_notMem

open scoped Classical in
/-- `viaEmbedding` as a group homomorphism -/
noncomputable def viaEmbeddingHom : Perm α →* Perm β :=
  extendDomainHom (ofInjective ι.1 ι.2)

theorem viaEmbeddingHom_apply : viaEmbeddingHom ι e = viaEmbedding e ι :=
  rfl

open scoped Classical in
theorem viaEmbeddingHom_injective : Function.Injective (viaEmbeddingHom ι) :=
  extendDomainHom_injective (ofInjective ι.1 ι.2)

end Perm

end Equiv
```
