# Complete source: GRWTSK.Algebra.GroupTheory.TypeTags.Variant230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42958ea577c4081ca22e31dbc0470f34bb351dc6` · SHA-256 `230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Group.Int.Defs
import Mathlib.Algebra.Group.TypeTags.Basic

/-!
# Lemmas about `Multiplicative ℤ`.
-/


open Nat

namespace Int

section Multiplicative

open Multiplicative

lemma toAdd_pow (a : Multiplicative ℤ) (b : ℕ) : (a ^ b).toAdd = a.toAdd * b := mul_comm _ _

lemma toAdd_zpow (a : Multiplicative ℤ) (b : ℤ) : (a ^ b).toAdd = a.toAdd * b := mul_comm _ _

@[simp] lemma ofAdd_mul (a b : ℤ) : ofAdd (a * b) = ofAdd a ^ b := (toAdd_zpow ..).symm

end Multiplicative

end Int
```
