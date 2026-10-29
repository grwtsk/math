-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnpackedFloat.Variantff0736240d209840ed078bb8b64df6110aa9250712ba37565cca85fcb9af5881","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff0736240d209840ed078bb8b64df6110aa9250712ba37565cca85fcb9af5881","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.UnpackedFloat.Variantff0736240d209840ed078bb8b64df6110aa9250712ba37565cca85fcb9af5881","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ff0736240d209840ed078bb8b64df6110aa9250712ba37565cca85fcb9af5881","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Sign
public import Init.Data.Int.Repr

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnpackedFloat.Variantff0736240d209840ed078bb8b64df6110aa9250712ba37565cca85fcb9af5881

@[expose] public section

namespace Float.Model

open UnpackedFloat in
/--
An inductive type representing a floating-point number with constructors for signed infinity,
not-a-number without payload, signed zero, and finite floats with a sign, positive natural
mantissa and integral exponent.

Finite floats do not have a unique representation in this format: multiplying the
mantissa by two and decreasing the exponent by one yields a finite float that represents the
same rational number.

For a given `Format`, we say that an unpacked float is in canonical form if the exponent
is equal to the `targetExponent` according to that format. Some operations on `UnpackedFloat`,
such as `compare`, assume that the input(s) are all in canonical form for the same format.

Note that an unpacked float in canonical form for a given format may not actually be
representable in that format as the exponent is too large to fit. In this case, the `pack`
function will overflow the float to infinity.

This type exists solely for the purpose of supporting `Float.Model` and `Float32.Model`. It is not
a goal of this development to serve as the basis for a general-purpose floating-point library or
to have any direct lemmas written about it at all. Rather, users interested in a library about
floating-point numbers should develop such a library completely separately, and users interested in
proving properties of their programs involving `Float` should prove that the operations defined
here are equivalent to the operations defined in the separate library and then transfer lemmas from
the library to the `Float` and `Float32` types.
-/
inductive UnpackedFloat where
  /-- Signed infinity. -/
  | infinity (sign : Sign) : UnpackedFloat
  /-- Not a number. There is no payload attached to a NaN in this format. -/
  | notANumber : UnpackedFloat
  /-- Signed zero. -/
  | zero (sign : Sign) : UnpackedFloat
  /-- Finite floats consisting of a sign bit, a positive natural mantissa and an exponent. -/
  | finite (sign : Sign) (mantissa : Nat) (exponent : Int) (mantissa_pos : 0 < mantissa) : UnpackedFloat
deriving Repr, BEq

end Float.Model
