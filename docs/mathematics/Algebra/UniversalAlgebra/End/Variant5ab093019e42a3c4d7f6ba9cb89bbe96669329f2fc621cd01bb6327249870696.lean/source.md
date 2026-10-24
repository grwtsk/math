# Complete source: GRWTSK.Algebra.UniversalAlgebra.End.Variant5ab093019e42a3c4d7f6ba9cb89bbe96669329f2fc621cd01bb6327249870696

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9b76bfa10f8655b6f7b2f6a4b34a7a12fdb4e6f` · SHA-256 `e711dfc38dafe27abff2df0ee41a1567f246159277e13f442daec03822057911`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Faithful.Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Faithful.Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"cbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Action/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Faithful
import Mathlib.Algebra.Order.Group.End
import Mathlib.Order.RelIso.Basic

/-!
# Tautological action by relation automorphisms
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Faithful.Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb

assert_not_exists MonoidWithZero

namespace RelHom
variable {α : Type*} {r : α → α → Prop}

/-- The tautological action by `r →r r` on `α`. -/
instance applyMulAction : MulAction (r →r r) α where
  smul := (⇑)
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp] lemma smul_def (f : r →r r) (a : α) : f • a = f a := rfl

instance apply_faithfulSMul : FaithfulSMul (r →r r) α where eq_of_smul_eq_smul h := RelHom.ext h

end RelHom

namespace RelEmbedding
variable {α : Type*} {r : α → α → Prop}

/-- The tautological action by `r ↪r r` on `α`. -/
instance applyMulAction : MulAction (r ↪r r) α where
  smul := (⇑)
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp] lemma smul_def (f : r ↪r r) (a : α) : f • a = f a := rfl

instance apply_faithfulSMul : FaithfulSMul (r ↪r r) α where eq_of_smul_eq_smul h := ext h

end RelEmbedding

namespace RelIso
variable {α : Type*} {r : α → α → Prop}

/-- The tautological action by `r ≃r r` on `α`. -/
instance applyMulAction : MulAction (r ≃r r) α where
  smul := (⇑)
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp] lemma smul_def (f : r ≃r r) (a : α) : f • a = f a := rfl

instance apply_faithfulSMul : FaithfulSMul (r ≃r r) α where eq_of_smul_eq_smul h := RelIso.ext h

end RelIso
```
