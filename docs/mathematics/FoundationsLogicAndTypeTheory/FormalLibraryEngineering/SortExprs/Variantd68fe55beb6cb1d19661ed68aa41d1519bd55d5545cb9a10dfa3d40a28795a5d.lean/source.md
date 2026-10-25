# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SortExprs.Variantd68fe55beb6cb1d19661ed68aa41d1519bd55d5545cb9a10dfa3d40a28795a5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d92b38ff0b8289fe638a3ed6e032a842c7df633c` · SHA-256 `86c5c1d268a0a69e6a34cee92673dc7633ad838d759398ffb2eaac8d563f7bea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Perm.Variant2455528c177912d2cfc2aa004b6d3d98a391078843c3535eea3d2b8449918f7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2455528c177912d2cfc2aa004b6d3d98a391078843c3535eea3d2b8449918f7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Perm.Variant2455528c177912d2cfc2aa004b6d3d98a391078843c3535eea3d2b8449918f7b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2455528c177912d2cfc2aa004b6d3d98a391078843c3535eea3d2b8449918f7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/SortExprs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Perm.Variant2455528c177912d2cfc2aa004b6d3d98a391078843c3535eea3d2b8449918f7b

public section

namespace Lean

abbrev Perm := Std.HashMap Nat Nat

/--
Sorts the given expressions using `Expr.lt`, and creates a "permutation map" storing the new position of each expression.
If `lt := false`, then sorts expressions in decreasing order.
-/
def sortExprs (es : Array Expr) (lt := true) : Array Expr × Perm :=
  let es := es.mapIdx fun i e => (e, i)
  let es := if lt then
    es.qsort fun (e₁, _) (e₂, _) => e₁.lt e₂
  else
    es.qsort fun (e₁, _) (e₂, _) => e₂.lt e₁
  let (_, perm) := es.foldl (init := (0, ∅)) fun (i, perm) (_, j) => (i+1, perm.insert j i)
  let es := es.map (·.1)
  (es, perm)

end Lean
```
