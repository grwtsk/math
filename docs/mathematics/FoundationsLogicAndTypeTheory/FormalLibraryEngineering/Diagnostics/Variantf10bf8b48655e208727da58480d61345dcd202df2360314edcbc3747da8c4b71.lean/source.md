# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Diagnostics.Variantf10bf8b48655e208727da58480d61345dcd202df2360314edcbc3747da8c4b71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b2e03cb340dcb8d731839f0576e199f2a5b43e1` · SHA-256 `e279dd2cea6ccd0b9f8dbb1f7d4dac7e60c8b4c5030a853870e01844aabc0ea5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OriginToKey.Variant62cb8ca5f505c1f2afb5bc3eae12ab5c498235b96a3a8007d2c35fd09002561e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62cb8ca5f505c1f2afb5bc3eae12ab5c498235b96a3a8007d2c35fd09002561e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OriginToKey.Variant62cb8ca5f505c1f2afb5bc3eae12ab5c498235b96a3a8007d2c35fd09002561e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"62cb8ca5f505c1f2afb5bc3eae12ab5c498235b96a3a8007d2c35fd09002561e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/Diagnostics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Diagnostics
public import Lean.Meta.Tactic.Simp.Types


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OriginToKey.Variant62cb8ca5f505c1f2afb5bc3eae12ab5c498235b96a3a8007d2c35fd09002561e

public section

namespace Lean.Meta.Simp

private def originToKey (thmId : Origin) : MetaM MessageData := do
  match thmId with
  | .decl declName _ _ =>
    if (← getEnv).contains declName then
      pure m!"{.ofConstName declName}"
    else
      pure m!"{declName} (builtin simproc)"
  | .fvar fvarId => pure m!"{mkFVar fvarId}"
  | _ => pure thmId.key

def mkSimpDiagSummary (counters : PHashMap Origin Nat) (usedCounters? : Option (PHashMap Origin Nat) := none) : MetaM DiagSummary := do
  let threshold := diagnostics.threshold.get (← getOptions)
  let entries := collectAboveThreshold counters threshold (fun _ => true) (lt := (· < ·))
  if entries.isEmpty then
    return {}
  else
    let mut data := #[]
    for (thmId, counter) in entries do
      let key ← originToKey thmId
      let usedMsg ← if let some usedCounters := usedCounters? then
        if let some c := usedCounters.find? thmId then pure s!", succeeded: {c}" else pure s!" {crossEmoji}" -- not used
      else
        pure ""
      data := data.push <| .trace { cls := `simp } m!"{key} ↦ {counter}{usedMsg}" #[]
    return { data, max := entries[0]!.2 }

private def mkTheoremsWithBadKeySummary (thms : PArray SimpTheorem) : MetaM DiagSummary := do
  if thms.isEmpty then
    return {}
  else
    let mut data := #[]
    for thm in thms do
      data := data.push <| .trace { cls := `simp } m!"{← originToKey thm.origin}, key: {← DiscrTree.keysAsPattern thm.keys}" #[]
      pure ()
    return { data }

def mkDiagMessages (diag : Simp.Diagnostics) : MetaM (Array MessageData) := do
  let used ← mkSimpDiagSummary diag.usedThmCounter
  let tried ← mkSimpDiagSummary diag.triedThmCounter diag.usedThmCounter
  let congr ← mkDiagSummary `simp diag.congrThmCounter
  let thmsWithBadKeys ← mkTheoremsWithBadKeySummary diag.thmsWithBadKeys
  if used.isEmpty && tried.isEmpty && congr.isEmpty && thmsWithBadKeys.isEmpty then
    return #[]
  else
    let m := #[]
    let m := appendSection m `simp "used theorems" used
    let m := appendSection m `simp "tried theorems" tried
    let m := appendSection m `simp "tried congruence theorems" congr
    let m := appendSection m `simp "theorems with bad keys" thmsWithBadKeys (resultSummary := false)
    let m := m.push <| "use `set_option diagnostics.threshold <num>` to control threshold for reporting counters"
    return m

def reportDiag (diag : Simp.Diagnostics) : MetaM Unit := do
  if (← isDiagnosticsEnabled) then
    -- Diagnostic output may reference private declarations that are not visible
    -- in exporting mode (issue #13581).
    withoutExporting do
    let m ← mkDiagMessages diag
    unless m.isEmpty do
      logInfo <| .trace { cls := `simp, collapsed := false } "Diagnostics" m

end Lean.Meta.Simp
```
