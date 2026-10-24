# Complete source: GRWTSK.Algebra.Instances.Variant76c268807fe1b494a1fa83d09bcb4a17df16fa3cc12b8f86128d3e202f5bf38d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa9afd1a57508c8b208446987a5642536648d0e4` · SHA-256 `76c268807fe1b494a1fa83d09bcb4a17df16fa3cc12b8f86128d3e202f5bf38d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: euprunin
-/
import Mathlib.Algebra.Ring.Defs
import Mathlib.RingTheory.NonUnitalSubring.Defs
import Mathlib.RingTheory.TwoSidedIdeal.Basic

/-!
# Additional instances for two sided ideals.
-/
instance {R} [NonUnitalNonAssocRing R] : NonUnitalSubringClass (TwoSidedIdeal R) R where
  mul_mem _ hb := TwoSidedIdeal.mul_mem_left _ _ _ hb
```
