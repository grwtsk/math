# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Body.Variant2519ad3d4464c795a42e39dc3928e6f225d8d4d27d72da870101b3454a4d9ed9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90f03a89accc1cf22792b3b005e02e7ae226d8b7` · SHA-256 `a5983173c8488c682d81fccab1df07f531f8c3bfd3aa2b45425b34f946a3162e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Body.Variantdaace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"daace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Body.Variantdaace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"daace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Body.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.Body.Basic
public import Std.Http.Data.Body.Length
public import Std.Http.Data.Body.Any
public import Std.Http.Data.Body.Stream
public import Std.Http.Data.Body.Empty
public import Std.Http.Data.Body.Full


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Body.Variantdaace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445

public section

/-!
# Body

This module re-exports all HTTP body types: `Body.Empty`, `Body.Full`, `Body.Stream`,
`Body.Any`, and `Body.Length`, along with the `Http.Body` typeclass and conversion
utilities (`ToByteArray`, `FromByteArray`).
-/
```
