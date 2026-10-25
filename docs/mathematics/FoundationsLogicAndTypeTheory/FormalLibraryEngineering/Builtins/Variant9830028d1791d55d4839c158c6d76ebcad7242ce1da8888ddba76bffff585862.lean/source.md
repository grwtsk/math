# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Builtins.Variant9830028d1791d55d4839c158c6d76ebcad7242ce1da8888ddba76bffff585862

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed5fbcda75aa5cb912d17020af9211471db82a1d` · SHA-256 `24a24346d5533a0cfde1445e41044f6608aed0a7909290e5fe6b787e17a26b2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabEnsureEvalTermInstance.Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabEnsureEvalTermInstance.Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/ConfigEval/Builtins.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Elab.ConfigEval.Commands
public import Lean.Elab.ConfigEval.DeriveEvalConfigItem
import Lean.Linter.MissingDocs

/-!
# Builtin elaborators and macros for ConfigEval commands

The elaborators are builtins to avoid bootstrapping issues in core Lean.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabEnsureEvalTermInstance.Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9

public section

namespace Lean.Elab.ConfigEval

open Meta Term Command

@[builtin_command_elab ensureEvalTermInstance]
def elabEnsureEvalTermInstance : CommandElab
  | `(command| $[$vis?:visibility]? $kind:attrKind ensure_eval_term_instance%$tk $t:term) => do
    let type ← liftTermElabM do withoutErrToSorry <| elabTermAndSynthesize t none
    ensureEvalTerm vis? kind tk t type
  | _ => throwUnsupportedSyntax

@[builtin_command_elab ensureEvalExprInstance]
def elabEnsureEvalExprInstance : CommandElab
  | `(command| $[$vis?:visibility]? $kind:attrKind ensure_eval_expr_instance%$tk $t:term) => do
    let type ← liftTermElabM do withoutErrToSorry <| elabTermAndSynthesize t none
    ensureEvalExpr vis? kind tk t type
  | _ => throwUnsupportedSyntax

@[builtin_macro ensureEvalTermExprInstances]
def expandEnsureEvalTermExprInstance : Macro
  | `(command| $[$vis?:visibility]? $kind:attrKind ensure_eval_term_expr_instances%$tk $t:term) =>
    `($[$vis?]? $kind ensure_eval_term_instance%$tk $t
      $[$vis?]? $kind ensure_eval_expr_instance%$tk $t)
  | _ => Macro.throwUnsupported

@[builtin_command_elab deriveEvalExprUsingMeta]
def elabDeriveEvalExprUsingMeta : CommandElab
  | `(command| $[$vis?:visibility]? $kind:attrKind derive_eval_expr_instance_using_meta_eval%$tk $t:term) => do
    let type ← liftTermElabM do withoutErrToSorry <| elabTermAndSynthesize t none
    deriveEvalExprUsingMetaEval vis? kind tk t type
  | _ => throwUnsupportedSyntax

def mkEvalConfigItemView (entries? : Option (TSyntax ``configEntries)) :
    CommandElabM EvalConfigItemView := do
  let mut omitFields : Array (Ident × Name) := #[]
  let mut handlers : Array EvalConfigItemHandler := #[]
  if let some entries := entries? then
    match entries with
    | `(configEntries| where $[$entries:configEntry];*) =>
      for entry in entries do
        match entry with
        | `(configEntry| omit $[$fields],*) =>
          omitFields := omitFields ++ fields.map fun f => (f, f.getId.eraseMacroScopes)
        | `(configEntry| option $key:configEntryHandlerKey := $body) =>
          let (optName, kind) ←
            match key with
            | `(configEntryHandlerKey| $opt:ident) => pure (opt.getId.eraseMacroScopes, .exact)
            | `(configEntryHandlerKey| $opt:ident.*) => pure (opt.getId.eraseMacroScopes, .wildcard)
            | `(configEntryHandlerKey| *) => pure (.anonymous, .wildcard)
            | _ => throwUnsupportedSyntax
          handlers := handlers.push { ref := key, key := optName, body, kind }
        | _ => throwUnsupportedSyntax
    | _ => throwUnsupportedSyntax
  return { omitFields, handlers }

@[builtin_command_elab defEvalConfigItemCmd]
def elabDefEvalConfigItemCmd : CommandElab
  | `(command|
        $[$doc?:docComment]? $[$vis?:visibility]? $kind:attrKind
        def_eval_config_item%$tk $fn:ident $(binders)* for $struct:ident
          $[$entries?:configEntries]?) => do
    let view ← mkEvalConfigItemView entries?
    defEvalConfigItem doc? vis? kind tk struct fn binders view
  | _ => throwUnsupportedSyntax

open Linter.MissingDocs in
@[builtin_missing_docs_handler defEvalConfigItemCmd]
private def checkDefEvalConfigItemCmd : SimpleHandler := mkSimpleHandler "config elab"

