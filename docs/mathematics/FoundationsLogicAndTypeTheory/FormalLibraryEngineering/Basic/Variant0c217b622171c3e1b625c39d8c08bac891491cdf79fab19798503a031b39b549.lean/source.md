# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant0c217b622171c3e1b625c39d8c08bac891491cdf79fab19798503a031b39b549

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad9b55859e2fbfce9fcf18c1dbbae92e7d73df78` · SHA-256 `a39a703abe3f2ca4151d2953fd9d323c1951671422c0f18372ce792f22809a00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PackComponents.Variantac7989ba723dc7fc93337db82a0819ceee01a4f4a8ed0bd88ce9baaeedbef44a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac7989ba723dc7fc93337db82a0819ceee01a4f4a8ed0bd88ce9baaeedbef44a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PackComponents.Variantac7989ba723dc7fc93337db82a0819ceee01a4f4a8ed0bd88ce9baaeedbef44a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ac7989ba723dc7fc93337db82a0819ceee01a4f4a8ed0bd88ce9baaeedbef44a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Pack/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Basic
public import Init.Data.Float.Model.Format.Basic
public import Init.Data.Nat.Bitwise
public import Init.Omega
public import Init.Data.BitVec.Lemmas
public import Init.Data.BitVec.Bootstrap

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PackComponents.Variantac7989ba723dc7fc93337db82a0819ceee01a4f4a8ed0bd88ce9baaeedbef44a

@[expose] public section

namespace Float.Model.UnpackedFloat

/-- Creates a packed float from a sign, an exponent and a mantissa. -/
def packComponents (spec : Format) (sign : Sign)
    (exponent : BitVec spec.exponentBits)
    (mantissa : BitVec spec.mantissaBitsWithoutImplicit) : BitVec spec.numBits :=
  sign.toBitVec ++ exponent ++ mantissa

/-- Creates the packed signed infinity representation for the given specification. -/
def packedInfinity (spec : Format) (sign : Sign) : BitVec spec.numBits :=
  packComponents spec sign (-1#_) 0

/-- Creates the canonical packed `NaN` for the given specification. -/
def packedNaN (spec : Format) : BitVec spec.numBits :=
  packComponents spec .positive (-1#_) (1#_ <<< (spec.mantissaBitsWithoutImplicit - 1))

/-- Creates the packed signed zero representation for the given specification. -/
def packedZero (spec : Format) (sign : Sign) : BitVec spec.numBits :=
  packComponents spec sign 0 0

/--
Packs the given float into the format given by the specification.

This function assumes that the float is already correctly rounded for the given specification.
This means that the exponent must be equal to the exponent computed by `spec.targetExponent`.
-/
def pack (spec : Format) : UnpackedFloat → BitVec spec.numBits
  | .notANumber => packedNaN spec
  | .infinity s => packedInfinity spec s
  | .zero s => packedZero spec s
  | .finite s m e _ =>
    let actualMantissaBits := m.log2
    let biasedExponent := (e + spec.exponentBias + spec.mantissaBitsWithoutImplicit).toNat
    if 2 ^ spec.exponentBits ≤ biasedExponent + 1 then
      packedInfinity spec s
    else if actualMantissaBits + 1 = spec.mantissaBits then
      -- normal
      -- Observe that the transformation of the mantissa clears the implicit bit
      packComponents spec s (BitVec.ofNat _ biasedExponent) (BitVec.ofNat _ m)
    else
      -- subnormal
      packComponents spec s 0#_ (BitVec.ofNat _ m)

/--
Unpacks the mantissa portion of the packed float. If this is a normal number, this
will be missing the implicit bit.
-/
def unpackMantissa {spec : Format} (b : BitVec spec.numBits) :
    BitVec spec.mantissaBitsWithoutImplicit :=
  b.extractLsb (spec.mantissaBitsWithoutImplicit - 1) 0 |>.cast (by have := spec.hm; omega)

/--
Unpacks the exponent portion of the packed float.
-/
def unpackExponent {spec : Format} (b : BitVec spec.numBits) :
    BitVec spec.exponentBits :=
  b.extractLsb (spec.mantissaBitsWithoutImplicit + spec.exponentBits - 1) spec.mantissaBitsWithoutImplicit |>.cast (by have := spec.he; omega)

/--
Unpacks the sign bit of the packed float.
-/
def unpackSign {spec : Format} (b : BitVec spec.numBits) :
    BitVec 1 :=
  b.extractLsb (spec.mantissaBitsWithoutImplicit + spec.exponentBits) (spec.mantissaBitsWithoutImplicit + spec.exponentBits) |>.cast (by omega)

/--
Unpacks the given float according to the given specification.

The resulting float may be assumed to be correctly rounded for the given specification.
-/
def unpack (spec : Format) (b : BitVec spec.numBits) : UnpackedFloat :=
  let mantissaVec := unpackMantissa b
  let exponentVec : BitVec spec.exponentBits :=  unpackExponent b
  let exponent : Int := (exponentVec.toNat : Int) - (spec.exponentBias + spec.mantissaBitsWithoutImplicit)
  let signVec : BitVec 1 := unpackSign b
  let sign := Sign.ofBitVec signVec
  if exponentVec = -1#_ then
    if mantissaVec = 0#_ then
      .infinity sign
    else
      .notANumber
  else if exponentVec = 0#_ then
    if h : mantissaVec = 0#_ then
      .zero sign
    else
      -- subnormal
      .finite sign mantissaVec.toNat (exponent + 1) (by simpa [BitVec.toNat_pos, BitVec.pos_iff_ne_zero])
  else
    -- normal
    .finite sign (1#1 ++ mantissaVec).toNat exponent (by simp)

end Float.Model.UnpackedFloat
```
