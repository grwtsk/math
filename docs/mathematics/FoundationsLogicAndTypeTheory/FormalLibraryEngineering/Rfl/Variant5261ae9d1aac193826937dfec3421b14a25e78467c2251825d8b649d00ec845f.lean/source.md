# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variant5261ae9d1aac193826937dfec3421b14a25e78467c2251825d8b649d00ec845f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2abf31b41b4df3ee496e088b524802fd9232764b` · SHA-256 `5261ae9d1aac193826937dfec3421b14a25e78467c2251825d8b649d00ec845f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Newell Jensen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Newell Jensen
-/
import Mathlib.Init
import Lean.Meta.Tactic.Rfl

/-!
# `Lean.MVarId.liftReflToEq`

Convert a goal of the form `x ~ y` into the form `x = y`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute `[refl]`.
If this can't be done, returns the original `MVarId`.
-/

namespace Mathlib.Tactic

open Lean Meta Elab Tactic Rfl

/--
This tactic applies to a goal whose target has the form `x ~ x`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute [refl].
-/
def rflTac : TacticM Unit :=
  withMainContext do liftMetaFinishingTactic (·.applyRfl)

/-- If `e` is the form `@R .. x y`, where `R` is a reflexive
relation, return `some (R, x, y)`.
As a special case, if `e` is `@HEq α a β b`, return ``some (`HEq, a, b)``. -/
def _root_.Lean.Expr.relSidesIfRefl? (e : Expr) : MetaM (Option (Name × Expr × Expr)) := do
  if let some (_, lhs, rhs) := e.eq? then
    return (``Eq, lhs, rhs)
  if let some (lhs, rhs) := e.iff? then
    return (``Iff, lhs, rhs)
  if let some (_, lhs, _, rhs) := e.heq? then
    return (``HEq, lhs, rhs)
  if let .app (.app rel lhs) rhs := e then
    unless (← (reflExt.getState (← getEnv)).getMatch rel).isEmpty do
      match rel.getAppFn.constName? with
      | some n => return some (n, lhs, rhs)
      | none => return none
  return none

end Mathlib.Tactic
```
