# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Not.Variant4e58e5ac0c98d9212907a578cc40c9c11a53a4ec7539e7a5163cd73c3ab5f525

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84a6459902a0f93d93d51011ebaf4a31afe417d7` · SHA-256 `4e58e5ac0c98d9212907a578cc40c9c11a53a4ec7539e7a5163cd73c3ab5f525`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.RefVecOperator

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.not`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastNot (aig : AIG α) (s : AIG.RefVec aig w) : AIG.RefVecEntry α w :=
  AIG.RefVec.map aig ⟨s, AIG.mkNotCached⟩

instance : AIG.LawfulVecOperator α AIG.RefVec blastNot where
  le_size := by
    intros
    unfold blastNot
    apply AIG.LawfulVecOperator.le_size (f := AIG.RefVec.map)
  decl_eq := by
    intros
    unfold blastNot
    apply AIG.LawfulVecOperator.decl_eq (f := AIG.RefVec.map)

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
