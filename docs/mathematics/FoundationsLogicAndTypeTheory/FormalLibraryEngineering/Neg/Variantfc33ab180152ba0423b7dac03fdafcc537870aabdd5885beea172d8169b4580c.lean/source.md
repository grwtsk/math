# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Neg.Variantfc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4445744b88a9263e96e34eb9598c5b97eddf7faa` · SHA-256 `fc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Add
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Not
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Const

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.neg`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastNeg (aig : AIG α) (input : AIG.RefVec aig w) : AIG.RefVecEntry α w :=
  let res := blastNot aig input
  let aig := res.aig
  let notInput := res.vec

  let one := blastConst aig 1#w

  blastAdd aig ⟨notInput, one⟩

instance : AIG.LawfulVecOperator α AIG.RefVec blastNeg where
  le_size := by
    intros
    simp only [blastNeg]
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastAdd)
    apply AIG.LawfulVecOperator.le_size (f := blastNot)
  decl_eq := by
    intros
    simp only [blastNeg]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastAdd)]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastNot)]
    · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastNot)
      assumption

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
