-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Op.Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Op.Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Congruence/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/

import Mathlib.Algebra.Opposites
import Mathlib.GroupTheory.Congruence.Defs

/-!
# Congruences on the opposite of a group

This file defines the order isomorphism between the congruences on a group `G` and the congruences
on the opposite group `Gᵒᵖ`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.Op.Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338

variable {M : Type*} [Mul M]

namespace Con

/-- If `c` is a multiplicative congruence on `M`, then `(a, b) ↦ c b.unop a.unop` is a
multiplicative congruence on `Mᵐᵒᵖ`. -/
@[to_additive "If `c` is an additive congruence on `M`, then `(a, b) ↦ c b.unop a.unop` is an
additive congruence on `Mᵃᵒᵖ`"]
def op (c : Con M) : Con Mᵐᵒᵖ where
  r a b := c b.unop a.unop
  iseqv :=
  { refl := fun a ↦ c.refl a.unop
    symm := c.symm
    trans := fun h1 h2 ↦ c.trans h2 h1 }
  mul' h1 h2 := c.mul h2 h1

/-- If `c` is a multiplicative congruence on `Mᵐᵒᵖ`, then `(a, b) ↦ c bᵒᵖ aᵒᵖ` is a multiplicative
congruence on `M`. -/
@[to_additive "If `c` is an additive congruence on `Mᵃᵒᵖ`, then `(a, b) ↦ c bᵒᵖ aᵒᵖ` is an additive
congruence on `M`"]
def unop (c : Con Mᵐᵒᵖ) : Con M where
  r a b := c (.op b) (.op a)
  iseqv :=
  { refl := fun a ↦ c.refl (.op a)
    symm := c.symm
    trans := fun h1 h2 ↦ c.trans h2 h1 }
  mul' h1 h2 := c.mul h2 h1

/--
The multiplicative congruences on `M` bijects to the multiplicative congruences on `Mᵐᵒᵖ`
-/
@[to_additive (attr := simps) "The additive congruences on `M` bijects to the additive congruences
on `Mᵃᵒᵖ`"]
def orderIsoOp : Con M ≃o Con Mᵐᵒᵖ where
  toFun := op
  invFun := unop
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' {c d} := by rw [le_def, le_def]; constructor <;> intro h _ _ h' <;> exact h h'

end Con
