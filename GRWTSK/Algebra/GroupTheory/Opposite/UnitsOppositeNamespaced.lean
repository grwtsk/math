-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.UnitsOpEquiv.Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.UnitsOpEquiv.Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6","mathematical_subject":"Algebra.Groups","original_sha256":"d2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Units/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Algebra.Group.Opposite
import Mathlib.Algebra.Group.Units.Defs

/-!
# Units in multiplicative and additive opposites
-/


namespace GRWTSK.Algebra.GroupTheory.UnitsOpEquiv.Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6

assert_not_exists MonoidWithZero DenselyOrdered

variable {α : Type*}

open MulOpposite

/-- The units of the opposites are equivalent to the opposites of the units. -/
@[to_additive
      "The additive units of the additive opposites are equivalent to the additive opposites
      of the additive units."]
def Units.opEquiv {M} [Monoid M] : Mᵐᵒᵖˣ ≃* Mˣᵐᵒᵖ where
  toFun u := op ⟨unop u, unop ↑u⁻¹, op_injective u.4, op_injective u.3⟩
  invFun := MulOpposite.rec' fun u => ⟨op ↑u, op ↑u⁻¹, unop_injective <| u.4, unop_injective u.3⟩
  map_mul' _ _ := unop_injective <| Units.ext <| rfl
  left_inv x := Units.ext <| by simp
  right_inv x := unop_injective <| Units.ext <| by rfl

@[to_additive (attr := simp)]
theorem Units.coe_unop_opEquiv {M} [Monoid M] (u : Mᵐᵒᵖˣ) :
    ((Units.opEquiv u).unop : M) = unop (u : Mᵐᵒᵖ) :=
  rfl

@[to_additive (attr := simp)]
theorem Units.coe_opEquiv_symm {M} [Monoid M] (u : Mˣᵐᵒᵖ) :
    (Units.opEquiv.symm u : Mᵐᵒᵖ) = op (u.unop : M) :=
  rfl

@[to_additive]
nonrec theorem IsUnit.op {M} [Monoid M] {m : M} (h : IsUnit m) : IsUnit (op m) :=
  let ⟨u, hu⟩ := h
  hu ▸ ⟨Units.opEquiv.symm (op u), rfl⟩

@[to_additive]
nonrec theorem IsUnit.unop {M} [Monoid M] {m : Mᵐᵒᵖ} (h : IsUnit m) : IsUnit (unop m) :=
  let ⟨u, hu⟩ := h
  hu ▸ ⟨unop (Units.opEquiv u), rfl⟩

@[to_additive (attr := simp)]
theorem isUnit_op {M} [Monoid M] {m : M} : IsUnit (op m) ↔ IsUnit m :=
  ⟨IsUnit.unop, IsUnit.op⟩

@[to_additive (attr := simp)]
theorem isUnit_unop {M} [Monoid M] {m : Mᵐᵒᵖ} : IsUnit (unop m) ↔ IsUnit m :=
  ⟨IsUnit.op, IsUnit.unop⟩
