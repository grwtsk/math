# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2.Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a89d495f196bce6dada1c8c16774e8a37b7aaccc` · SHA-256 `5fad1399174404fb140ea371ff17503ff29880f6699f8fca09323421a7a88b53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UInt8Log2.Variant7af9ebc3bf31128109c4bbbffa70a33dcd038c55ff583826c41747f3fc14fba2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7af9ebc3bf31128109c4bbbffa70a33dcd038c55ff583826c41747f3fc14fba2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.UInt8Log2.Variant7af9ebc3bf31128109c4bbbffa70a33dcd038c55ff583826c41747f3fc14fba2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7af9ebc3bf31128109c4bbbffa70a33dcd038c55ff583826c41747f3fc14fba2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/UInt/Log2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Prelude
import Init.Data.Fin.Log2
import Init.Data.UInt.BasicAux


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UInt8Log2.Variant7af9ebc3bf31128109c4bbbffa70a33dcd038c55ff583826c41747f3fc14fba2

public section

/--
Base-two logarithm of 8-bit unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `UInt8.log2 0 = 0`
 * `UInt8.log2 1 = 0`
 * `UInt8.log2 2 = 1`
 * `UInt8.log2 4 = 2`
 * `UInt8.log2 7 = 2`
 * `UInt8.log2 8 = 3`
-/
@[extern "lean_uint8_log2"]
def UInt8.log2 (a : UInt8) : UInt8 := ⟨⟨Fin.log2 a.toFin⟩⟩

/--
Base-two logarithm of 16-bit unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `UInt16.log2 0 = 0`
 * `UInt16.log2 1 = 0`
 * `UInt16.log2 2 = 1`
 * `UInt16.log2 4 = 2`
 * `UInt16.log2 7 = 2`
 * `UInt16.log2 8 = 3`
-/
@[extern "lean_uint16_log2"]
def UInt16.log2 (a : UInt16) : UInt16 := ⟨⟨Fin.log2 a.toFin⟩⟩

/--
Base-two logarithm of 32-bit unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `UInt32.log2 0 = 0`
 * `UInt32.log2 1 = 0`
 * `UInt32.log2 2 = 1`
 * `UInt32.log2 4 = 2`
 * `UInt32.log2 7 = 2`
 * `UInt32.log2 8 = 3`
-/
@[extern "lean_uint32_log2"]
def UInt32.log2 (a : UInt32) : UInt32 := ⟨⟨Fin.log2 a.toFin⟩⟩

/--
Base-two logarithm of 64-bit unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `UInt64.log2 0 = 0`
 * `UInt64.log2 1 = 0`
 * `UInt64.log2 2 = 1`
 * `UInt64.log2 4 = 2`
 * `UInt64.log2 7 = 2`
 * `UInt64.log2 8 = 3`
-/
@[extern "lean_uint64_log2"]
def UInt64.log2 (a : UInt64) : UInt64 := ⟨⟨Fin.log2 a.toFin⟩⟩

/--
Base-two logarithm of word-sized unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `USize.log2 0 = 0`
 * `USize.log2 1 = 0`
 * `USize.log2 2 = 1`
 * `USize.log2 4 = 2`
 * `USize.log2 7 = 2`
 * `USize.log2 8 = 3`
-/
@[extern "lean_usize_log2"]
def USize.log2 (a : USize) : USize := ⟨⟨Fin.log2 a.toFin⟩⟩
```
