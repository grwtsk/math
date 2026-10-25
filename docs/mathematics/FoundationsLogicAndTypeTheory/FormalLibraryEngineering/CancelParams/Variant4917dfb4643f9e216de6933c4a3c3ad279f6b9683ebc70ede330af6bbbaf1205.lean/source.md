# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancelParams.Variant4917dfb4643f9e216de6933c4a3c3ad279f6b9683ebc70ede330af6bbbaf1205

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7f405e02d489da53e8920b58724635ae11c8d7c` · SHA-256 `342fba146645e88e15f965d079af0b9b4160ab57e4d824ab1e33b3f0aceaeccb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancelParams.Variantb3dd1c5845282012bf477a88c6341ab62cd565f8633fc5d0476e4e265c53bed7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3dd1c5845282012bf477a88c6341ab62cd565f8633fc5d0476e4e265c53bed7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CancelParams.Variantb3dd1c5845282012bf477a88c6341ab62cd565f8633fc5d0476e4e265c53bed7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b3dd1c5845282012bf477a88c6341ab62cd565f8633fc5d0476e4e265c53bed7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/CancelParams.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.JsonRpc


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancelParams.Variantb3dd1c5845282012bf477a88c6341ab62cd565f8633fc5d0476e4e265c53bed7

public section

/-! # Defines `Lean.Lsp.CancelParams`.

This is separate from `Lean.Data.Lsp.Basic` to reduce transitive dependencies.
-/

namespace Lean
namespace Lsp

open Json

structure CancelParams where
  id : JsonRpc.RequestID
  deriving Inhabited, BEq, ToJson, FromJson

end Lsp
end Lean
```
