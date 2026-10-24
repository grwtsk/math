# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sampleable.Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e94a64108de6b5a3b3704d4dd699ef994da8a83a` · SHA-256 `40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Simon Hudon
-/
import Batteries.Data.Rat.Basic
import Mathlib.Data.Int.Order.Basic
import Mathlib.Data.List.Monad
import Mathlib.Data.PNat.Defs
import Plausible.Sampleable

/-!
This module contains `Plausible.Shrinkable` and `Plausible.SampleableExt` instances for mathlib
types.
-/

namespace Plausible

open Random Gen

section Shrinkers

instance Rat.shrinkable : Shrinkable Rat where
  shrink r :=
    (Shrinkable.shrink r.num).flatMap fun d => Nat.shrink r.den |>.map fun n => Rat.divInt d n

instance PNat.shrinkable : Shrinkable PNat where
  shrink m := Nat.shrink m.natPred |>.map Nat.succPNat

end Shrinkers

section Samplers

open SampleableExt

instance Rat.sampleableExt : SampleableExt Rat :=
  mkSelfContained (do
    let d ← choose Int (-(← getSize)) (← getSize)
      (le_trans (Int.neg_nonpos_of_nonneg (Int.ofNat_zero_le _)) (Int.ofNat_zero_le _))
    let n ← choose Nat 0 (← getSize) (Nat.zero_le _)
    return Rat.divInt d n)


instance PNat.sampleableExt : SampleableExt PNat :=
  mkSelfContained (do
    let n ← chooseNat
    return Nat.succPNat n)

end Samplers

end Plausible
```
