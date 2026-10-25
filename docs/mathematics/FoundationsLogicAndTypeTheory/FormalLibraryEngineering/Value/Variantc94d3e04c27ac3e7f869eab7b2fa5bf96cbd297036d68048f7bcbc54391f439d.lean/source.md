# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Value.Variantc94d3e04c27ac3e7f869eab7b2fa5bf96cbd297036d68048f7bcbc54391f439d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7e0eaf1ed927514fbe04088b3849bf76184bd3c` · SHA-256 `d247498fdd9e0faef0c90a1f67bed4c001f02732a429c31a96bd09252db17221`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsMatchValue.Variant82e03491d2754c3ec489e87811b89acd35a0e31d41ec7a2b3cf7191e9d6cbdd3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82e03491d2754c3ec489e87811b89acd35a0e31d41ec7a2b3cf7191e9d6cbdd3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsMatchValue.Variant82e03491d2754c3ec489e87811b89acd35a0e31d41ec7a2b3cf7191e9d6cbdd3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"82e03491d2754c3ec489e87811b89acd35a0e31d41ec7a2b3cf7191e9d6cbdd3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Match/Value.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.LitValues


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsMatchValue.Variant82e03491d2754c3ec489e87811b89acd35a0e31d41ec7a2b3cf7191e9d6cbdd3

public section

namespace Lean.Meta

/-- Return true is `e` is a term that should be processed by the `match`-compiler using `casesValues` -/
def isMatchValue (e : Expr) : MetaM Bool := do
  let e ← instantiateMVars e
  if (← getNatValue? e).isSome then return true
  if (← getIntValue? e).isSome then return true
  if (← getFinValue? e).isSome then return true
  if (← getBitVecValue? e).isSome then return true
  if (getStringValue? e).isSome then return true
  if (← getCharValue? e).isSome then return true
  if (← getUInt8Value? e).isSome then return true
  if (← getUInt16Value? e).isSome then return true
  if (← getUInt32Value? e).isSome then return true
  if (← getUInt64Value? e).isSome then return true
  if (← getFloatValue? e).isSome then return true
  if (← getFloat32Value? e).isSome then return true
  return false

end Lean.Meta
```
