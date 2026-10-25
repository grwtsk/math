# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant69b2b652429b168f918ed2865e4e9d652d7fb55f7a1685eb4f86efac94dcc7e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d70e6d2c60d13ecbeb96eb2134ac65d28d5456fa` · SHA-256 `69b2b652429b168f918ed2865e4e9d652d7fb55f7a1685eb4f86efac94dcc7e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Order.Types
public import Lean.Meta.Tactic.Grind.Order.Internalize
public import Lean.Meta.Tactic.Grind.Order.StructId
public import Lean.Meta.Tactic.Grind.Order.OrderM
public import Lean.Meta.Tactic.Grind.Order.Assert
public import Lean.Meta.Tactic.Grind.Order.Util
public section
namespace Lean.Meta.Grind.Order
builtin_initialize registerTraceClass `grind.order
builtin_initialize registerTraceClass `grind.order.assert
builtin_initialize registerTraceClass `grind.order.internalize
builtin_initialize registerTraceClass `grind.order.internalize.term

builtin_initialize registerTraceClass `grind.debug.order
builtin_initialize registerTraceClass `grind.debug.order.add_edge (inherited := true)
builtin_initialize registerTraceClass `grind.debug.order.propagate (inherited := true)
builtin_initialize registerTraceClass `grind.debug.order.check_eq_true (inherited := true)
builtin_initialize registerTraceClass `grind.debug.order.check_eq_false (inherited := true)

builtin_initialize
  orderExt.setMethods
    (internalize := Order.internalize)
    (newEq       := Order.processNewEq)

end Lean.Meta.Grind.Order
```
