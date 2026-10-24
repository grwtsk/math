# Complete source: GRWTSK.Algebra.UniversalAlgebra.Star.Variant56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9f39c3911334eb2b0258a678a714a546ae6704e` · SHA-256 `56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Floris van Doorn, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Star.Basic
public import Mathlib.Basic.Real.Basic

/-!
# The real numbers are a \*-ring, with the trivial \*-structure
-/

public section

/-- The real numbers are a \*-ring, with the trivial \*-structure. -/
instance : StarRing ℝ :=
  starRingOfComm

instance : TrivialStar ℝ :=
  ⟨fun _ => rfl⟩
```
