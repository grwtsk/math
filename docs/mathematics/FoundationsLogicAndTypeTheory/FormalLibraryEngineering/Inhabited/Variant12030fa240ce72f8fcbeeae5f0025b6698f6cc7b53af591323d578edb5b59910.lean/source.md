# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inhabited.Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaf7203d838ba9e1257a0a604ac63041f50fd2b1` · SHA-256 `b5ba755ae8ab800054ab65dcd54d48a6cd089e08ccd5f2ed8057fd6cd74a45b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexSet.Variantd49039a2779a18ec3e4c2bb68a6b3c33c8b2b124d1d606a60f29dd3bc6e7d2bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d49039a2779a18ec3e4c2bb68a6b3c33c8b2b124d1d606a60f29dd3bc6e7d2bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IndexSet.Variantd49039a2779a18ec3e4c2bb68a6b3c33c8b2b124d1d606a60f29dd3bc6e7d2bd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d49039a2779a18ec3e4c2bb68a6b3c33c8b2b124d1d606a60f29dd3bc6e7d2bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Deriving/Inhabited.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexSet.Variantd49039a2779a18ec3e4c2bb68a6b3c33c8b2b124d1d606a60f29dd3bc6e7d2bd

public section

namespace Lean.Elab.Deriving
open Command Meta Parser Term

private abbrev IndexSet := Std.TreeSet Nat
private abbrev LocalInst2Index := FVarIdMap Nat

private def mkInhabitedInstanceUsing (inductiveTypeName : Name) (ctorName : Name) (addHypotheses : Bool) : CommandElabM Bool := do
  match (← liftTermElabM mkInstanceCmd?) with
  | some cmd =>
    elabCommand cmd
    return true
  | none =>
    return false
