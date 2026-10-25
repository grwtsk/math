# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqUnfold.Varianta38ce053c33a289c399684c8a6e1cc7b02953ce483e9f2c3b6e63567d534df23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b21f9bd189520e17c02478f0e71f29e1a00f0af5` · SHA-256 `2a177b9a06dad2083cacfc2c53c3eb71da3a638cf3388609c8abfe37637e74c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryURefl.Variant3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TryURefl.Variant3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/EqUnfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
public import Lean.Meta.Eqns
public import Lean.Meta.Tactic.Rfl
public import Lean.Meta.Tactic.Intro


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryURefl.Variant3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7

public section

namespace Lean.Meta

/-- Try to close goal using `rfl` with smart unfolding turned off. -/
def tryURefl (mvarId : MVarId) : MetaM Bool :=
  withOptions (smartUnfolding.set · false) do
    try mvarId.refl; return true catch _ => return false

/--
Returns the "const unfold" theorem (`f.eq_unfold`) for the given declaration.
This is not extensible, and always builds on the unfold theorem (`f.eq_def`).
-/
def getConstUnfoldEqnFor? (declName : Name) : MetaM (Option Name) := do
  if (← getUnfoldEqnFor? (nonRec := true) declName).isNone then
    trace[ReservedNameAction] "getConstUnfoldEqnFor? {declName} failed, no unfold theorem available"
    return none
  let name := mkEqLikeNameFor (← getEnv) declName eqUnfoldThmSuffix
  realizeConst declName name <| withEqnOptions declName do
    -- we have to call `getUnfoldEqnFor?` again to make `unfoldEqnName` available in this context
    let some unfoldEqnName ← getUnfoldEqnFor? (nonRec := true) declName | unreachable!
    let info ← getConstInfo unfoldEqnName
    let type ← forallTelescope info.type fun xs eq => do
      let some (_, lhs, rhs) := eq.eq? | throwError "Unexpected unfold theorem type {info.type}"
      unless lhs.getAppFn.isConstOf declName do
        throwError "Unexpected unfold theorem type {info.type}"
      unless lhs.getAppArgs == xs do
        throwError "Unexpected unfold theorem type {info.type}"
      let type ← mkEq lhs.getAppFn (← mkLambdaFVars xs rhs)
      return type
    let value ← withNewMCtxDepth do
      let main ← mkFreshExprSyntheticOpaqueMVar type
      if (← tryURefl main.mvarId!) then -- try to make a rfl lemma if possible
        instantiateMVars main
      else forallTelescope info.type fun xs _eq => do
        let mut proof ← mkConstWithLevelParams unfoldEqnName
        proof := mkAppN proof xs
        for x in xs.reverse do
          proof ← mkLambdaFVars #[x] proof
          proof ← mkAppM ``funext #[proof]
        return proof
    addDecl <| Declaration.thmDecl {
      name, type, value
      levelParams := info.levelParams
    }
    inferDefEqAttr name
  return some name


builtin_initialize
  registerReservedNameAction fun name => do
    let .str p s := name | return false
    if s == eqUnfoldThmSuffix then
      let env := (← getEnv).setExporting false
      for p in [p, privateToUserName p] do
        if env.isSafeDefinition p then
          return (← MetaM.run' <| getConstUnfoldEqnFor? p).isSome
    return false

end Lean.Meta
```
