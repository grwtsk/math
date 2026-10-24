# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lattice.Variantc2968318ff2a9852d5334be2f2cff7dee20af3ab0d64a31480a68e2bd9193ec8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1550103b186273b114119234263bcb20e468b644` · SHA-256 `c2968318ff2a9852d5334be2f2cff7dee20af3ab0d64a31480a68e2bd9193ec8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Nat.Lattice
import Mathlib.Data.ENat.Basic

#align_import data.enat.lattice from "leanprover-community/mathlib"@"f7fc89d5d5ff1db2d1242c7bb0e9062ce47ef47c"

/-!
# Extended natural numbers form a complete linear order

This instance is not in `Data.ENat.Basic` to avoid dependency on `Finset`s.

We also restate some lemmas about `WithTop` for `ENat` to have versions that use `Nat.cast` instead
of `WithTop.some`.
-/

-- porting notes: was `deriving instance` but "default handlers have not been implemented yet"
-- porting notes: `noncomputable` through 'Nat.instConditionallyCompleteLinearOrderBotNat'
noncomputable instance : CompleteLinearOrder ENat :=
  inferInstanceAs (CompleteLinearOrder (WithTop ℕ))

namespace ENat

variable {ι : Sort*} {f : ι → ℕ}

lemma iSup_coe_lt_top : (⨆ x, ↑(f x) : ℕ∞) < ⊤ ↔ BddAbove (Set.range f) :=
  WithTop.iSup_coe_lt_top f

theorem coe_iSup (h : BddAbove (Set.range f)) : ↑(⨆ i, f i) = (⨆ i, f i : ℕ∞) :=
  WithTop.coe_iSup _ h

end ENat
```
