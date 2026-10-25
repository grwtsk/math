-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.ForEachExprWhere
public import Lean.Meta.PPGoal
import Lean.Meta.AppBuilder


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec

public section

namespace Lean.Meta

register_builtin_option debug.terminalTacticsAsSorry : Bool := {
  defValue := false
  descr    := "when enabled, terminal tactics such as `grind` and `omega` are replaced with `sorry`. Useful for debugging and fixing bootstrapping issues"
}

/-- Get the user name of the given metavariable. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.getTag (mvarId : MVarId) : MetaM Name :=
  return (← mvarId.getDecl).userName

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.setTag (mvarId : MVarId) (tag : Name) : MetaM Unit := do
  modify fun s => { s with mctx := s.mctx.setMVarUserName mvarId tag }

def appendTag (tag : Name) (suffix : Name) : Name :=
  tag.modifyBase (· ++ suffix.eraseMacroScopes)

def appendTagSuffix (mvarId : MVarId) (suffix : Name) : MetaM Unit := do
  let tag ← mvarId.getTag
  mvarId.setTag (appendTag tag suffix)

def mkFreshExprSyntheticOpaqueMVar (type : Expr) (tag : Name := Name.anonymous) : MetaM Expr :=
  mkFreshExprMVar type MetavarKind.syntheticOpaque tag

/--
Produces an error message indicating that tactic `tacticName` has failed with the message `msg`,
and displays the state of `mvarId` below the message.
-/
def mkTacticExMsg (tacticName : Name) (mvarId : MVarId) (msg : MessageData) : MessageData :=
  m!"Tactic `{tacticName}` failed: {msg}\n\n{mvarId}"

def throwTacticEx (tacticName : Name) (mvarId : MVarId) (msg? : Option MessageData := none) : MetaM α :=
  match msg? with
  | none => throwError "Tactic `{tacticName}` failed\n\n{mvarId}"
  | some msg => throwError (mkTacticExMsg tacticName mvarId msg)

/--
Rethrows the error as a nested error with the given tactic name prepended.
If the error was tagged, prepends `nested` to the tag and preserves it.
-/
def throwNestedTacticEx {α} (tacticName : Name) (ex : Exception) : MetaM α := do
  let nestedMsg := ex.toMessageData
  let msg := m!"Tactic `{tacticName}` failed with a nested error:\n{ex.toMessageData}"
  let kind := nestedMsg.kind
  let msg := if !kind.isAnonymous then
    .tagged (`nested ++ kind) msg
  else msg
  throwError msg

/-- Throw a tactic exception with given tactic name if the given metavariable is assigned. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.checkNotAssigned (mvarId : MVarId) (tacticName : Name) : MetaM Unit := do
  if (← mvarId.isAssigned) then
    let msg := m!"The metavariable below has already been assigned"
      ++ .note "This likely indicates an internal error in this tactic or a prior one"
    throwTacticEx tacticName mvarId msg

/-- Get the type of the given metavariable. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.getType (mvarId : MVarId) : MetaM Expr :=
  return (← mvarId.getDecl).type

/-- Get the type of the given metavariable after instantiating metavariables and reducing to
weak head normal form. -/
-- The `instantiateMVars` needs to be on the outside,
-- since `whnf` can unfold local definitions which may introduce metavariables.
-- We don't need an `instantiateMVars` before the `whnf`, since it instantiates as necessary.
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.getType' (mvarId : MVarId) : MetaM Expr := do
  instantiateMVars (← whnf (← mvarId.getType))

builtin_initialize registerTraceClass `Meta.Tactic

/-- Assign `mvarId` to `sorryAx` -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.admit (mvarId : MVarId) (synthetic := true) : MetaM Unit :=
  mvarId.withContext do
    mvarId.checkNotAssigned `admit
    let mvarType ← mvarId.getType
    let val ← mkLabeledSorry mvarType synthetic (unique := true)
    mvarId.assign val

/-- Beta reduce the metavariable type head -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.headBetaType (mvarId : MVarId) : MetaM Unit := do
  mvarId.setType (← mvarId.getType).headBeta

/-- Collect nondependent hypotheses that are propositions. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.getNondepPropHyps (mvarId : MVarId) : MetaM (Array FVarId) :=
  let removeDeps (e : Expr) (candidates : FVarIdHashSet) : MetaM FVarIdHashSet := do
    let e ← instantiateMVars e
    let visit : StateRefT FVarIdHashSet MetaM FVarIdHashSet := do
      if e.hasFVar then
        e.forEachWhere Expr.isFVar fun e => modify fun s => s.erase e.fvarId!
      get
    visit |>.run' candidates
  mvarId.withContext do
    let mut candidates : FVarIdHashSet := {}
    for localDecl in (← getLCtx) do
      unless localDecl.isImplementationDetail do
        candidates ← removeDeps localDecl.type candidates
        match localDecl.value? with
        | none => pure ()
        | some value => candidates ← removeDeps value candidates
        if (← isProp localDecl.type) && !localDecl.hasValue then
          candidates := candidates.insert localDecl.fvarId
    candidates ← removeDeps (← mvarId.getType) candidates
    if candidates.isEmpty then
      return #[]
    else
      let mut result := #[]
      for localDecl in (← getLCtx) do
        if candidates.contains localDecl.fvarId then
          result := result.push localDecl.fvarId
      return result

partial def saturate (mvarId : MVarId) (x : MVarId → MetaM (Option (List MVarId))) : MetaM (List MVarId) := do
  let (_, r) ← go mvarId |>.run #[]
  return r.toList
where
  go (mvarId : MVarId) : StateRefT (Array MVarId) MetaM Unit :=
    withIncRecDepth do
      match (← x mvarId) with
      | none => modify fun s => s.push mvarId
      | some mvarIds => mvarIds.forM go

def exactlyOne (mvarIds : List MVarId) (msg : MessageData := "unexpected number of goals") : MetaM MVarId :=
  match mvarIds with
  | [mvarId] => return mvarId
  | _        => throwError msg

def ensureAtMostOne (mvarIds : List MVarId) (msg : MessageData := "unexpected number of goals") : MetaM (Option MVarId) :=
  match mvarIds with
  | []       => return none
  | [mvarId] => return some mvarId
  | _        => throwError msg

/-- Return all propositions in the local context. -/
def getPropHyps : MetaM (Array FVarId) := do
  let mut result := #[]
  for localDecl in (← getLCtx) do
    unless localDecl.isImplementationDetail do
      if (← isProp localDecl.type) then
        result := result.push localDecl.fvarId
  return result

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.inferInstance (mvarId : MVarId) : MetaM Unit := mvarId.withContext do
  mvarId.checkNotAssigned `infer_instance
  let synthVal ← synthInstance (← mvarId.getType)
  unless (← isDefEq (mkMVar mvarId) synthVal) do
    throwTacticEx `infer_instance mvarId "`infer_instance` tactic failed to assign instance"

inductive TacticResultCNM where
  | closed
  | noChange
  | modified (mvarId : MVarId)


/-- Check if a goal is of a subsingleton type. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.isSubsingleton (g : MVarId) : MetaM Bool := do
  try
    discard <| synthInstance (← mkAppM ``Subsingleton #[← g.getType])
    return true
  catch _ =>
    return false

register_builtin_option tactic.skipAssignedInstances : Bool := {
  defValue := true
  descr    := "in the `rw` and `simp` tactics, if an instance implicit argument is assigned, do not try to synthesize instance."
}

end Lean.Meta
