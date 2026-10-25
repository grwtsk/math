# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simpa.Variantff7070529ea108505a2ecbcde60c5c3f08deef46530e3c0aaeb7514576145ffe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a838ccf8f38d4a3a9208c6313d0d7428ea8f5bd6` · SHA-256 `78f9a2d74d46da1c4f4310a6999af9daa190044509db4a702bd953b9ce1a99c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkSimpOnly.Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MkSimpOnly.Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/Simpa.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Gabriel Ebner, Mario Carneiro
-/
import Lean.Meta.Tactic.Assumption
import Lean.Elab.Tactic.Simp
import Lean.Linter.Util
import Std.Lean.LocalContext
import Std.Lean.Parser
import Std.Tactic.OpenPrivate
import Std.Tactic.TryThis


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkSimpOnly.Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f

/--
Enables the 'unnecessary `simpa`' linter. This will report if a use of
`simpa` could be proven using `simp` or `simp at h` instead.
-/
register_option linter.unnecessarySimpa : Bool := {
  defValue := true
  descr := "enable the 'unnecessary simpa' linter"
}

namespace Std.Tactic.Simpa

open Lean Parser.Tactic Elab Meta Term Tactic Simp Linter

/-- The arguments to the `simpa` family tactics. -/
syntax simpaArgsRest := (config)? (discharger)? &" only "? (simpArgs)? (" using " term)?

/--
This is a "finishing" tactic modification of `simp`. It has two forms.

* `simpa [rules, ⋯] using e` will simplify the goal and the type of
  `e` using `rules`, then try to close the goal using `e`.

  Simplifying the type of `e` makes it more likely to match the goal
  (which has also been simplified). This construction also tends to be
  more robust under changes to the simp lemma set.

* `simpa [rules, ⋯]` will simplify the goal and the type of a
  hypothesis `this` if present in the context, then try to close the goal using
  the `assumption` tactic.

#TODO: implement `?`
-/
syntax (name := simpa) "simpa" "?"? "!"? simpaArgsRest : tactic
@[inherit_doc simpa] macro "simpa!" rest:simpaArgsRest : tactic =>
  `(tactic| simpa ! $rest:simpaArgsRest)
@[inherit_doc simpa] macro "simpa?" rest:simpaArgsRest : tactic =>
  `(tactic| simpa ? $rest:simpaArgsRest)
