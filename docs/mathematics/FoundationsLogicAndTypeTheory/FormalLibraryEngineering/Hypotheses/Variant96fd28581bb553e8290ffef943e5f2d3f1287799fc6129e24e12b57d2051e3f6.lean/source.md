# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hypotheses.Variant96fd28581bb553e8290ffef943e5f2d3f1287799fc6129e24e12b57d2051e3f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e204ee15ea99aa3c26220d1e156219718e00edf2` · SHA-256 `96fd28581bb553e8290ffef943e5f2d3f1287799fc6129e24e12b57d2051e3f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.ExtensionAPI.Attr
public import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Init

/-!
# Hypothesis operations for dyadic real intervals

This file defines the hypothesis extensions for the `interval_dyadic_real` inclusion family.
-/

@[expose] public section

namespace Inclusion

namespace IntervalDyadicReal

@[hypothesis_op interval_dyadic_real]
theorem Iic_mem_of_le {x y : ℝ} {I : Interval Dyadic} (hxy : x ≤ y) (hy : y ∈ I) :
    x ∈ Interval.Iic I.ub := Interval.mem_Iic_of_le hxy hy

@[hypothesis_op interval_dyadic_real]
theorem Ici_mem_of_le {x y : ℝ} {I : Interval Dyadic} (hxy : x ≤ y) (hx : x ∈ I) :
    y ∈ Interval.Ici I.lb := Interval.mem_Ici_of_le hxy hx

@[hypothesis_op interval_dyadic_real]
theorem Iic_mem_of_lt {x y : ℝ} {I : Interval Dyadic} (hxy : x < y) (hy : y ∈ I) :
    x ∈ Interval.Iic I.ub := Interval.mem_Iic_of_lt hxy hy

@[hypothesis_op interval_dyadic_real]
theorem Ici_mem_of_lt {x y : ℝ} {I : Interval Dyadic} (hxy : x < y) (hx : x ∈ I) :
    y ∈ Interval.Ici I.lb := Interval.mem_Ici_of_lt hxy hx

@[hypothesis_op interval_dyadic_real]
theorem Ici_mem_of_mem_Ici {a x : ℝ} {I : Interval Dyadic} (hx : x ∈ Set.Ici a) (ha : a ∈ I) :
    x ∈ Interval.Ici I.lb := Interval.mem_Ici_of_mem_Ici hx ha

@[hypothesis_op interval_dyadic_real]
theorem Ici_mem_of_mem_Ioi {a x : ℝ} {I : Interval Dyadic} (hx : x ∈ Set.Ioi a) (ha : a ∈ I) :
    x ∈ Interval.Ici I.lb := Interval.mem_Ici_of_mem_Ioi hx ha

@[hypothesis_op interval_dyadic_real]
theorem Iic_mem_of_mem_Iic {b x : ℝ} {I : Interval Dyadic} (hx : x ∈ Set.Iic b) (hb : b ∈ I) :
    x ∈ Interval.Iic I.ub := Interval.mem_Iic_of_mem_Iic hx hb

@[hypothesis_op interval_dyadic_real]
theorem Iic_mem_of_mem_Iio {b x : ℝ} {I : Interval Dyadic} (hx : x ∈ Set.Iio b) (hb : b ∈ I) :
    x ∈ Interval.Iic I.ub := Interval.mem_Iic_of_mem_Iio hx hb

@[hypothesis_op interval_dyadic_real]
theorem Icc_mem_of_mem_Ico {a b x : ℝ} {I J : Interval Dyadic} (hx : x ∈ Set.Ico a b)
    (ha : a ∈ I) (hb : b ∈ J) : x ∈ Interval.Icc I.lb J.ub :=
  Interval.mem_Icc_of_mem_Ico hx ha hb

@[hypothesis_op interval_dyadic_real]
theorem Icc_mem_of_mem_Ioc {a b x : ℝ} {I J : Interval Dyadic} (hx : x ∈ Set.Ioc a b)
    (ha : a ∈ I) (hb : b ∈ J) : x ∈ Interval.Icc I.lb J.ub :=
  Interval.mem_Icc_of_mem_Ioc hx ha hb

@[hypothesis_op interval_dyadic_real]
theorem Icc_mem_of_mem_Icc {a b x : ℝ} {I J : Interval Dyadic} (hx : x ∈ Set.Icc a b)
    (ha : a ∈ I) (hb : b ∈ J) : x ∈ Interval.Icc I.lb J.ub :=
  Interval.mem_Icc_of_mem_Icc hx ha hb

@[hypothesis_op interval_dyadic_real]
theorem Icc_mem_of_mem_Ioo {a b x : ℝ} {I J : Interval Dyadic} (hx : x ∈ Set.Ioo a b)
    (ha : a ∈ I) (hb : b ∈ J) : x ∈ Interval.Icc I.lb J.ub :=
  Interval.mem_Icc_of_mem_Ioo hx ha hb

end IntervalDyadicReal

end Inclusion
```
