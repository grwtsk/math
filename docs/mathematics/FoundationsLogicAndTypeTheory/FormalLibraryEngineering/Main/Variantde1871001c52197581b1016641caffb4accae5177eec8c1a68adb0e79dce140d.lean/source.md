# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantde1871001c52197581b1016641caffb4accae5177eec8c1a68adb0e79dce140d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ada686123c51df7f77d2210a2b1bbc9ea3586a5` · SHA-256 `de1871001c52197581b1016641caffb4accae5177eec8c1a68adb0e79dce140d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Init.Grind.Propagator
import Lean.Meta.Tactic.Grind.Arith.Cutsat.LeCnstr
import Lean.Meta.Tactic.Grind.Arith.Linear.IneqCnstr
public import Lean.Meta.Tactic.Grind.PropagatorAttr
public section
namespace Lean.Meta.Grind.Arith

builtin_grind_propagator propagateLE ↓LE.le := fun e => do
  if (← isEqTrue e) then
    Cutsat.propagateLe e (eqTrue := true)
    Linear.propagateIneq e (eqTrue := true)
  else if (← isEqFalse e) then
    Cutsat.propagateLe e (eqTrue := false)
    Linear.propagateIneq e (eqTrue := false)

builtin_grind_propagator propagateLT ↓LT.lt := fun e => do
  if (← isEqTrue e) then
    Linear.propagateIneq e (eqTrue := true)
    Cutsat.propagateLt e (eqTrue := true)
  else if (← isEqFalse e) then
    Linear.propagateIneq e (eqTrue := false)
    Cutsat.propagateLt e (eqTrue := false)

end Lean.Meta.Grind.Arith
```
