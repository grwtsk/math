# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52b2cf879a9363cb6170188db7d523e15ed4a013` · SHA-256 `cc9cc5e1b13eea46b5fa3e9dc345ff1a4377140d35848097dd8eba99949c84b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.AddHomLeMapTsub.Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.AddHomLeMapTsub.Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a","mathematical_subject":"Algebra.OrderTheory","original_sha256":"ca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Sub/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Order.Hom.Basic
import Mathlib.Algebra.Hom.Equiv.Basic
import Mathlib.Algebra.Ring.Basic
import Mathlib.Algebra.Order.Sub.Defs


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.AddHomLeMapTsub.Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a

#align_import algebra.order.sub.basic from "leanprover-community/mathlib"@"10b4e499f43088dd3bb7b5796184ad5216648ab1"

/-!
# Additional results about ordered Subtraction

-/


variable {α β : Type*}

section Add

variable [Preorder α] [Add α] [Sub α] [OrderedSub α] {a b c d : α}

theorem AddHom.le_map_tsub [Preorder β] [Add β] [Sub β] [OrderedSub β] (f : AddHom α β)
    (hf : Monotone f) (a b : α) : f a - f b ≤ f (a - b) := by
  rw [tsub_le_iff_right, ← f.map_add]
  exact hf le_tsub_add
#align add_hom.le_map_tsub AddHom.le_map_tsub

theorem le_mul_tsub {R : Type*} [Distrib R] [Preorder R] [Sub R] [OrderedSub R]
    [CovariantClass R R (· * ·) (· ≤ ·)] {a b c : R} : a * b - a * c ≤ a * (b - c) :=
  (AddHom.mulLeft a).le_map_tsub (monotone_id.const_mul' a) _ _
#align le_mul_tsub le_mul_tsub

theorem le_tsub_mul {R : Type*} [CommSemiring R] [Preorder R] [Sub R] [OrderedSub R]
    [CovariantClass R R (· * ·) (· ≤ ·)] {a b c : R} : a * c - b * c ≤ (a - b) * c := by
  simpa only [mul_comm _ c] using le_mul_tsub
#align le_tsub_mul le_tsub_mul

end Add

/-- An order isomorphism between types with ordered subtraction preserves subtraction provided that
it preserves addition. -/
theorem OrderIso.map_tsub {M N : Type*} [Preorder M] [Add M] [Sub M] [OrderedSub M]
    [PartialOrder N] [Add N] [Sub N] [OrderedSub N] (e : M ≃o N)
    (h_add : ∀ a b, e (a + b) = e a + e b) (a b : M) : e (a - b) = e a - e b := by
  let e_add : M ≃+ N := { e with map_add' := h_add }
  refine' le_antisymm _ (e_add.toAddHom.le_map_tsub e.monotone a b)
  suffices e (e.symm (e a) - e.symm (e b)) ≤ e (e.symm (e a - e b)) by simpa
  exact e.monotone (e_add.symm.toAddHom.le_map_tsub e.symm.monotone _ _)
#align order_iso.map_tsub OrderIso.map_tsub

/-! ### Preorder -/


section Preorder

variable [Preorder α]

variable [AddCommMonoid α] [Sub α] [OrderedSub α] {a b c d : α}

theorem AddMonoidHom.le_map_tsub [Preorder β] [AddCommMonoid β] [Sub β] [OrderedSub β] (f : α →+ β)
    (hf : Monotone f) (a b : α) : f a - f b ≤ f (a - b) :=
  f.toAddHom.le_map_tsub hf a b
#align add_monoid_hom.le_map_tsub AddMonoidHom.le_map_tsub

end Preorder
```
