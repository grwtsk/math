# Complete source: GRWTSK.Algebra.Denumerable.Variant606fac4e4cd5e4b30d8678e15c418a45ae201b672262de3afa8d131a05f95cbb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e236d023cef4217c875b54cdd9e4031790533075` · SHA-256 `606fac4e4cd5e4b30d8678e15c418a45ae201b672262de3afa8d131a05f95cbb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.Algebra.CharZero.Infinite
public import Mathlib.Algebra.Ring.Rat
public import Mathlib.Basic.Denumerable
public import Mathlib.Data.Rat.Encodable

/-!
# Denumerability of ℚ

This file proves that ℚ is denumerable.

The fact that ℚ has cardinality ℵ₀ is proved in `Mathlib/Data/Rat/Cardinal.lean`
-/

public section

assert_not_exists Module Field

namespace Rat

open Denumerable

/-- **Denumerability of the Rational Numbers** -/
instance instDenumerable : Denumerable ℚ := ofEncodableOfInfinite ℚ

end Rat
```
