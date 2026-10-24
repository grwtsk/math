# Complete source: GRWTSK.Algebra.Noetherian.Variant288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f2f268de19984933ea55afaf838bac58f5626fd` · SHA-256 `288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.RingTheory.Noetherian.Basic

/-!
# Noetherian quotient rings and quotient modules
-/

instance Ideal.Quotient.isNoetherianRing {R : Type*} [CommRing R] [IsNoetherianRing R]
    (I : Ideal R) : IsNoetherianRing (R ⧸ I) :=
  isNoetherianRing_iff.mpr <| isNoetherian_of_tower R <| inferInstance
```
