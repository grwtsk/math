# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assertion.Variantdcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2872681ed23d992818e7ec8d3694762817cde1b5` · SHA-256 `dcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Gladshtein, Sebastian Graf
-/
module

prelude
public import Init.Internal.Order
public import Std.Internal.Do.Order.Basic
public import Std.Internal.Do.Order.Heyting
public import Std.Internal.Do.Order.Instances
universe u v w
@[expose] public section

namespace Std.Internal.Do

open Lean.Order

/-!
# Assertion

The `Assertion` class and `Assertion.ofProp` embedding.
-/

/-- An assertion type is equipped with a `CompleteLattice` structure,
used as the carrier for pre- and postconditions. -/
class abbrev Assertion (α : Type w) := CompleteLattice α



end Std.Internal.Do
```
