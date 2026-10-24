# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Heartbeats.Variant17c0100e16f1657de46b288cebaab09fd6d8b26915257e657c265222f4dc7026

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ebb0cd3caad44e55e94d7e729afa3563ce48144` · SHA-256 `5cb586b8ed7b9a082238452e276b8ea3e6b7fa13ad218acc042a62b41131ee2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MLListWhileAtLeastHeartbeatsPercent.Variant089a4ff0e84f3f999af38512b488879febe7fc01b5daa32945a6f168d31461ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"089a4ff0e84f3f999af38512b488879febe7fc01b5daa32945a6f168d31461ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MLListWhileAtLeastHeartbeatsPercent.Variant089a4ff0e84f3f999af38512b488879febe7fc01b5daa32945a6f168d31461ae","mathematical_subject":"Computation.DataStructures","original_sha256":"089a4ff0e84f3f999af38512b488879febe7fc01b5daa32945a6f168d31461ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/MLList/Heartbeats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Data.MLList.Basic
import Std.Lean.CoreM

/-!
# Truncate a `MLList` when running out of available heartbeats.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MLListWhileAtLeastHeartbeatsPercent.Variant089a4ff0e84f3f999af38512b488879febe7fc01b5daa32945a6f168d31461ae

open Lean.Core (CoreM)

/-- Take an initial segment of a monadic lazy list,
stopping when there is less than `percent` of the remaining allowed heartbeats.

If `getMaxHeartbeats` returns `0`, then this passes through the original list unmodified.

The `initial` heartbeat counter is recorded when the first element of the list is requested.
Then each time an element is requested from the wrapped list the heartbeat counter is checked, and
if `current * 100 / initial < percent` then that element is returned,
but no further elements.
-/
def MLList.whileAtLeastHeartbeatsPercent [Monad m] [MonadLiftT CoreM m]
    (L : MLList m α) (percent : Nat := 10) : MLList m α :=
  MLList.squash fun _ => do
    if (← getMaxHeartbeats) = 0 then do
      return L
    let initialHeartbeats ← getRemainingHeartbeats
    return L.takeUpToFirstM fun _ => do
      pure <| .up <| (← getRemainingHeartbeats) * 100 / initialHeartbeats < percent
```
