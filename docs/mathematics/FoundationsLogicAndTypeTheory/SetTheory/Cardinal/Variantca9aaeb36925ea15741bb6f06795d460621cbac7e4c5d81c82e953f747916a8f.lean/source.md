# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinal.Variantca9aaeb36925ea15741bb6f06795d460621cbac7e4c5d81c82e953f747916a8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b31cb4038ca5a5b74819a36ab496529ce9b312b6` · SHA-256 `ca9aaeb36925ea15741bb6f06795d460621cbac7e4c5d81c82e953f747916a8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Floris Van Doorn
-/
import Mathlib.Algebra.CharZero.Infinite
import Mathlib.Algebra.Ring.Rat
import Mathlib.Data.Rat.Encodable
import Mathlib.SetTheory.Cardinal.Basic

/-!
# Cardinality of ℚ

This file proves that the Cardinality of ℚ is ℵ₀
-/

assert_not_exists Module Field

open Cardinal

theorem Cardinal.mkRat : #ℚ = ℵ₀ := mk_eq_aleph0 ℚ
```
