# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreM.Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d21bcd962e44a4ab32c6b0c11027608247ebdb6d` · SHA-256 `c7b9b2dc6d9c3a533fb56762c9bd42cac493efc3f5a3be4670aa5b45926801e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanWithHeartbeats.Variant118496c6e5021d68e47e64f5e1ec31cd475f3f2e226f9623dee4071d7d28ba0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"118496c6e5021d68e47e64f5e1ec31cd475f3f2e226f9623dee4071d7d28ba0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanWithHeartbeats.Variant118496c6e5021d68e47e64f5e1ec31cd475f3f2e226f9623dee4071d7d28ba0b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"118496c6e5021d68e47e64f5e1ec31cd475f3f2e226f9623dee4071d7d28ba0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/CoreM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Lean.CoreM

/-!
# Additional functions using `CoreM` state.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanWithHeartbeats.Variant118496c6e5021d68e47e64f5e1ec31cd475f3f2e226f9623dee4071d7d28ba0b

open Lean

/--
Count the number of heartbeats used during a monadic function.

Remember that user facing heartbeats (e.g. as used in `set_option maxHeartbeats`)
differ from the internally tracked heartbeats by a factor of 1000,
so you need to divide the results here by 1000 before comparing with user facing numbers.
-/
-- See also `Lean.withSeconds`
def Lean.withHeartbeats [Monad m] [MonadLiftT BaseIO m] (x : m α) : m (α × Nat) := do
  let start ← IO.getNumHeartbeats
  let r ← x
  let finish ← IO.getNumHeartbeats
  return (r, finish - start)

/-- Return the current `maxHeartbeats`. -/
def getMaxHeartbeats : CoreM Nat := do pure <| (← read).maxHeartbeats

/-- Return the current `initHeartbeats`. -/
def getInitHeartbeats : CoreM Nat := do pure <| (← read).initHeartbeats

/-- Return the remaining heartbeats available in this computation. -/
def getRemainingHeartbeats : CoreM Nat := do
  pure <| (← getMaxHeartbeats) - ((← IO.getNumHeartbeats) - (← getInitHeartbeats))

/--
Return the percentage of the max heartbeats allowed
that have been consumed so far in this computation.
-/
def heartbeatsPercent : CoreM Nat := do
  pure <| ((← IO.getNumHeartbeats) - (← getInitHeartbeats)) * 100 / (← getMaxHeartbeats)

/-- Log a message if it looks like we ran out of time. -/
def reportOutOfHeartbeats (tac : Name) (stx : Syntax) (threshold : Nat := 90) : CoreM Unit := do
  if (← heartbeatsPercent) ≥ threshold then
    logInfoAt stx (s!"`{tac}` stopped because it was running out of time.\n" ++
      "You may get better results using `set_option maxHeartbeats 0`.")
```
