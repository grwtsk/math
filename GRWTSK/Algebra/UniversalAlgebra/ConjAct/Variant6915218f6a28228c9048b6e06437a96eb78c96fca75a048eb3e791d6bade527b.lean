-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Field.Variantdd96b6a2538c4594814b0740e2e5efe38cbb0b83b921d744592a0207d866c66b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd96b6a2538c4594814b0740e2e5efe38cbb0b83b921d744592a0207d866c66b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Field.Variantdd96b6a2538c4594814b0740e2e5efe38cbb0b83b921d744592a0207d866c66b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dd96b6a2538c4594814b0740e2e5efe38cbb0b83b921d744592a0207d866c66b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Field/Action/ConjAct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Action.ConjAct
import Mathlib.Algebra.GroupWithZero.Action.Defs

/-!
# Conjugation action on a field on itself
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Field.Variantdd96b6a2538c4594814b0740e2e5efe38cbb0b83b921d744592a0207d866c66b

namespace ConjAct

variable {K : Type*} [DivisionRing K]

instance distribMulAction₀ : DistribMulAction (ConjAct K) K :=
  { ConjAct.mulAction₀ with
    smul_zero := by simp [smul_def]
    smul_add := by simp [smul_def, mul_add, add_mul] }

end ConjAct
