# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertHypotheses.Variant438aecaf11aa08bfc5c78634df1bd3cf02c6023aa6db0379fe70733b754f8b5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80a6ee43b65652ca02cc4d45be02b8db145afb82` · SHA-256 `f3c4d7577d728807cfaedeb2344e522b03646f58d71c9ccb747261d8d1411dcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HypothesisPrime.Variantf7a92aff629e2ba4ca9c43793224b20f3f3a1a49cf25bb1fb95a6c3f74869ca9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7a92aff629e2ba4ca9c43793224b20f3f3a1a49cf25bb1fb95a6c3f74869ca9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HypothesisPrime.Variantf7a92aff629e2ba4ca9c43793224b20f3f3a1a49cf25bb1fb95a6c3f74869ca9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f7a92aff629e2ba4ca9c43793224b20f3f3a1a49cf25bb1fb95a6c3f74869ca9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Meta/AssertHypotheses.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Std.Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HypothesisPrime.Variantf7a92aff629e2ba4ca9c43793224b20f3f3a1a49cf25bb1fb95a6c3f74869ca9

open Lean Lean.Meta

namespace Lean.Meta

/--
Description of a hypothesis for `Lean.MVarId.assertHypotheses'`.
-/
structure Hypothesis' extends Hypothesis where
  /-- The hypothesis' `BinderInfo` -/
  binderInfo : BinderInfo
  /-- The hypothesis' `LocalDeclKind` -/
  kind : LocalDeclKind

/--
Add the given hypotheses to the local context. This is a generalisation of
`Lean.MVarId.assertHypotheses` which lets you specify
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HypothesisPrime.Variantf7a92aff629e2ba4ca9c43793224b20f3f3a1a49cf25bb1fb95a6c3f74869ca9.Lean.MVarId.assertHypotheses' (mvarId : MVarId)
    (hs : Array Hypothesis') : MetaM (Array FVarId × MVarId) := do
  let (fvarIds, mvarId) ← mvarId.assertHypotheses $ hs.map (·.toHypothesis)
  mvarId.modifyLCtx λ lctx => Id.run do
    let mut lctx := lctx
    for h : i in [:hs.size] do
      let h := hs[i]'h.2
      if h.kind != .default then
        lctx := lctx.setKind fvarIds[i]! h.kind
      if h.binderInfo != .default then
        lctx := lctx.setBinderInfo fvarIds[i]! h.binderInfo
    pure lctx
  return (fvarIds, mvarId)

end Lean.Meta
```
