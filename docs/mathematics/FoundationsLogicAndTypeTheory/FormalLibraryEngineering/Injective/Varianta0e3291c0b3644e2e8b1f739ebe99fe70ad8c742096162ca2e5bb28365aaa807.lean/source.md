# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injective.Varianta0e3291c0b3644e2e8b1f739ebe99fe70ad8c742096162ca2e5bb28365aaa807

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `664cf4aebe0064d1e7761e07e7ab1cce17038a91` · SHA-256 `ba5959b798521d817c79af8ca78220d12a5cfe33b010df793143fb4592ad864b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InjectiveTheorems.Variant0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InjectiveTheorems.Variant0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Injective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.EMatchTheorem
import Init.Data.Function
import Init.Data.Range.Polymorphic.Iterators

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InjectiveTheorems.Variant0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf

public section
namespace Lean.Meta.Grind

builtin_initialize registerTraceClass `grind.inj
builtin_initialize registerTraceClass `grind.inj.assert
builtin_initialize registerTraceClass `grind.debug.inj

/-- Set of Injective theorems. -/
abbrev InjectiveTheorems := Theorems InjectiveTheorem

/-- A collections of sets of Injective theorems. -/
abbrev InjectiveTheoremsArray := TheoremsArray InjectiveTheorem

private partial def getSymbols (proof : Expr) (hasUniverses : Bool) : MetaM (List HeadIndex) := do
  let type ← inferType proof
  forallTelescope type fun xs type => do
    unless type.isAppOfArity ``Function.Injective 3 do
      throwError "invalid `[grind inj]` theorem, resulting type is not of the form `Function.Injective <fun>`{indentExpr type}"
    if xs.isEmpty && hasUniverses then
      throwError "invalid `[grind inj]` theorem, theorem has universe levels, but no hypotheses{indentExpr type}"
    let f := type.appArg!.eta
    let cs ← collectFnNames f
    if cs.isEmpty then
      throwError "invalid `[grind inj]` theorem, injective function must use at least one constant function symbol{indentExpr f}"
    return cs.toList.map (.const ·)
where
  collectFnNames (f : Expr) : MetaM NameSet := do
    if let .const declName _ := f then
      return { declName }
    else
      Prod.snd <$> (go f |>.run {})

  go (e : Expr) : StateRefT NameSet MetaM Unit := do
    if e.isApp then e.withApp fun f args => do
      if let .const declName _ := f then
        modify (·.insert declName)
      let kinds ← NormalizePattern.getPatternArgKinds f args.size
      for h : i in *...args.size do
        let arg  := args[i]
        let kind := kinds[i]?.getD .relevant
        if kind matches .relevant | .typeFormer then
          go arg

private def symbolsToNames (s : List HeadIndex) : List Name :=
  s.map fun
    | .const n => n
    | _ => Name.anonymous

def mkInjectiveTheorem (declName : Name) : MetaM InjectiveTheorem := do
  let info ← getConstInfo declName
  let proof ← getProofForDecl declName
  let symbols ← getSymbols proof !info.levelParams.isEmpty
  trace[grind.inj] "{declName}: {symbolsToNames symbols}"
  return {
    levelParams := #[]
    origin := .decl declName
    proof, symbols
  }

def Extension.addInjectiveAttr (ext : Extension) (declName : Name) (attrKind : AttributeKind) : MetaM Unit := do
  ext.add (.inj (← mkInjectiveTheorem declName)) attrKind

end Lean.Meta.Grind
```
