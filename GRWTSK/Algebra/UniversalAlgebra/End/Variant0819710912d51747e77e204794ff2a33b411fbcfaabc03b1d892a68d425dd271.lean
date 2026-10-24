-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Faithful.Variant00c9176c4cd27ee737bb1d8b14645f8242ad987ac24eaa1b294f3f574d2223fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00c9176c4cd27ee737bb1d8b14645f8242ad987ac24eaa1b294f3f574d2223fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Faithful.Variant00c9176c4cd27ee737bb1d8b14645f8242ad987ac24eaa1b294f3f574d2223fe","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"00c9176c4cd27ee737bb1d8b14645f8242ad987ac24eaa1b294f3f574d2223fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/Action/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Action.Faithful
public import Mathlib.Algebra.Order.Group.End
public import Mathlib.Order.RelIso.Basic

/-!
# Tautological action by relation automorphisms
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Faithful.Variant00c9176c4cd27ee737bb1d8b14645f8242ad987ac24eaa1b294f3f574d2223fe

public section

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
