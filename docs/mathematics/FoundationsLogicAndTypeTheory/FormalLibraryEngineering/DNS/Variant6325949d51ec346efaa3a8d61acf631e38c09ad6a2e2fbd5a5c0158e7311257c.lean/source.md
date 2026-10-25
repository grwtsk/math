# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DNS.Variant6325949d51ec346efaa3a8d61acf631e38c09ad6a2e2fbd5a5c0158e7311257c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0677cafab961175a7755097ae60335cc6352c10` · SHA-256 `712f03faf2cc85151475f38811400f63ef6464fcee6b4e387566a0eb38c96990`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetAddrInfo.Variant295116133a065884da9e54e90c21867ca9cac70a9d34f59cd4d7c6df85f6d25c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"295116133a065884da9e54e90c21867ca9cac70a9d34f59cd4d7c6df85f6d25c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GetAddrInfo.Variant295116133a065884da9e54e90c21867ca9cac70a9d34f59cd4d7c6df85f6d25c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"295116133a065884da9e54e90c21867ca9cac70a9d34f59cd4d7c6df85f6d25c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/UV/DNS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.System.Promise
public import Init.Data.SInt
public import Std.Net


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetAddrInfo.Variant295116133a065884da9e54e90c21867ca9cac70a9d34f59cd4d7c6df85f6d25c

@[expose] public section

namespace Std
namespace Internal
namespace UV
namespace DNS

open Std.Net

/--
Asynchronously resolves a hostname and service to an array of socket addresses.
-/
@[extern "lean_uv_dns_get_info"]
opaque getAddrInfo (host : @& String) (service : @& String) (family : UInt8) :
    IO (IO.Promise (Except IO.Error (Array IPAddr)))

/--
Performs a reverse DNS lookup on a `SocketAddress`.
-/
@[extern "lean_uv_dns_get_name"]
opaque getNameInfo (host : @& SocketAddress) : IO (IO.Promise (Except IO.Error (String × String)))

end DNS
end UV
end Internal
end Std
```
