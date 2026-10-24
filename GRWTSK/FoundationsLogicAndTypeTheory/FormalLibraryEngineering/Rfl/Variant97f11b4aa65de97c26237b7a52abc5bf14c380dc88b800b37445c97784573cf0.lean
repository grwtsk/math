-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflExtConfig.Variant5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ReflExtConfig.Variant5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/Relation/Rfl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Newell Jensen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Newell Jensen, Thomas Murrills
-/
import Std.Lean.Elab.Tactic
import Lean.Meta.Tactic.Apply

/-!
# `rfl` tactic extension for reflexive relations

This extends the `rfl` tactic so that it works on any reflexive relation,
provided the reflexivity lemma has been marked as `@[refl]`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflExtConfig.Variant5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df

namespace Std.Tactic

open Lean Meta

/-- Discrimation tree settings for the `refl` extension. -/
def reflExt.config : WhnfCoreConfig := {}

/-- Environment extensions for `refl` lemmas -/
initialize reflExt :
    SimpleScopedEnvExtension (Name × Array DiscrTree.Key) (DiscrTree Name) ←
  registerSimpleScopedEnvExtension {
    addEntry := fun dt (n, ks) => dt.insertCore ks n reflExt.config
    initial := {}
  }

initialize registerBuiltinAttribute {
  name := `refl
  descr := "reflexivity relation"
  add := fun decl _ kind => MetaM.run' do
    let declTy := (← getConstInfo decl).type
    let (_, _, targetTy) ← withReducible <| forallMetaTelescopeReducing declTy
    let fail := throwError
      "@[refl] attribute only applies to lemmas proving x ∼ x, got {declTy}"
    let .app (.app rel lhs) rhs := targetTy | fail
    unless ← withNewMCtxDepth <| isDefEq lhs rhs do fail
    let key ← DiscrTree.mkPath rel reflExt.config
    reflExt.add (decl, key) kind
}

open Elab Tactic

/-- `MetaM` version of the `rfl` tactic.

This tactic applies to a goal whose target has the form `x ~ x`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute [refl].
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflExtConfig.Variant5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df.Lean.MVarId.applyRfl (goal : MVarId) : MetaM Unit := do
  let .app (.app rel _) _ ← whnfR <|← instantiateMVars <|← goal.getType
    | throwError "reflexivity lemmas only apply to binary relations, not{
        indentExpr (← goal.getType)}"
  let s ← saveState
  let mut ex? := none
  for lem in ← (reflExt.getState (← getEnv)).getMatch rel reflExt.config do
    try
      let gs ← goal.apply (← mkConstWithFreshMVarLevels lem)
      if gs.isEmpty then return () else
        logError <| MessageData.tagged `Tactic.unsolvedGoals <| m!"unsolved goals\n{
          goalsToMessageData gs}"
    catch e =>
      ex? := ex? <|> (some (← saveState, e)) -- stash the first failure of `apply`
    s.restore
  if let some (sErr, e) := ex? then
    sErr.restore
    throw e
  else
    throwError "rfl failed, no lemma with @[refl] applies"

/--
This tactic applies to a goal whose target has the form `x ~ x`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute [refl].
-/
elab_rules : tactic
  | `(tactic| rfl) => withMainContext do liftMetaFinishingTactic (·.applyRfl)
