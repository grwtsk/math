# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reverse.Variant35a52e57dfc698d41d6c18b68dc67ff2b7df4be2a96dea9251d5d6ca65839656

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90e617ac4c707aa5a5998170674b5a9d688125f6` · SHA-256 `35a52e57dfc698d41d6c18b68dc67ff2b7df4be2a96dea9251d5d6ca65839656`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Reverse
import Init.Omega

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.reverse` from
`Impl.Operations.Reverse`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

@[simp]
theorem denote_blastReverse (aig : AIG α) (target : RefVec aig w)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastReverse aig target).aig, (blastReverse aig target).vec.get idx hidx, assign⟧
          =
        ⟦aig, target.get (w - 1 - idx) (by omega), assign⟧ := by
  intro idx hidx
  simp [blastReverse, AIG.RefVec.get]


end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
