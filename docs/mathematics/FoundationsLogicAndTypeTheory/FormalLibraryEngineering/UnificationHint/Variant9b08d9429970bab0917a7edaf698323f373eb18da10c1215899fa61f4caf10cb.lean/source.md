# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnificationHint.Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07535d273864f949114ced62bf7bcaf94e4b1e88` · SHA-256 `cc359d547d7efad35265473dd3feaa338c7ecb3575dd81f309effbc4f28d8d19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnificationHintEntry.Variant86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UnificationHintEntry.Variant86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/UnificationHint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.SynthInstance


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnificationHintEntry.Variant86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec

public section

namespace Lean.Meta

abbrev UnificationHintKey := DiscrTree.Key

structure UnificationHintEntry where
  keys        : Array UnificationHintKey
  val         : Name
  deriving Inhabited

abbrev UnificationHintTree := DiscrTree Name

structure UnificationHints where
  discrTree : UnificationHintTree := DiscrTree.empty
  deriving Inhabited

instance : ToFormat UnificationHints where
  format h := format h.discrTree

private def config : ConfigWithKey :=
  { iota := false, proj := .no : Config }.toConfigWithKey

def UnificationHints.add (hints : UnificationHints) (e : UnificationHintEntry) : UnificationHints :=
  { hints with discrTree := hints.discrTree.insertKeyValue e.keys e.val }

builtin_initialize unificationHintExtension : SimpleScopedEnvExtension UnificationHintEntry UnificationHints ←
  registerSimpleScopedEnvExtension {
    addEntry := UnificationHints.add
    initial  := {}
  }

structure UnificationConstraint where
  lhs : Expr
  rhs : Expr

structure UnificationHint where
  pattern     : UnificationConstraint
  constraints : List UnificationConstraint

private partial def decodeUnificationHint (e : Expr) : ExceptT MessageData Id UnificationHint := do
  decode e #[]
where
  decodeConstraint (e : Expr) : ExceptT MessageData Id UnificationConstraint :=
    match e.eq? with
    | some (_, lhs, rhs) => return UnificationConstraint.mk lhs rhs
    | none => throw m!"invalid unification hint constraint, unexpected term{indentExpr e}"
  decode (e : Expr) (cs : Array UnificationConstraint) : ExceptT MessageData Id UnificationHint := do
    match e with
    | Expr.forallE _ d b _ => do
      let c ← decodeConstraint d
      if b.hasLooseBVars then
        throw m!"invalid unification hint constraint, unexpected dependency{indentExpr e}"
      decode b (cs.push c)
    | _ => do
      let p ← decodeConstraint e
      return { pattern := p, constraints := cs.toList }

private partial def validateHint (hint : UnificationHint) : MetaM Unit := do
  hint.constraints.forM fun c => do
    unless (← isDefEq c.lhs c.rhs) do
      throwError "invalid unification hint, failed to unify constraint left-hand-side{indentExpr c.lhs}\nwith right-hand-side{indentExpr c.rhs}"
  unless (← isDefEq hint.pattern.lhs hint.pattern.rhs) do
    throwError "invalid unification hint, failed to unify pattern left-hand-side{indentExpr hint.pattern.lhs}\nwith right-hand-side{indentExpr hint.pattern.rhs}"

def addUnificationHint (declName : Name) (kind : AttributeKind) : MetaM Unit :=
  withNewMCtxDepth do
    let info ← getConstInfo declName
    match info.value? with
    | none => throwError "invalid unification hint, it must be a definition"
    | some val =>
      let (_, _, body) ← lambdaMetaTelescope val
      match decodeUnificationHint body with
      | Except.error msg => throwError msg
      | Except.ok hint =>
        let keys ← withConfigWithKey config <| DiscrTree.mkPath hint.pattern.lhs
        validateHint hint
        unificationHintExtension.add { keys := keys, val := declName } kind

builtin_initialize
  registerBuiltinAttribute {
    name  := `unification_hint
    descr := "unification hint"
    add   := fun declName stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      discard <| addUnificationHint declName kind |>.run
  }

def tryUnificationHints (t s : Expr) : MetaM Bool := do
  trace[Meta.isDefEq.hint] "{t} =?= {s}"
  unless (← getConfig).unificationHints do
    return false
  if t.isMVar then
    return false
  let hints := unificationHintExtension.getState (← getEnv)
  let candidates ← withConfigWithKey config <| hints.discrTree.getMatch t
  for candidate in candidates do
    if (← tryCandidate candidate) then
      return true
  return false
where
  isDefEqPattern p e :=
    withReducible <| Meta.isExprDefEqAux p e

  tryCandidate candidate : MetaM Bool :=
    withTraceNode `Meta.isDefEq.hint
      (fun _ => return m!"hint {candidate} at {t} =?= {s}") do
    checkpointDefEq do
      let cinfo ← getConstInfo candidate
      let us ← cinfo.levelParams.mapM fun _ => mkFreshLevelMVar
      let val ← instantiateValueLevelParams cinfo us
      let (xs, bis, body) ← lambdaMetaTelescope val
      let hint? ← withConfig (fun cfg => { cfg with unificationHints := false }) do
        match decodeUnificationHint body with
        | Except.error _ => return none
        | Except.ok hint =>
          if (← isDefEqPattern hint.pattern.lhs t <&&> isDefEqPattern hint.pattern.rhs s) then
            return some hint
          else
            return none
      match hint? with
      | none      => return false
      | some hint =>
        trace[Meta.isDefEq.hint] "{candidate} succeeded, applying constraints"
        for c in hint.constraints do
          unless (← Meta.isExprDefEqAux c.lhs c.rhs) do
            return false
        for x in xs, bi in bis do
          if bi == BinderInfo.instImplicit then
            match (← trySynthInstance (← inferType x)) with
            | LOption.some val => unless (← isDefEq x val) do return false
            | _                => return false
        return true

builtin_initialize
  registerTraceClass `Meta.isDefEq.hint

end Lean.Meta
```
