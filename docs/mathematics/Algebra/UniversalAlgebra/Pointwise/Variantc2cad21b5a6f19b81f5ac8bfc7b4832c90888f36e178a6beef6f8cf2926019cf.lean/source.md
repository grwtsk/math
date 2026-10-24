# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pointwise.Variantc2cad21b5a6f19b81f5ac8bfc7b4832c90888f36e178a6beef6f8cf2926019cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8faa927528423b00b31e914c41f360c48c5f4bca` · SHA-256 `c2cad21b5a6f19b81f5ac8bfc7b4832c90888f36e178a6beef6f8cf2926019cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best, Yaël Dillies
-/
module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Group.Pointwise.Set.Scalar
public import Mathlib.Algebra.Order.GroupWithZero.OrderIso
public import Mathlib.Algebra.Order.Ring.Defs
public import Mathlib.Order.Interval.Set.OrderIso
public import Mathlib.Algebra.Group.Action.Defs

/-!
# Pointwise operations on ordered algebraic objects

This file contains lemmas about the effect of pointwise operations on sets with an order structure.
-/

public section

open Set
open scoped Pointwise

namespace LinearOrderedField

variable {K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K] {a b r : K} (hr : 0 < r)
include hr

theorem smul_Ioo : r • Ioo a b = Ioo (r * a) (r * b) := (OrderIso.mulLeft₀ r hr).image_Ioo a b
theorem smul_Icc : r • Icc a b = Icc (r * a) (r * b) := (OrderIso.mulLeft₀ r hr).image_Icc a b
theorem smul_Ico : r • Ico a b = Ico (r * a) (r * b) := (OrderIso.mulLeft₀ r hr).image_Ico a b
theorem smul_Ioc : r • Ioc a b = Ioc (r * a) (r * b) := (OrderIso.mulLeft₀ r hr).image_Ioc a b
theorem smul_Ioi : r • Ioi a = Ioi (r * a) := (OrderIso.mulLeft₀ r hr).image_Ioi a
theorem smul_Iio : r • Iio a = Iio (r * a) := (OrderIso.mulLeft₀ r hr).image_Iio a
theorem smul_Ici : r • Ici a = Ici (r * a) := (OrderIso.mulLeft₀ r hr).image_Ici a
theorem smul_Iic : r • Iic a = Iic (r * a) := (OrderIso.mulLeft₀ r hr).image_Iic a

end LinearOrderedField
```
