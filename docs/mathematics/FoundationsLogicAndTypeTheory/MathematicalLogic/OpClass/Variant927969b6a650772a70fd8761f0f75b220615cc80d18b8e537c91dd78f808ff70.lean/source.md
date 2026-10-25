# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OpClass.Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9fdb64028c1c72658537831e1caa60ba41c4e71` · SHA-256 `f002be7678629faed0155d3c23b49c6b4de9e7d569edbdbeddd78688ad22ed46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsSymmOp.Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IsSymmOp.Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/OpClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/

import Mathlib.Init

/-!
# Typeclasses for commuting heterogeneous operations

The three classes in this file are for two-argument functions where one input is of type `α`,
the output is of type `β` and the other input is of type `α` or `β`.
They express the property that permuting arguments of type `α` does not change the result.

## Main definitions

* `IsSymmOp`: for `op : α → α → β`, `op a b = op b a`.
* `LeftCommutative`: for `op : α → β → β`, `op a₁ (op a₂ b) = op a₂ (op a₁ b)`.
* `RightCommutative`: for `op : β → α → β`, `op (op b a₁) a₂ = op (op b a₂) a₁`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsSymmOp.Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37

universe u v

variable {α : Sort u} {β : Sort v}

/-- `IsSymmOp op` where `op : α → α → β` says that `op` is a symmetric operation,
i.e. `op a b = op b a`.
It is the natural generalisation of `Std.Commutative` (`β = α`) and `IsSymm` (`β = Prop`). -/
class IsSymmOp (op : α → α → β) : Prop where
  /-- A symmetric operation satisfies `op a b = op b a`. -/
  symm_op : ∀ a b, op a b = op b a

/-- `LeftCommutative op` where `op : α → β → β` says that `op` is a left-commutative operation,
i.e. `op a₁ (op a₂ b) = op a₂ (op a₁ b)`. -/
class LeftCommutative (op : α → β → β) : Prop where
  /-- A left-commutative operation satisfies `op a₁ (op a₂ b) = op a₂ (op a₁ b)`. -/
  left_comm : (a₁ a₂ : α) → (b : β) → op a₁ (op a₂ b) = op a₂ (op a₁ b)

/-- `RightCommutative op` where `op : β → α → β` says that `op` is a right-commutative operation,
i.e. `op (op b a₁) a₂ = op (op b a₂) a₁`. -/
class RightCommutative (op : β → α → β) : Prop where
  /-- A right-commutative operation satisfies `op (op b a₁) a₂ = op (op b a₂) a₁`. -/
  right_comm : (b : β) → (a₁ a₂ : α) → op (op b a₁) a₂ = op (op b a₂) a₁

instance (priority := 100) isSymmOp_of_isCommutative (α : Sort u) (op : α → α → α)
    [Std.Commutative op] : IsSymmOp op where symm_op := Std.Commutative.comm

theorem IsSymmOp.flip_eq (op : α → α → β) [IsSymmOp op] : flip op = op :=
  funext fun a ↦ funext fun b ↦ (IsSymmOp.symm_op a b).symm

instance {f : α → β → β} [h : LeftCommutative f] : RightCommutative (fun x y ↦ f y x) :=
  ⟨fun _ _ _ ↦ (h.left_comm _ _ _).symm⟩

instance {f : β → α → β} [h : RightCommutative f] : LeftCommutative (fun x y ↦ f y x) :=
  ⟨fun _ _ _ ↦ (h.right_comm _ _ _).symm⟩

instance {f : α → α → α} [hc : Std.Commutative f] [ha : Std.Associative f] : LeftCommutative f :=
  ⟨fun a b c ↦ by rw [← ha.assoc, hc.comm a, ha.assoc]⟩

instance {f : α → α → α} [hc : Std.Commutative f] [ha : Std.Associative f] : RightCommutative f :=
  ⟨fun a b c ↦ by rw [ha.assoc, hc.comm b, ha.assoc]⟩
```
