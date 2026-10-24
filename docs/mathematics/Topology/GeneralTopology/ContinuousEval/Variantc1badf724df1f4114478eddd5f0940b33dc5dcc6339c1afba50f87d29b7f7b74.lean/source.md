# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousEval.Variantc1badf724df1f4114478eddd5f0940b33dc5dcc6339c1afba50f87d29b7f7b74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `473998ac9d0094abe48a50a9df7f08ba1bcb01ac` · SHA-256 `c1badf724df1f4114478eddd5f0940b33dc5dcc6339c1afba50f87d29b7f7b74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Weiyi Wang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Weiyi Wang
-/
module

public import Mathlib.Topology.Algebra.InfiniteSum.Basic

import Mathlib.Data.FunLike.Group
public import Mathlib.Topology.Hom.ContinuousEvalConst

/-! # Applying an infinite sum of functions

This file provides lemmas for `(∏'[L] n, f n) x` and `(∑'[L] n, f n) x` where `f` is a family of
functions. We state this for `FunLike` objects that are `ContinuousEvalConst`. This is applicable
to e.g. `ContinuousLinearMap`.
-/

public section

variable {α β γ F : Type*} [TopologicalSpace β] [CommMonoid β]
  [FunLike F α β] [TopologicalSpace F] [CommMonoid F] [ContinuousEvalConst F α β]
  [IsMulApply F α β] [IsOneApply F α β] {f : γ → F} {g : F} {L : SummationFilter γ}

/-- See also `Pi.hasProd` for bare pi type. -/
@[to_additive /-- See also `Pi.hasSum` for bare pi type. -/]
theorem hasProd_apply (hf : HasProd f g L) (x : α) : HasProd (f · x) (g x) L :=
  hf.map ((Pi.evalMonoidHom _ x).comp (FunLike.coeMonoidHom F α β)) (continuous_eval_const x)

/-- See also `Pi.multipliable` for bare pi type. -/
@[to_additive /-- See also `Pi.summable` for bare pi type. -/]
theorem multipliable_apply (hf : Multipliable f L) (x : α) : Multipliable (f · x) L :=
  hf.map ((Pi.evalMonoidHom _ x).comp (FunLike.coeMonoidHom F α β)) (continuous_eval_const x)

/-- See also `Pi.tprod_apply` for bare pi type. -/
@[to_additive /-- See also `Pi.tsum_apply` for bare pi type. -/]
theorem tprod_apply [T2Space β] [L.NeBot] (hf : Multipliable f L) (x : α) :
    (∏'[L] n, f n) x = ∏'[L] n, f n x :=
  hf.map_tprod ((Pi.evalMonoidHom _ x).comp (FunLike.coeMonoidHom F α β)) (continuous_eval_const x)
```
