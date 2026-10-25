# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CompTypeclasses.Variant3597662856e8102de11657fb41cd9d5b8d1c4e7953562a5600c65b3d2874b5c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d19d1244c5d0b52cd98a8f85bfaed3fde56a9a8b` · SHA-256 `0a3b5d7f2d8a60f5e82c86e012a3d31244d45a110a1680f24635a683c9591625`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CompTriple.Variante8e55220cbfdd157c03576ae7183f47dc237db030bfd73bfe3d1480606a0d281","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8e55220cbfdd157c03576ae7183f47dc237db030bfd73bfe3d1480606a0d281","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CompTriple.Variante8e55220cbfdd157c03576ae7183f47dc237db030bfd73bfe3d1480606a0d281","mathematical_subject":"Logic.Foundations","original_sha256":"e8e55220cbfdd157c03576ae7183f47dc237db030bfd73bfe3d1480606a0d281","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Function/CompTypeclasses.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/

import Mathlib.Logic.Function.Defs

/-!
# Propositional typeclasses on several maps

This file contains typeclasses that are used in the definition of
equivariant maps in the spirit what was initially developed
by Frédéric Dupuis and Heather Macbeth for linear maps.

* `CompTriple φ ψ χ`, which expresses that `ψ.comp φ = χ`
* `CompTriple.IsId φ`, which expresses that `φ = id`

TODO :
* align with RingHomCompTriple

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CompTriple.Variante8e55220cbfdd157c03576ae7183f47dc237db030bfd73bfe3d1480606a0d281

section CompTriple

/-- Class of composing triples -/
class CompTriple {M N P : Type*} (φ : M → N) (ψ : N → P) (χ : outParam (M → P)) : Prop where
  /-- The maps form a commuting triangle -/
  comp_eq : ψ.comp φ = χ

attribute [simp] CompTriple.comp_eq

namespace CompTriple

/-- Class of Id maps -/
class IsId {M : Type*} (σ : M → M) : Prop where
  eq_id : σ = id

instance {M : Type*} : IsId (@id M) where
  eq_id := rfl

instance instComp_id {N P : Type*} {φ : N → N} [IsId φ] {ψ : N → P} :
    CompTriple φ ψ ψ where
  comp_eq := by simp only [IsId.eq_id, Function.comp_id]

instance instId_comp {M N : Type*} {φ : M → N} {ψ : N → N} [IsId ψ] :
    CompTriple φ ψ φ where
  comp_eq := by simp only [IsId.eq_id, Function.id_comp]

/-- `φ`, `ψ` and `ψ ∘ φ` for` a `CompTriple` -/
theorem comp {M N P : Type*}
    {φ : M → N} {ψ : N → P} :
    CompTriple φ ψ  (ψ.comp φ) where
  comp_eq := rfl

lemma comp_inv {M N : Type*} {φ : M → N} {ψ : N → M}
    (h : Function.RightInverse φ ψ) {χ : M → M} [IsId χ] :
    CompTriple φ ψ χ where
  comp_eq := by simp only [IsId.eq_id, h.id]

lemma comp_apply {M N P : Type*}
    {φ : M → N} {ψ : N → P} {χ : M → P} (h : CompTriple φ ψ χ) (x : M) :
    ψ (φ x) = χ x := by
  rw [← h.comp_eq, Function.comp_apply]

end CompTriple

end CompTriple
```
