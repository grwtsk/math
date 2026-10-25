# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant28ba6cf32722bd3f956dc5e03ce1013a097c42a97248e6ef3e3f2e6260ed354c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbde14d168ed0a0398b1bfd06ba87570594b1eba` · SHA-256 `28ba6cf32722bd3f956dc5e03ce1013a097c42a97248e6ef3e3f2e6260ed354c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic

@[expose] public section

/-!
This module contains basic infrastructure for converting between variable assignments of `BVExpr`
and `AIG`. This is necessary because `BVExpr` needs to use a list and indices into said list instead
of a function due to the way that it is used in `bv_decide`.
-/

namespace Std.Tactic.BVDecide

namespace BVExpr

def Assignment.toAIGAssignment (assign : Assignment) : BVBit → Bool :=
  fun bit => (assign.get bit.var).bv.getLsbD bit.idx

@[simp]
theorem Assignment.toAIGAssignment_apply (assign : Assignment) (bit : BVBit) :
    assign.toAIGAssignment bit = (assign.get bit.var).bv.getLsbD bit.idx := by
  rfl

end BVExpr

end Std.Tactic.BVDecide
```
