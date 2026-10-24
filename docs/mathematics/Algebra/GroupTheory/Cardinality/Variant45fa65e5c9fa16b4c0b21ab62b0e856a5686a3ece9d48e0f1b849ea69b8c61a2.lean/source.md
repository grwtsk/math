# Complete source: GRWTSK.Algebra.GroupTheory.Cardinality.Variant45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a94d7c377c6228c3f96d801d79ec6f08a6063072` · SHA-256 `45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.GroupTheory.MonoidLocalization.Basic
import Mathlib.GroupTheory.OreLocalization.Cardinality

/-!

# Cardinality of localizations of commutative monoids

This file contains some results on cardinality of localizations.

-/

universe u

open Cardinal

namespace Localization

variable {M : Type u} [CommMonoid M] (S : Submonoid M)

@[to_additive]
theorem cardinalMk_le : #(Localization S) ≤ #M :=
  OreLocalization.cardinalMk_le S

end Localization
```
