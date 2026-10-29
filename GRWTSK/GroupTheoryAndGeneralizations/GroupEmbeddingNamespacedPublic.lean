-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulLeftEmbedding.Variant4595b3fdbfca306e428c230d4b701bee13eba66a74be3bd061cd2e9a4ad9c260","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4595b3fdbfca306e428c230d4b701bee13eba66a74be3bd061cd2e9a4ad9c260","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulLeftEmbedding.Variant4595b3fdbfca306e428c230d4b701bee13eba66a74be3bd061cd2e9a4ad9c260","mathematical_subject":"Algebra.Groups","original_sha256":"4595b3fdbfca306e428c230d4b701bee13eba66a74be3bd061cd2e9a4ad9c260","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Embedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
module

public import Mathlib.Logic.Embedding.Basic
public import Mathlib.Algebra.Group.Semigroup

/-!
# The embedding of a cancellative semigroup into itself by multiplication by a fixed element.
-/


namespace GRWTSK.Algebra.GroupTheory.MulLeftEmbedding.Variant4595b3fdbfca306e428c230d4b701bee13eba66a74be3bd061cd2e9a4ad9c260

@[expose] public section

assert_not_exists MonoidWithZero DenselyOrdered

variable {G : Type*}

section LeftOrRightCancelSemigroup

/-- If left-multiplication by any element is cancellative, left-multiplication by `g` is an
embedding. -/
@[to_additive (attr := simps (attr := grind =))
/-- If left-addition by any element is cancellative, left-addition by `g` is an embedding. -/]
def mulLeftEmbedding [Mul G] [IsLeftCancelMul G] (g : G) : G ↪ G where
  toFun h := g * h
  inj' := mul_right_injective g

/-- If right-multiplication by any element is cancellative, right-multiplication by `g` is an
embedding. -/
@[to_additive (attr := simps (attr := grind =))
/-- If right-addition by any element is cancellative, right-addition by `g` is an embedding. -/]
def mulRightEmbedding [Mul G] [IsRightCancelMul G] (g : G) : G ↪ G where
  toFun h := h * g
  inj' := mul_left_injective g

@[to_additive]
theorem mulLeftEmbedding_eq_mulRightEmbedding [CommMagma G] [IsCancelMul G] (g : G) :
    mulLeftEmbedding g = mulRightEmbedding g := by
  ext
  exact mul_comm _ _

end LeftOrRightCancelSemigroup
