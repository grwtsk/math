# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrM.Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2ff62fb683154647e7bfc58d4511d644c67ae42` · SHA-256 `b52fa025be9086919a392547db5e275e0e1e6f8be3e92e9a7bc260f575a155d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorInfo.Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CtorInfo.Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp/DiscrM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.InferType
public import Lean.Compiler.LCNF.Simp.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorInfo.Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612

public section

namespace Lean.Compiler.LCNF
namespace Simp

inductive CtorInfo where
  | ctor (val : ConstructorVal) (args : Array (Arg .pure))
  | /-- Natural numbers are morally constructor applications -/
    natVal (n : Nat)

def CtorInfo.getName : CtorInfo → Name
  | .ctor val _ => val.name
  | .natVal 0   => ``Nat.zero
  | .natVal _   => ``Nat.succ

def CtorInfo.getNumParams : CtorInfo → Nat
  | .ctor val _ => val.numParams
  | .natVal _ => 0

def CtorInfo.getNumFields : CtorInfo → Nat
  | .ctor val _ => val.numFields
  | .natVal 0   => 0
  | .natVal _   => 1

structure DiscrM.Context where
  /--
  A mapping from discriminant to constructor application it is equal to in the current context.
  -/
  discrCtorMap : FVarIdMap CtorInfo := {}
  /--
  A mapping from constructor application to discriminant it is equal to in the current context.
  -/
  ctorDiscrMap : PersistentExprMap FVarId := {}

/--
Helper monad for tracking mappings from discriminant to constructor applications and back.
The combinator `withDiscrCtor` should be used when visiting `cases` alternatives.
-/
abbrev DiscrM := ReaderT DiscrM.Context CompilerM

/--
If `fvarId` is a constructor application, returns constructor information.
Remark: we use the map `discrCtorMap`.
Remark: We use this method when simplifying projections and cases-constructor.
-/
def findCtor? (fvarId : FVarId) : DiscrM (Option CtorInfo) := do
  match (← findLetDecl? fvarId) with
  | some { value := .lit (.nat n), .. } =>
    return some <| .natVal n
  | some { value := .const declName _ args, .. } =>
    let some (.ctorInfo val) := (← getEnv).find? declName | return none
    return some <| .ctor val args
  | _ => return (← read).discrCtorMap.get? fvarId

def findCtorName? (fvarId : FVarId) : DiscrM (Option Name) := do
  let some ctorInfo ← findCtor? fvarId | return none
  return ctorInfo.getName

/--
If `type` is an application of the inductive type `ind`, return its universe levels and parameters.
-/
def getIndInfo? (type : Expr) (ind : Name) : CoreM (Option (List Level × Array (Arg .pure))) := do
  let type := type.headBeta
  let .const declName us := type.getAppFn | return none
  unless declName == ind do return none
  let .inductInfo info ← getConstInfo declName | return none
  unless type.getAppNumArgs >= info.numParams do return none
  let args := type.getAppArgs[*...info.numParams].toArray.map fun
    | .fvar fvarId => .fvar fvarId
    | e => if e.isErased then .erased else .type e
  return some (us, args)

/--
Execute `x` with the information that `discr = ctorName ctorFields`.
We use this information to simplify nested cases on the same discriminant.
-/
@[inline] def withDiscrCtorImp (discr : FVarId) (ctorName : Name)
    (ctorFields : Array (Param .pure)) (x : DiscrM α) : DiscrM α := do
  let ctx ← updateCtx
  withReader (fun _ => ctx) x
where
  updateCtx : DiscrM DiscrM.Context := do
    let ctorVal ← getConstInfoCtor ctorName
    let fieldArgs := ctorFields.map (Arg.fvar ·.fvarId)
    let ctx ← read
    if let some (us, params) ← getIndInfo? (← getType discr) ctorVal.induct then
      let ctorArgs := params ++ fieldArgs
      let ctorInfo := .ctor ctorVal ctorArgs
      let ctor := LetValue.const ctorVal.name us ctorArgs
      return { ctx with discrCtorMap := ctx.discrCtorMap.insert discr ctorInfo, ctorDiscrMap := ctx.ctorDiscrMap.insert ctor.toExpr discr }
    else
      -- For the discrCtor map, the constructor parameters are irrelevant for optimizations that use this information
      let ctorInfo := .ctor ctorVal (.replicate ctorVal.numParams Arg.erased ++ fieldArgs)
      return { ctx with discrCtorMap := ctx.discrCtorMap.insert discr ctorInfo }

@[inline, inherit_doc withDiscrCtorImp]
def withDiscrCtor [MonadFunctorT DiscrM m] (discr : FVarId) (ctorName : Name)
    (ctorFields : Array (Param .pure)) : m α → m α :=
  monadMap (m := DiscrM) <| withDiscrCtorImp discr ctorName ctorFields

def simpCtorDiscrCore? (e : Expr) : DiscrM (Option FVarId) := do
  let some discr := (← read).ctorDiscrMap.find? e | return none
  unless eqvTypes (← getType discr) (← inferType e) do return none
  return some <| discr

end Simp
end Lean.Compiler.LCNF
```
