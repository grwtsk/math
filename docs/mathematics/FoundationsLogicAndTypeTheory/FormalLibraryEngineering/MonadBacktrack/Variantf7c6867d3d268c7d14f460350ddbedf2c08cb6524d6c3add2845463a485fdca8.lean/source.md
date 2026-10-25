# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadBacktrack.Variantf7c6867d3d268c7d14f460350ddbedf2c08cb6524d6c3add2845463a485fdca8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fddca894b79deb4beade9e6c3d645eaa8988e09d` · SHA-256 `532e446e2538935653e204f0d7657c76c179bb4ef4a3534983ba6df44bf50ba4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutModifyingStatePrime.Variant4172b1f417572d450c2ce74d585fcb4b83419a5cc974b3fef5620291252d792f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4172b1f417572d450c2ce74d585fcb4b83419a5cc974b3fef5620291252d792f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithoutModifyingStatePrime.Variant4172b1f417572d450c2ce74d585fcb4b83419a5cc974b3fef5620291252d792f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4172b1f417572d450c2ce74d585fcb4b83419a5cc974b3fef5620291252d792f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/MonadBacktrack.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean.Util.MonadBacktrack


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutModifyingStatePrime.Variant4172b1f417572d450c2ce74d585fcb4b83419a5cc974b3fef5620291252d792f

namespace Lean

/--
Execute the action `x`, then restore the initial state. Returns the state after
`x` finished.
-/
def withoutModifyingState' [Monad m] [MonadBacktrack s m] [MonadFinally m]
    (x : m α) : m (α × s) :=
  withoutModifyingState do
    let result ← x
    let finalState ← saveState
    return (result, finalState)

end Lean
```
