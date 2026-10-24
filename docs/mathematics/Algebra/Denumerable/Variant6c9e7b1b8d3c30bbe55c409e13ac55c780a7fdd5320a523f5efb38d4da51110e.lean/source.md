# Complete source: GRWTSK.Algebra.Denumerable.Variant6c9e7b1b8d3c30bbe55c409e13ac55c780a7fdd5320a523f5efb38d4da51110e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb99bd800012946ed3689778c37f6cd58f974036` · SHA-256 `6c9e7b1b8d3c30bbe55c409e13ac55c780a7fdd5320a523f5efb38d4da51110e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Algebra.Ring.Rat
import Mathlib.Data.Rat.Encodable
import Mathlib.Algebra.CharZero.Infinite
import Mathlib.Logic.Denumerable

/-!
# Denumerability of ℚ

This file proves that ℚ is denumerable.

The fact that ℚ has cardinality ℵ₀ is proved in `Mathlib/Data/Rat/Cardinal.lean`
-/

assert_not_exists Module Field

namespace Rat

open Denumerable

/-- **Denumerability of the Rational Numbers** -/
instance instDenumerable : Denumerable ℚ := ofEncodableOfInfinite ℚ

end Rat
```
