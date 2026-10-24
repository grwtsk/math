# Complete source: GRWTSK.Algebra.UniqueFactorizationDomain.Variant163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4751612885123e71f99c8a28d6a154bba18fa6f` · SHA-256 `163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.RingTheory.Noetherian.Defs
import Mathlib.RingTheory.UniqueFactorizationDomain.Ideal
/-!
# Noetherian domains have unique factorization

## Main results

# IsNoetherianRing.wfDvdMonoid
-/

variable {R : Type*} [CommSemiring R] [IsDomain R]

-- see Note [lower instance priority]
instance (priority := 100) IsNoetherianRing.wfDvdMonoid [h : IsNoetherianRing R] :
    WfDvdMonoid R :=
  WfDvdMonoid.of_setOf_isPrincipal_wellFoundedOn_gt h.wf.wellFoundedOn
```
