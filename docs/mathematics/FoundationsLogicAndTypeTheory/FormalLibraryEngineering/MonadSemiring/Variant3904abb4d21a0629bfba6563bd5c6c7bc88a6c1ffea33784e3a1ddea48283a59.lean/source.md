# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadSemiring.Variant3904abb4d21a0629bfba6563bd5c6c7bc88a6c1ffea33784e3a1ddea48283a59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f7ee49cdbf0d23aa38eed82033779c606ea9bca` · SHA-256 `3904abb4d21a0629bfba6563bd5c6c7bc88a6c1ffea33784e3a1ddea48283a59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Arith.MonadCanon
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Types
public section
namespace Lean.Meta.Grind.Arith.CommRing

class MonadSemiring (m : Type → Type) where
  getSemiring : m Semiring
  modifySemiring : (Semiring → Semiring) → m Unit

export MonadSemiring (getSemiring modifySemiring)

@[always_inline]
instance (m n) [MonadLift m n] [MonadSemiring m] : MonadSemiring n where
  getSemiring    := liftM (getSemiring : m Semiring)
  modifySemiring f := liftM (modifySemiring f : m Unit)

class MonadCommSemiring (m : Type → Type) where
  getCommSemiring : m CommSemiring
  modifyCommSemiring : (CommSemiring → CommSemiring) → m Unit

export MonadCommSemiring (getCommSemiring modifyCommSemiring)

@[always_inline]
instance (m n) [MonadLift m n] [MonadCommSemiring m] : MonadCommSemiring n where
  getCommSemiring      := liftM (getCommSemiring : m CommSemiring)
  modifyCommSemiring f := liftM (modifyCommSemiring f : m Unit)

@[always_inline]
instance (m) [Monad m] [MonadCommSemiring m] : MonadSemiring m where
  getSemiring := return (← getCommSemiring).toSemiring
  modifySemiring f := modifyCommSemiring fun s => { s with toSemiring := f s.toSemiring }

end Lean.Meta.Grind.Arith.CommRing
```
