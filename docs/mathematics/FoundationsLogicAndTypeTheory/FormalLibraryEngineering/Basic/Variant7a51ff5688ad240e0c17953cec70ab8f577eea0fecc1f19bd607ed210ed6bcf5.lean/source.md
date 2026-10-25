# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant7a51ff5688ad240e0c17953cec70ab8f577eea0fecc1f19bd607ed210ed6bcf5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce94aef7645b61bcfb074de95793d3c020c56175` · SHA-256 `b65be21b1ae1a0218fcd98aa49e0e4e30e04a762b158415f08eb943a95b1bdfc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMetaPreservingMCtx.Variant41f5039e088a968cf5244536b1a7dedae5989dfced182b1293d3c4cd7263745f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41f5039e088a968cf5244536b1a7dedae5989dfced182b1293d3c4cd7263745f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanMetaPreservingMCtx.Variant41f5039e088a968cf5244536b1a7dedae5989dfced182b1293d3c4cd7263745f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"41f5039e088a968cf5244536b1a7dedae5989dfced182b1293d3c4cd7263745f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Lean/Meta/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Lean.Meta.Basic

/-!
# Additions to `Lean.Meta.Basic`

Likely these already exist somewhere. Pointers welcome.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMetaPreservingMCtx.Variant41f5039e088a968cf5244536b1a7dedae5989dfced182b1293d3c4cd7263745f

set_option autoImplicit true

/--
Restore the metavariable context after execution.
-/
def Lean.Meta.preservingMCtx (x : MetaM α) : MetaM α := do
  let mctx ← getMCtx
  try x finally setMCtx mctx
```
