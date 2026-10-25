# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant1705a1b92a5ee80d4ec08cbc6c73fc1aa346f8d39b54f6119e556fa64fdabc74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f1f398cec38d13aecbd60b396e58a8690e14bcf` · SHA-256 `463adbdda4bfd8ef5f787f69c92c6b0824723b17244a63f8d3a908c177254994`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DsimpStep.Variantf0c059bf02ecfe4b9862461813293b277176610284e03c6731d30d4cd45fa48c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0c059bf02ecfe4b9862461813293b277176610284e03c6731d30d4cd45fa48c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DsimpStep.Variantf0c059bf02ecfe4b9862461813293b277176610284e03c6731d30d4cd45fa48c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f0c059bf02ecfe4b9862461813293b277176610284e03c6731d30d4cd45fa48c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/DSimp/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
import Lean.Meta.Sym.DSimp.DSimproc
import Lean.Meta.Sym.DSimp.App
import Lean.Meta.Sym.DSimp.Lambda
import Lean.Meta.Sym.DSimp.Forall
import Lean.Meta.Sym.DSimp.Let
import Lean.Meta.Sym.AlphaShareBuilder

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DsimpStep.Variantf0c059bf02ecfe4b9862461813293b277176610284e03c6731d30d4cd45fa48c

namespace Lean.Meta.Sym.DSimp
open Lean.Meta.Sym.Internal

def dsimpStep : DSimproc := fun e => do
  match e with
  | .lit _ | .sort _ | .bvar _ | .const .. | .fvar _ | .mvar _ => return .rfl
  | .proj .. =>
    throwError "unexpected kernel projection term during simplification{indentExpr e}\npre-process and fold them as projection applications"
  | .mdata _ b =>
    match (← dsimp b) with
    | .rfl _    => return .rfl
    | .step b' _ => return .step (← e.updateMDataS! b')
  | .lam ..     => dsimpLambda e
  | .forallE .. => dsimpForall e
  | .letE ..    => dsimpLet e
  | .app ..     => dsimpAppArgs e

abbrev cacheResult (e : Expr) (r : Result) : DSimpM Result := do
  modify fun s => { s with cache := s.cache.insert { expr := e } r }
  return r

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_sym_dsimp]
def dsimpImpl (e₁ : Expr) : DSimpM Result := withIncRecDepth do
  let numSteps := (← get).numSteps
  if numSteps >= (← getConfig).maxSteps then
    throwError "`dsimp` failed: maximum number of steps exceeded"
  let key : ExprPtr := { expr := e₁ }
  if let some r := (← get).cache.find? key then
    return r
  let numSteps := numSteps + 1
  if numSteps % 1000 == 0 then
    checkSystem "dsimp"
  modify fun s => { s with numSteps }
  let r ← pre e₁
  let r ← match r with
    | .rfl true | .step _ true  => pure r
    | .step e₂ false  =>
      match (← dsimp e₂) with
      | .rfl done     => pure (.step e₂ done)
      | .step e₃ done => pure (.step e₃ done)
    | .rfl false =>
      let r ← (dsimpStep >> post) e₁
      match r with
      | .rfl _ | .step _ true => pure r
      | .step e₂ false =>
        match (← dsimp e₂) with
        | .rfl done     => pure (.step e₂ done)
        | .step e₃ done => pure (.step e₃ done)
  cacheResult e₁ r

end Lean.Meta.Sym.DSimp
```
