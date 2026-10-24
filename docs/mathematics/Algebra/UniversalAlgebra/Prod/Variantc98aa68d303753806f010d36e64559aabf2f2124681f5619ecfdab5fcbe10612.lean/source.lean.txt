-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Prod.Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Prod.Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Monoid/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Group.Prod
import Mathlib.Algebra.Order.Monoid.Cancel.Defs
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Data.Prod.Lex


namespace GRWTSK.Algebra.UniversalAlgebra.Prod.Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482

#align_import algebra.order.monoid.prod from "leanprover-community/mathlib"@"2258b40dacd2942571c8ce136215350c702dc78f"

/-! # Products of ordered monoids -/

namespace Prod

variable {α β M N : Type*}

@[to_additive]
instance [OrderedCommMonoid α] [OrderedCommMonoid β] : OrderedCommMonoid (α × β) where
  mul_le_mul_left _ _ h _ := ⟨mul_le_mul_left' h.1 _, mul_le_mul_left' h.2 _⟩

@[to_additive]
instance instOrderedCancelCommMonoid [OrderedCancelCommMonoid M] [OrderedCancelCommMonoid N] :
    OrderedCancelCommMonoid (M × N) :=
  { (inferInstance : OrderedCommMonoid (M × N)) with
    le_of_mul_le_mul_left :=
      fun _ _ _ h ↦ ⟨le_of_mul_le_mul_left' h.1, le_of_mul_le_mul_left' h.2⟩ }

@[to_additive]
instance [LE α] [LE β] [Mul α] [Mul β] [ExistsMulOfLE α] [ExistsMulOfLE β] :
    ExistsMulOfLE (α × β) :=
  ⟨fun h =>
    let ⟨c, hc⟩ := exists_mul_of_le h.1
    let ⟨d, hd⟩ := exists_mul_of_le h.2
    ⟨(c, d), ext hc hd⟩⟩

@[to_additive]
instance [CanonicallyOrderedMonoid α] [CanonicallyOrderedMonoid β] :
    CanonicallyOrderedMonoid (α × β) :=
  { (inferInstance : OrderedCommMonoid _), (inferInstance : OrderBot _),
    (inferInstance : ExistsMulOfLE _) with
      le_self_mul := fun _ _ ↦ ⟨le_self_mul, le_self_mul⟩ }

namespace Lex

@[to_additive]
instance orderedCommMonoid [OrderedCommMonoid α]
    [CovariantClass α α (· * ·) (· < ·)] [OrderedCommMonoid β] :
    OrderedCommMonoid (α ×ₗ β) where
  mul_le_mul_left x y hxy z := ((le_iff _ _).1 hxy).elim
    (fun hxy => left _ _ <| mul_lt_mul_left' hxy _)
    (fun hxy => (le_iff _ _).2 <| Or.inr ⟨by rw [hxy.1], mul_le_mul_left' hxy.2 _⟩)

@[to_additive]
instance orderedCancelCommMonoid [OrderedCancelCommMonoid α] [OrderedCancelCommMonoid β] :
    OrderedCancelCommMonoid (α ×ₗ β) where
  mul_le_mul_left _ _ := mul_le_mul_left'
  le_of_mul_le_mul_left _ _ _ hxyz := ((le_iff _ _).1 hxyz).elim
    (fun hxy => left _ _ <| lt_of_mul_lt_mul_left' hxy)
    (fun hxy => (le_iff _ _).2 <| Or.inr ⟨mul_left_cancel hxy.1, le_of_mul_le_mul_left' hxy.2⟩)

@[to_additive]
instance linearOrderedCancelCommMonoid [LinearOrderedCancelCommMonoid α]
    [LinearOrderedCancelCommMonoid β] : LinearOrderedCancelCommMonoid (α ×ₗ β) where
  __ := (inferInstance : LinearOrder (α ×ₗ β))
  __ := (inferInstance : OrderedCancelCommMonoid (α ×ₗ β))

end Lex

end Prod
