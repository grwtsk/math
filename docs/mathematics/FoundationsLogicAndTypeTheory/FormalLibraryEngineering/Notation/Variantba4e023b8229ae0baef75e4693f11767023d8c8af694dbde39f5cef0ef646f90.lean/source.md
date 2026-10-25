# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variantba4e023b8229ae0baef75e4693f11767023d8c8af694dbde39f5cef0ef646f90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c6caadea5d915b7f63fc3b6ca66bbdd75d3f6ed` · SHA-256 `4f42787447d4bd7c664d801c5e3488f53a8f480c7e17b6468da30a00848b33fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Antiquote.Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Antiquote.Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Syntax
public import Lean.Elab.AuxDef
public import Lean.Elab.BuiltinNotation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Antiquote.Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb

public section

namespace Lean.Elab.Command
open Lean.Syntax
open Lean.Parser.Term hiding macroArg
open Lean.Parser.Command

/-- Wrap all occurrences of the given `ident` nodes in antiquotations -/
private partial def antiquote (vars : Array Syntax) : Syntax → Syntax
  | stx => match stx with
  | `($id:ident) =>
    if vars.any (fun var => var.getId == id.getId) then
      mkAntiquotNode id (kind := `term) (isPseudoKind := true)
    else
      stx
  | _ => match stx with
    | Syntax.node i k args => Syntax.node i k (args.map (antiquote vars))
    | stx => stx

 def addInheritDocDefault (rhs : Term) (attrs? : Option (TSepArray ``attrInstance ",")) :
    Option (TSepArray ``attrInstance ",") :=
  attrs?.map fun attrs =>
    match rhs with
    | `($f:ident $_args*) | `($f:ident) =>
      attrs.getElems.map fun stx => Unhygienic.run do
        if let `(attrInstance| $attr:ident) := stx then
          if attr.getId.eraseMacroScopes == `inherit_doc then
            return ← `(attrInstance| $attr:ident $f:ident)
        pure ⟨stx⟩
    | _ => attrs

/-- Convert `notation` command lhs item into a `syntax` command item -/
def expandNotationItemIntoSyntaxItem : TSyntax ``notationItem → MacroM (TSyntax `stx)
  | `(notationItem| $_:ident$[:$prec?]?) => `(stx| term $[:$prec?]?)
  | `(notationItem| $s:str)              => `(stx| $s:str)
  -- TODO(kmill): use after stage0 update
  -- | `(notationItem| $u:unicodeAtom)      => `(stx| $u:unicodeAtom)
  -- | _                                    => Macro.throwUnsupported
  | stx =>
    if stx.raw.isOfKind ``Parser.Syntax.unicodeAtom then
      return ⟨stx.raw⟩
    else
      Macro.throwUnsupported

