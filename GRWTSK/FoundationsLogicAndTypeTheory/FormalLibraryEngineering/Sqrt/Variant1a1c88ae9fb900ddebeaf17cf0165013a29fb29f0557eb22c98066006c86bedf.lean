-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqrtCore.Variant3bc9816d17a3c8e36b63e15e2c906c7839c518723c6266a6b1ed7e9e3a57401a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3bc9816d17a3c8e36b63e15e2c906c7839c518723c6266a6b1ed7e9e3a57401a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SqrtCore.Variant3bc9816d17a3c8e36b63e15e2c906c7839c518723c6266a6b1ed7e9e3a57401a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3bc9816d17a3c8e36b63e15e2c906c7839c518723c6266a6b1ed7e9e3a57401a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/Sqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Round
public import Init.Data.Nat.Sqrt.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqrtCore.Variant3bc9816d17a3c8e36b63e15e2c906c7839c518723c6266a6b1ed7e9e3a57401a

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Computes a `(mantissa, exponent)` pair for the square root with enough bits to populate the mantissa
for the given specification. Also returns an `Accuracy` stating how the returned pair relates to
the infinitely precise square root.
-/
def sqrtCore (spec : Format) (m : Nat) (e : Int) : Nat × Int × Accuracy :=
  -- Here we shift so that the input is represented as `m * 2 ^ (2 * targetExponent)`, where `m` has
  -- so many bits that `sqrt m` still has enough bits for the specified format.
  let targetExponent := min (e.ediv 2) (spec.targetExponent ((totalExponent m e + 1).ediv 2))
  let shiftAmount := (e - 2 * targetExponent).toNat
  let m := m <<< shiftAmount

  let root := Nat.sqrt m
  let rem := m - root * root

  -- Let x := Real.sqrt m. Then
  -- `x < root + 1/2` ↔ `x^2 < root^2 + root + 1/4` ↔ `rem < root + 1/4` ↔ `rem ≤ root`.
  -- `x = root + 1/2` is impossible.
  let accuracy : Accuracy := if rem = 0 then .exact else .inexact (if rem ≤ root then .lt else .gt)
  (root, targetExponent, accuracy)

/--
Computes the square root of a floating-point number and rounds the result according to the given
specification.
-/
def sqrt (spec : Format) : UnpackedFloat → UnpackedFloat
  | .notANumber => .notANumber
  | .infinity .positive => .infinity .positive
  | .infinity .negative => .notANumber
  | .finite .negative .. => .notANumber
  | .zero sign => .zero sign
  | .finite .positive m e _ =>
    let (m, e, acc) := sqrtCore spec m e
    roundWithAccuracy spec .positive m e acc

end Float.Model.UnpackedFloat
