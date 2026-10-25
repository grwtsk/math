# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LitValues.Variantddb96069e7e44301fad7a8f4f603b127f4e1b991fcde0f6e6294c2c8e97ee214

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9942e7b4c0a505c26d4e2d1d1cf1e7bfebb56584` · SHA-256 `43103acc9d634c4b19953da0c12aace4130dbc91e753542a2d4ca357f07e69c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVecValue.Variant5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BitVecValue.Variant5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/LitValues.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Expr
public import Init.Data.Rat

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVecValue.Variant5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a

public section
namespace Lean.Meta.Sym
/-!
Pure functions for extracting values. They are pure (`OptionT Id`) rather than monadic (`MetaM`).
This is possible because `Sym` assumes terms are in canonical form, no `whnf` or
reduction is needed to recognize literals.
-/
def getNatValue? (e : Expr) : OptionT Id Nat := do
  let_expr OfNat.ofNat _ n _ := e | failure
  let .lit (.natVal n) := n | failure
  return n

def getIntValue? (e : Expr) : OptionT Id Int := do
  let_expr Neg.neg _ _ a := e | getNatValue? e
  let v : Int ← getNatValue? a
  return -v

def getRatValue? (e : Expr) : OptionT Id Rat := do
  let_expr HDiv.hDiv _ _ _ _ n d := e | getIntValue? e
  let n : Rat ← getIntValue? n
  let d : Rat ← getNatValue? d
  return n / d

structure BitVecValue where
  n : Nat
  val : BitVec n

def getBitVecValue? (e : Expr) : OptionT Id BitVecValue :=
  match_expr e with
  | BitVec.ofNat nExpr vExpr => do
    let n ← getNatValue? nExpr
    let v ← getNatValue? vExpr
    return ⟨n, BitVec.ofNat n v⟩
  | BitVec.ofNatLT nExpr vExpr _ => do
    let n ← getNatValue? nExpr
    let v ← getNatValue? vExpr
    return ⟨n, BitVec.ofNat n v⟩
  | OfNat.ofNat α v _ => do
    let_expr BitVec n := α | failure
    let n ← getNatValue? n
    let .lit (.natVal v) := v | failure
    return ⟨n, BitVec.ofNat n v⟩
  | _ => failure

def getUInt8Value? (e : Expr) : OptionT Id UInt8 := return UInt8.ofNat (← getNatValue? e)
def getUInt16Value? (e : Expr) : OptionT Id UInt16 := return UInt16.ofNat (← getNatValue? e)
def getUInt32Value? (e : Expr) : OptionT Id UInt32 := return UInt32.ofNat (← getNatValue? e)
def getUInt64Value? (e : Expr) : OptionT Id UInt64 := return UInt64.ofNat (← getNatValue? e)
def getInt8Value? (e : Expr) : OptionT Id Int8 := return Int8.ofInt (← getIntValue? e)
def getInt16Value? (e : Expr) : OptionT Id Int16 := return Int16.ofInt (← getIntValue? e)
def getInt32Value? (e : Expr) : OptionT Id Int32 := return Int32.ofInt (← getIntValue? e)
def getInt64Value? (e : Expr) : OptionT Id Int64 := return Int64.ofInt (← getIntValue? e)

structure FinValue where
  n : Nat
  val : Fin n

def getFinValue? (e : Expr) : OptionT Id FinValue := do
  let_expr OfNat.ofNat α v _ := e | failure
  let_expr Fin n := α | failure
  let n ← getNatValue? n
  let .lit (.natVal v) := v | failure
  if h : n = 0 then failure else
  let : NeZero n := ⟨h⟩
  return { n, val := Fin.ofNat n v }

def getCharValue? (e : Expr) : OptionT Id Char := do
  let_expr Char.ofNat n := e | failure
  let .lit (.natVal n) := n | failure
  return Char.ofNat n

def getStringValue? (e : Expr) : Option String :=
  match e with
  | .lit (.strVal s) => some s
  | _ => none

end Lean.Meta.Sym
```
