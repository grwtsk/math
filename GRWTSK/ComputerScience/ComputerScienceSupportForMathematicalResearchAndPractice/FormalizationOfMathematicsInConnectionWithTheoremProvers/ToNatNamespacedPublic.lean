-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RoundToInt.Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RoundToInt.Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/ToNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Round
public import Init.Data.SInt.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RoundToInt.Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Returns an `Int` that is close to the given `(sign, mantissa, exponent)` triple. Specifically, we
round to zero rather than rounding to nearest like we do everywhere else.
-/
def roundToInt (sign : Sign) (mantissa : Nat) (exponent : Int) : Int :=
  let (mantissa, exponent) := decreaseExponent mantissa exponent 0
  let (em₁, _) := shiftToExponent mantissa exponent .exact 0
  sign.apply em₁.mantissa

/--
Converts an `UnpackedFloat` to an `Int`, sending `NaN` to `0` and positive and negative
infinity to the given values.
-/
def toInt (negativeInfinity positiveInfinity : Int) : UnpackedFloat → Int
  | .notANumber => 0
  | .infinity .positive => positiveInfinity
  | .infinity .negative => negativeInfinity
  | .zero _ => 0
  | .finite s m e _ => roundToInt s m e

/--
Converts an `UnpackedFloat` to a `UInt8`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toUInt8 (f : UnpackedFloat) : UInt8 :=
  UInt8.ofNatClamp (f.toInt 0 (UInt8.size - 1)).toNat

/--
Converts an `UnpackedFloat` to a `UInt16`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toUInt16 (f : UnpackedFloat) : UInt16 :=
  UInt16.ofNatClamp (f.toInt 0 (UInt16.size - 1)).toNat

/--
Converts an `UnpackedFloat` to a `UInt32`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toUInt32 (f : UnpackedFloat) : UInt32 :=
  UInt32.ofNatClamp (f.toInt 0 (UInt32.size - 1)).toNat

/--
Converts an `UnpackedFloat` to a `UInt64`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toUInt64 (f : UnpackedFloat) : UInt64 :=
  UInt64.ofNatClamp (f.toInt 0 (UInt64.size - 1)).toNat

/--
Converts an `UnpackedFloat` to a `USize`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toUSize (f : UnpackedFloat) : USize :=
  USize.ofNatClamp (f.toInt 0 (USize.size - 1)).toNat

/--
Converts an `UnpackedFloat` to an `Int8`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toInt8 (f : UnpackedFloat) : Int8 :=
  Int8.ofIntClamp (f.toInt Int8.minValue.toInt Int8.maxValue.toInt)

/--
Converts an `UnpackedFloat` to an `Int16`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toInt16 (f : UnpackedFloat) : Int16 :=
  Int16.ofIntClamp (f.toInt Int16.minValue.toInt Int16.maxValue.toInt)

/--
Converts an `UnpackedFloat` to an `Int32`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toInt32 (f : UnpackedFloat) : Int32 :=
  Int32.ofIntClamp (f.toInt Int32.minValue.toInt Int32.maxValue.toInt)

/--
Converts an `UnpackedFloat` to an `Int64`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toInt64 (f : UnpackedFloat) : Int64 :=
  Int64.ofIntClamp (f.toInt Int64.minValue.toInt Int64.maxValue.toInt)

/--
Converts an `UnpackedFloat` to an `ISize`, truncating after the decimal point, sending `NaN` to
`0` and clamping out-of-range values and infinities.
-/
def toISize (f : UnpackedFloat) : ISize :=
  ISize.ofIntClamp (f.toInt ISize.minValue.toInt ISize.maxValue.toInt)
