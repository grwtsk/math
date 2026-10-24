# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rat.Variant8364d0489bd9efdfb8acd5c12a30b63f9fb7dd478d8679b360e6bf4370a92727

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64628b5bc6724b62eca0176c52b72f828596f38e` · SHA-256 `2612f8ae5b399aafa1ca64499466a53a993319d7b5497d0e51aaf19bb89fc9c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
