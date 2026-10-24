-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Pi.Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Pi.Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/Germ/OrderedMonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Abhimanyu Pallavi Sudhir
-/
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Order.Filter.Germ.Basic

/-!
# Ordered monoid instances on the space of germs of a function at a filter

For each of the following structures we prove that if `β` has this structure, then so does
`Germ l β`:

* `OrderedCancelCommMonoid` and `OrderedCancelAddCommMonoid`.

## Tags

filter, germ
-/


namespace GRWTSK.Topology.GeneralTopology.Pi.Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50

namespace Filter.Germ

variable {α : Type*} {β : Type*} {l : Filter α}

@[to_additive]
instance instIsOrderedMonoid [CommMonoid β] [PartialOrder β] [IsOrderedMonoid β] :
    IsOrderedMonoid (Germ l β) where
  mul_le_mul_left f g := inductionOn₂ f g fun _ _ H h ↦ inductionOn h fun _ ↦ H.mono
    fun _ H ↦ mul_le_mul_left' H _

@[to_additive]
instance instIsOrderedCancelMonoid [CommMonoid β] [PartialOrder β] [IsOrderedCancelMonoid β] :
    IsOrderedCancelMonoid (Germ l β) where
  le_of_mul_le_mul_left f g h := inductionOn₃ f g h fun _ _ _ H ↦ H.mono
    fun _ ↦ le_of_mul_le_mul_left'

@[to_additive]
instance instCanonicallyOrderedMul [Mul β] [LE β] [CanonicallyOrderedMul β] :
    CanonicallyOrderedMul (Germ l β) where
  le_self_mul x y := inductionOn₂ x y fun _ _ ↦ Eventually.of_forall fun _ ↦ le_self_mul

end Filter.Germ
