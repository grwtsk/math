-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Synonym.Variant9dda33ed3709580ce52d28826e02a7238c1344f298ec5543410cb8f0b2a276cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9dda33ed3709580ce52d28826e02a7238c1344f298ec5543410cb8f0b2a276cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Synonym.Variant9dda33ed3709580ce52d28826e02a7238c1344f298ec5543410cb8f0b2a276cf","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"9dda33ed3709580ce52d28826e02a7238c1344f298ec5543410cb8f0b2a276cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Monoid/OrderDual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
module

public import Mathlib.Algebra.Order.Group.Synonym
public import Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual
public import Mathlib.Algebra.Order.Monoid.Defs

/-! # Ordered monoid structures on the order dual. -/


namespace GRWTSK.Algebra.UniversalAlgebra.Synonym.Variant9dda33ed3709580ce52d28826e02a7238c1344f298ec5543410cb8f0b2a276cf

public section

universe u

variable {α : Type u}

namespace OrderDual

@[to_additive]
instance isOrderedMonoid [CommMonoid α] [Preorder α] [IsOrderedMonoid α] :
    IsOrderedMonoid αᵒᵈ where
  mul_le_mul_left _ _ h c := mul_le_mul_left h c

@[to_additive]
instance isOrderedCancelMonoid [CommMonoid α] [Preorder α] [IsOrderedCancelMonoid α] :
    IsOrderedCancelMonoid αᵒᵈ where
  le_of_mul_le_mul_left _ _ _ := le_of_mul_le_mul_left'

end OrderDual
