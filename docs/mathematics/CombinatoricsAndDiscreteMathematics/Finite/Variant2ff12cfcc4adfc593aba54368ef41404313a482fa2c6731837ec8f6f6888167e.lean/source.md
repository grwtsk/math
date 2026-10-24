# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d913fc93e2e6525c08100c8e8742bf3e4fbabb3` · SHA-256 `2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/

import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Data.Fintype.Defs

/-!
# Divisibility in finite types
-/

variable {M : Type*} [Semigroup M]

instance [Fintype M] [DecidableEq M] (a b : M) : Decidable (a ∣ b) :=
  decidable_of_iff (∃ c, b = a * c) dvd_def

```
