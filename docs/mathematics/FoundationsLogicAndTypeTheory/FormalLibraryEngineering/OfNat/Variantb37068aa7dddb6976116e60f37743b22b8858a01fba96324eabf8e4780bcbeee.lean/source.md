# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfNat.Variantb37068aa7dddb6976116e60f37743b22b8858a01fba96324eabf8e4780bcbeee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b40a22560406409fe86288157d27cf86490ded16` · SHA-256 `cf5eb478f7a5a2d884704dd0dff837c5b3cb30a1ef18c360159d66ccc38adf84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfInt.Variant6348d419daf9b4eadd199d83a8ee0255ce19b85497f388c1ee11f7d7f6459609","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6348d419daf9b4eadd199d83a8ee0255ce19b85497f388c1ee11f7d7f6459609","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OfInt.Variant6348d419daf9b4eadd199d83a8ee0255ce19b85497f388c1ee11f7d7f6459609","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6348d419daf9b4eadd199d83a8ee0255ce19b85497f388c1ee11f7d7f6459609","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/OfNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfInt.Variant6348d419daf9b4eadd199d83a8ee0255ce19b85497f388c1ee11f7d7f6459609

@[expose] public section

namespace Float.Model.UnpackedFloat

/-- Converts an `Int` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofInt (spec : Format) (n : Int) : UnpackedFloat :=
  normalize spec n 0 .positive

/-- Converts a `Nat` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofNat (spec : Format) (n : Nat) : UnpackedFloat :=
  ofInt spec (n : Int)

/-- Converts a `UInt8` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofUInt8 (spec : Format) (n : UInt8) : UnpackedFloat :=
  ofNat spec n.toNat

/-- Converts a `UInt16` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofUInt16 (spec : Format) (n : UInt16) : UnpackedFloat :=
  ofNat spec n.toNat

/-- Converts a `UInt32` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofUInt32 (spec : Format) (n : UInt32) : UnpackedFloat :=
  ofNat spec n.toNat

/-- Converts a `UInt64` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofUInt64 (spec : Format) (n : UInt64) : UnpackedFloat :=
  ofNat spec n.toNat

/-- Converts a `USize` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofUSize (spec : Format) (n : USize) : UnpackedFloat :=
  ofNat spec n.toNat

/-- Converts an `Int8` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofInt8 (spec : Format) (n : Int8) : UnpackedFloat :=
  ofInt spec n.toInt

/-- Converts an `Int16` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofInt16 (spec : Format) (n : Int16) : UnpackedFloat :=
  ofInt spec n.toInt

/-- Converts an `Int32` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofInt32 (spec : Format) (n : Int32) : UnpackedFloat :=
  ofInt spec n.toInt

/-- Converts an `Int64` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofInt64 (spec : Format) (n : Int64) : UnpackedFloat :=
  ofInt spec n.toInt

/-- Converts an `ISize` to an `UnpackedFloat`, returning positive zero on zero. -/
def ofISize (spec : Format) (n : ISize) : UnpackedFloat :=
  ofInt spec n.toInt

end Float.Model.UnpackedFloat
```