open Lean.Parser.Term in
private def getBracketedBinderArgs (stx : Syntax) : MacroM (Array Term) :=
  match stx with
  | `(bracketedBinderF|($ids:ident* $[: $ty?]? $(_annot?)?)) => return ids
  | `(bracketedBinderF|{$ids:ident* $[: $_]?})               => return ids
  | `(bracketedBinderF|⦃$ids:ident* : $_⦄)                    => return ids
  | `(bracketedBinderF|[$id:ident : $_])                     => return #[id]
  | `(bracketedBinderF|[$_])                                 => return #[mkHole stx]
  | _                                                        => Macro.throwErrorAt stx "Unsupported binder"

private def mkElabConfigCmd
    (monad : Ident)
    (mkMonadAdapt : Term → MacroM Term)
    (logExceptionsDefault : Term)
    (mkLogExceptionsTerm : Term → MacroM Term)
    (doc? : Option (TSyntax ``Parser.Command.docComment))
    (vis? : Option (TSyntax ``Parser.Command.visibility))
    (tk : Syntax)
    (elabName type : Ident)
    (binders : TSyntaxArray ``Parser.Term.bracketedBinder)
    (entries? : Option (TSyntax ``configEntries)) :
    MacroM Command := do
  let fnName := mkIdentFrom elabName (elabName.getId ++ `evalConfigItem)
  let binderArgs ← binders.foldlM (init := #[]) fun args binder => do
    pure <| args ++ (← getBracketedBinderArgs binder)
  let cfgIdent := mkIdent `cfg
  let initIdent := mkIdent `init
  let logExceptionsIdent := mkIdent `logExceptions
  let logExceptionsTerm ← mkLogExceptionsTerm logExceptionsIdent
  let go ← mkMonadAdapt =<< `(EvalConfigItem.setConfig' eval $initIdent $cfgIdent (onErr := onErr) (logExceptions := $logExceptionsTerm))
  withRef (mkNullNode #[tk, elabName, type]) do
    `(private local def_eval_config_item $fnName $[$binders]* for $type $[$entries?:configEntries]?
      $[$doc?:docComment]?
      $[$vis?:visibility]? def $elabName $[$binders]* ($cfgIdent : Lean.Syntax) ($initIdent : $type := {}) ($logExceptionsIdent : Bool := $logExceptionsDefault) : $monad $type := do
        let eval : EvalConfigItem $type := @$fnName $binderArgs*
        let onErr := EvalConfigItem.defaultOnErr (cfgType? := mkConst ``$type)
        $go:term)

@[builtin_macro declareCoreConfigElab]
def elabDeclareCoreConfigElab : Macro
  | `(command|
        $[$doc?:docComment]? $[$vis?:visibility]?
        declare_core_config_elab%$tk $elabName:ident $type:ident $(binders)*
          $[$entries?:configEntries]?) =>
    mkElabConfigCmd (mkCIdent ``CoreM) pure (mkCIdent ``false)
      (fun logExceptions => pure logExceptions)
      doc? vis? tk elabName type binders entries?
  | _ => Macro.throwUnsupported

open Linter.MissingDocs in
@[builtin_missing_docs_handler declareCoreConfigElab]
private def checkDeclareCoreConfigElab : SimpleHandler := mkSimpleHandler "config elab"

@[builtin_macro declareTermConfigElab]
def elabDeclareTermConfigElab : Macro
  | `(command|
        $[$doc?:docComment]? $[$vis?:visibility]?
        declare_term_config_elab%$tk $elabName:ident $type:ident $(binders)*
          $[$entries?:configEntries]?) =>
    mkElabConfigCmd (mkCIdent ``TermElabM) pure (mkCIdent ``true)
      (fun logExceptions => `($logExceptions && (← read).errToSorry))
      doc? vis? tk elabName type binders entries?
  | _ => Macro.throwUnsupported

open Linter.MissingDocs in
@[builtin_missing_docs_handler elabDeclareTermConfigElab]
private def checkDeclareTermConfigElab : SimpleHandler := mkSimpleHandler "config elab"

@[builtin_macro declareTacticConfig]
def elabDeclareTacticConfig : Macro
  | `(command|
        $[$doc?:docComment]? $[$vis?:visibility]?
        declare_config_elab%$tk $elabName:ident $type:ident $(binders)*
          $[$entries?:configEntries]?) =>
    mkElabConfigCmd (mkCIdent ``Tactic.TacticM) pure (mkCIdent ``true)
      (fun logExceptions => `($logExceptions && (← read).recover))
      doc? vis? tk elabName type binders entries?
  | _ => Macro.throwUnsupported

open Linter.MissingDocs in
@[builtin_missing_docs_handler elabDeclareTacticConfig]
private def checkDeclareTacticConfig : SimpleHandler := mkSimpleHandler "config elab"

@[builtin_macro declareCommandConfig]
def elabDeclareCommandConfig : Macro
  | `(command|
        $[$doc?:docComment]? $[$vis?:visibility]?
        declare_command_config_elab%$tk $elabName:ident $type:ident $(binders)*
          $[$entries?:configEntries]?) =>
    mkElabConfigCmd (mkCIdent ``CommandElabM) (fun eval => `(Command.liftTermElabM $eval)) (mkCIdent ``true)
      (fun logExceptions => pure logExceptions)
      doc? vis? tk elabName type binders entries?
  | _ => Macro.throwUnsupported

open Linter.MissingDocs in
@[builtin_missing_docs_handler elabDeclareCommandConfig]
private def checkCommandConfigElab : SimpleHandler := mkSimpleHandler "config elab"

end Lean.Elab.ConfigEval
```
