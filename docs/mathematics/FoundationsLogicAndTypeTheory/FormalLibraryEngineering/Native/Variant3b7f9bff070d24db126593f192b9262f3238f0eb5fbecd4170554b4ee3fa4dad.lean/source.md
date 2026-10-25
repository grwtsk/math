# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Native.Variant3b7f9bff070d24db126593f192b9262f3238f0eb5fbecd4170554b4ee3fa4dad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57722b18c33865f623def70a08bfa38faabadc82` · SHA-256 `6f1f5d6c35b242b2079dff798ce9c6cacdf57ad5ea9049bc6dc00ce4b32f8e2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NativeEqTrueResult.Variante1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NativeEqTrueResult.Variante1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Native.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module
prelude
public import Lean.Meta.Basic
import Lean.Util.CollectLevelParams
import Lean.Elab.DeclarationRange
import Lean.Compiler.Options


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NativeEqTrueResult.Variante1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1

open Lean Meta

namespace Lean.Meta

/-!
This module contains infrastructure for proofs by native evaluation (`native decide`, `bv_decide`).
Such proofs involve a native computation using the Lean kernel, and then asserting the result
of that computation as an axiom towards the logic.
-/

public inductive NativeEqTrueResult where
  /-- The given expression `e` evaluates to true. `prf` is a proof of `e = true`. -/
  | success (prf : Expr)
  /-- The given expression `e` evaluates to false. -/
  | notTrue

/--
A call to `nativeEqTrue tacName e`, where `e` is a closed value of type `Bool`, will compile and run
that value, check that it evaluates to `true`, and if so, will add an axiom asserting `e = true` and
return that axiom.

It is the basis for `native_decide` and `bv_decide` tactics.
-/
public def nativeEqTrue (tacticName : Name) (e : Expr) (axiomDeclRange? : Option Syntax := none) : MetaM NativeEqTrueResult  := do
  let e ← instantiateMVars e
  if e.hasFVar then
    throwError m!"Tactic `{tacticName}` failed: Cannot native decide proposition with free variables:{indentExpr e}"
  if e.hasMVar then
    throwError m!"Tactic `{tacticName}` failed: Cannot native decide proposition with metavariables:{indentExpr e}"
  let levels := (collectLevelParams {} e).params.toList
  let isTrue ← withoutModifyingEnv do
    let auxDeclName ← mkAuxDeclName <| `_native ++ tacticName ++ `decl
    let decl := Declaration.defnDecl {
      name := auxDeclName
      levelParams := levels
      type := mkConst ``Bool
      value := e
      hints := .abbrev
      safety := .safe
    }
    modifyEnv (markMeta · auxDeclName)
    try
      -- disable async/separate codegen so we can catch its exceptions; we don't want to report
      -- `evalConst` failures below when the actual reason was a codegen failure
      withOptions (Elab.async.set · false) do
      withOptions (Compiler.compiler.postponeCompile.set · false) do
      withOptions (Compiler.compiler.relaxedMetaCheck.set · true) do
        addAndCompile decl
    catch ex =>
      throwError m!"Tactic `{tacticName}` failed. Error: {ex.toMessageData}"

    -- Now evaluate the constant, and check that it is true.
    try
      unsafe evalConst Bool auxDeclName
    catch ex =>
      throwError m!"\
        Tactic `{tacticName}` failed: Could not evaluate decidable instance. \
        Error: {ex.toMessageData}"

  unless isTrue do return .notTrue

  let auxAxiomName ← mkAuxDeclName <| `_native ++ tacticName ++ `ax
  let axDecl := Declaration.axiomDecl {
    name := auxAxiomName
    levelParams := levels
    type := mkApp3 (mkConst ``Eq [1]) (mkConst ``Bool) e (mkConst ``Bool.true)
    isUnsafe := false
  }
  addDecl axDecl
  if let some ref := axiomDeclRange? then
    Elab.addDeclarationRangesFromSyntax auxAxiomName ref

  let levelParams := levels.map mkLevelParam
  return .success <| mkConst auxAxiomName levelParams
```