/-- Convert `notation` command lhs item into a pattern element -/
def expandNotationItemIntoPattern (stx : Syntax) : MacroM Syntax :=
  let k := stx.getKind
  if k == ``Lean.Parser.Command.identPrec then
    return mkAntiquotNode stx[0] (kind := `term) (isPseudoKind := true)
  else if k == strLitKind then
    strLitToPattern stx
  else if k == ``Parser.Syntax.unicodeAtom then
    let preserveForPP := !stx[4].isNone
    if preserveForPP then
      -- Use the ascii atom for the pattern; that way delaboration gives the ASCII version,
      -- which is the preferred form according to `ParserDescr.unicodeSymbol`.
      strLitToPattern stx[3]
    else
      strLitToPattern stx[1]
  else
    Macro.throwUnsupported

def removeParenthesesAux (parens body : Syntax) : Syntax :=
  match parens.getHeadInfo, body.getHeadInfo, body.getTailInfo, parens.getTailInfo with
  | .original lead _ _ _, .original _ pos trail pos',
    .original endLead endPos _ endPos', .original _ _ endTrail _ =>
      body.setHeadInfo (.original lead pos trail pos') |>.setTailInfo (.original endLead endPos endTrail endPos')
  | _, _, _, _ => body

partial def removeParentheses (stx : Syntax) : MacroM Syntax := do
  match stx with
  | `(($h:hygieneInfo $e)) => pure $ removeParenthesesAux stx (← removeParentheses $ (← Term.expandCDot? e h.getHygieneInfo).getD e)
  | _ =>
    match stx with
    | .node info kind args => pure $ .node info kind (←args.mapM removeParentheses)
    | _ => pure stx

partial def hasDuplicateAntiquot (stxs : Array Syntax) : Bool := Id.run do
  let mut seen := NameSet.empty
  for stx in stxs do
    for node in Syntax.topDown stx true do
      if node.isAntiquot then
        let ident := node.getAntiquotTerm.getId
        if seen.contains ident then
          return true
        else
          seen := seen.insert ident
  pure false

/-- Try to derive an unexpander from a notation.
    The notation must be of the form `notation ... => c body`
    where `c` is a declaration in the current scope and `body` any syntax
    that contains each variable from the LHS at most once. -/
def mkUnexpander (attrKind : TSyntax ``attrKind) (pat qrhs : Term) : OptionT MacroM Syntax := do
  let (c, args) ← match qrhs with
    | `($c:ident $args*) => pure (c, args)
    | `($c:ident)        => pure (c, #[])
    | _                  => failure
  let [(c, [])] ← Macro.resolveGlobalName c.getId | failure
  /-
  Try to remove all non semantic parenthesis. Since the parenthesizer
  runs after appUnexpanders we should not match on parenthesis that the user
  syntax inserted here for example the right hand side of:
  notation "{" x "|" p "}" => setOf (fun x => p)
  Should be matched as: setOf fun x => p
  -/
  let args ← liftM <| args.mapM removeParentheses
  /-
  The user could mention the same antiquotation from the lhs multiple
  times on the rhs, this heuristic does not support this.
  -/
  guard !hasDuplicateAntiquot args
  -- replace head constant with antiquotation so we're not dependent on the exact pretty printing of the head
  -- The reference is attached to the syntactic representation of the called function itself, not the entire function application
  let lhs ← `($$f:ident)
  let lhs := Syntax.mkApp lhs (.mk args)
  let vis := Parser.Command.visibility.ofAttrKind attrKind
  `(@[$attrKind app_unexpander $(mkIdent c)] $vis:visibility
    aux_def unexpand $(mkIdent c) : Lean.PrettyPrinter.Unexpander := fun
      | `($lhs)             => withRef f `($pat)
      | _                   => throw ())

@[builtin_command_elab Lean.Parser.Command.notation] def elabNotation : CommandElab
  | ref@`($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind
      notation $[: $prec?]? $[(name := $name?)]? $[(priority := $prio?)]? $items* => $rhs) => do
    let attrs? := addInheritDocDefault rhs attrs?
    let prio ← liftMacroM <| evalOptPrio prio?
    -- build parser
    let syntaxParts ← liftMacroM <| items.mapM expandNotationItemIntoSyntaxItem
    let cat := mkIdentFrom ref `term
    let kind ← elabSyntax (← `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind
      syntax $[: $prec?]? $[(name := $name?)]? (priority := $(quote prio)) $[$syntaxParts]* : $cat))
    -- build macro rules
    let vars := items.filter fun item => item.raw.getKind == ``identPrec
    let vars := vars.map fun var => var.raw[0]
    let qrhs := ⟨antiquote vars rhs⟩
    let patArgs ← liftMacroM <| items.mapM expandNotationItemIntoPattern
    let pat : Term := ⟨mkNode kind patArgs⟩
    let macroDecl ← `($attrKind:attrKind macro_rules | `($pat) => ``($qrhs))
    if isLocalAttrKind attrKind then
      -- Make sure the quotation pre-checker takes section variables into account for local notation.
      let opts ← getOptions
      let opts := Term.Quotation.quotPrecheck.allowSectionVars.set opts true
      withScope (fun sc => { sc with opts }) do
        elabCommand macroDecl
    else
      elabCommand macroDecl
    if let some delabDecl := (← liftMacroM <| mkUnexpander attrKind pat qrhs |>.run) then
      elabCommand delabDecl
  | _ => throwUnsupportedSyntax

end Lean.Elab.Command
```
