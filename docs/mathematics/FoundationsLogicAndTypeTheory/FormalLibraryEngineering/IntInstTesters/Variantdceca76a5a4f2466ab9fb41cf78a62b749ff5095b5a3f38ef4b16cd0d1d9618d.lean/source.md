# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntInstTesters.Variantdceca76a5a4f2466ab9fb41cf78a62b749ff5095b5a3f38ef4b16cd0d1d9618d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5165abff52f0cf398ca4d66c05290fb2eace00ff` · SHA-256 `dceca76a5a4f2466ab9fb41cf78a62b749ff5095b5a3f38ef4b16cd0d1d9618d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic

public section

namespace Lean.Meta
/-!
Functions for testing whether expressions are canonical `Int` instances.
-/
namespace Structural
/-!
**Note**: Structural tests are *syntactic*. They are more efficient, but
should be used only in modules that have perform some kind of canonicalization.
-/

def isInstOfNatInt (e : Expr) : MetaM Bool := do
  let_expr instOfNat _ ← e | return false
  return true
def isInstNegInt (e : Expr) : MetaM Bool := do
  let_expr Int.instNegInt ← e | return false
  return true
def isInstAddInt (e : Expr) : MetaM Bool := do
  let_expr Int.instAdd ← e | return false
  return true
def isInstSubInt (e : Expr) : MetaM Bool := do
  let_expr Int.instSub ← e | return false
  return true
def isInstMulInt (e : Expr) : MetaM Bool := do
  let_expr Int.instMul ← e | return false
  return true
def isInstDivInt (e : Expr) : MetaM Bool := do
  let_expr Int.instDiv ← e | return false
  return true
def isInstModInt (e : Expr) : MetaM Bool := do
  let_expr Int.instMod ← e | return false
  return true
def isInstDvdInt (e : Expr) : MetaM Bool := do
  let_expr Int.instDvd ← e | return false
  return true
def isInstHAddInt (e : Expr) : MetaM Bool := do
  let_expr instHAdd _ i ← e | return false
  isInstAddInt i
def isInstHSubInt (e : Expr) : MetaM Bool := do
  let_expr instHSub _ i ← e | return false
  isInstSubInt i
def isInstHMulInt (e : Expr) : MetaM Bool := do
  let_expr instHMul _ i ← e | return false
  isInstMulInt i
def isInstHDivInt (e : Expr) : MetaM Bool := do
  let_expr instHDiv _ i ← e | return false
  isInstDivInt i
def isInstHModInt (e : Expr) : MetaM Bool := do
  let_expr instHMod _ i ← e | return false
  isInstModInt i
def isInstLTInt (e : Expr) : MetaM Bool := do
  let_expr Int.instLTInt ← e | return false
  return true
def isInstLEInt (e : Expr) : MetaM Bool := do
  let_expr Int.instLEInt ← e | return false
  return true
def isInstNatPowInt (e : Expr) : MetaM Bool := do
  let_expr Int.instNatPow ← e | return false
  return true
def isInstPowInt (e : Expr) : MetaM Bool := do
  let_expr instPowNat _ i ← e | return false
  isInstNatPowInt i
def isInstHPowInt (e : Expr) : MetaM Bool := do
  let_expr instHPow _ _ i ← e | return false
  isInstPowInt i
end Structural

namespace DefEq

def isInstNegInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstNegInt e) then return true
  isDefEqI e Int.mkInstNeg

def isInstAddInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstAddInt e) then return true
  isDefEqI e Int.mkInstAdd

def isInstHAddInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstHAddInt e) then return true
  isDefEqI e Int.mkInstHAdd

def isInstSubInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstSubInt e) then return true
  isDefEqI e Int.mkInstSub

def isInstHSubInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstHSubInt e) then return true
  isDefEqI e Int.mkInstHSub

def isInstMulInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstMulInt e) then return true
  isDefEqI e Int.mkInstMul

def isInstHMulInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstHMulInt e) then return true
  isDefEqI e Int.mkInstHMul

def isInstLTInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstLTInt e) then return true
  isDefEqI e Int.mkInstLT

def isInstLEInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstLEInt e) then return true
  isDefEqI e Int.mkInstLE

def isInstDvdInt (e : Expr) : MetaM Bool := do
  if (← Structural.isInstDvdInt e) then return true
  isDefEqI e (mkConst ``Int.instDvd)

end DefEq

end Lean.Meta
```
