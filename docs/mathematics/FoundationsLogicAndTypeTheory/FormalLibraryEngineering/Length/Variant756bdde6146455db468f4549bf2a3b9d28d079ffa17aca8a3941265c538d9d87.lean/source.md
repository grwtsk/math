# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Length.Variant756bdde6146455db468f4549bf2a3b9d28d079ffa17aca8a3941265c538d9d87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42cefd81be5103851e2b4ef21bd30941fc6e9094` · SHA-256 `47435e4e9ab058e075cf2b8b3c88c1adb30f1304c9ea244c3bd9450dc77853f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Length.Variantf949c872b69bac9089113434dbab3262b951cfb4631fbd46c839ab7ce00c825e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f949c872b69bac9089113434dbab3262b951cfb4631fbd46c839ab7ce00c825e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Length.Variantf949c872b69bac9089113434dbab3262b951cfb4631fbd46c839ab7ce00c825e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f949c872b69bac9089113434dbab3262b951cfb4631fbd46c839ab7ce00c825e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Body/Length.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.Data.Repr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Length.Variantf949c872b69bac9089113434dbab3262b951cfb4631fbd46c839ab7ce00c825e

public section

/-!
# Body.Length

This module defines the `Length` type, that represents the Content-Length or Transfer-Encoding
of an HTTP request or response.
-/

namespace Std.Http.Body

set_option linter.all true

/--
Size of the body of a response or request.
-/
inductive Length
  /--
  Indicates that the HTTP message body uses **chunked transfer encoding**.
  -/
  | chunked

  /--
  Indicates that the HTTP message body has a **fixed, known length**, as specified by the
  `Content-Length` header.
  -/
  | fixed (n : Nat)
deriving Repr, BEq

namespace Length

/--
Checks if the `Length` is chunked.
-/
@[inline]
def isChunked : Length → Bool
  | .chunked => true
  | _ => false

/--
Checks if the `Length` is a fixed size.
-/
@[inline]
def isFixed : Length → Bool
  | .fixed _ => true
  | _ => false

end Length

end Std.Http.Body
```
