# Complete source: GRWTSK.Algebra.MonadRing.Variantd9f7fe2c206ef9807311494aa219cf4d089bf2dd0011efcc30452c0f7c101577

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfda81d368d410692056f57fc82b6225fbb95352` · SHA-256 `d9f7fe2c206ef9807311494aa219cf4d089bf2dd0011efcc30452c0f7c101577`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

class MonadRing (m : Type → Type) where
  getRing : m Ring
  modifyRing : (Ring → Ring) → m Unit

export MonadRing (getRing modifyRing)

@[always_inline]
instance (m n) [MonadLift m n] [MonadRing m] : MonadRing n where
  getRing    := liftM (getRing : m Ring)
  modifyRing f := liftM (modifyRing f : m Unit)

class MonadCommRing (m : Type → Type) where
  getCommRing : m CommRing
  modifyCommRing : (CommRing → CommRing) → m Unit

export MonadCommRing (getCommRing modifyCommRing)

@[always_inline]
instance (m n) [MonadLift m n] [MonadCommRing m] : MonadCommRing n where
  getCommRing      := liftM (getCommRing : m CommRing)
  modifyCommRing f := liftM (modifyCommRing f : m Unit)

@[always_inline]
instance (m) [Monad m] [MonadCommRing m] : MonadRing m where
  getRing := return (← getCommRing).toRing
  modifyRing f := modifyCommRing fun s => { s with toRing := f s.toRing }

end Lean.Meta.Grind.Arith.CommRing
```
