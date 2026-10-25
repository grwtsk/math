# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delab.Variantee153317af94589b0fb210bdb54baff9c90ef72ea8add2e165f03702dfd2c505

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `274b4e6343799e3a51a6c71424ee85eeda888889` · SHA-256 `34c637194830921436b8c4d049cf977cecfac3a0221e4c6efe09ffc9bca64566`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variant34304c78065c9408181b67ef908449c2912021e744d8e5da2549534ec8d265a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34304c78065c9408181b67ef908449c2912021e744d8e5da2549534ec8d265a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Macro.Variant34304c78065c9408181b67ef908449c2912021e744d8e5da2549534ec8d265a3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"34304c78065c9408181b67ef908449c2912021e744d8e5da2549534ec8d265a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/Qq/Delab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Qq.Macro
public import Qq.Typ


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variant34304c78065c9408181b67ef908449c2912021e744d8e5da2549534ec8d265a3

public section
/-!
# Delaborators for `q()` and `Q()` notation
-/

open Qq Lean Elab PrettyPrinter.Delaborator SubExpr Meta Impl Std

namespace Qq

namespace Impl

register_option pp.qq : Bool := {
  defValue := true
  descr    := "(pretty printer) print quotations as q(...) and Q(...)"
}

-- TODO: this probably exists in the library
private meta def failureOnError (x : MetaM α) : DelabM α := do
  let y : MetaM (Option α) := do try return some (← x) catch _ => return none
  match ← y with
    | some a => return a
    | none => failure

private meta def unquote (e : Expr) : UnquoteM (Expr × LocalContext) := do
  unquoteLCtx
  let newE ← unquoteExpr e
  return (newE, (← get).unquoted)

meta def checkQqDelabOptions : DelabM Unit := do
  unless ← getPPOption (·.getBool `pp.qq true) do failure
  if ← getPPOption getPPExplicit then failure

meta instance : MonadLift UnquoteM (StateT UnquoteState DelabM) where
  monadLift k s := k s

meta def delabQuoted : StateT UnquoteState DelabM Term := do
  let e ← getExpr
  -- `(failure : DelabM _)` is of course completely different than `(failure : MetaM _)`...
  let some newE ← (try some <$> unquoteExpr e catch _ => failure : UnquoteM _) | failure
  let newLCtx := (← get).unquoted
  withLCtx newLCtx (← determineLocalInstances newLCtx) do
    withTheReader SubExpr (fun s => { s with expr := newE }) delab

meta def withDelabQuoted (k : StateT UnquoteState DelabM Term) : Delab :=
  withIncRecDepth do
  StateT.run' (s := { mayPostpone := false }) <|
  show StateT UnquoteState DelabM Term from do
  unquoteLCtx
  let mut res ← k
  let showNested := `pp.qq._nested
  if (← getOptions).get showNested true then
    for fv in (← get).abstractedFVars.reverse do
      if let some (.quoted expr) := (← get).exprBackSubst[Expr.fvar fv]? then
      if let some decl := (← get).unquoted.find? fv then
      if (res.1.find? (·.getId == decl.userName)).isSome then
      if let some name := removeDollar decl.userName then
      let pos ← nextExtraPos
      res ← withTheReader SubExpr (fun _ => { expr, pos }) do
      withOptions (·.set showNested false) do
      `(let $(mkIdent name) := $(← delab); $res)
  return res

meta def delabQuotedLevel : DelabM Syntax.Level := do
  let e ← getExpr
  let (newE, _) ← failureOnError do
    StateT.run (s := { mayPostpone := false }) do
      unquoteLevelLCtx (addDefEqs := false)
      unquoteLevel e
  delabLevel newE max_prec

@[delab app.Qq.Quoted]
meta def delabQ : Delab := do
  guard $ (← getExpr).getAppNumArgs == 1
  checkQqDelabOptions
  withDelabQuoted do
  let stx ← withAppArg delabQuoted
  `(Q($stx))

@[delab app.Qq.Quoted.unsafeMk]
meta def delabq : Delab := do
  guard $ (← getExpr).getAppNumArgs == 2
  checkQqDelabOptions
  withDelabQuoted do
  let stx ← withAppArg delabQuoted
  `(q($stx))

@[delab app.Qq.QuotedDefEq]
meta def delabQuotedDefEq : Delab := do
  guard $ (← getExpr).getAppNumArgs == 4
  checkQqDelabOptions
  withDelabQuoted do
  let lhs ← withAppFn do withAppArg delabQuoted
  let rhs ← withAppArg delabQuoted
  `($lhs =Q $rhs)

@[delab app.Qq.QuotedLevelDefEq]
meta def delabQuotedLevelDefEq : Delab := do
  guard $ (← getExpr).getAppNumArgs == 2
  checkQqDelabOptions
  let lhs ← withAppFn do withAppArg delabQuotedLevel
  let rhs ← withAppArg delabQuotedLevel
  `($lhs:level =QL $rhs:level)
```
