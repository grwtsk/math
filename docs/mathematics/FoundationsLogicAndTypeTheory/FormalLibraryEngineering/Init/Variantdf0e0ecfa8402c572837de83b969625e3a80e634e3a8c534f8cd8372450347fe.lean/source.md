# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variantdf0e0ecfa8402c572837de83b969625e3a80e634e3a8c534f8cd8372450347fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b069a7237dfb6ba96f85f3a99adef5424641f6c` · SHA-256 `df0e0ecfa8402c572837de83b969625e3a80e634e3a8c534f8cd8372450347fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public import Mathlib.Data.Dyadic
public meta import Mathlib.Tactic.Inclusion.Core.Extensions
public import Mathlib.Tactic.Inclusion.Extension.Interval

/-!
# Initialization for the dyadic real interval extension family

This file initializes the `interval_dyadic_real` inclusion family and defines the `ToSet`,
`Univ` and `Coarsen` instances it uses in the `inclusion` tactic.
-/

@[expose] public section

namespace Inclusion

namespace IntervalDyadicReal

/-- Initializes the `interval_dyadic_real` inclusion family. -/
meta initialize intervalDyadicRealFamily : InclusionFamily ←
  registerInclusionFamily `interval_dyadic_real

instance instToSetIntervalDyadicReal : ToSet (Interval Dyadic) ℝ where
  toSet I := (I.map Dyadic.toReal).toSet

instance : Univ (Interval Dyadic) ℝ where
  univ := Interval.univ Dyadic
  mem_univ := Interval.mem_map_univ Dyadic.toReal

instance : Refine (Interval Dyadic) ℝ where
  refine := Interval.inter
  mem_refine := Interval.inter_mem Dyadic.toRealOrderEmbedding

instance : Coarsen (Interval Dyadic) ℝ where
  coarsen := Interval.hull
  mem_coarsen_left := Interval.hull_mem_left Dyadic.toRealOrderEmbedding
  mem_coarsen_right := Interval.hull_mem_right Dyadic.toRealOrderEmbedding

end IntervalDyadicReal

end Inclusion
```
