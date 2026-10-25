# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant6466ba878a04571430012a3c3fac1a073ccc867b47db31e81f3cfb5f0349da72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abe28151c16e616ca0f204cbd0334323d0307d7c` · SHA-256 `191b575bc54d5cdce111e94192ee6de698396b2838c933f0e270594c2ddc5abe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunForUsedConsts.Variant693d845330dd7122565aeb19314a3e3de4b49f9a8a7ac6e1fadbc9ab374b9f88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"693d845330dd7122565aeb19314a3e3de4b49f9a8a7ac6e1fadbc9ab374b9f88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RunForUsedConsts.Variant693d845330dd7122565aeb19314a3e3de4b49f9a8a7ac6e1fadbc9ab374b9f88","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"693d845330dd7122565aeb19314a3e3de4b49f9a8a7ac6e1fadbc9ab374b9f88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/Comparator/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import Lean.Environment


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunForUsedConsts.Variant693d845330dd7122565aeb19314a3e3de4b49f9a8a7ac6e1fadbc9ab374b9f88

namespace Comparator

def runForUsedConsts [Monad m] (info : Lean.ConstantInfo) (f : Lean.Name → m Unit) : m Unit := do
  info.type.getUsedConstants.forM f
  f info.name
  if let some val := info.value? (allowOpaque := true) then
    val.getUsedConstants.forM f

  match info with
  | .axiomInfo .. | .quotInfo .. | .defnInfo .. | .thmInfo .. | .opaqueInfo .. => return ()
  | .inductInfo info =>
    info.ctors.forM f
    info.all.forM f
  | .ctorInfo info =>
    f info.induct
  | .recInfo info =>
    info.rules.forM fun rule => do
      f rule.ctor
      rule.rhs.getUsedConstants.forM f

end Comparator
```
