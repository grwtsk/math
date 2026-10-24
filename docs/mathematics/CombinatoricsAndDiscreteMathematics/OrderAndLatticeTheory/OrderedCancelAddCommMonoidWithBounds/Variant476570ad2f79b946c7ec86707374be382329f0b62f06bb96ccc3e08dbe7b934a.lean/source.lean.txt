-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monoid.Variantb0142197b3d4488195b29ee5e63c1cfc12e96a65c560cff53b3509fc528e096e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0142197b3d4488195b29ee5e63c1cfc12e96a65c560cff53b3509fc528e096e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Monoid.Variantb0142197b3d4488195b29ee5e63c1cfc12e96a65c560cff53b3509fc528e096e","mathematical_subject":"Algebra.OrderTheory","original_sha256":"b0142197b3d4488195b29ee5e63c1cfc12e96a65c560cff53b3509fc528e096e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Counterexamples/OrderedCancelAddCommMonoidWithBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Martin Dvorak. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Martin Dvorak
-/
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Order.BoundedOrder.Lattice

/-!
# Do not combine OrderedCancelAddCommMonoid with BoundedOrder

This file shows that combining `OrderedCancelAddCommMonoid` with `BoundedOrder` is not a good idea,
as such a structure must be trivial (`⊥ = x = ⊤` for all `x`).
The same applies to any superclasses, e.g. combining `StrictOrderedSemiring` with `CompleteLattice`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monoid.Variantb0142197b3d4488195b29ee5e63c1cfc12e96a65c560cff53b3509fc528e096e

example {α : Type*} [AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α]
    [BoundedOrder α] [Nontrivial α] : False :=
  have top_pos := pos_of_lt_add_right (bot_le.trans_lt (add_lt_add_left bot_lt_top (⊥ : α)))
  have top_add_top_lt_self := lt_add_of_le_of_pos (@le_top _ _ _ (⊤ + ⊤)) top_pos
  top_add_top_lt_self.false
