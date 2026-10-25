# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant89d237906e1fce7540026bbd0052f932e18835a0defb35078f24f85640e3e287

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d88c09e3eee2ae23ed4853ccc02e210167812e42` · SHA-256 `71725e4ebfc46af8c864a2aa72c09fdb6c1d245d0437bd9a3f2daed82ceda804`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Expr.Variant53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Meta/Expr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3

@[expose] public section

namespace Lean.Literal

instance : Ord Literal where
  compare
    | natVal n₁, natVal n₂ => compare n₁ n₂
    | strVal s₁, strVal s₂ => compare s₁ s₂
    | natVal _, strVal _ => .lt
    | strVal _, natVal _ => .gt
```
