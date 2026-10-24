# Complete source: GRWTSK.Algebra.GroupTheory.MulOpposite.Variant302be5faf469e1106578f1cc692121c9967e8e571c8c22039ddc76f068079ead

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78d1d494f18c7c79789f5d9feb9831d974bff0f8` · SHA-256 `c60ff2a406bcabcd05be92cd5ce076d304ed35651f5be84b4d3c4feb9f337213`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Opposite.Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Opposite.Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e","mathematical_subject":"Algebra.Groups","original_sha256":"5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/GroupTheory/Subgroup/MulOpposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Alex Kontorovich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex Kontorovich
-/
import Mathlib.GroupTheory.Subgroup.Actions


namespace GRWTSK.Algebra.GroupTheory.Opposite.Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e

#align_import group_theory.subgroup.mul_opposite from "leanprover-community/mathlib"@"f93c11933efbc3c2f0299e47b8ff83e9b539cbf6"

/-!
# Mul-opposite subgroups

## Tags
subgroup, subgroups

-/


variable {G : Type*} [Group G]

namespace Subgroup

/-- A subgroup `H` of `G` determines a subgroup `H.opposite` of the opposite group `Gᵐᵒᵖ`. -/
@[to_additive "An additive subgroup `H` of `G` determines an additive subgroup `H.opposite` of the
 opposite additive group `Gᵃᵒᵖ`."]
def opposite : Subgroup G ≃ Subgroup Gᵐᵒᵖ
    where
  toFun H :=
    { carrier := MulOpposite.unop ⁻¹' (H : Set G)
      one_mem' := H.one_mem
      mul_mem' := fun ha hb => H.mul_mem hb ha
      inv_mem' := H.inv_mem }
  invFun H :=
    { carrier := MulOpposite.op ⁻¹' (H : Set Gᵐᵒᵖ)
      one_mem' := H.one_mem
      mul_mem' := fun ha hb => H.mul_mem hb ha
      inv_mem' := H.inv_mem }
  left_inv _ := SetLike.coe_injective rfl
  right_inv _ := SetLike.coe_injective rfl
#align subgroup.opposite Subgroup.opposite
#align add_subgroup.opposite AddSubgroup.opposite

/-- Bijection between a subgroup `H` and its opposite. -/
@[to_additive (attr := simps!) "Bijection between an additive subgroup `H` and its opposite."]
def oppositeEquiv (H : Subgroup G) : H ≃ opposite H :=
  MulOpposite.opEquiv.subtypeEquiv fun _ => Iff.rfl
#align subgroup.opposite_equiv Subgroup.oppositeEquiv
#align add_subgroup.opposite_equiv AddSubgroup.oppositeEquiv
#align subgroup.opposite_equiv_symm_apply_coe Subgroup.oppositeEquiv_symm_apply_coe

@[to_additive]
instance (H : Subgroup G) [Encodable H] : Encodable (opposite H) :=
  Encodable.ofEquiv H H.oppositeEquiv.symm

@[to_additive]
instance (H : Subgroup G) [Countable H] : Countable (opposite H) :=
  Countable.of_equiv H H.oppositeEquiv

@[to_additive]
theorem smul_opposite_mul {H : Subgroup G} (x g : G) (h : opposite H) :
    h • (g * x) = g * h • x :=
  mul_assoc _ _ _
#align subgroup.smul_opposite_mul Subgroup.smul_opposite_mul
#align add_subgroup.vadd_opposite_add AddSubgroup.vadd_opposite_add

end Subgroup
```
