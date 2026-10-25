# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variant2d2fd56166a5472b74ab182fa6999bc098247326396c913b434738d3b1455a3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3ebb61f7b7488d8a47a79c8a821ec9ccff679b1` · SHA-256 `2d2fd56166a5472b74ab182fa6999bc098247326396c913b434738d3b1455a3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public meta import Aesop.Frontend.Extension
public meta import Aesop.Frontend.RuleExpr

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
```
