# Complete source: GRWTSK.Algebra.Norm.Variantc9c93748bf110cfe1bd467cade437139722ecdaf74d7540143db919009d037a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f51484711de7ada37f3a6129b777ce0232a0861` · SHA-256 `c9c93748bf110cfe1bd467cade437139722ecdaf74d7540143db919009d037a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
module

public import Mathlib.Order.Northcott
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm

/-! # Northcott property for the norm of ideals in rings with finite quotients

For a ring with finite quotients, there are only finitely many ideals of bounded norm, see
`Ring.HasFiniteQuotients.finite_cardQuot_le`. This file records the resulting `Northcott`
instances.

-/

public section

namespace Ring.HasFiniteQuotients

variable {R : Type*} [CommRing R] [HasFiniteQuotients R]

instance : Northcott fun p : Ideal R ↦ p.cardQuot :=
  ⟨Ring.HasFiniteQuotients.finite_cardQuot_le⟩

instance [IsDedekindDomain R] [Infinite R] :
    Northcott fun p : IsDedekindDomain.HeightOneSpectrum R ↦ p.asIdeal.absNorm :=
  ⟨Ring.HasFiniteQuotients.finite_absNorm_heightOneSpectrum_le⟩

end Ring.HasFiniteQuotients
```
