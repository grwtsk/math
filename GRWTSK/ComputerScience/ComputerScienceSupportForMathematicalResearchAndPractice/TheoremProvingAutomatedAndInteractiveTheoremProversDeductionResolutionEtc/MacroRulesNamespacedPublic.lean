-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabMacroRulesAux.Variant1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabMacroRulesAux.Variant1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/MacroRules.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Syntax
public import Lean.Elab.AuxDef


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabMacroRulesAux.Variant1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703

public section

namespace Lean.Elab.Command
open Lean.Syntax
open Lean.Parser.Term hiding macroArg
open Lean.Parser.Command

/--
  Remark: `k` is the user provided kind with the current namespace included.
  Recall that syntax node kinds contain the current namespace.
-/
def elabMacroRulesAux (doc? : Option (TSyntax ``docComment))
    (attrs? : Option (TSepArray ``attrInstance ",")) (attrKind : TSyntax ``attrKind)
    (tk : Syntax) (k : SyntaxNodeKind) (alts : Array (TSyntax ``matchAlt)) :
    CommandElabM Syntax := do
  let alts ← alts.mapM fun (alt : TSyntax ``matchAlt) => match alt with
    | `(matchAltExpr| | $pats,* => $rhs) => do
      let pat := pats.elemsAndSeps[0]!
      if !pat.isQuot then
        throwUnsupportedSyntax
      let quoted := getQuotContent pat
      let k' := quoted.getKind
      if checkRuleKind k' k then
        pure alt
      else if k' == choiceKind then
         match quoted.getArgs.find? fun quotAlt => checkRuleKind quotAlt.getKind k with
         | none        => throwErrorAt alt "invalid macro_rules alternative, expected syntax node kind `{k}`"
         | some quoted =>
           let pat := pat.setArg 1 quoted
           let pats := pats.elemsAndSeps.set! 0 pat
           `(matchAltExpr| | $(⟨pats⟩),* => $rhs)
      else
        throwErrorAt alt "invalid macro_rules alternative, unexpected syntax node kind `{k'}`"
    | _ => throwUnsupportedSyntax
  let attr ← `(attrInstance| $attrKind macro $(Lean.mkIdent k))
  let attrs := match attrs? with
    | some attrs => attrs.getElems.push attr
    | none => #[attr]
  let vis := Parser.Command.visibility.ofAttrKind attrKind
  `($[$doc?:docComment]? @[$attrs,*] $vis:visibility
    aux_def macroRules $(mkIdentFrom tk k (canonical := true)) : Macro :=
     fun $alts:matchAlt* | _ => no_error_if_unused% throw Lean.Macro.Exception.unsupportedSyntax)

@[builtin_command_elab «macro_rules»] def elabMacroRules : CommandElab :=
  adaptExpander fun stx => match stx with
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind macro_rules%$tk $alts:matchAlt*) =>
    -- exclude command prefix from synthetic position used for e.g. jumping to the macro definition
    withRef (mkNullNode #[tk, mkNullNode alts]) do
      expandNoKindMacroRulesAux alts "macro_rules" fun kind? alts =>
        `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind macro_rules $[(kind := $(mkIdent <$> kind?))]? $alts:matchAlt*)
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind macro_rules%$tk (kind := $kind) | $x:ident => $rhs) =>
    withRef (mkNullNode #[tk, rhs]) do
      let attr ← `(attrInstance| $attrKind:attrKind macro $kind)
      let attrs := match attrs? with
        | some attrs => attrs.getElems.push attr
        | none => #[attr]
      let vis := Parser.Command.visibility.ofAttrKind attrKind
      `($[$doc?:docComment]? @[$attrs,*] $vis:visibility
        aux_def $(mkIdentFrom tk kind.getId (canonical := true)) $kind : Macro := fun $x:ident => $rhs)
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind macro_rules%$tk (kind := $kind) $alts:matchAlt*) =>
    withExporting (isExporting := !attrKind matches `(attrKind| local)) do
    withRef (mkNullNode #[tk, mkNullNode alts]) do
      elabMacroRulesAux doc? attrs? attrKind tk (← resolveSyntaxKind kind.getId) alts
  | _  => throwUnsupportedSyntax

end Lean.Elab.Command
