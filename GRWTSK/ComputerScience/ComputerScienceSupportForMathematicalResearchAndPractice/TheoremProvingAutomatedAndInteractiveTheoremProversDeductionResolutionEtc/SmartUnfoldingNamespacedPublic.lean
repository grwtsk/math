-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddSmartUnfoldingDefAux.Variant54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddSmartUnfoldingDefAux.Variant54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/Structural/SmartUnfolding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.PreDefinition.Basic
public import Lean.Elab.PreDefinition.Structural.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddSmartUnfoldingDefAux.Variant54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150

public section

namespace Lean.Elab.Structural
open Meta

partial def addSmartUnfoldingDefAux (preDef : PreDefinition) (recArgPos : Nat) : MetaM PreDefinition := do
  return { preDef with
    declName  := mkSmartUnfoldingNameFor preDef.declName
    value     := (← visit preDef.value)
    modifiers := default
  }
where
  /--
     Auxiliary method for annotating `match`-alternatives with `markSmartUnfoldingMatch` and `markSmartUnfoldingMatchAlt`.

     It uses the following approach:
     - Whenever it finds a `match` application `e` s.t. `recArgHasLooseBVarsAt preDef.declName recArgPos e`,
       it marks the `match` with `markSmartUnfoldingMatch`, and each alternative that does not contain a nested marked `match`
       is marked with `markSmartUnfoldingMatchAlt`.

     Recall that the condition `recArgHasLooseBVarsAt preDef.declName recArgPos e` is the one used at `mkBRecOn`.
  -/
  visit (e : Expr) : MetaM Expr := do
    match e with
    | Expr.lam ..     => lambdaTelescope e fun xs b => do mkLambdaFVars xs (← visit b)
    | Expr.forallE .. => forallTelescope e fun xs b => do mkForallFVars xs (← visit b)
    | Expr.letE n type val body nondep =>
      mapLetDecl n type (← visit val) (nondep := nondep) fun x => do
        visit (body.instantiate1 x)
    | Expr.mdata d b     => return mkMData d (← visit b)
    | Expr.proj n i s    => return mkProj n i (← visit s)
    | Expr.app .. =>
      let processApp (e : Expr) : MetaM Expr :=
        e.withApp fun f args =>
          return mkAppN (← visit f) (← args.mapM visit)
      match (← matchMatcherApp? e) with
      | some matcherApp =>
        if !recArgHasLooseBVarsAt preDef.declName recArgPos e then
          processApp e
        else
          let mut altsNew := #[]
          for alt in matcherApp.alts, numParams in matcherApp.altNumParams do
            let altNew ← lambdaBoundedTelescope alt numParams fun xs altBody => do
              unless xs.size = numParams do
                throwError "unexpected matcher application alternative{indentExpr alt}\nat application{indentExpr e}"
              let altBody ← visit altBody
              let containsSUnfoldMatch := Option.isSome <| altBody.find? fun e => smartUnfoldingMatch? e |>.isSome
              let altBody := if !containsSUnfoldMatch then markSmartUnfoldingMatchAlt altBody else altBody
              mkLambdaFVars xs altBody
            altsNew := altsNew.push altNew
          return markSmartUnfoldingMatch { matcherApp with alts := altsNew }.toExpr
      | _ => processApp e
    | _ => return e

partial def addSmartUnfoldingDef
    (docCtx : LocalContext × LocalInstances) (preDef : PreDefinition) (recArgPos : Nat) :
    TermElabM Unit := do
  if (← isProp preDef.type) then
    return ()
  else
    withEnableInfoTree false do
      let preDefSUnfold ← addSmartUnfoldingDefAux preDef recArgPos
      addNonRec docCtx preDefSUnfold (cleanupValue := true)

end Lean.Elab.Structural
