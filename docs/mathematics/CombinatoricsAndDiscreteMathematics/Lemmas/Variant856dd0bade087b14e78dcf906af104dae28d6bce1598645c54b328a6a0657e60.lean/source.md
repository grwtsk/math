# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dad884e504a119e5b7c62cfe4550ffacc72eb97` · SHA-256 `856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Indicator
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Some lemmas on extended non-negative reals

These are some lemmas split off from `ENNReal.Basic` because they need a lot more imports.
They are probably good targets for further cleanup or moves.
-/


open Function Set NNReal

variable {α : Type*}

namespace ENNReal

@[simp, norm_cast]
theorem coe_indicator {α} (s : Set α) (f : α → ℝ≥0) (a : α) :
    ((s.indicator f a : ℝ≥0) : ℝ≥0∞) = s.indicator (fun x => ↑(f x)) a :=
  (ofNNRealHom : ℝ≥0 →+ ℝ≥0∞).map_indicator _ _ _

section Order

@[simp, norm_cast]
theorem coe_finset_sup {s : Finset α} {f : α → ℝ≥0} : ↑(s.sup f) = s.sup fun x => (f x : ℝ≥0∞) :=
  Finset.comp_sup_eq_sup_comp_of_is_total _ coe_mono rfl

end Order

end ENNReal
```
