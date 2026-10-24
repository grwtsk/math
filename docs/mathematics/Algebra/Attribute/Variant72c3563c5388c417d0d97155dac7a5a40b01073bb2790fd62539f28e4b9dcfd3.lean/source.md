# Complete source: GRWTSK.Algebra.Attribute.Variant72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `355bf8df9af7b9a15b1c16d02e68d48518cd67c7` · SHA-256 `72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Geoffrey Irving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Geoffrey Irving
-/

import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Tactic.Bound

/-!
# Tests for the `@bound` attribute

Verify that our heuristic for the priority of a declaration produces the expected values.
-/

open Mathlib.Tactic.Bound (declPriority)

/-- info: 0 -/
#guard_msgs in
#eval declPriority `le_refl

/-- info: 0 -/
#guard_msgs in
#eval declPriority `sq_nonneg

/-- info: 11 -/
#guard_msgs in
#eval declPriority `Bound.one_lt_div_of_pos_of_lt

/-- info: 141 -/
#guard_msgs in
#eval declPriority `Bound.pow_le_pow_right_of_le_one_or_one_le
```