@[inherit_doc simpa] macro "simpa?!" rest:simpaArgsRest : tactic =>
  `(tactic| simpa ?! $rest:simpaArgsRest)

open private useImplicitLambda from Lean.Elab.Term

-- FIXME: remove when lean4#1862 lands
open TSyntax.Compat in
/--
If `stx` is the syntax of a `simp`, `simp_all` or `dsimp` tactic invocation, and
`usedSimps` is the set of simp lemmas used by this invocation, then `mkSimpOnly`
creates the syntax of an equivalent `simp only`, `simp_all only` or `dsimp only`
invocation.
-/
private def mkSimpOnly (stx : Syntax) (usedSimps : UsedSimps) : MetaM Syntax.Tactic := do
  let isSimpAll := stx[0].getAtomVal == "simp_all"
  let mut stx := stx
  if stx[3].isNone then
    stx := stx.setArg 3 (mkNullNode #[mkAtom "only"])
  let mut args := #[]
  let mut localsOrStar := some #[]
  let lctx ← getLCtx
  let env ← getEnv
  for (thm, _) in usedSimps.toArray.qsort (·.2 < ·.2) do
    match thm with
    | .decl declName inv => -- global definitions in the environment
      if env.contains declName && !simpOnlyBuiltins.contains declName then
        args := args.push (← if inv then
          `(Parser.Tactic.simpLemma| ← $(mkIdent (← unresolveNameGlobal declName)):ident)
        else
          `(Parser.Tactic.simpLemma| $(mkIdent (← unresolveNameGlobal declName)):ident))
    | .fvar fvarId => -- local hypotheses in the context
      if isSimpAll then
        continue
        -- `simp_all` uses all hypotheses anyway, so we do not need to include
        -- them in the arguments. In fact, it would be harmful to do so:
        -- `simp_all only [h]`, where `h` is a hypothesis, simplifies `h` to
        -- `True` and subsequenly removes it from the context, whereas
        -- `simp_all` does not. So to get behavior equivalent to `simp_all`, we
        -- must omit `h`.
      if let some ldecl := lctx.find? fvarId then
        localsOrStar := localsOrStar.bind fun locals =>
          if !ldecl.userName.isInaccessibleUserName &&
              (lctx.findFromUserName? ldecl.userName).get!.fvarId == ldecl.fvarId then
            some (locals.push ldecl.userName)
          else
            none
      -- Note: the `if let` can fail for `simp (config := {contextual := true})` when
      -- rewriting with a variable that was introduced in a scope. In that case we just ignore.
    | .stx _ thmStx => -- simp theorems provided in the local invocation
      args := args.push thmStx
    | .other _ => -- Ignore "special" simp lemmas such as constructed by `simp_all`.
      pure ()     -- We can't display them anyway.
  if let some locals := localsOrStar then
    args := args ++ (← locals.mapM fun id => `(Parser.Tactic.simpLemma| $(mkIdent id):ident))
  else
    args := args.push (← `(Parser.Tactic.simpStar| *))
  let argsStx := if args.isEmpty then #[] else #[mkAtom "[", (mkAtom ",").mkSep args, mkAtom "]"]
  return stx.setArg 4 (mkNullNode argsStx)

/-- Gets the value of the `linter.unnecessarySimpa` option. -/
def getLinterUnnecessarySimpa (o : Options) : Bool :=
  getLinterValue linter.unnecessarySimpa o

deriving instance Repr for UseImplicitLambdaResult

elab_rules : tactic
| `(tactic| simpa%$tk $[?%$squeeze]? $[!%$unfold]? $(cfg)? $(disch)? $[only%$only]?
      $[[$args,*]]? $[using $usingArg]?) => Elab.Tactic.focus do
  let stx ← `(tactic| simp $(cfg)? $(disch)? $[only%$only]? $[[$args,*]]?)
  let { ctx, dischargeWrapper } ← withMainContext <| mkSimpContext stx (eraseLocal := false)
  let ctx := if unfold.isSome then { ctx with config.autoUnfold := true } else ctx
  -- TODO: have `simpa` fail if it doesn't use `simp`.
  let ctx := { ctx with config := { ctx.config with failIfUnchanged := false } }
  dischargeWrapper.with fun discharge? => do
    let (some (_, g), usedSimps) ←
        simpGoal (← getMainGoal) ctx (simplifyTarget := true) (discharge? := discharge?)
      | if getLinterUnnecessarySimpa (← getOptions) then
          logLint linter.unnecessarySimpa (← getRef) "try 'simp' instead of 'simpa'"
    g.withContext do
    let usedSimps ← if let some stx := usingArg then
      setGoals [g]
      g.withContext do
      let e ← Tactic.elabTerm stx none (mayPostpone := true)
      let (h, g) ← if let .fvar h ← instantiateMVars e then
        pure (h, g)
      else
        (← g.assert `h (← inferType e) e).intro1
      let (result?, usedSimps) ← simpGoal g ctx (fvarIdsToSimp := #[h])
        (simplifyTarget := false) (usedSimps := usedSimps) (discharge? := discharge?)
      match result? with
      | some (xs, g) =>
        let h := match xs with | #[h] | #[] => h | _ => unreachable!
        let name ← mkFreshBinderNameForTactic `h
        let g ← g.rename h name
        g.assign <|← g.withContext do
          Tactic.elabTermEnsuringType (mkIdent name) (← g.getType)
      | none =>
        if getLinterUnnecessarySimpa (← getOptions) then
          if (← getLCtx).getRoundtrippingUserName? h |>.isSome then
            logLint linter.unnecessarySimpa (← getRef)
              m!"try 'simp at {Expr.fvar h}' instead of 'simpa using {Expr.fvar h}'"
      pure usedSimps
    else if let some ldecl := (← getLCtx).findFromUserName? `this then
      if let (some (_, g), usedSimps) ← simpGoal g ctx (fvarIdsToSimp := #[ldecl.fvarId])
          (simplifyTarget := false) (usedSimps := usedSimps) (discharge? := discharge?) then
        g.assumption; pure usedSimps
      else
        pure usedSimps
    else
      g.assumption; pure usedSimps
    if tactic.simp.trace.get (← getOptions) || squeeze.isSome then
      let stx ← match ← mkSimpOnly stx usedSimps with
        | `(tactic| simp $(cfg)? $(disch)? $[only%$only]? $[[$args,*]]?) =>
          if unfold.isSome then
            `(tactic| simpa! $(cfg)? $(disch)? $[only%$only]? $[[$args,*]]? $[using $usingArg]?)
          else
            `(tactic| simpa $(cfg)? $(disch)? $[only%$only]? $[[$args,*]]? $[using $usingArg]?)
        | _ => unreachable!
      TryThis.addSuggestion tk stx (origSpan? := ← getRef)
```
