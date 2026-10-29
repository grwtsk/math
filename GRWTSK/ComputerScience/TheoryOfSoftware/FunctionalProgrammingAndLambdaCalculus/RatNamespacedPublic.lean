-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFloat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToFloat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91","mathematical_subject":"Computation.DataStructures","original_sha256":"519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/Float/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Batteries.Data.Float.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFloat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91

@[expose] public section

/-! # Rational Numbers and Float -/

namespace Rat

/-- Convert this rational number to a `Float` value. -/
protected def toFloat (a : Rat) : Float := a.num.divFloat a.den

/-- Convert this floating point number to a rational value. -/
protected def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFloat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91.Float.toRat? (a : Float) : Option Rat :=
  a.toRatParts.map fun (v, exp) =>
    mkRat (v.sign * v.natAbs <<< exp.toNat) (1 <<< (-exp).toNat)

/--
Convert this floating point number to a rational value,
mapping non-finite values (`inf`, `-inf`, `nan`) to 0.
-/
protected def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFloat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91.Float.toRat0 (a : Float) : Rat := a.toRat?.getD 0

instance : Coe Rat Float := ⟨Rat.toFloat⟩

end Rat
