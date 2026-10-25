# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Option.Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c9f69e134558e58655ad90eb8a18e79851c374c` · SHA-256 `8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Init.Data.Option.Basic
public import Init.Control.MonadAttach

public section

set_option linter.missingDocs true

universe u v

instance : ToBool (Option α) := ⟨Option.isSome⟩

/--
Adds the ability to fail to a monad. Unlike ordinary exceptions, there is no way to signal why a
failure occurred.
-/
@[expose, implicit_reducible] def OptionT (m : Type u → Type v) (α : Type u) : Type v :=
  m (Option α)

/--
Executes an action that might fail in the underlying monad `m`, returning `none` in case of failure.
-/
@[always_inline, inline, expose]
def OptionT.run {m : Type u → Type v} {α : Type u} (x : OptionT m α) : m (Option α) :=
  x

namespace OptionT
variable {m : Type u → Type v} [Monad m] {α β : Type u}

/--
Converts an action that returns an `Option` into one that might fail, with `none` indicating
failure.
-/
@[always_inline, inline, expose]
protected def mk (x : m (Option α)) : OptionT m α :=
  x

/--
Sequences two potentially-failing actions. The second action is run only if the first succeeds.
-/
@[always_inline, inline, expose]
protected def bind (x : OptionT m α) (f : α → OptionT m β) : OptionT m β := OptionT.mk do
  match (← x) with
  | some a => f a
  | none   => pure none

/--
Succeeds with the provided value.
-/
@[always_inline, inline, expose]
protected def pure (a : α) : OptionT m α := OptionT.mk do
  pure (some a)

@[always_inline]
instance : Monad (OptionT m) where
  pure := OptionT.pure
  bind := OptionT.bind

instance {m : Type u → Type v} [Pure m] : Inhabited (OptionT m α) where
  default := pure (f:=m) default

/--
Recovers from failures. Typically used via the `<|>` operator.
-/
@[always_inline, inline, expose] protected def orElse (x : OptionT m α) (y : Unit → OptionT m α) : OptionT m α := OptionT.mk do
  match (← x) with
  | some a => pure (some a)
  | _      => y ()

/--
A recoverable failure.
-/
@[always_inline, inline, expose] protected def fail : OptionT m α := OptionT.mk do
  pure none

instance : Alternative (OptionT m) where
  failure := OptionT.fail
  orElse  := OptionT.orElse

/--
Converts a computation from the underlying monad into one that could fail, even though it does not.

This function is typically implicitly accessed via a `MonadLiftT` instance as part of [automatic
lifting](lean-manual://section/monad-lifting).
-/
@[always_inline, inline, expose] protected def lift (x : m α) : OptionT m α := OptionT.mk do
  return some (← x)

instance : MonadLift m (OptionT m) := ⟨OptionT.lift⟩

instance : MonadFunctor m (OptionT m) := ⟨fun f x => f x⟩

/--
Handles failures by treating them as exceptions of type `Unit`.
-/
@[always_inline, inline, expose] protected def tryCatch (x : OptionT m α) (handle : PUnit → OptionT m α) : OptionT m α := OptionT.mk do
  let some a ← x | handle ⟨⟩
  pure <| some a

instance : MonadExceptOf PUnit (OptionT m) where
  throw    := fun _ => OptionT.fail
  tryCatch := OptionT.tryCatch

instance (ε : Type u) [MonadExceptOf ε m] : MonadExceptOf ε (OptionT m) where
  throw e           := OptionT.mk <| throwThe ε e
  tryCatch x handle := OptionT.mk <| tryCatchThe ε x handle

instance [MonadAttach m] : MonadAttach (OptionT m) where
  CanReturn x a := MonadAttach.CanReturn x.run (some a)
  attach x := .mk ((fun
      | ⟨some a, h⟩ => some ⟨a, h⟩
      | ⟨none, _⟩ => none) <$> MonadAttach.attach x.run)

end OptionT

instance [Monad m] : MonadControl m (OptionT m) where
  stM        := Option
  liftWith f := liftM <| f fun x => x.run
  restoreM x := x
```
