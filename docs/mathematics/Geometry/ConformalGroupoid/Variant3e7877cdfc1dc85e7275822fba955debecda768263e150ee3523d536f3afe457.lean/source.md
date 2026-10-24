# Complete source: GRWTSK.Geometry.ConformalGroupoid.Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2729f51ab45a1e987d4f7d58c6f267d11a109d39` · SHA-256 `3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yourong Zang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yourong Zang
-/
import Mathlib.Analysis.Calculus.Conformal.NormedSpace
import Mathlib.Geometry.Manifold.ChartedSpace

/-!
# Conformal Groupoid

In this file we define the groupoid of conformal maps on normed spaces.

## Main definitions

* `conformalGroupoid`: the groupoid of conformal partial homeomorphisms.

## Tags

conformal, groupoid
-/


variable {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]

/-- The pregroupoid of conformal maps. -/
def conformalPregroupoid : Pregroupoid X where
  property f u := ∀ x, x ∈ u → ConformalAt f x
  comp {f _} _ _ hf hg _ _ _ x hx := (hg (f x) hx.2).comp x (hf x hx.1)
  id_mem x _ := conformalAt_id x
  locality _ h x hx :=
    let ⟨_, _, h₂, h₃⟩ := h x hx
    h₃ x ⟨hx, h₂⟩
  congr hu h hf x hx := (hf x hx).congr hx hu h

/-- The groupoid of conformal maps. -/
def conformalGroupoid : StructureGroupoid X :=
  conformalPregroupoid.groupoid
```
