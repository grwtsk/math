# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Heartbeats.Variant089a4ff0e84f3f999af38512b488879febe7fc01b5daa32945a6f168d31461ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a079f0db7cd368173dd6c6fe0a4e701b1de6a114` · SHA-256 `089a4ff0e84f3f999af38512b488879febe7fc01b5daa32945a6f168d31461ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Data.MLList.Basic
import Std.Lean.CoreM

/-!
# Truncate a `MLList` when running out of available heartbeats.
-/

open Lean.Core (CoreM)

/-- Take an initial segment of a monadic lazy list,
stopping when there is less than `percent` of the remaining allowed heartbeats.

If `getMaxHeartbeats` returns `0`, then this passes through the original list unmodified.

The `initial` heartbeat counter is recorded when the first element of the list is requested.
Then each time an element is requested from the wrapped list the heartbeat counter is checked, and
if `current * 100 / initial < percent` then that element is returned,
but no further elements.
-/
def MLList.whileAtLeastHeartbeatsPercent [Monad m] [MonadLiftT CoreM m]
    (L : MLList m α) (percent : Nat := 10) : MLList m α :=
  MLList.squash fun _ => do
    if (← getMaxHeartbeats) = 0 then do
      return L
    let initialHeartbeats ← getRemainingHeartbeats
    return L.takeUpToFirstM fun _ => do
      pure <| .up <| (← getRemainingHeartbeats) * 100 / initialHeartbeats < percent
```
