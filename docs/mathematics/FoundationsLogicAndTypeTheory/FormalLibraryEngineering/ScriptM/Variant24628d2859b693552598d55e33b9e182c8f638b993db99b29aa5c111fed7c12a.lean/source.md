# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScriptM.Variant24628d2859b693552598d55e33b9e182c8f638b993db99b29aa5c111fed7c12a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e19347679d6c0b510b5273414a56b9ed915ca49` · SHA-256 `143fe5845bf3e827009363dab25d39b0f040417104ce94e411df125d9f51cbaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScriptT.Variant19e55f1952c9b08ab7f070a90eb86e4e2081be8aae4b10977966f1fb4c7b7429","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"19e55f1952c9b08ab7f070a90eb86e4e2081be8aae4b10977966f1fb4c7b7429","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ScriptT.Variant19e55f1952c9b08ab7f070a90eb86e4e2081be8aae4b10977966f1fb4c7b7429","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"19e55f1952c9b08ab7f070a90eb86e4e2081be8aae4b10977966f1fb4c7b7429","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/ScriptM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.BaseM
public import Aesop.Script.Step


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScriptT.Variant19e55f1952c9b08ab7f070a90eb86e4e2081be8aae4b10977966f1fb4c7b7429

public section

open Lean Aesop.Script

namespace Aesop

abbrev ScriptT m := StateRefT' IO.RealWorld (Array LazyStep) m

namespace ScriptT

protected def run [Monad m] [MonadLiftT (ST IO.RealWorld) m] (x : ScriptT m α) :
    m (α × Array LazyStep) :=
  StateRefT'.run x #[]

end ScriptT

abbrev ScriptM := ScriptT BaseM

variable [MonadStateOf (Array LazyStep) m]

def recordScriptStep (step : LazyStep) : m Unit :=
  modify (·.push step)

def recordScriptSteps (steps : Array LazyStep) : m Unit :=
  modify (· ++ steps)

def withScriptStep (preGoal : MVarId) (postGoals : α → Array MVarId)
    (success : α → Bool) (tacticBuilder : α → TacticBuilder) (x : MetaM α) :
    ScriptM α := do
  let preState ← show MetaM _ from saveState
  let a ← x
  if success a then
    let postState ← show MetaM _ from saveState
    recordScriptStep {
      tacticBuilders := #[tacticBuilder a]
      postGoals := postGoals a
      preGoal, preState, postState
    }
  return a

def withOptScriptStep (preGoal : MVarId) (postGoals : α → Array MVarId)
    (tacticBuilder : α → TacticBuilder) (x : MetaM (Option α)) :
    ScriptM (Option α) := do
  let preState ← show MetaM _ from saveState
  let some a ← x
    | return none
  let postState ← show MetaM _ from saveState
  recordScriptStep {
    tacticBuilders := #[tacticBuilder a]
    postGoals := postGoals a
    preGoal, preState, postState
  }
  return some a

end Aesop
```
