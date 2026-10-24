# Complete source: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4903e6815fe87a4de8411594e401031a5d101f5` · SHA-256 `15567e3e3076ca0372ae0a489fcebd0ff3256c26234e3b20b56d6e86afeec9d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Prod.Variant92ef96040e779ca8b59e4605fc455e734d4d95d8948121fbef2bf378290f27aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92ef96040e779ca8b59e4605fc455e734d4d95d8948121fbef2bf378290f27aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Prod.Variant92ef96040e779ca8b59e4605fc455e734d4d95d8948121fbef2bf378290f27aa","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"92ef96040e779ca8b59e4605fc455e734d4d95d8948121fbef2bf378290f27aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Group.Prod
import Mathlib.Algebra.Order.Group.Synonym
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Data.Prod.Lex

/-! # Products of ordered monoids -/


namespace GRWTSK.Algebra.UniversalAlgebra.Prod.Variant92ef96040e779ca8b59e4605fc455e734d4d95d8948121fbef2bf378290f27aa

assert_not_exists MonoidWithZero

namespace Prod

variable {α β : Type*}

@[to_additive]
instance [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α]
    [CommMonoid β] [PartialOrder β] [IsOrderedMonoid β] : IsOrderedMonoid (α × β) where
  mul_le_mul_left _ _ h _ := ⟨mul_le_mul_left' h.1 _, mul_le_mul_left' h.2 _⟩

@[to_additive]
instance instIsOrderedCancelMonoid
    [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α]
    [CommMonoid β] [PartialOrder β] [IsOrderedCancelMonoid β] :
    IsOrderedCancelMonoid (α × β) :=
  { le_of_mul_le_mul_left :=
      fun _ _ _ h ↦ ⟨le_of_mul_le_mul_left' h.1, le_of_mul_le_mul_left' h.2⟩ }

@[to_additive]
instance [LE α] [LE β] [Mul α] [Mul β] [ExistsMulOfLE α] [ExistsMulOfLE β] :
    ExistsMulOfLE (α × β) :=
  ⟨fun h =>
    let ⟨c, hc⟩ := exists_mul_of_le h.1
    let ⟨d, hd⟩ := exists_mul_of_le h.2
    ⟨(c, d), Prod.ext hc hd⟩⟩

@[to_additive]
instance [Mul α] [LE α] [CanonicallyOrderedMul α]
    [Mul β] [LE β] [CanonicallyOrderedMul β] :
    CanonicallyOrderedMul (α × β) :=
  { (inferInstance : ExistsMulOfLE _) with
      le_self_mul := fun _ _ ↦ le_def.mpr ⟨le_self_mul, le_self_mul⟩ }

namespace Lex

@[to_additive]
instance isOrderedMonoid [CommMonoid α] [PartialOrder α] [MulLeftStrictMono α]
    [CommMonoid β] [PartialOrder β] [IsOrderedMonoid β] :
    IsOrderedMonoid (α ×ₗ β) where
  mul_le_mul_left _ _ hxy z := (le_iff.1 hxy).elim
    (fun hxy => left _ _ <| mul_lt_mul_left' hxy _)
    (fun hxy => le_iff.2 <|
      Or.inr ⟨by simp only [ofLex_mul, fst_mul, hxy.1], mul_le_mul_left' hxy.2 _⟩)

@[to_additive]
instance isOrderedCancelMonoid [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α]
    [CommMonoid β] [PartialOrder β] [IsOrderedCancelMonoid β] :
    IsOrderedCancelMonoid (α ×ₗ β) where
  mul_le_mul_left _ _ := mul_le_mul_left'
  le_of_mul_le_mul_left _ _ _ hxyz := (le_iff.1 hxyz).elim
    (fun hxy => left _ _ <| lt_of_mul_lt_mul_left' hxy)
    (fun hxy => le_iff.2 <| Or.inr ⟨mul_left_cancel hxy.1, le_of_mul_le_mul_left' hxy.2⟩)

end Lex

end Prod
```
