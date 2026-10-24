# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Opposite.Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2eb7e0866b66c240bcc5facd6fb7c6e01106b9d` · SHA-256 `082197e5e27387f5579c0cef03ee2d7dbbaccf3ac65cb1d87e76ef0a25b9a173`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Op.Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Op.Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Data.Opposite
import Mathlib.Data.Set.Operations

/-!
# The opposite of a set

The opposite of a set `s` is simply the set obtained by taking the opposite of each member of `s`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Op.Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454

variable {α : Type*}

open Opposite

namespace Set

/-- The opposite of a set `s` is the set obtained by taking the opposite of each member of `s`. -/
protected def op (s : Set α) : Set αᵒᵖ :=
  unop ⁻¹' s

/-- The unop of a set `s` is the set obtained by taking the unop of each member of `s`. -/
protected def unop (s : Set αᵒᵖ) : Set α :=
  op ⁻¹' s

@[simp]
theorem mem_op {s : Set α} {a : αᵒᵖ} : a ∈ s.op ↔ unop a ∈ s :=
  Iff.rfl

@[simp 1100]
theorem op_mem_op {s : Set α} {a : α} : op a ∈ s.op ↔ a ∈ s := by rfl

@[simp]
theorem mem_unop {s : Set αᵒᵖ} {a : α} : a ∈ s.unop ↔ op a ∈ s :=
  Iff.rfl

@[simp 1100]
theorem unop_mem_unop {s : Set αᵒᵖ} {a : αᵒᵖ} : unop a ∈ s.unop ↔ a ∈ s := by rfl

@[simp]
theorem op_unop (s : Set α) : s.op.unop = s := rfl

@[simp]
theorem unop_op (s : Set αᵒᵖ) : s.unop.op = s := rfl

/-- The members of the opposite of a set are in bijection with the members of the set itself. -/
@[simps]
def opEquiv_self (s : Set α) : s.op ≃ s :=
  ⟨fun x ↦ ⟨unop x, x.2⟩, fun x ↦ ⟨op x, x.2⟩, fun _ ↦ rfl, fun _ ↦ rfl⟩

/-- Taking opposites as an equivalence of powersets. -/
@[simps]
def opEquiv : Set α ≃ Set αᵒᵖ :=
  ⟨Set.op, Set.unop, op_unop, unop_op⟩

@[simp]
theorem singleton_op (x : α) : ({x} : Set α).op = {op x} := by
  ext
  constructor
  · apply unop_injective
  · apply op_injective

@[simp]
theorem singleton_unop (x : αᵒᵖ) : ({x} : Set αᵒᵖ).unop = {unop x} := by
  ext
  constructor
  · apply op_injective
  · apply unop_injective

@[simp 1100]
theorem singleton_op_unop (x : α) : ({op x} : Set αᵒᵖ).unop = {x} := by
  ext
  constructor
  · apply op_injective
  · apply unop_injective

@[simp 1100]
theorem singleton_unop_op (x : αᵒᵖ) : ({unop x} : Set α).op = {x} := by
  ext
  constructor
  · apply unop_injective
  · apply op_injective

end Set
```
