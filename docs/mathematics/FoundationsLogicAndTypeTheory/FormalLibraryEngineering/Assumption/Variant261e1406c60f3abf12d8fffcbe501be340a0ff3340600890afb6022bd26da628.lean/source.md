# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assumption.Variant261e1406c60f3abf12d8fffcbe501be340a0ff3340600890afb6022bd26da628

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24dfd71250ef50c2c8821cc52310db7346179300` · SHA-256 `f5927da562c903d535cc996cc05ce65ad69408abd600903353c1d841a7c330f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Varianta40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attribute.Varianta40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BuiltinRules/Assumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Varianta40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6

public section

open Lean
open Lean.Meta

namespace Aesop.BuiltinRules

@[aesop safe -50 (rule_sets := [builtin])]
meta def assumption : RuleTac := λ input => do
  let goal := input.goal
  let md := input.options.assumptionTransparency
  goal.withContext do
    goal.checkNotAssigned `Aesop.BuiltinRules.assumption
    goal.instantiateMVars
    let tgt ← goal.getType
    let tgtHasMVar := tgt.hasMVar
    let initialState ← saveState
    let mut applications := #[]
    for ldecl in ← getLCtx do
      if ldecl.isImplementationDetail then
        continue
      restoreState initialState
      let (some (application, proofHasMVar)) ← tryHyp goal ldecl.fvarId md
        | continue
      if ! tgtHasMVar && ! proofHasMVar then
        applications := #[application]
        break
      else
        applications := applications.push application
    if applications.isEmpty then
      throwTacticEx `Aesop.BuiltinRules.assumption goal "no matching assumption found"
    return ⟨applications⟩
  where
    tryHyp (goal : MVarId) (fvarId : FVarId) (md : TransparencyMode) :
        BaseM (Option (RuleApplication × Bool)) := do
      let (true, steps) ← tryExactFVarS goal fvarId md |>.run
        | return none
      let #[step] := steps
        | throwError "aesop: internal error in assumption: multiple steps"
      let proofHasMVar := (← fvarId.getType).hasMVar
      let app := {
        goals := #[]
        postState := step.postState
        scriptSteps? := #[step]
        successProbability? := none
      }
      return some (app, proofHasMVar)

end Aesop.BuiltinRules
```
