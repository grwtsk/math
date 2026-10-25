# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reader.Variant207ef2cf3fc12c8ded7acd6edcf3d4fc5bed3f2ededbaddb1c572b9118753e82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e89c0cea4b9c44761ee64c5cfea1e2f1a5c988b7` · SHA-256 `207ef2cf3fc12c8ded7acd6edcf3d4fc5bed3f2ededbaddb1c572b9118753e82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich

The Reader monad transformer for passing immutable State.
-/
module

prelude
public import Init.Control.Except

public section

set_option linter.missingDocs true

namespace ReaderT

/--
Recovers from errors. The same local value is provided to both branches. Typically used via the
`<|>` operator.
-/
@[always_inline, inline]
protected def orElse [Alternative m] (x₁ : ReaderT ρ m α) (x₂ : Unit → ReaderT ρ m α) : ReaderT ρ m α :=
  fun s => x₁ s <|> x₂ () s

/--
Fails with a recoverable error.
-/
@[always_inline, inline]
protected def failure [Alternative m] : ReaderT ρ m α :=
  fun _ => failure

instance [Alternative m] [Monad m] : Alternative (ReaderT ρ m) where
  failure := ReaderT.failure
  orElse  := ReaderT.orElse

end ReaderT

instance : MonadControl m (ReaderT ρ m) where
  stM      := id
  liftWith f ctx := f fun x => x ctx
  restoreM x _ := x

@[always_inline]
instance ReaderT.tryFinally [MonadFinally m] : MonadFinally (ReaderT ρ m) where
  tryFinally' x h ctx := tryFinally' (x ctx) (fun a? => h a? ctx)

/--
A monad with access to a read-only value of type `ρ`. The value can be locally overridden by
`withReader`, but it cannot be mutated.
-/
abbrev ReaderM (ρ : Type u) := ReaderT ρ Id

instance [Monad m] [MonadAttach m] : MonadAttach (ReaderT ρ m) where
  CanReturn x a := Exists (fun r => MonadAttach.CanReturn (x.run r) a)
  attach x := fun r => (fun ⟨a, h⟩ => ⟨a, r, h⟩) <$> MonadAttach.attach (x.run r)
```
