# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Append.Variantcb880b8fddada6fd54fc3f04cc44eef1d9fab595660fe2db386309627f142854

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af3f8456ccf88b302be5f7299e3b0d6cf1852870` · SHA-256 `cb880b8fddada6fd54fc3f04cc44eef1d9fab595660fe2db386309627f142854`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
import Init.Data.Nat.Order
import Init.Data.Order.Lemmas

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.append`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

structure AppendTarget (aig : AIG α) (combined : Nat) where
  {lw : Nat}
  {rw : Nat}
  lhs : AIG.RefVec aig lw
  rhs : AIG.RefVec aig rw
  h : combined = rw + lw

def blastAppend (aig : AIG α) (target : AppendTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨lhs, rhs, h⟩ := target
  let combined := rhs.append lhs
  ⟨aig, h ▸ combined⟩

instance : AIG.LawfulVecOperator α AppendTarget blastAppend where
  le_size := by simp [blastAppend]
  decl_eq := by simp [blastAppend]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
