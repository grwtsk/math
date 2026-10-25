# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `801988702bd58b927bf02ab92540716ec6f8e8b7` · SHA-256 `4334b5f58a44d86c85aeb06907d318154192bb48d488128839e492d21f967fdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMetaPreservingMCtx.Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanMetaPreservingMCtx.Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Meta/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Meta.AppBuilder
import Lean.Meta.Basic

/-!
# Additions to `Lean.Meta.Basic`

Likely these already exist somewhere. Pointers welcome.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMetaPreservingMCtx.Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566

/--
Restore the metavariable context after execution.
-/
def Lean.Meta.preservingMCtx {α : Type} (x : MetaM α) : MetaM α := do
  let mctx ← getMCtx
  try x finally setMCtx mctx

open Lean Meta

/--
This function is similar to `forallMetaTelescopeReducing`: Given `e` of the
form `forall ..xs, A`, this combinator will create a new metavariable for
each `x` in `xs` until it reaches an `x` whose type is defeq to `t`,
and instantiate `A` with these, while also reducing `A` if needed.
It uses `forallMetaTelescopeReducing`.

This function returns a triple `(mvs, bis, out)` where
- `mvs` is an array containing the new metavariables.
- `bis` is an array containing the binder infos for the `mvs`.
- `out` is `e` but instantiated with the `mvs`.
-/
def Lean.Meta.forallMetaTelescopeReducingUntilDefEq
    (e t : Expr) (kind : MetavarKind := MetavarKind.natural) :
    MetaM (Array Expr × Array BinderInfo × Expr) := do
  let (ms, bs, tp) ← forallMetaTelescopeReducing e (some 1) kind
  unless ms.size == 1 do
    if ms.size == 0 then throwError m!"Failed: {← ppExpr e} is not the type of a function."
    else throwError m!"Failed"
  let mut mvs := ms
  let mut bis := bs
  let mut out : Expr := tp
  while !(← isDefEq (← inferType mvs.toList.getLast!) t) do
    let (ms, bs, tp) ← forallMetaTelescopeReducing out (some 1) kind
    unless ms.size == 1 do
      throwError m!"Failed to find {← ppExpr t} as the type of a parameter of {← ppExpr e}."
    mvs := mvs ++ ms
    bis := bis ++ bs
    out := tp
  return (mvs, bis, out)

/-- `pureIsDefEq e₁ e₂` is short for `withNewMCtxDepth <| isDefEq e₁ e₂`.
Determines whether two expressions are definitionally equal to each other
when metavariables are not assignable. -/
@[inline]
def Lean.Meta.pureIsDefEq (e₁ e₂ : Expr) : MetaM Bool :=
  withNewMCtxDepth <| isDefEq e₁ e₂

/-- `mkRel n lhs rhs` is `mkAppM n #[lhs, rhs]`, but with optimizations for `Eq` and `Iff`. -/
def Lean.Meta.mkRel (n : Name) (lhs rhs : Expr) : MetaM Expr :=
  if n == ``Eq then
    mkEq lhs rhs
  else if n == ``Iff then
    return mkApp2 (.const ``Iff []) lhs rhs
  else
    mkAppM n #[lhs, rhs]
```
