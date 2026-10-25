# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Key.Variantccbc7ca413fb0fba84c795a68abdf8e6b4034ee1c36da6dfd99e3f831d533386

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f398371e7a57545e7a4741b1e7bf5ba0201e21b` · SHA-256 `aad3bd4434c891db0ff8b81a016d687f286026d07162797d2c8e2058826fe10c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandFacets.Variant950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ExpandFacets.Variant950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/DSL/Key.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandFacets.Variant950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1

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
