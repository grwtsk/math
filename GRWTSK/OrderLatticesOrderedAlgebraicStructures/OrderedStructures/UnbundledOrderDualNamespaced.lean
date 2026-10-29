-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Synonym.Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Synonym.Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/Unbundled/OrderDual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Synonym
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs

/-! # Unbundled ordered monoid structures on the order dual. -/


namespace GRWTSK.Algebra.UniversalAlgebra.Synonym.Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa

universe u

variable {α : Type u}

open Function

namespace OrderDual

@[to_additive]
instance mulLeftReflectLE [LE α] [Mul α] [c : MulLeftReflectLE α] : MulLeftReflectLE αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulLeftMono [LE α] [Mul α] [c : MulLeftMono α] : MulLeftMono αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulRightReflectLE [LE α] [Mul α] [c : MulRightReflectLE α] : MulRightReflectLE αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulRightMono [LE α] [Mul α] [c : MulRightMono α] : MulRightMono αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulLeftReflectLT [LT α] [Mul α] [c : MulLeftReflectLT α] : MulLeftReflectLT αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulLeftStrictMono [LT α] [Mul α] [c : MulLeftStrictMono α] : MulLeftStrictMono αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulRightReflectLT [LT α] [Mul α] [c : MulRightReflectLT α] : MulRightReflectLT αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulRightStrictMono [LT α] [Mul α] [c : MulRightStrictMono α] : MulRightStrictMono αᵒᵈ :=
  ⟨c.1.flip⟩

end OrderDual
