# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c69938afd8f9223631306fff8954e5c7d732605` · SHA-256 `6aa5bef5554385050be32b02f9d84ca9de8739b564da5188dffd3c1679844b08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqnInfo.Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EqnInfo.Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/PartialFixpoint/Eqns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.PreDefinition.FixedParams
import Init.Internal.Order.Basic
import Lean.Meta.Tactic.Delta
import Lean.Meta.Tactic.Refl


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqnInfo.Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8

namespace Lean.Elab.PartialFixpoint
open Meta

public structure EqnInfo where
  declName    : Name
  levelParams : List Name
  type        : Expr
  value       : Expr
  declNames       : Array Name
  declNameNonRec  : Name
  fixedParamPerms : FixedParamPerms
  fixpointType    : Array PartialFixpointType
  deriving Inhabited

public builtin_initialize eqnInfoExt : MapDeclarationExtension EqnInfo ←
  mkMapDeclarationExtension (exportEntriesFn := fun env s =>
    let all := s.toArray
    -- Do not export for non-exposed defs at exported/server levels
    let exported := s.filter (fun n _ => env.hasExposedBody n) |>.toArray
    { exported, server := exported, «private» := all })

public def registerEqnsInfo (preDefs : Array PreDefinition) (declNameNonRec : Name)
    (fixedParamPerms : FixedParamPerms) (fixpointType : Array PartialFixpointType): MetaM Unit := do
  preDefs.forM fun preDef => ensureEqnReservedNamesAvailable preDef.declName
  unless preDefs.all fun p => p.kind.isTheorem do
    unless (← preDefs.allM fun p => isProp p.type) do
      let declNames := preDefs.map (·.declName)
      modifyEnv fun env =>
        preDefs.foldl (init := env) fun env preDef =>
          eqnInfoExt.insert env preDef.declName { preDef with
            declNames, declNameNonRec, fixedParamPerms, fixpointType }

private def deltaLHSUntilFix (declName declNameNonRec : Name) (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  let target ← mvarId.getType'
  let some (_, lhs, rhs) := target.eq? | throwTacticEx `deltaLHSUntilFix mvarId "equality expected"
  let lhs' ← deltaExpand lhs fun n => n == declName || n == declNameNonRec
  mvarId.replaceTargetDefEq (← mkEq lhs' rhs)

partial def rwFixUnder (lhs : Expr) : MetaM Expr := do
  if lhs.isAppOfArity ``Order.fix 4 then
    return mkAppN (mkConst ``Order.fix_eq lhs.getAppFn.constLevels!) lhs.getAppArgs
  else if lhs.isAppOfArity ``Order.lfp_monotone 4 then
    return mkAppN (mkConst ``Order.lfp_monotone_fix lhs.getAppFn.constLevels!) lhs.getAppArgs
  else if lhs.isApp then
    let h ← rwFixUnder lhs.appFn!
    mkAppM ``congrFun #[h, lhs.appArg!]
  else if lhs.isProj then
    let f := mkLambda `p .default (← inferType lhs.projExpr!) (lhs.updateProj! (.bvar 0))
    let h ← rwFixUnder lhs.projExpr!
    mkAppM ``congrArg #[f, h]
  else
    throwError "rwFixUnder: unexpected expression {lhs}"

def rwFixEq (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  let mut mvarId := mvarId
  let target ← mvarId.getType'
  let some (_, lhs, rhs) := target.eq? | unreachable!
  let h ← rwFixUnder lhs
  let some (_, _, lhsNew) := (← inferType h).eq? | unreachable!
  let targetNew ← mkEq lhsNew rhs
  let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew
  mvarId.assign (← mkEqTrans h mvarNew)
  return mvarNew.mvarId!

/-- Generate the "unfold" lemma for `declName`. -/
def mkUnfoldEq (declName : Name) (info : EqnInfo) : MetaM Name := do
  let name := mkEqLikeNameFor (← getEnv) declName unfoldThmSuffix
  realizeConst declName name (doRealize name)
  return name
where
  doRealize name := withOptions (tactic.hygienic.set · false) do
    lambdaTelescope info.value fun xs body => do
      let us := info.levelParams.map mkLevelParam
      let type ← mkEq (mkAppN (Lean.mkConst declName us) xs) body
      let goal ← withNewMCtxDepth do
        try
          let goal ← mkFreshExprSyntheticOpaqueMVar type
          let mvarId := goal.mvarId!
          trace[Elab.definition.partialFixpoint] "mkUnfoldEq start:{mvarId}"
          let mvarId ← deltaLHSUntilFix declName info.declNameNonRec mvarId
          trace[Elab.definition.partialFixpoint] "mkUnfoldEq after deltaLHS:{mvarId}"
          let mvarId ← rwFixEq mvarId
          trace[Elab.definition.partialFixpoint] "mkUnfoldEq after rwFixEq:{mvarId}"
          withAtLeastTransparency .all <|
            withOptions (smartUnfolding.set · false) <|
              mvarId.refl
          trace[Elab.definition.partialFixpoint] "mkUnfoldEq rfl succeeded"
          instantiateMVars goal
        catch e =>
          throwError "failed to generate unfold theorem for `{.ofConstName declName}`:\n{e.toMessageData}"
      let type ← mkForallFVars xs type
      let type ← letToHave type
      let value ← mkLambdaFVars xs goal

      addDecl <| (←mkThmOrUnsafeDef {
        name := name
        levelParams := info.levelParams
        type := type
        value := value
      })

def getUnfoldFor? (declName : Name) : MetaM (Option Name) := do
  let name := mkEqLikeNameFor (← getEnv) declName unfoldThmSuffix
  let env ← getEnv
  if env.contains name then return name
  let some info := eqnInfoExt.find? env declName | return none
  return some (← mkUnfoldEq declName info)

builtin_initialize
  registerGetUnfoldEqnFn getUnfoldFor?

end Lean.Elab.PartialFixpoint
```
