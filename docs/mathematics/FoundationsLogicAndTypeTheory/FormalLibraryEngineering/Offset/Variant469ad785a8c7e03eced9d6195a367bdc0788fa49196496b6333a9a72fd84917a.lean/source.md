# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Offset.Variant469ad785a8c7e03eced9d6195a367bdc0788fa49196496b6333a9a72fd84917a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a40b7ebe3fd9baa170ff5867cb6ab5ae5074ca3` · SHA-256 `dc8994bbe42b43e451091dbe0c9ec2a702791d878f6c9e279b4f59e7a2ebb13c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Offset.Variant4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Offset.Variant4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Offset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.LitValues

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Offset.Variant4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2

public section
namespace Lean.Meta.Sym
/-!
# Offset representation for natural number expressions

This module provides utilities for representing `Nat` expressions in the form `e + k`,
where `e` is an arbitrary expression and `k` is a constant.
This normalization is used during pattern matching and unification.
-/

/--
Represents a natural number expression as a base plus a constant offset.
- `.num k` represents the literal `k`
- `.add e k` represents `e + k`

Used for pattern matching and unification.
-/
inductive Offset where
  | num (k : Nat)
  | add (e : Expr) (k : Nat)
  deriving Inhabited

/-- Increments the constant part of the offset by `k'`. -/
def Offset.inc : Offset → Nat → Offset
  | .num k,   k' => .num (k+k')
  | .add e k, k' => .add e (k+k')

/--
Returns `some offset` if `e` is an offset term. That is, it is of the form
- `Nat.succ a`, OR
- `a + k` where `k` is a numeral.

Assumption: standard instances are used for `OfNat Nat n` and `HAdd Nat Nat Nat`
-/
partial def isOffset? (e : Expr) : OptionT Id Offset :=
  match_expr e with
  | Nat.succ a => do
    return get a |>.inc 1
  | HAdd.hAdd α _ _ _ a b => do
    guard (α.isConstOf ``Nat)
    let n ← getNatValue? b
    return get a |>.inc n
  | _ => failure
where
  get (e : Expr) : Offset :=
    isOffset? e |>.getD (.add e 0)

/-- Variant of `isOffset?` that first checks if `declName` is `Nat.succ` or `HAdd.hAdd`. -/
def isOffset?' (declName : Name) (p : Expr) : OptionT Id Offset := do
  guard (declName == ``Nat.succ || declName == ``HAdd.hAdd)
  isOffset? p

/--  Returns `true` if `e` is an offset term.-/
partial def isOffset (e : Expr) : Bool :=
  match_expr e with
  | Nat.succ _ => true
  | HAdd.hAdd α _ _ _ _ b =>
    α.isConstOf ``Nat &&
    match_expr b with
    | OfNat.ofNat _ n _ => (n matches .lit (.natVal _))
    | _ => false
  | _ => false

/-- Variant of `isOffset?` that first checks if `declName` is `Nat.succ` or `HAdd.hAdd`. -/
def isOffset' (declName : Name) (p : Expr) : Bool :=
  (declName == ``Nat.succ || declName == ``HAdd.hAdd) && isOffset p

/--
Converts the given expression into an offset.
Assumptions:
- `e` has type `Nat`.
- standard instances are used for `OfNat Nat n` and `HAdd Nat Nat Nat`.
-/
partial def toOffset (e : Expr) : Offset :=
  match_expr e with
  | Nat.succ a => toOffset a |>.inc 1
  | HAdd.hAdd _ _ _ _ a b => Id.run do
    let some n := getNatValue? b | .add e 0
    toOffset a |>.inc n
  | OfNat.ofNat _ n _ => Id.run do
    let .lit (.natVal n) := n | .add e 0
    .num n
  | _ => .add e 0

end Lean.Meta.Sym
```
