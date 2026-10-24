-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sign.Variant68654f4364d2bffa0f9caecf93d8131bdda6d8f48d283d552e1a136a2dfad655","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68654f4364d2bffa0f9caecf93d8131bdda6d8f48d283d552e1a136a2dfad655","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Sign.Variant68654f4364d2bffa0f9caecf93d8131bdda6d8f48d283d552e1a136a2dfad655","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"68654f4364d2bffa0f9caecf93d8131bdda6d8f48d283d552e1a136a2dfad655","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Sign.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Int.Basic
public import Init.Data.BitVec.Basic
public import Init.Data.Repr
public import Init.Data.Ord.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sign.Variant68654f4364d2bffa0f9caecf93d8131bdda6d8f48d283d552e1a136a2dfad655

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Inductive with two constructors `negative` and `positive` for representing sign bits in
floating-point models. This is not a general-purpose sign type like mathlib's `SignType`,
which also includes a `zero` case.
-/
inductive Sign where
  /-- Negative (`-`) sign. -/
  | negative : Sign
  /-- Positive (`+`) sign. -/
  | positive : Sign
deriving Repr, BEq

namespace Sign

instance : Mul Sign where
  mul
    | .negative, .negative => .positive
    | .negative, .positive => .negative
    | .positive, .negative => .negative
    | .positive, .positive => .positive

instance : Div Sign where
  div
    | .negative, .negative => .positive
    | .negative, .positive => .negative
    | .positive, .negative => .negative
    | .positive, .positive => .positive

instance : Neg Sign where
  neg
    | .negative => .positive
    | .positive => .negative

instance : Ord Sign where
  compare
    | .negative, .negative => .eq
    | .negative, .positive => .lt
    | .positive, .negative => .gt
    | .positive, .positive => .eq

/--
Apply the given sign to the given integer.
-/
def apply (s : Sign) (n : Int) : Int :=
  match s with
  | .negative => -n
  | .positive => n

/--
Converts the sign to a bitvector, with positive sign denoted by `0`.
-/
def toBitVec : Sign → BitVec 1
  | .negative => 1#1
  | .positive => 0#1

/--
Constructs a sign from a bitvector, with positive sign denoted by `0`.
-/
def ofBitVec (b  : BitVec 1) : Sign :=
  if b = 0#1 then .positive else .negative

end Sign

end Float.Model.UnpackedFloat
