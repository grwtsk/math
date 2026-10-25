# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMatchTheoremPtr.Variant00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a705fc3bafcb91c74e57b635f20e01a8b62c875b` · SHA-256 `00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.EMatchTheorem
public section
namespace Lean.Meta.Grind

@[inline] def isSameEMatchTheoremPtr (a b : EMatchTheorem) : Bool :=
  unsafe ptrEq a b

structure EMatchTheoremPtr where
  thm : EMatchTheorem

abbrev hashEMatchTheoremPtr (thm : EMatchTheorem) : UInt64 :=
  unsafe (ptrAddrUnsafe thm >>> 3).toUInt64

instance : Hashable EMatchTheoremPtr where
  hash k := hashEMatchTheoremPtr k.thm

instance : BEq EMatchTheoremPtr where
  beq k₁ k₂ := isSameEMatchTheoremPtr k₁.thm k₂.thm

end Lean.Meta.Grind
```
