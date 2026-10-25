# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotateLeft.Variant65450d8c1df6bfe56d4900356a3937e7566f1eb56f3aa301a3ef474b5df9e162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31a55e46034a3066ac08a1539cd5f56d71b5428a` · SHA-256 `65450d8c1df6bfe56d4900356a3937e7566f1eb56f3aa301a3ef474b5df9e162`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
This module contains the implementation of a bitblaster for `BitVec.rotateLeft`. Note that only
rotating with a known rotation distance is supported because `rotateLeft` takes a `Nat` as distance.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastRotateLeft (aig : AIG α) (target : AIG.ShiftTarget aig w) :
    AIG.RefVecEntry α w :=
  let ⟨input, distance⟩ := target
  ⟨aig, go input distance 0 (by omega) (.emptyWithCapacity w)⟩
where
  go {aig : AIG α} (input : AIG.RefVec aig w) (distance : Nat) (curr : Nat) (hcurr : curr ≤ w)
      (s : AIG.RefVec aig curr) :
      AIG.RefVec aig w :=
  if hcurr1 : curr < w then
    if hcurr2 : curr < distance % w then
      let ref := input.get (w - (distance % w) + curr) (by omega)
      let s := s.push ref
      go input distance (curr + 1) (by omega) s
    else
      let ref := input.get (curr - (distance % w)) (by omega)
      let s := s.push ref
      go input distance (curr + 1) (by omega) s
  else
    have hcurr : curr = w := by omega
    hcurr ▸ s
termination_by w - curr

instance : AIG.LawfulVecOperator α AIG.ShiftTarget blastRotateLeft where
  le_size := by
    intros
    unfold blastRotateLeft
    dsimp only
    omega
  decl_eq := by
    intros
    unfold blastRotateLeft
    dsimp only; rfl

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
