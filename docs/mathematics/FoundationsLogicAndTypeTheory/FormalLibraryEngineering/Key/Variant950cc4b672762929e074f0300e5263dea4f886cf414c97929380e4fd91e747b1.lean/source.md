# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Key.Variant950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edceea66c12aab7de1cb23a7b4e516218100587c` · SHA-256 `950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
import Lake.Build.Key  -- shake: keep (builtin macro output dependency)
import Lake.DSL.Syntax
import Lake.Util.Name

/-! # DSL for Build Key
Notation for specifying build keys in a package.
-/

open Lean

namespace Lake.DSL

private def expandFacets (tgt : Term) (facets : Array Ident) : MacroM Term := do
  let facetLits := facets.map fun facet => Name.quoteFrom facet facet.getId
  facetLits.foldlM (init := tgt) fun tgt lit => `(BuildKey.facet $tgt $lit)

private def expandPackageTargetLit
  (pkg : Term) (stx : TSyntax ``packageTargetLit)
: MacroM Term := withRef stx do
  let `(packageTargetLit|$[+%$mod?]?$tgt) := stx
    | Macro.throwError "ill-formed package target literal"
  let tgtLit := Name.quoteFrom tgt tgt.getId
  if mod?.isSome then
    `(BuildKey.packageModule $pkg $tgtLit)
  else
    `(BuildKey.packageTarget $pkg $tgtLit)

@[builtin_macro moduleTargetKeyLit]
def expandModuleTargetKeyLit : Macro := fun stx => do
  let `(`+%$tk$mod$[:$facets]*) := stx
    | Macro.throwUnsupported
  withRef tk do
  let modLit := Name.quoteFrom mod mod.getId
  let tgt ← `(BuildKey.module $modLit)
  let key ← expandFacets tgt facets
  `(PartialBuildKey.mk $key)

@[builtin_macro packageTargetKeyLit]
def expandPackageTargetKeyLit : Macro := fun stx => do
  let `(`@%$tk$(pkg?)?$[/$tgt?]?$[:$facets]*) := stx
    | Macro.throwUnsupported
  withRef tk do
  let pkgLit :=
    if let some pkg := pkg? then
      Name.quoteFrom pkg pkg.getId
    else
      Name.quoteFrom tk Name.anonymous
  let tgt ←
    if let some tgt := tgt? then
      expandPackageTargetLit pkgLit tgt
    else
      `(BuildKey.package $pkgLit)
  let key ← expandFacets tgt facets
  `(PartialBuildKey.mk $key)
```
