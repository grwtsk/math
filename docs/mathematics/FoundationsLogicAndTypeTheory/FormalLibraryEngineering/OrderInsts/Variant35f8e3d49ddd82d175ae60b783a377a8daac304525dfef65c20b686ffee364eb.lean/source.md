# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderInsts.Variant35f8e3d49ddd82d175ae60b783a377a8daac304525dfef65c20b686ffee364eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f15ded3cf0cc10eec2648c51ea5a08d7404721f4` · SHA-256 `697c63d06123826fe552011045c26d0a8df81f98c8f57491e671f92a12db791a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkLawfulOrderLTInst.Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkLawfulOrderLTInst.Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/OrderInsts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkLawfulOrderLTInst.Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099

public section
namespace Lean.Meta.Grind
/-!
Helper function for synthesizing order related instances.
-/

def mkLawfulOrderLTInst? (u : Level) (type : Expr) (ltInst? leInst? : Option Expr) : GoalM (Option Expr) := do
  let some ltInst := ltInst? | return none
  let some leInst := leInst? | return none
  let lawfulOrderLTType := mkApp3 (mkConst ``Std.LawfulOrderLT [u]) type ltInst leInst
  let some inst ← synthInstance? lawfulOrderLTType
    | reportDbgIssue! "type has `LE` and `LT`, but the `LT` instance is not lawful, failed to synthesize{indentExpr lawfulOrderLTType}"
      return none
  return some inst

def mkIsPreorderInst? (u : Level) (type : Expr) (leInst? : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isPreorderType := mkApp2 (mkConst ``Std.IsPreorder [u]) type leInst
  let some inst ← synthInstance? isPreorderType
    | reportDbgIssue! "type has `LE`, but is not a preorder, failed to synthesize{indentExpr isPreorderType}"
      return none
  return some inst

def mkIsPartialOrderInst? (u : Level) (type : Expr) (leInst? : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isPartialOrderType := mkApp2 (mkConst ``Std.IsPartialOrder [u]) type leInst
  let some inst ← synthInstance? isPartialOrderType
    | reportDbgIssue! "type has `LE`, but is not a partial order, failed to synthesize{indentExpr isPartialOrderType}"
      return none
  return some inst

def mkIsLinearOrderInst? (u : Level) (type : Expr) (leInst?  : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isLinearOrderType := mkApp2 (mkConst ``Std.IsLinearOrder [u]) type leInst
  let some inst ← synthInstance? isLinearOrderType
    | reportDbgIssue! "type has `LE`, but is not a linear order, failed to synthesize{indentExpr isLinearOrderType}"
      return none
  return some inst

def mkIsLinearPreorderInst? (u : Level) (type : Expr) (leInst?  : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isLinearOrderType := mkApp2 (mkConst ``Std.IsLinearPreorder [u]) type leInst
  let some inst ← synthInstance? isLinearOrderType
    | reportDbgIssue! "type has `LE`, but is not a linear preorder, failed to synthesize{indentExpr isLinearOrderType}"
      return none
  return some inst

end Lean.Meta.Grind
```
