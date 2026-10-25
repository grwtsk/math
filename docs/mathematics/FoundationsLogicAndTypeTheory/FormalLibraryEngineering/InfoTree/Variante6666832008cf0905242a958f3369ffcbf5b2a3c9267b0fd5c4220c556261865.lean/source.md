# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTree.Variante6666832008cf0905242a958f3369ffcbf5b2a3c9267b0fd5c4220c556261865

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f3cee9d2eccca338ce8c149bf2062937496a081` · SHA-256 `6a8e2f725559f866784be2b766b11af6b77e523096649c8563022881621a7a63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTreeFoldInfoPrime.Variantbe04768677f145da39913f8c65ebf56b617cd1ad3ca542eeb84c39cdb017149c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be04768677f145da39913f8c65ebf56b617cd1ad3ca542eeb84c39cdb017149c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InfoTreeFoldInfoPrime.Variantbe04768677f145da39913f8c65ebf56b617cd1ad3ca542eeb84c39cdb017149c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"be04768677f145da39913f8c65ebf56b617cd1ad3ca542eeb84c39cdb017149c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/InfoTree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Mario Carneiro
-/
import Lean.Elab.InfoTree.Main


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTreeFoldInfoPrime.Variantbe04768677f145da39913f8c65ebf56b617cd1ad3ca542eeb84c39cdb017149c

namespace Lean.Elab

/-- Like `InfoTree.foldInfo`, but also passes the whole node to `f` instead of just the head. -/
partial def InfoTree.foldInfo' (init : α) (f : ContextInfo → InfoTree → α → α) : InfoTree → α :=
  go none init
where
  /-- `foldInfo'.go` is like `foldInfo'` but with an additional outer context parameter `ctx?`. -/
  go ctx? a
  | context ctx t => go ctx a t
  | t@(node i ts) =>
    let a := match ctx? with
      | none => a
      | some ctx => f ctx t a
    ts.foldl (init := a) (go <| i.updateContext? ctx?)
  | _ => a
```
