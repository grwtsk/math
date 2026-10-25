# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2.Variant8ffafd25d2ff105c2131c7460d56fa3c026f6906f053a88d2be432e95b242ba9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49ccdb114aeee830caa82343d6847af495d7caba` · SHA-256 `99ebd0d188dc681d45120dae096a12e6c4ebe27078e341b2a17e3311d6bf7620`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinLog2.Variantbff592b9810663348dc5f62e10382c389a826c05a298187799a9ae03eee822d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bff592b9810663348dc5f62e10382c389a826c05a298187799a9ae03eee822d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FinLog2.Variantbff592b9810663348dc5f62e10382c389a826c05a298187799a9ae03eee822d4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"bff592b9810663348dc5f62e10382c389a826c05a298187799a9ae03eee822d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Fin/Log2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Prelude
import Init.Data.Nat.Log2


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinLog2.Variantbff592b9810663348dc5f62e10382c389a826c05a298187799a9ae03eee822d4

public section

set_option linter.missingDocs true

/--
Logarithm base 2 for bounded numbers.

The resulting value is the same as that computed by `Nat.log2`. In particular, the result for `0` is
`0`.

Examples:
 * `(8 : Fin 10).log2 = (3 : Fin 10)`
 * `(7 : Fin 10).log2 = (2 : Fin 10)`
 * `(4 : Fin 10).log2 = (2 : Fin 10)`
 * `(3 : Fin 10).log2 = (1 : Fin 10)`
 * `(1 : Fin 10).log2 = (0 : Fin 10)`
 * `(0 : Fin 10).log2 = (0 : Fin 10)`
-/
def Fin.log2 (n : Fin m) : Fin m := ⟨Nat.log2 n.val, Nat.lt_of_le_of_lt (Nat.log2_le_self n.val) n.isLt⟩
```
