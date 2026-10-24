# Complete source: GRWTSK.Algebra.UniversalAlgebra.Star.Variantbce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11c4680d41fb4347d62f6264f51431712a1600ae` · SHA-256 `bce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Floris van Doorn, Yury Kudryashov
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.Data.Real.Basic

/-!
# The real numbers are a `*`-ring, with the trivial `*`-structure
-/

/-- The real numbers are a `*`-ring, with the trivial `*`-structure. -/
instance : StarRing ℝ :=
  starRingOfComm

instance : TrivialStar ℝ :=
  ⟨fun _ => rfl⟩
```
