# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b96598d45ab19110dd48d58a923a2d56b017514d` · SHA-256 `08e3a1f01b5e83575802d1234bcbc7f5314f34a5e54f6f452e91f7047ebff24e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Sub.Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Sub.Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Sub/WithTop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Order.Monoid.WithTop


namespace GRWTSK.Algebra.UniversalAlgebra.Sub.Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f

#align_import algebra.order.sub.with_top from "leanprover-community/mathlib"@"afdb4fa3b32d41106a4a09b371ce549ad7958abd"

/-!
# Lemma about subtraction in ordered monoids with a top element adjoined.
-/


variable {α β : Type*}

namespace WithTop

section

variable [Sub α] [Zero α]

/-- If `α` has subtraction and `0`, we can extend the subtraction to `WithTop α`. -/
protected def sub : ∀ _ _ : WithTop α, WithTop α
  | _, ⊤ => 0
  | ⊤, (x : α) => ⊤
  | (x : α), (y : α) => (x - y : α)
#align with_top.sub WithTop.sub

instance : Sub (WithTop α) :=
  ⟨WithTop.sub⟩

@[simp, norm_cast]
theorem coe_sub {a b : α} : (↑(a - b) : WithTop α) = ↑a - ↑b :=
  rfl
#align with_top.coe_sub WithTop.coe_sub

@[simp]
theorem top_sub_coe {a : α} : (⊤ : WithTop α) - a = ⊤ :=
  rfl
#align with_top.top_sub_coe WithTop.top_sub_coe

@[simp]
theorem sub_top {a : WithTop α} : a - ⊤ = 0 := by cases a <;> rfl
#align with_top.sub_top WithTop.sub_top

@[simp] theorem sub_eq_top_iff {a b : WithTop α} : a - b = ⊤ ↔ a = ⊤ ∧ b ≠ ⊤ := by
  induction a using recTopCoe <;> induction b using recTopCoe <;>
    simp only [← coe_sub, coe_ne_top, sub_top, zero_ne_top, coe_ne_top, top_sub_coe, false_and,
      Ne.def]
#align with_top.sub_eq_top_iff WithTop.sub_eq_top_iff

theorem map_sub [Sub β] [Zero β] {f : α → β} (h : ∀ x y, f (x - y) = f x - f y) (h₀ : f 0 = 0) :
    ∀ x y : WithTop α, (x - y).map f = x.map f - y.map f
  | _, ⊤ => by simp only [h₀, sub_top, WithTop.map_zero, coe_zero, map_top]
  | ⊤, (x : α) => rfl
  | (x : α), (y : α) => by simp only [← coe_sub, map_coe, h]
#align with_top.map_sub WithTop.map_sub

end

variable [CanonicallyOrderedAddMonoid α] [Sub α] [OrderedSub α]

instance : OrderedSub (WithTop α) := by
  constructor
  rintro x y z
  induction y using WithTop.recTopCoe; · simp
  induction x using WithTop.recTopCoe; · simp
  induction z using WithTop.recTopCoe; · simp
  norm_cast; exact tsub_le_iff_right

end WithTop
```
