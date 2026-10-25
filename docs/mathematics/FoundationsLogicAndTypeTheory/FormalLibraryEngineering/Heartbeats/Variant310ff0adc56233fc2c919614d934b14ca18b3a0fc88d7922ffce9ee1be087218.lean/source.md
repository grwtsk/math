# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Heartbeats.Variant310ff0adc56233fc2c919614d934b14ca18b3a0fc88d7922ffce9ee1be087218

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba54b0cb9821ebf442e28212402783ffbde5ba7e` · SHA-256 `e7d1a7144ea4db2d52adafd556bc14e95ee53261460bc7e1b595a3d3e25e01ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithHeartbeats.Variant5260442e9f8f0d41d686418db7317335ae7c5ed0efc91b6c30fa9ebb2df602c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5260442e9f8f0d41d686418db7317335ae7c5ed0efc91b6c30fa9ebb2df602c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithHeartbeats.Variant5260442e9f8f0d41d686418db7317335ae7c5ed0efc91b6c30fa9ebb2df602c9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5260442e9f8f0d41d686418db7317335ae7c5ed0efc91b6c30fa9ebb2df602c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/Heartbeats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Kim Morrison
-/
module

prelude
public import Lean.CoreM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithHeartbeats.Variant5260442e9f8f0d41d686418db7317335ae7c5ed0efc91b6c30fa9ebb2df602c9

public section

/-!
# Heartbeats

Functions for interacting with the deterministic timeout heartbeat mechanism.
-/

namespace Lean

/--
Counts the number of heartbeats used during a monadic function.

Remember that user facing heartbeats (e.g. as used in `set_option maxHeartbeats`)
differ from the internally tracked heartbeats by a factor of 1000,
so you need to divide the results here by 1000 before comparing with user facing numbers.
-/
def withHeartbeats [Monad m] [MonadLiftT BaseIO m] (x : m α) : m (α × Nat) := do
  let start ← IO.getNumHeartbeats
  let r ← x
  let finish ← IO.getNumHeartbeats
  return (r, finish - start)

/-- Returns the current `maxHeartbeats`. -/
def getMaxHeartbeats : CoreM Nat := do pure <| (← read).maxHeartbeats

/-- Returns the current `initHeartbeats`. -/
def getInitHeartbeats : CoreM Nat := do pure <| (← read).initHeartbeats

/-- Returns the remaining heartbeats available in this computation. -/
def getRemainingHeartbeats : CoreM Nat := do
  pure <| (← getMaxHeartbeats) - ((← IO.getNumHeartbeats) - (← getInitHeartbeats))

/--
Returns the percentage of the max heartbeats allowed
that have been consumed so far in this computation.
-/
def heartbeatsPercent : CoreM Nat := do
  pure <| ((← IO.getNumHeartbeats) - (← getInitHeartbeats)) * 100 / (← getMaxHeartbeats)

/-- Log a message if it looks like we ran out of time. -/
def reportOutOfHeartbeats (tac : Name) (stx : Syntax) (threshold : Nat := 90) : CoreM Unit := do
  if (← heartbeatsPercent) ≥ threshold then
    logInfoAt stx s!"\
      `{tac}` stopped because it was running out of time.\n\
      You may get better results using `set_option maxHeartbeats 0`."

end Lean
```
