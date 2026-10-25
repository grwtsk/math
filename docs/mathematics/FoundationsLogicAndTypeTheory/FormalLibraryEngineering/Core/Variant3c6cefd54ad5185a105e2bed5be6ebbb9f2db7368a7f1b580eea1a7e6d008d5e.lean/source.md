# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant3c6cefd54ad5185a105e2bed5be6ebbb9f2db7368a7f1b580eea1a7e6d008d5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d77935764feb3313331f2e8b384a2c9a5dbaa32` · SHA-256 `3c6cefd54ad5185a105e2bed5be6ebbb9f2db7368a7f1b580eea1a7e6d008d5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.Extension.Core.Init
public meta import Mathlib.Tactic.Inclusion.ExtensionAPI.Attr

/-!
# Core extensions for the `inclusion` tactic

This file defines inclusion and hypothesis extensions for the core inclusion family.
-/

public meta section

open Lean Meta

namespace Inclusion

attribute [inclusion_op core] IntervalBool.not_mem IntervalBool.and_mem IntervalBool.or_mem
attribute [hypothesis_op core] ToSet.mem_of_eq_of_mem ToSet.mem_of_mem_of_eq

/-- `HypothesisExt` for direct `ToSet` instance membership hypotheses. -/
@[hypothesis_ext _ ∈ _]
def instMembershipHyp : HypothesisExt where
  family := `core
  derive h := do
    let type ← instantiateMVars (← inferType h)
    let some (expr, set, _) := toSetMem? type | failure
    if set.hasFVar || set.hasMVar then failure
    let some iVar ← findIVar? expr | failure
    addInclusionHyp iVar.iExpr ⟨set, h⟩

/-- `HypothesisExt` for conjunction hypotheses. -/
@[hypothesis_ext _ ∧ _]
def andHyp : HypothesisExt where
  family := `core
  derive h := do
    let (``And, #[_, _]) := (← instantiateMVars (← inferType h)).getAppFnArgs | failure
    runHypothesisExts (← mkAppM ``And.left #[h])
    runHypothesisExts (← mkAppM ``And.right #[h])

end Inclusion
```
