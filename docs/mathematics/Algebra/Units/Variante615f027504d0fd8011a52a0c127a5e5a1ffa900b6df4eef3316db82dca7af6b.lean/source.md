# Complete source: GRWTSK.Algebra.Units.Variante615f027504d0fd8011a52a0c127a5e5a1ffa900b6df4eef3316db82dca7af6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f987c97ac1f8ee243af0742df809e1342309e414` · SHA-256 `e615f027504d0fd8011a52a0c127a5e5a1ffa900b6df4eef3316db82dca7af6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Ring.Units
import Mathlib.Algebra.Group.Int.Units

/-!
# Basic lemmas for `ℤˣ`.

This file contains lemmas on the units of `ℤ`.

## Main results

* `Int.units_eq_one_or`: the invertible integers are 1 and -1.

See note [foundational algebra order theory].
-/

assert_not_exists DenselyOrdered Set.Subsingleton

namespace Int

/-! #### Units -/

lemma units_eq_one_or (u : ℤˣ) : u = 1 ∨ u = -1 := by
  simpa only [Units.ext_iff] using isUnit_eq_one_or u.isUnit

lemma units_ne_iff_eq_neg {u v : ℤˣ} : u ≠ v ↔ u = -v := by
  simpa only [Ne, Units.ext_iff] using isUnit_ne_iff_eq_neg u.isUnit v.isUnit

end Int
```
