-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AttrConfig.Variant2d2fd56166a5472b74ab182fa6999bc098247326396c913b434738d3b1455a3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d2fd56166a5472b74ab182fa6999bc098247326396c913b434738d3b1455a3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AttrConfig.Variant2d2fd56166a5472b74ab182fa6999bc098247326396c913b434738d3b1455a3d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2d2fd56166a5472b74ab182fa6999bc098247326396c913b434738d3b1455a3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Frontend/Attribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public meta import Aesop.Frontend.Extension
public meta import Aesop.Frontend.RuleExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AttrConfig.Variant2d2fd56166a5472b74ab182fa6999bc098247326396c913b434738d3b1455a3d

public meta section

open Lean
open Lean.Elab

namespace Aesop.Frontend

namespace Parser

declare_syntax_cat Aesop.attr_rules

syntax Aesop.rule_expr : Aesop.attr_rules
syntax "[" Aesop.rule_expr,+,? "]" : Aesop.attr_rules

syntax (name := aesop) "aesop " Aesop.attr_rules : attr

end Parser

structure AttrConfig where
  rules : Array RuleExpr
  deriving Inhabited

namespace AttrConfig

def «elab» (stx : Syntax) : TermElabM AttrConfig :=
  withRef stx do
    match stx with
    | `(attr| aesop $e:Aesop.rule_expr) => do
      let r ← RuleExpr.elab e |>.run $ ← ElabM.Context.forAdditionalGlobalRules
      return { rules := #[r] }
    | `(attr| aesop [ $es:Aesop.rule_expr,* ]) => do
      let ctx ← ElabM.Context.forAdditionalGlobalRules
      let rs ← (es : Array Syntax).mapM λ e => RuleExpr.elab e |>.run ctx
      return { rules := rs }
    | _ => throwUnsupportedSyntax

end AttrConfig


initialize registerBuiltinAttribute {
  name := `aesop
  descr := "Register a declaration as an Aesop rule."
  applicationTime := .afterCompilation
  add := λ decl stx attrKind => withRef stx do
    -- TODO: should be checked in any case where `decl` will be passed to `evalConst`
    --ensureAttrDeclIsMeta `aesop decl attrKind
    let rules ← runTermElabMAsCoreM do
      let config ← AttrConfig.elab stx
      config.rules.flatMapM (·.buildAdditionalGlobalRules decl)
    for (rule, rsNames) in rules do
      for rsName in rsNames do
        addGlobalRule rsName rule attrKind (checkNotExists := true)
  erase := λ decl =>
    let ruleFilter :=
      { name := decl, scope := .global, builders := #[], phases := #[] }
    eraseGlobalRules RuleSetNameFilter.all ruleFilter (checkExists := true)
}

end Aesop.Frontend
