# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionalOperations.Variant89cb63a1534196e0fb61e7ff5b65c552b60121cc6656249783fbc048c11549e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a35a48145ebf5d35b7037ab5e4281c1d9c0def8f` · SHA-256 `1b8d7c1d08f4438308131bee29f30c82df5a9dcbb0cd0076ff9ba0596e5c3faf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant2271906d1878af2c482fb6d1c0e33cfcfb432f2aefec36c64b773b5195aeea1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2271906d1878af2c482fb6d1c0e33cfcfb432f2aefec36c64b773b5195aeea1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FilterMap.Variant2271906d1878af2c482fb6d1c0e33cfcfb432f2aefec36c64b773b5195aeea1e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2271906d1878af2c482fb6d1c0e33cfcfb432f2aefec36c64b773b5195aeea1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/NameMap/AdditionalOperations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Lean.Data.NameMap.Basic
public import Std.Data.TreeSet.AdditionalOperations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant2271906d1878af2c482fb6d1c0e33cfcfb432f2aefec36c64b773b5195aeea1e

public section

namespace Lean
namespace NameMap

/-- `filterMap f m` filters an `NameMap` and simultaneously modifies the filtered values.

It takes a function `f : Name → α → Option β` and applies `f name` to the value with key `name`.
The resulting entries with non-`none` value are collected to form the output `NameMap`. -/
def filterMap (f : Name → α → Option β) (m : NameMap α) : NameMap β := Std.TreeMap.filterMap f m

end NameMap
end Lean
```
