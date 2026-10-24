# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e71bb6ee575359f5f8a9194f1244d7ffc7ebf190` · SHA-256 `c408cee4508d989d6f42310fbcf64b49c71cc7fc7cf5228adb63d590c5bf1d86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Sub.Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Sub.Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Sub/WithTop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop

/-!
# Lemma about subtraction in ordered monoids with a top element adjoined.

This file introduces a subtraction on `WithTop α` when `α` has a subtraction and a bottom element,
given by `x - ⊤ = ⊥` and `⊤ - x = ⊤`. This will be instantiated mostly for `ℕ∞` and `ℝ≥0∞`, where
the bottom element is zero.

Note that there is another subtraction on objects of the form `WithTop α` in the file
`Mathlib/Algebra/Order/Group/WithTop.lean`, setting `-⊤ = ⊤` as this corresponds to the
additivization of the usual convention `0⁻¹ = 0` and is relevant in valuation theory. Since this
other instance is only registered for `LinearOrderedAddCommGroup α` (which doesn't have a bottom
element, unless the group is trivial), this shouldn't create diamonds.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Sub.Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba

variable {α β : Type*}

namespace WithTop

section

variable [Sub α] [Bot α]

/-- If `α` has a subtraction and a bottom element, we can extend the subtraction to `WithTop α`, by
setting `x - ⊤ = ⊥` and `⊤ - x = ⊤`. -/
protected def sub : ∀ _ _ : WithTop α, WithTop α
  | _, ⊤ => (⊥ : α)
  | ⊤, (x : α) => ⊤
  | (x : α), (y : α) => (x - y : α)

instance : Sub (WithTop α) :=
  ⟨WithTop.sub⟩

@[simp, norm_cast]
theorem coe_sub {a b : α} : (↑(a - b) : WithTop α) = ↑a - ↑b :=
  rfl

@[simp]
theorem top_sub_coe {a : α} : (⊤ : WithTop α) - a = ⊤ :=
  rfl

@[simp]
theorem sub_top {a : WithTop α} : a - ⊤ = (⊥ : α) := by cases a <;> rfl

@[simp] theorem sub_eq_top_iff {a b : WithTop α} : a - b = ⊤ ↔ a = ⊤ ∧ b ≠ ⊤ := by
  induction a <;> induction b <;>
    simp only [← coe_sub, coe_ne_top, sub_top, zero_ne_top, top_sub_coe, false_and, Ne,
      not_true_eq_false, not_false_eq_true, and_false, and_self]

lemma sub_ne_top_iff {a b : WithTop α} : a - b ≠ ⊤ ↔ a ≠ ⊤ ∨ b = ⊤ := by simp [or_iff_not_imp_left]

protected
theorem map_sub [Sub β] [Bot β] {f : α → β} (h : ∀ x y, f (x - y) = f x - f y) (h₀ : f ⊥ = ⊥) :
    ∀ x y : WithTop α, (x - y).map f = x.map f - y.map f
  | _, ⊤ => by simp only [sub_top, map_coe, h₀, map_top]
  | ⊤, (x : α) => rfl
  | (x : α), (y : α) => by simp only [← coe_sub, map_coe, h]

end

variable [Add α] [LE α] [OrderBot α] [Sub α] [OrderedSub α]

instance : OrderedSub (WithTop α) := by
  constructor
  rintro x y z
  cases y
  · cases z <;> simp
  cases x
  · simp
  cases z
  · simp
  norm_cast
  exact tsub_le_iff_right

end WithTop
```
