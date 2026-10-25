# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Insts.Variant15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ea4ac8649f51e05c5a95192299cfe569ee9c54e` · SHA-256 `15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.EvalNum
public import Lean.Meta.Tactic.Grind.SynthInstance
import Init.Grind.Ring
public section
namespace Lean.Meta.Grind.Arith

def getIsCharInst? (u : Level) (type : Expr) (semiringInst : Expr) : GoalM (Option (Expr × Nat)) := do withNewMCtxDepth do
  let n ← mkFreshExprMVar (mkConst ``Nat)
  let charType := mkApp3 (mkConst ``Grind.IsCharP [u]) type semiringInst n
  let some charInst ← synthInstance? charType | return none
  let n ← instantiateMVars n
  let some n ← evalNat? n | return none
  return some (charInst, n)

def getPowIdentityInst? (u : Level) (type : Expr) : GoalM (Option (Expr × Expr × Nat)) := do withNewMCtxDepth do
  -- We use a fresh metavar for `CommSemiring` (unlike `getIsCharInst?` which pins the semiring)
  -- because `PowIdentity` instances may be declared against a canonical `CommSemiring` instance
  -- that is not definitionally equal to `CommRing.toCommSemiring`. The synthesized `csInst` is
  -- stored and used in proof terms to ensure type-correctness.
  let csInst ← mkFreshExprMVar (mkApp (mkConst ``Grind.CommSemiring [u]) type)
  let p ← mkFreshExprMVar (mkConst ``Nat)
  let powIdentityType := mkApp3 (mkConst ``Grind.PowIdentity [u]) type csInst p
  let some inst ← synthInstance? powIdentityType | return none
  let csInst ← instantiateMVars csInst
  let p ← instantiateMVars p
  let some pVal ← evalNat? p | return none
  return some (inst, csInst, pVal)

def getNoZeroDivInst? (u : Level) (type : Expr) : GoalM (Option Expr) := do
  let natModuleType := mkApp (mkConst ``Grind.NatModule [u]) type
  let some natModuleInst ← synthInstance? natModuleType | return none
  let noZeroDivType := mkApp2 (mkConst ``Grind.NoNatZeroDivisors [u]) type natModuleInst
  synthInstance? noZeroDivType

end Lean.Meta.Grind.Arith
```
