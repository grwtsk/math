# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant417cd6e84dd4555bb8926ef97f8ce2b179c71e23acff082608d76c230a8aca68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56d05e22463dbba63e77572be87f99fe1bbfa51c` · SHA-256 `8317925480517d1f388747605b1897ef9bd1b220ff9f799f883a9da83f8cd927`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtResult.Variant7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExtResult.Variant7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Util/Tactic/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tracing
import Lean.Elab.Tactic.Ext
import Lean.Meta.Tactic.Intro


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtResult.Variant7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1

public section

open Lean Lean.Meta Lean.Elab.Tactic.Ext

namespace Aesop

structure ExtResult where
  depth : Nat
  commonFVarIds : Array FVarId
  goals : Array (MVarId × Array FVarId)

partial def straightLineExt (goal : MVarId) : MetaM ExtResult :=
  go goal 0 #[]
where
  go (goal : MVarId) (depth : Nat) (commonFVarIds : Array FVarId) :
      MetaM ExtResult:= do
    withConstAesopTraceNode .debug (return m!"straightLineExt") do
    aesop_trace[debug] "goal:{indentD goal}"
    let goals? ← show MetaM _ from observing? $ applyExtTheoremAt goal
    if let some goals := goals? then
      aesop_trace[debug] "ext lemma applied; new goals:{indentD $ Elab.goalsToMessageData goals}"
      let goals := goals.toArray
      if goals.isEmpty then
        return { depth := depth + 1, goals := #[], commonFVarIds := #[] }
      let goals ← goals.mapM λ goal => do
        let (fvarIds, goal) ← goal.intros
        return (goal, fvarIds)
      if h : goals.size = 1 then
        let (goal, fvarIds) := goals[0]
        go goal (depth + 1) (commonFVarIds ++ fvarIds)
      else
        return { depth := depth + 1, goals, commonFVarIds }
    else
      aesop_trace[debug] "no applicable ext lemma"
      return { depth, goals := #[(goal, #[])], commonFVarIds }

def straightLineExtProgress (goal : MVarId) : MetaM ExtResult := do
  let result ← straightLineExt goal
  if result.depth == 0 then
    throwError "no applicable extensionality theorem found"
  return result

end Aesop
```
