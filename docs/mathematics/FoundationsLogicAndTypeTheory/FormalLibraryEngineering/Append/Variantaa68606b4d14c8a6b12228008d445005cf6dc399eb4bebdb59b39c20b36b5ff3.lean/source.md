# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Append.Variantaa68606b4d14c8a6b12228008d445005cf6dc399eb4bebdb59b39c20b36b5ff3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bf0961303834a181a59189808f04863770d806c` · SHA-256 `aa68606b4d14c8a6b12228008d445005cf6dc399eb4bebdb59b39c20b36b5ff3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Append
import Init.Omega

@[expose] public section

/-!
This module contains the verification of the `BitVec.append` bitblaster from `Impl.Operations.Append`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

@[simp]
theorem denote_blastAppend (aig : AIG α) (target : AppendTarget aig newWidth)
  (assign : α → Bool) :
  ∀ (idx : Nat) (hidx : idx < newWidth),
      ⟦
        (blastAppend aig target).aig,
        (blastAppend aig target).vec.get idx hidx,
        assign
      ⟧
        =
      if hr : idx < target.rw then
         ⟦aig, target.rhs.get idx hr, assign⟧
      else
         have := target.h
         ⟦aig, target.lhs.get (idx - target.rw) (by omega), assign⟧
    := by
  intros
  unfold blastAppend
  rcases target with ⟨lw, rw, lhs, rhs, ht⟩
  dsimp only
  rw [AIG.RefVec.get_append]
  split <;> rfl


end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
