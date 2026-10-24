# Complete source: GRWTSK.Algebra.Defs.Variantc303e5354fe83ffbe2b70a550ed18fe33df3de093f6f53b7edbc54545a56df9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `484e3c62ec1f418caf16d140680292cddc8eb258` · SHA-256 `c303e5354fe83ffbe2b70a550ed18fe33df3de093f6f53b7edbc54545a56df9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.RingTheory.LocalRing.Basic

/-!

# Maximal ideal of local rings

We define the maximal ideal of a local ring as the ideal of all non units.

## Main definitions

* `IsLocalRing.maximalIdeal`: The unique maximal ideal for a local rings. Its carrier set is the
  set of non units.

-/

namespace IsLocalRing

variable (R : Type*) [CommSemiring R] [IsLocalRing R]

/-- The ideal of elements that are not units. -/
def maximalIdeal : Ideal R where
  carrier := nonunits R
  zero_mem' := zero_mem_nonunits.2 <| zero_ne_one
  add_mem' {_ _} hx hy := nonunits_add hx hy
  smul_mem' _ _ := mul_mem_nonunits_right

end IsLocalRing

@[deprecated (since := "2024-11-11")] alias LocalRing.maximalIdeal := IsLocalRing.maximalIdeal
```
