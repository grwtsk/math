# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticCheckInstancesSimps.Variantabca5bbcea91527c7ca040aeeef70e57742ab87d7fb77cc5ec3a0e4a5da4ce8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65bbcc0dac2efe18b350df512b3f86291b811b2f` · SHA-256 `abca5bbcea91527c7ca040aeeef70e57742ab87d7fb77cc5ec3a0e4a5da4ce8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Simps

set_option linter.tacticCheckInstances true

/-!
# Tests for the `tacticCheckInstances` linter on `@[simps]` projections
-/

/-! ## clean projection, no warning expected -/

structure Wrap (α : Type) where
  carrier : List α

#guard_msgs in
@[simps]
def mkWrap (s : List Nat) : Wrap Nat := { carrier := s }

/-! a semireducible alias `.implicit`-ill-typed equation. -/

structure Fn where
  toFun : Nat → Nat

def MyFn : Type := Fn

/--
warning: generated lemma idFn_toFun is not type-correct at `.implicit` transparency; consider marking some of the following as `@[implicit_reducible]`:
  MyFn

Note: This linter can be disabled with `set_option linter.tacticCheckInstances false`
-/
#guard_msgs in
@[simps]
def idFn : MyFn := ({ toFun := id } : Fn)

/-! marking the offender `@[implicit_reducible]` silences the warning -/

set_option allowUnsafeReducibility true
attribute [implicit_reducible] MyFn

#guard_msgs in
@[simps]
def idFn2 : MyFn := ({ toFun := id } : Fn)
```
