# Complete source: GRWTSK.Algebra.Defs.Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ac1d3b56df833c91ce67fa4bd3ce3042ead7f7c` · SHA-256 `8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Leonardo de Moura, Mario Carneiro, Floris van Doorn
-/
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Field.Defs

/-!
# Linear ordered (semi)fields

A linear ordered (semi)field is a (semi)field equipped with a linear order such that
* addition respects the order: `a ≤ b → c + a ≤ c + b`;
* multiplication of positives is positive: `0 < a → 0 < b → 0 < a * b`;
* `0 < 1`.

## Main Definitions

* `LinearOrderedSemifield`: Typeclass for linear order semifields.
* `LinearOrderedField`: Typeclass for linear ordered fields.
-/

-- Guard against import creep.
assert_not_exists MonoidHom

set_option linter.deprecated false in
/-- A linear ordered semifield is a field with a linear order respecting the operations. -/
@[deprecated "Use `[Semifield K] [LinearOrder K] [IsStrictOrderedRing K]` instead."
  (since := "2025-04-10")]
structure LinearOrderedSemifield (K : Type*) extends LinearOrderedCommSemiring K, Semifield K

set_option linter.deprecated false in
/-- A linear ordered field is a field with a linear order respecting the operations. -/
@[deprecated "Use `[Field K] [LinearOrder K] [IsStrictOrderedRing K]` instead."
  (since := "2025-04-10")]
structure LinearOrderedField (K : Type*) extends LinearOrderedCommRing K, Field K

attribute [nolint docBlame] LinearOrderedSemifield.toSemifield LinearOrderedField.toField
```
