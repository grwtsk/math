# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Const.Variant432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6417d654628b8ce5b0f3cdc23c94a749bfc7c10d` · SHA-256 `432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.LawfulVecOperator
import Init.Omega

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec` constants.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastConst (aig : AIG α) (val : BitVec w) : AIG.RefVec aig w :=
  go aig val 0 (.emptyWithCapacity w) (by omega)
where
  go (aig : AIG α) (val : BitVec w) (curr : Nat) (s : AIG.RefVec aig curr) (hcurr : curr ≤ w) :
      AIG.RefVec aig w :=
    if hcurr : curr < w then
      let bitRef := aig.mkConstCached (val.getLsbD curr)
      let s := s.push bitRef
      go aig val (curr + 1) s (by omega)
    else
      have hcurr : curr = w := by omega
      hcurr ▸ s
  termination_by w - curr

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
