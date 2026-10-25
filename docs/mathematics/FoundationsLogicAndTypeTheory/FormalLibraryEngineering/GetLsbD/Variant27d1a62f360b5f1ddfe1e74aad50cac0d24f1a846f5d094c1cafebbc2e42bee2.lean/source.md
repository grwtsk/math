# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLsbD.Variant27d1a62f360b5f1ddfe1e74aad50cac0d24f1a846f5d094c1cafebbc2e42bee2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2a6ac2fdea994344d81f6ad21e3db0598ccef26` · SHA-256 `27d1a62f360b5f1ddfe1e74aad50cac0d24f1a846f5d094c1cafebbc2e42bee2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.RefVec

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.getLsbD`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVPred

variable [Hashable α] [DecidableEq α]

structure GetLsbDTarget (aig : AIG α) where
  {w : Nat}
  vec : AIG.RefVec aig w
  idx : Nat

def blastGetLsbD (aig : AIG α) (target : GetLsbDTarget aig) : AIG.Ref aig :=
  if h : target.idx < target.w then
    target.vec.get target.idx h
  else
    aig.mkConstCached false

end BVPred

end Std.Tactic.BVDecide
```
