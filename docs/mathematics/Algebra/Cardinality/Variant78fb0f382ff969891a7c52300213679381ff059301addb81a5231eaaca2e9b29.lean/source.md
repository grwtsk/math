# Complete source: GRWTSK.Algebra.Cardinality.Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67ff2a50f55cebe14a07926569b84ce4922811a7` · SHA-256 `78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.GroupTheory.OreLocalization.Cardinality
import Mathlib.RingTheory.OreLocalization.Ring

/-!
# Cardinality of Ore localizations of rings

This file contains some results on cardinality of Ore localizations of rings.
-/

universe u

open Cardinal

namespace OreLocalization

variable {R : Type u} [Ring R] {S : Submonoid R} [OreLocalization.OreSet S]

theorem cardinalMk (hS : S ≤ nonZeroDivisorsRight R) : #(OreLocalization S R) = #R :=
  le_antisymm (cardinalMk_le S) (mk_le_of_injective (numeratorHom_inj hS))

end OreLocalization
```
