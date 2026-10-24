# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variantcb3058cc3505a24dc48c0564ecba34e56aafd8acef66cde2ec394cb941d0aa16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b13a920fec61d44b56a427edf2442c7d6dfe307b` · SHA-256 `cb3058cc3505a24dc48c0564ecba34e56aafd8acef66cde2ec394cb941d0aa16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Group.Indicator
public import Mathlib.Basic.ENNReal.Basic
public import Mathlib.Data.Finset.Lattice.Fold

/-!
# Some lemmas on extended non-negative reals

These are some lemmas split off from `ENNReal.Basic` because they need a lot more imports.
They are probably good targets for further cleanup or moves.
-/

public section


open Set NNReal

variable {α : Type*}

namespace ENNReal

@[simp, norm_cast]
theorem coe_indicator {α} (s : Set α) (f : α → ℝ≥0) (a : α) :
    ((s.indicator f a : ℝ≥0) : ℝ≥0∞) = s.indicator (fun x => ↑(f x)) a :=
  map_indicator ofNNRealHom _ _ _

section Order

@[simp, norm_cast]
theorem coe_finset_sup {s : Finset α} {f : α → ℝ≥0} : ↑(s.sup f) = s.sup fun x => (f x : ℝ≥0∞) :=
  Finset.apply_sup_eq_sup_comp_of_linearOrder _ coe_mono rfl

end Order

end ENNReal
```
