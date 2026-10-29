-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FieldTheory.Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Field.Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Field/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.GroupWithZero.ULift
public import Mathlib.Algebra.Ring.ULift

/-!
# Field instances for `ULift`

This file defines instances for fields, semifields, and related structures on `ULift` types.

(Recall `ULift α` is just a "copy" of a type `α` in a higher universe.)
-/


namespace GRWTSK.Algebra.FieldTheory.Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94

public section

universe u
variable {α : Type u}

namespace ULift

instance instNNRatCast [NNRatCast α] : NNRatCast (ULift α) where nnratCast q := up q
instance instRatCast [RatCast α] : RatCast (ULift α) where ratCast q := up q

@[simp, norm_cast] lemma up_nnratCast [NNRatCast α] (q : ℚ≥0) : up (q : α) = q := rfl
@[simp, norm_cast] lemma down_nnratCast [NNRatCast α] (q : ℚ≥0) : down (q : ULift α) = q := rfl
@[simp, norm_cast] lemma up_ratCast [RatCast α] (q : ℚ) : up (q : α) = q := rfl
@[simp, norm_cast] lemma down_ratCast [RatCast α] (q : ℚ) : down (q : ULift α) = q := rfl

instance divisionSemiring [DivisionSemiring α] : DivisionSemiring (ULift α) where
  nnqsmul q x := up (DivisionSemiring.nnqsmul q x.down)
  nnqsmul_def _ _ := congrArg up <| DivisionSemiring.nnqsmul_def _ _
  nnratCast_def _ := congrArg up <| DivisionSemiring.nnratCast_def _

instance semifield [Semifield α] : Semifield (ULift α) :=
  { ULift.divisionSemiring, ULift.commGroupWithZero with }

instance divisionRing [DivisionRing α] : DivisionRing (ULift α) where
  toRing := ring
  __ := groupWithZero
  nnqsmul q x := up (DivisionSemiring.nnqsmul q x.down)
  nnqsmul_def _ _ := congrArg up <| DivisionSemiring.nnqsmul_def _ _
  nnratCast_def _ := congrArg up <| DivisionSemiring.nnratCast_def _
  qsmul q x := up (DivisionRing.qsmul q x.down)
  qsmul_def _ _ := congrArg up <| DivisionRing.qsmul_def _ _
  ratCast_def _ := congrArg up <| DivisionRing.ratCast_def _

instance field [Field α] : Field (ULift α) := {}

end ULift
