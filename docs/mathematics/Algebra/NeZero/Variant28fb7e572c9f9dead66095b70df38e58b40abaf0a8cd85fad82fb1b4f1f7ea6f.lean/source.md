# Complete source: GRWTSK.Algebra.NeZero.Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95799222a3a9b238e23c0f7425d257c6ff830ec0` · SHA-256 `84a976adf867cdf097804f15b5c66ec95f74a2fadb0ad2d2894062d7ce001ae6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.NeZero.Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NeZero.Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/NeZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/

import Mathlib.Logic.Basic
import Mathlib.Init.ZeroOne
import Mathlib.Init.Algebra.Order


namespace GRWTSK.Algebra.NeZero.Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4

#align_import algebra.ne_zero from "leanprover-community/mathlib"@"f340f229b1f461aa1c8ee11e0a172d0a3b301a4a"

/-!
# `NeZero` typeclass

We create a typeclass `NeZero n` which carries around the fact that `(n : R) ≠ 0`.

## Main declarations

* `NeZero`: `n ≠ 0` as a typeclass.
-/

set_option autoImplicit true

/-- A type-class version of `n ≠ 0`.  -/
class NeZero {R} [Zero R] (n : R) : Prop where
  /-- The proposition that `n` is not zero. -/
  out : n ≠ 0
#align ne_zero NeZero

theorem NeZero.ne {R} [Zero R] (n : R) [h : NeZero n] : n ≠ 0 :=
  h.out
#align ne_zero.ne NeZero.ne

theorem NeZero.ne' {R} [Zero R] (n : R) [h : NeZero n] : 0 ≠ n :=
  h.out.symm
#align ne_zero.ne' NeZero.ne'

theorem neZero_iff {R : Type*} [Zero R] {n : R} : NeZero n ↔ n ≠ 0 :=
  ⟨fun h ↦ h.out, NeZero.mk⟩
#align ne_zero_iff neZero_iff

theorem not_neZero {R : Type*} [Zero R] {n : R} : ¬NeZero n ↔ n = 0 := by simp [neZero_iff]
#align not_ne_zero not_neZero

theorem eq_zero_or_neZero {α} [Zero α] (a : α) : a = 0 ∨ NeZero a :=
  (eq_or_ne a 0).imp_right NeZero.mk
#align eq_zero_or_ne_zero eq_zero_or_neZero

section
variable {α : Type*} [Zero α]

@[simp] lemma zero_ne_one [One α] [NeZero (1 : α)] : (0 : α) ≠ 1 := NeZero.ne' (1 : α)
#align zero_ne_one zero_ne_one

@[simp] lemma one_ne_zero [One α] [NeZero (1 : α)] : (1 : α) ≠ 0 := NeZero.ne (1 : α)
#align one_ne_zero one_ne_zero

lemma ne_zero_of_eq_one [One α] [NeZero (1 : α)] {a : α} (h : a = 1) : a ≠ 0 := h ▸ one_ne_zero
#align ne_zero_of_eq_one ne_zero_of_eq_one

@[field_simps]
lemma two_ne_zero [OfNat α 2] [NeZero (2 : α)] : (2 : α) ≠ 0 := NeZero.ne (2 : α)
#align two_ne_zero two_ne_zero

@[field_simps]
lemma three_ne_zero [OfNat α 3] [NeZero (3 : α)] : (3 : α) ≠ 0 := NeZero.ne (3 : α)
#align three_ne_zero three_ne_zero

@[field_simps]
lemma four_ne_zero [OfNat α 4] [NeZero (4 : α)] : (4 : α) ≠ 0 := NeZero.ne (4 : α)
#align four_ne_zero four_ne_zero

variable (α)

lemma zero_ne_one' [One α] [NeZero (1 : α)] : (0 : α) ≠ 1 := zero_ne_one
#align zero_ne_one' zero_ne_one'

lemma one_ne_zero' [One α] [NeZero (1 : α)] : (1 : α) ≠ 0 := one_ne_zero
#align one_ne_zero' one_ne_zero'

lemma two_ne_zero' [OfNat α 2] [NeZero (2 : α)] : (2 : α) ≠ 0 := two_ne_zero
#align two_ne_zero' two_ne_zero'

lemma three_ne_zero' [OfNat α 3] [NeZero (3 : α)] : (3 : α) ≠ 0 := three_ne_zero
#align three_ne_zero' three_ne_zero'

lemma four_ne_zero' [OfNat α 4] [NeZero (4 : α)] : (4 : α) ≠ 0 := four_ne_zero
#align four_ne_zero' four_ne_zero'

end

namespace NeZero

variable {M : Type*} {x : M}

instance succ : NeZero (n + 1) := ⟨n.succ_ne_zero⟩

theorem of_pos [Preorder M] [Zero M] (h : 0 < x) : NeZero x := ⟨ne_of_gt h⟩
#align ne_zero.of_pos NeZero.of_pos

end NeZero
```
