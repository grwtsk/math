# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Hom.Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef8a96e76bb6c69a3e2a642cbfa17ee85ada8893` · SHA-256 `4f99fa5eff48f57976f2030201d28ffb60cc1823c769b3b8cbfb9d1b77a24396`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.AddHomLeMapTsub.Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.AddHomLeMapTsub.Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a","mathematical_subject":"Algebra.OrderTheory","original_sha256":"1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Sub/Unbundled/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Ring.Basic
import Mathlib.Order.Hom.Basic
/-!
# Lemmas about subtraction in unbundled canonically ordered monoids
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.AddHomLeMapTsub.Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a

variable {α β : Type*}

section Add

variable [Preorder α] [Add α] [Sub α] [OrderedSub α]

theorem AddHom.le_map_tsub [Preorder β] [Add β] [Sub β] [OrderedSub β] (f : AddHom α β)
    (hf : Monotone f) (a b : α) : f a - f b ≤ f (a - b) := by
  rw [tsub_le_iff_right, ← f.map_add]
  exact hf le_tsub_add

theorem le_mul_tsub {R : Type*} [Distrib R] [Preorder R] [Sub R] [OrderedSub R]
    [MulLeftMono R] {a b c : R} : a * b - a * c ≤ a * (b - c) :=
  (AddHom.mulLeft a).le_map_tsub (monotone_id.const_mul' a) _ _

theorem le_tsub_mul {R : Type*} [NonUnitalCommSemiring R] [Preorder R] [Sub R] [OrderedSub R]
    [MulLeftMono R] {a b c : R} : a * c - b * c ≤ (a - b) * c := by
  simpa only [mul_comm _ c] using le_mul_tsub

end Add

/-- An order isomorphism between types with ordered subtraction preserves subtraction provided that
it preserves addition. -/
theorem OrderIso.map_tsub {M N : Type*} [Preorder M] [Add M] [Sub M] [OrderedSub M]
    [PartialOrder N] [Add N] [Sub N] [OrderedSub N] (e : M ≃o N)
    (h_add : ∀ a b, e (a + b) = e a + e b) (a b : M) : e (a - b) = e a - e b := by
  let e_add : M ≃+ N := { e with map_add' := h_add }
  refine le_antisymm ?_ (e_add.toAddHom.le_map_tsub e.monotone a b)
  suffices e (e.symm (e a) - e.symm (e b)) ≤ e (e.symm (e a - e b)) by simpa
  exact e.monotone (e_add.symm.toAddHom.le_map_tsub e.symm.monotone _ _)

/-! ### Preorder -/


section Preorder

variable [Preorder α]
variable [AddCommMonoid α] [Sub α] [OrderedSub α]

theorem AddMonoidHom.le_map_tsub [Preorder β] [AddZeroClass β] [Sub β] [OrderedSub β] (f : α →+ β)
    (hf : Monotone f) (a b : α) : f a - f b ≤ f (a - b) :=
  f.toAddHom.le_map_tsub hf a b

end Preorder
```
