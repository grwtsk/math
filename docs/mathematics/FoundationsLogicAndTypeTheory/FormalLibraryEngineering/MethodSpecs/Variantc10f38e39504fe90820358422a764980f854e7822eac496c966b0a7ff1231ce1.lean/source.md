# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MethodSpecs.Variantc10f38e39504fe90820358422a764980f854e7822eac496c966b0a7ff1231ce1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f2ef951001bc3948d6b37ba0125201d9c2e9bb5` · SHA-256 `c10f38e39504fe90820358422a764980f854e7822eac496c966b0a7ff1231ce1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
import Init.Simproc
public import Lean.Meta.Tactic.Simp.Simproc
import Lean.Meta.MethodSpecs
import Lean.Meta.Tactic.Simp.Main

open Lean Meta Simp

private def reduceMethod (opName : String) (e : Expr) : SimpM Simp.Step := do
  let xs := e.getAppArgsN 3
  let inst := xs[0]!
  let lhs := xs[1]!
  let rhs := xs[2]!
  unless inst.getAppFn.isConst do return .continue
  let some _ ← isConstructorApp? lhs | return .continue
  let some _ ← isConstructorApp? rhs | return .continue
  let some thms ← getMethodSpecTheorems inst.getAppFn.constName! opName | return .continue
  for thm in thms do
    let simpThms ← mkSimpTheoremFromConst thm
    assert! simpThms.size = 1
    if let some r ← Simp.tryTheorem? e simpThms[0]! then
      return .visit r
  return .continue

public section

/--
This simproc reduces `_ == _` when both arguments are constructor applications and the `BEq` instance
in question has been annotated with `@[method_specs]`.
-/
builtin_simproc_decl reduceBEq (_ == _) := fun e => do
  unless e.isAppOfArity ``BEq.beq 4 do return .continue
  reduceMethod "beq" e

/--
This simproc reduces `Ord.compare _ _` when both arguments are constructor applications and the
`Ord` instance in question has been annotated with `@[method_specs]`.
-/
builtin_simproc_decl reduceOrd (Ord.compare _ _) := fun e => do
  unless e.isAppOfArity ``Ord.compare 4 do return .continue
  reduceMethod "compare" e

end
```