where
  addLocalInstancesForParamsAux {α} (k : Array Expr → LocalInst2Index → TermElabM α) : List Expr → Nat → Array Expr → LocalInst2Index → TermElabM α
    | [],    _, insts, map => k insts map
    | x::xs, i, insts, map =>
      try
        let instType ← mkAppM `Inhabited #[x]
        check instType
        withLocalDecl (← mkFreshUserName `inst) .instImplicit instType fun inst => do
          trace[Elab.Deriving.inhabited] "adding local instance {instType}"
          addLocalInstancesForParamsAux k xs (i+1) (insts.push inst) (map.insert inst.fvarId! i)
      catch _ =>
        addLocalInstancesForParamsAux k xs (i+1) insts map

  addLocalInstancesForParams {α} (xs : Array Expr) (k : Array Expr → LocalInst2Index → TermElabM α) : TermElabM α := do
    if addHypotheses then
      addLocalInstancesForParamsAux k xs.toList 0 #[] {}
    else
      k #[] {}

  collectUsedLocalsInsts (usedInstIdxs : IndexSet) (localInst2Index : LocalInst2Index) (e : Expr) : IndexSet :=
    if localInst2Index.isEmpty then
      usedInstIdxs
    else
      let visit {ω} : StateRefT IndexSet (ST ω) Unit :=
        e.forEachWhere Expr.isFVar fun e =>
          let fvarId := e.fvarId!
          match localInst2Index.get? fvarId with
          | some idx => modify (·.insert idx)
          | none => pure ()
      runST (fun _ => visit |>.run usedInstIdxs) |>.2

  /-- Create an `instance` command using the constructor `ctorName` with a hypothesis `Inhabited α` when `α` is one of the inductive type parameters
     at position `i` and `i ∈ usedInstIdxs`. -/
  mkInstanceCmdWith (instId : Ident) (usedInstIdxs : IndexSet) (auxFunId : Ident) : TermElabM Syntax := do
    let indVal ← getConstInfoInduct inductiveTypeName
    let mut indArgs := #[]
    let mut binders := #[]
    for i in *...indVal.numParams + indVal.numIndices do
      let arg := mkIdent (← mkFreshUserName `a)
      indArgs := indArgs.push arg
      binders := binders.push <| ← `(bracketedBinderF| { $arg:ident })
      if usedInstIdxs.contains i then
        binders := binders.push <| ← `(bracketedBinderF| [Inhabited $arg:ident ])
    let type ← `(@$(mkCIdent inductiveTypeName):ident $indArgs:ident*)
    `(instance $instId:ident $binders:bracketedBinder* : Inhabited $type := ⟨$auxFunId⟩)

  solveMVarsWithDefault (e : Expr) : TermElabM Unit := do
    let mvarIds ← getMVarsNoDelayed e
    mvarIds.forM fun mvarId => mvarId.withContext do
      unless ← mvarId.isAssigned do
        let type ← mvarId.getType
        withTraceNode `Elab.Deriving.inhabited (fun _ => return m!"synthesizing Inhabited instance for{inlineExprTrailing type}") do
          let val ← mkDefault type
          mvarId.assign val
          trace[Elab.Deriving.inhabited] "value:{inlineExprTrailing val}"

  mkDefaultValue (indVal : InductiveVal) : TermElabM (Expr × Expr × IndexSet) := do
    let us := indVal.levelParams.map Level.param
    forallTelescopeReducing indVal.type fun xs _ =>
    withImplicitBinderInfos xs do
    addLocalInstancesForParams xs[0...indVal.numParams] fun insts localInst2Index => do
      let type := mkAppN (.const inductiveTypeName us) xs
      let val ←
        if isStructure (← getEnv) inductiveTypeName then
          withTraceNode `Elab.Deriving.inhabited (fun _ => return m!"using structure instance elaborator") do
            let stx ← `(structInstDefault| struct_inst_default%)
            withoutErrToSorry <| elabTermAndSynthesize stx type
        else
          withTraceNode `Elab.Deriving.inhabited (fun _ => return m!"using constructor `{.ofConstName ctorName}`") do
            let val := mkAppN (.const ctorName us) xs[0...indVal.numParams]
            let (mvars, _, type') ← forallMetaTelescopeReducing (← inferType val)
            unless ← isDefEq type type' do
              throwError "cannot unify{indentExpr type}\nand type of constructor{indentExpr type'}"
            pure <| mkAppN val mvars
      solveMVarsWithDefault val
      let val ← instantiateMVars val
      if val.hasMVar then
        throwError "default value contains metavariables{inlineExprTrailing val}"
      let fvars := Lean.collectFVars {} val
      let insts' := insts.filter fvars.visitedExpr.contains
      let usedInstIdxs := collectUsedLocalsInsts {} localInst2Index val
      assert! insts'.size == usedInstIdxs.size
      trace[Elab.Deriving.inhabited] "inhabited instance using{inlineExpr val}{if insts'.isEmpty then m!"" else m!"(assuming parameters {insts'} are inhabited)"}"
      let xs' := xs ++ insts'
      let auxType ← mkForallFVars xs' type
      let auxVal ← mkLambdaFVars xs' val
      return (auxType, auxVal, usedInstIdxs)

  mkInstanceCmd? : TermElabM (Option Syntax) :=
    withExporting (isExporting := !isPrivateName ctorName) do
      let ctx ← mkContext ``Inhabited "default" inductiveTypeName
      let auxFunName := (← getCurrNamespace) ++ ctx.auxFunNames[0]!
      let indVal ← getConstInfoInduct inductiveTypeName
      let (auxType, auxVal, usedInstIdxs) ←
        try
          withDeclName auxFunName do mkDefaultValue indVal
        catch e =>
          trace[Elab.Deriving.inhabited] "error: {e.toMessageData}"
          return none
      addDecl <| .defnDecl <| ← mkDefinitionValInferringUnsafe
        (name        := auxFunName)
        (levelParams := indVal.levelParams)
        (type        := auxType)
        (value       := auxVal)
        (hints       := ReducibilityHints.regular (getMaxHeight (← getEnv) auxVal + 1))
      if isMarkedMeta (← getEnv) inductiveTypeName then
        modifyEnv (markMeta · auxFunName)
      compileDecls #[auxFunName]
        (logErrors := !(← read).isNoncomputableSection || isMarkedMeta (← getEnv) auxFunName)
      enableRealizationsForConst auxFunName
      trace[Elab.Deriving.inhabited] "defined {.ofConstName auxFunName}"
      let cmd ← mkInstanceCmdWith (mkIdent ctx.instName) usedInstIdxs (mkCIdent auxFunName)
      trace[Elab.Deriving.inhabited] "\n{cmd}"
      return some cmd

private def mkInhabitedInstance (declName : Name) : CommandElabM Unit := do
  withoutExposeFromCtors declName do
  let indVal ← getConstInfoInduct declName
  let doIt (addHypotheses : Bool) : CommandElabM Bool := do
    for ctorName in indVal.ctors do
      if (← mkInhabitedInstanceUsing declName ctorName addHypotheses) then
        return true
    return false
  unless (← doIt false <||> doIt true) do
    throwError "failed to generate `Inhabited` instance for `{.ofConstName declName}`"

def mkInhabitedInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    declNames.forM mkInhabitedInstance
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler `Inhabited mkInhabitedInstanceHandler
  registerTraceClass `Elab.Deriving.inhabited
```
