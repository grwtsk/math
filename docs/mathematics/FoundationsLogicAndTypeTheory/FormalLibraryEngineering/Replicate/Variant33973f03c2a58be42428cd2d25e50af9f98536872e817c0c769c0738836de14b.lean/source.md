# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replicate.Variant33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e52e1968c1af15769d1f4b88407cd890ed16360` · SHA-256 `33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
This module contains the implementation of a bitblaster for `BitVec.replicate`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

structure ReplicateTarget (aig : AIG α) (combined : Nat) where
  {w : Nat}
  n : Nat
  inner : AIG.RefVec aig w
  h : combined = w * n

def blastReplicate (aig : AIG α) (target : ReplicateTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨n, inner, h⟩ := target
  let ref := go n inner 0 (by omega) (.emptyWithCapacity newWidth)
  ⟨aig, h ▸ ref⟩
where
  go {aig : AIG α} {w : Nat} (n : Nat) (input : AIG.RefVec aig w) (curr : Nat) (hcurr : curr ≤ n)
      (s : AIG.RefVec aig (w * curr)) : AIG.RefVec aig (w * n) :=
    if h : curr < n then
      let s := s.append input
      go n input (curr + 1) (by omega) s
    else
      have : curr = n := by omega
      this ▸ s
  termination_by n - curr

instance : AIG.LawfulVecOperator α ReplicateTarget blastReplicate where
  le_size := by simp [blastReplicate]
  decl_eq := by simp [blastReplicate]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
