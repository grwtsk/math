# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Variantfa2de85c98adab00c22d0654805002ff072dbd5476f5a72b7c61c0a4cc732ced

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18d046a6bce21c6d9202b15cdd869f2f2b1c1a02` · SHA-256 `5882ea28d28c9502f5c78985671d4773f46879ce63df18e5f7572fe30bfdb611`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Module.Variant414a73198d5dc00dd4dfcf8fd4422ab34d43547a6b83c7c26944df9c36816f1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"414a73198d5dc00dd4dfcf8fd4422ab34d43547a6b83c7c26944df9c36816f1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Module.Variant414a73198d5dc00dd4dfcf8fd4422ab34d43547a6b83c7c26944df9c36816f1d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"414a73198d5dc00dd4dfcf8fd4422ab34d43547a6b83c7c26944df9c36816f1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/GrindInstances/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude

public import Init.Grind.Ordered.Module
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Module.Variant414a73198d5dc00dd4dfcf8fd4422ab34d43547a6b83c7c26944df9c36816f1d

public section

namespace Lean.Grind

instance : AddRightCancel Nat where
  add_right_cancel _ _ _ := Nat.add_right_cancel

instance : ExistsAddOfLT Nat where
  exists_add_of_le {a b} h := ⟨b - a, by omega⟩

end Lean.Grind
```
