# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryCatch.Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d51be163905840afe79df51c87a66425ba9baeeb` · SHA-256 `be6b16f7e915a463a2237b0d750c76dd8c126488665d1d4a8d929f165d989f28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabDoCatch.Variant84f75e1da76934abdcbcba4b743ffdee3523b6d860ec2784c433baf6fbe76ff6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84f75e1da76934abdcbcba4b743ffdee3523b6d860ec2784c433baf6fbe76ff6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabDoCatch.Variant84f75e1da76934abdcbcba4b743ffdee3523b6d860ec2784c433baf6fbe76ff6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"84f75e1da76934abdcbcba4b743ffdee3523b6d860ec2784c433baf6fbe76ff6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/BuiltinDo/TryCatch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Do.Basic
meta import Lean.Parser.Do
import Lean.Elab.Do.Control


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabDoCatch.Variant84f75e1da76934abdcbcba4b743ffdee3523b6d860ec2784c433baf6fbe76ff6

public section

namespace Lean.Elab.Do

open Lean.Parser.Term
open Lean.Meta

private def elabDoCatch (lifter : EffectForwarder) (body : Expr) (catch_ : TSyntax ``doCatch) : DoElabM Expr := do
  let mi := (← read).monadInfo
  let `(doCatch| catch $x $[: $eType?]? => $catchSeq) := catch_ | throwUnsupportedSyntax
  let x := Term.mkExplicitBinder x <| match eType? with
    | some eType => eType
    | none => mkHole x
  controlAtTermElabM fun runInBase => do
    Term.elabBinder x fun x => runInBase do
      let ε ← inferType x
      let uε ← getDecLevel ε
      -- First thing we do is try and resolve the instance. This might instantiate `ε` and enables
      -- use of dot notation in `catch | .error .. => ..`.
      let catcher ←
        if eType?.isSome then
          let inst ← Term.mkInstMVar <| mkApp2 (mkConst ``MonadExceptOf [uε, mi.u, mi.v]) ε mi.m
          pure <| mkApp6 (mkConst ``tryCatchThe [uε, mi.u, mi.v])
            ε mi.m inst lifter.liftedDoBlockResultType body
        else
          let inst ← Term.mkInstMVar <| mkApp2 (mkConst ``MonadExcept [uε, mi.u, mi.v]) ε mi.m
          pure <| mkApp6 (mkConst ``MonadExcept.tryCatch [uε, mi.u, mi.v])
            ε mi.m inst lifter.liftedDoBlockResultType body
      let catch_ ← lifter.lift (elabDoSeq catchSeq)
      let catch_ ← mkLambdaFVars #[x] catch_
      return catcher catch_

@[builtin_doElem_elab Lean.Parser.Term.doTry] def elabDoTry : DoElab := fun stx dec => do
  let `(doTry| try $trySeq:doSeq $[$catches]* $[finally $finSeq?]?) := stx | throwUnsupportedSyntax
--  let `(doTry| try $trySeq:doSeq $[catch $xs $[: $eTypes?]? => $catchSeqs]* $[finally $finSeq?]?) := stx | throwUnsupportedSyntax
  checkMutVarsForShadowing <| catches.filterMap (fun | `(doCatch| catch $x:ident $[: $_]? => $_) => some x | _ => none)
  if catches.isEmpty && finSeq?.isNone then
    throwError "Invalid `try`. There must be a `catch` or `finally`."
  -- We cannot use join points because `tryCatch` and `tryFinally` are never tail-resumptive.
  -- (Proof: `do tryCatch e h; throw x ≠ tryCatch (do e; throw x) (fun e => do h e; throw x)`)
  -- This is also known as the "algebraicity property" in the algebraic effects and handlers
  -- community.
  --
  -- So we need to pack up our effects and unpack them after the `try`.
  -- We could optimize for the terminal action case by omitting the state tuple ... in the future.
  let mi := (← read).monadInfo
  let info ← inferControlInfoElem stx
  let lifter ← EffectForwarder.ofCont info dec
  let body ← do
    let body ← lifter.lift (elabDoSeq trySeq)
    let body ← catches.foldlM (init := body) fun body catch_ => do
      match catch_ with
      | `(doCatchMatch| catch $matchAlts) =>
        elabDoCatch lifter body (← `(doCatch| catch x => match x with $matchAlts))
      | `(doCatch| $catch_) =>
        elabDoCatch lifter body catch_
    match finSeq? with
      | none => pure body
      | some finSeq => do
        let β ← mkFreshResultType `β
        Term.registerMVarErrorHoleInfo β.mvarId! finSeq
        let fin ← enterFinally β <| elabDoSeq finSeq (← DoElemCont.mkPure β)
        let instMonadFinally ← Term.mkInstMVar <| mkApp (mkConst ``MonadFinally [mi.u, mi.v]) mi.m
        let instFunctor ← Term.mkInstMVar <| mkApp (mkConst ``Functor [mi.u, mi.v]) mi.m
        pure <| mkApp7 (mkConst ``tryFinally [mi.u, mi.v])
          mi.m lifter.liftedDoBlockResultType β instMonadFinally instFunctor body fin
  -- `info` already combines try and catch arms via `ControlInfo.alternative`,
  -- so its `noFallthrough` is the right liveness signal for the continuation.
  ((← lifter.restoreCont).withDeadCodeFromInfo info).mkBindUnlessPure body
```
