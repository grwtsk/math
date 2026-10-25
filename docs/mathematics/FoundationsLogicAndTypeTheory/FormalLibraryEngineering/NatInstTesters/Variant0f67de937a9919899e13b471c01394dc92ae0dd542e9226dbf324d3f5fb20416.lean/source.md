# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatInstTesters.Variant0f67de937a9919899e13b471c01394dc92ae0dd542e9226dbf324d3f5fb20416

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `beabc3e089b46bd55099ed863093f64b2fbc8e73` · SHA-256 `0ccea9c432a68f1a173a645bd7339430825cd439d7bc0f55a7eb3fbfa5c345fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsInstOfNatNat.Variantd930dcad427fabee864c5fd9f0246b1b7a11aed32ee6b1ea02e64dc85171103a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d930dcad427fabee864c5fd9f0246b1b7a11aed32ee6b1ea02e64dc85171103a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsInstOfNatNat.Variantd930dcad427fabee864c5fd9f0246b1b7a11aed32ee6b1ea02e64dc85171103a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d930dcad427fabee864c5fd9f0246b1b7a11aed32ee6b1ea02e64dc85171103a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/NatInstTesters.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsInstOfNatNat.Variantd930dcad427fabee864c5fd9f0246b1b7a11aed32ee6b1ea02e64dc85171103a

public section

namespace Lean.Meta
/-!
Functions for testing whether expressions are canonical `Nat` instances.
-/
namespace Structural
/-!
**Note**: Structural tests are *syntactic*. They are more efficient, but
should be used only in modules that have perform some kind of canonicalization.
-/

def isInstOfNatNat (e : Expr) : MetaM Bool := do
  let_expr instOfNatNat _ ← e | return false
  return true
def isInstAddNat (e : Expr) : MetaM Bool := do
  let_expr instAddNat ← e | return false
  return true
def isInstSubNat (e : Expr) : MetaM Bool := do
  let_expr instSubNat ← e | return false
  return true
def isInstMulNat (e : Expr) : MetaM Bool := do
  let_expr instMulNat ← e | return false
  return true
def isInstDivNat (e : Expr) : MetaM Bool := do
  let_expr Nat.instDiv ← e | return false
  return true
def isInstModNat (e : Expr) : MetaM Bool := do
  let_expr Nat.instMod ← e | return false
  return true
def isInstNatPowNat (e : Expr) : MetaM Bool := do
  let_expr instNatPowNat ← e | return false
  return true
def isInstPowNat (e : Expr) : MetaM Bool := do
  let_expr instPowNat _ i ← e | return false
  isInstNatPowNat i
def isInstHAddNat (e : Expr) : MetaM Bool := do
  let_expr instHAdd _ i ← e | return false
  isInstAddNat i
def isInstHSubNat (e : Expr) : MetaM Bool := do
  let_expr instHSub _ i ← e | return false
  isInstSubNat i
def isInstHMulNat (e : Expr) : MetaM Bool := do
  let_expr instHMul _ i ← e | return false
  isInstMulNat i
def isInstHDivNat (e : Expr) : MetaM Bool := do
  let_expr instHDiv _ i ← e | return false
  isInstDivNat i
def isInstHModNat (e : Expr) : MetaM Bool := do
  let_expr instHMod _ i ← e | return false
  isInstModNat i
def isInstHPowNat (e : Expr) : MetaM Bool := do
  let_expr instHPow _ _ i ← e | return false
  isInstPowNat i
def isInstLTNat (e : Expr) : MetaM Bool := do
  let_expr instLTNat ← e | return false
  return true
def isInstLENat (e : Expr) : MetaM Bool := do
  let_expr instLENat ← e | return false
  return true
def isInstDvdNat (e : Expr) : MetaM Bool := do
  let_expr Nat.instDvd ← e | return false
  return true
end Structural

namespace DefEq

def isInstAddNat (e : Expr) : MetaM Bool := do
  if (← Structural.isInstAddNat e) then return true
  isDefEqI e Nat.mkInstAdd

def isInstHAddNat (e : Expr) : MetaM Bool := do
  if (← Structural.isInstHAddNat e) then return true
  isDefEqI e Nat.mkInstHAdd

def isInstMulNat (e : Expr) : MetaM Bool := do
  if (← Structural.isInstMulNat e) then return true
  isDefEqI e Nat.mkInstMul

def isInstHMulNat (e : Expr) : MetaM Bool := do
  if (← Structural.isInstHMulNat e) then return true
  isDefEqI e Nat.mkInstHMul

def isInstLTNat (e : Expr) : MetaM Bool := do
  if (← Structural.isInstLTNat e) then return true
  isDefEqI e Nat.mkInstLT

def isInstLENat (e : Expr) : MetaM Bool := do
  if (← Structural.isInstLENat e) then return true
  isDefEqI e Nat.mkInstLE

end DefEq

end Lean.Meta
```
