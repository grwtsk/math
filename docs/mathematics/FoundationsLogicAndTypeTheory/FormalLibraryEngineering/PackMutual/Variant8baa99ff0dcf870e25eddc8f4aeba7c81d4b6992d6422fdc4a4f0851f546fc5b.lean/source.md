# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PackMutual.Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4e2c9f92076cb8f31efcf7dd9dde526049fdcf4` · SHA-256 `9259578f6424c83e6c0cbfb4e60ab8a49610257cd815e552f431d1ed546dea9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithAppN.Variantfb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithAppN.Variantfb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/WF/PackMutual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Joachim Breitner
-/
module

prelude
public import Lean.Meta.ArgsPacker
public import Lean.Elab.PreDefinition.WF.Eqns


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithAppN.Variantfb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f

public section

/-!
This module contains roughly everything needed to turn mutual n-ary functions into a single unary
function, as used by well-founded recursion.
-/

namespace Lean.Elab.WF
open Meta

/--
  Pass the first `n` arguments of `e` to the continuation, and apply the result to the
  remaining arguments. If `e` does not have enough arguments, it is eta-expanded as needed.

  Unlike `Meta.etaExpand` does not use `withDefault`.
-/
def withAppN (n : Nat) (e : Expr) (k : Array Expr → MetaM Expr) : MetaM Expr := do
  let args := e.getAppArgs
  if n ≤ args.size then
    let e' ← k args[*...n]
    return mkAppN e' args[n...*]
  else
    let missing := n - args.size
    forallBoundedTelescope (← inferType e) missing fun xs _ => do
      if xs.size < missing then
        throwError "Failed to eta-expand partial application"
      let e' ← k (args ++ xs)
      mkLambdaFVars xs e'

/--
Processes the expression and replaces calls to  the `preDefs` with calls to `f`.
-/
def packCalls (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker) (funNames : Array Name) (newF : Expr)
  (e : Expr) : MetaM Expr := do
  let fType ← inferType newF
  unless fType.isForall do
    throwError "Not a forall: {newF} : {fType}"
  let domain := fType.bindingDomain!
  transform e (skipConstInApp := true) (post := fun e => do
    let f := e.getAppFn
    if !f.isConst then
      return TransformStep.done e
    if let some fidx := funNames.idxOf? f.constName! then
      assert! fidx < fixedParamPerms.perms.size
      let mask := fixedParamPerms.perms[fidx]!.map Option.isSome
      let arity := mask.size
      let e' ← withAppN arity e fun args => do
        let varying := fixedParamPerms.perms[fidx]!.pickVarying args
        let packedArg ← argsPacker.pack domain fidx varying
        return mkApp newF packedArg
      return TransformStep.done e'
    return TransformStep.done e
    )

def mutualName (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker) (preDefs : Array PreDefinition) : Name :=
  if fixedParamPerms.fixedArePrefix && argsPacker.onlyOneUnary then
    preDefs[0]!.declName
  else
    if argsPacker.numFuncs > 1 then
      preDefs[0]!.declName ++ `_mutual
    else
      preDefs[0]!.declName ++ `_unary

/--
Creates a single unary function from the given `preDefs`, using the machinery in the `ArgPacker`
module.
-/
def packMutual (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker) (preDefs : Array PreDefinition) : MetaM PreDefinition := do
  let newFn := mutualName fixedParamPerms argsPacker preDefs
  if newFn = preDefs[0]!.declName then
    return preDefs[0]!
  -- Bring the fixed prefix into scope
  fixedParamPerms.perms[0]!.forallTelescope preDefs[0]!.type fun ys => do
    let types ← preDefs.mapIdxM fun i preDef =>
      fixedParamPerms.perms[i]!.instantiateForall preDef.type ys
    let vals ← preDefs.mapIdxM fun i preDef =>
      fixedParamPerms.perms[i]!.instantiateLambda preDef.value ys

    let type ← argsPacker.uncurryType types

    -- Temporarily add the unary function as an axiom, so that all expressions
    -- are still type correct
    let type ← mkForallFVars ys type
    let preDefNew := { preDefs[0]! with declName := newFn, type }
    addAsAxiom preDefNew

    let us := preDefs[0]!.levelParams.map mkLevelParam
    let f := mkAppN (mkConst newFn us) ys

    let value ← argsPacker.uncurry vals
    let value ← packCalls fixedParamPerms argsPacker (preDefs.map (·.declName)) f value
    let value ← mkLambdaFVars ys value
    return { preDefNew with value }

/--
Collect the names of the varying variables (excluding the fixed parameters); this also determines the
arity for the well-founded translations, and is turned into an `ArgsPacker`.
We use the term to determine the arity, but take the name from the type, for better names in the
```
fun : (n : Nat) → Nat | 0 => 0 | n+1 => fun n
```
idiom.
-/
def varyingVarNames (fixedParamPerms : FixedParamPerms) (preDefIdx : Nat) (preDef : PreDefinition) : MetaM (Array Name) := do
  -- We take the arity from the term, but the names from the types
  let arity ← lambdaTelescope preDef.value fun xs _ => return xs.size
  forallBoundedTelescope preDef.type arity fun xs _ => do
    assert! xs.size = arity
    assert! fixedParamPerms.perms[preDefIdx]!.size = arity
    let mut ns := #[]
    for x in xs, paramInfo in fixedParamPerms.perms[preDefIdx]! do
      if paramInfo.isSome then continue -- skip fixed parameters
      ns := ns.push (← x.fvarId!.getUserName)
    return ns

def preDefsFromUnaryNonRec (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker)
    (preDefs : Array PreDefinition) (unaryPreDefNonRec : PreDefinition) : MetaM (Array PreDefinition) := do
  withoutModifyingEnv do
    let us := unaryPreDefNonRec.levelParams.map mkLevelParam
    addAsAxiom unaryPreDefNonRec
    preDefs.mapIdxM fun fidx preDef => do
      let arity := fixedParamPerms.perms[fidx]!.size
      let value ← forallBoundedTelescope preDef.type (some arity) fun params _ => do
        assert! arity = params.size
        let xs := fixedParamPerms.perms[fidx]!.pickFixed params
        let ys := fixedParamPerms.perms[fidx]!.pickVarying params
        let value := mkAppN (mkConst unaryPreDefNonRec.declName us) xs
        let value ← argsPacker.curryProj value fidx
        let value := value.beta ys
        mkLambdaFVars params value
      trace[Elab.definition.wf] "{preDef.declName} := {value}"
      pure { preDef with value }

end Lean.Elab.WF
````
