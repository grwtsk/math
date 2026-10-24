# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PWO.Variant5dedf846b92f7e30860fbdf2a6b40c4b272da453e7c29eac1cbcc04ab746786e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3d9653384edeb2a53c7872847fb56798b6ff4df` · SHA-256 `5dedf846b92f7e30860fbdf2a6b40c4b272da453e7c29eac1cbcc04ab746786e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Data.Finsupp.Order
import Mathlib.Order.WellFoundedSet

/-!
# Partial well ordering on finsupps

This file contains the fact that finitely supported functions from a fintype are
partially well ordered when the codomain is a linear order that is well ordered.
It is in a separate file for now so as to not add imports to the file `Order.WellFoundedSet`.

## Main statements

* `Finsupp.isPWO` - finitely supported functions from a fintype are partially well ordered when
  the codomain is a linear order that is well ordered

## Tags

Dickson, order, partial well order
-/


/-- A version of **Dickson's lemma** any subset of functions `σ →₀ α` is partially well
ordered, when `σ` is `Finite` and `α` is a linear well order.
This version uses finsupps on a finite type as it is intended for use with `MVPowerSeries`.
-/
theorem Finsupp.isPWO {α σ : Type*} [Zero α] [LinearOrder α] [WellFoundedLT α] [Finite σ]
    (S : Set (σ →₀ α)) : S.IsPWO :=
  Finsupp.equivFunOnFinite.symm_image_image S ▸
    Set.PartiallyWellOrderedOn.image_of_monotone_on (Pi.isPWO _) fun _a _b _ha _hb => id
```
