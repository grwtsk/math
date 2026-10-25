# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Recover.Variant8636a25bb865e63d26302ac2a6b95f730496074539c0f198153e61f1baf8a6a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66a4df8313f941a01b923424d22e343031b9b25f` · SHA-256 `aa5d7c29e091e7f44dc02db36e27011eb2b9d6520465bf12926355d38e2c18df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetUnassignedGoalMVarDependencies.Variant6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetUnassignedGoalMVarDependencies.Variant6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Recover.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Siddhartha Gadgil. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Siddhartha Gadgil, Jannis Limperg
-/
import Lean
import Std.Tactic.RCases
import Mathlib.Tactic.Cache


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetUnassignedGoalMVarDependencies.Variant6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde

open Lean (HashSet)
open Lean Meta Elab Tactic

namespace Mathlib.Tactic

/--
Get all metavariables which `mvarId` depends on. These are the metavariables
which occur in the target or local context or delayed assignment (if any) of
`mvarId`, plus the metavariables which occur in these metavariables, etc.
-/
partial def getUnassignedGoalMVarDependencies (mvarId : MVarId) :
    MetaM (HashSet MVarId) :=
  return (← go mvarId |>.run {}).snd
  where
    /-- auxiliary function for `getUnassignedGoalMVarDependencies` -/
    addMVars (e : Expr) : StateRefT (HashSet MVarId) MetaM Unit := do
      let mvars ← getMVars e
      let mut s ← get
      set ({} : HashSet MVarId) -- Ensure that `s` is not shared.
      for mvarId in mvars do
        unless ← mvarId.isDelayedAssigned do
          s := s.insert mvarId
      set s
      mvars.forM go
    /-- auxiliary function for `getUnassignedGoalMVarDependencies` -/
    go (mvarId : MVarId) : StateRefT (HashSet MVarId) MetaM Unit :=
      withIncRecDepth do
        let mdecl ← mvarId.getDecl
        addMVars mdecl.type
        for ldecl in mdecl.lctx do
          addMVars ldecl.type
          if let (some val) := ldecl.value? then
            addMVars val
        if let (some ass) ← getDelayedMVarAssignment? mvarId then
          let pendingMVarId := ass.mvarIdPending
          unless ← pendingMVarId.isAssigned <||> pendingMVarId.isDelayedAssigned do
            modify (·.insert pendingMVarId)
          go pendingMVarId

/-- Modifier `recover` for a tactic (sequence) to debug cases where goals are closed incorrectly.
The tactic `recover tacs` for a tactic (sequence) tacs applies the tactics and then adds goals
that are not closed starting from the original -/
elab "recover " tacs:tacticSeq : tactic => do
  let originalGoals ← getGoals
  evalTactic tacs
  let mut unassigned : HashSet MVarId := {}
  for mvarId in originalGoals do
    unless ← mvarId.isAssigned <||> mvarId.isDelayedAssigned do
      unassigned := unassigned.insert mvarId
    let unassignedMVarDependencies ← getUnassignedGoalMVarDependencies mvarId
    unassigned := unassigned.insertMany unassignedMVarDependencies.toList
  setGoals <| ((← getGoals) ++ unassigned.toList).eraseDups
```
