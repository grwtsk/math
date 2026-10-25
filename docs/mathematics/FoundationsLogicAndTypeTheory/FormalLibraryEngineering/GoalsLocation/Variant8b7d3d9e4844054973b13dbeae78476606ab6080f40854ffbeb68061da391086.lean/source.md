# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalsLocation.Variant8b7d3d9e4844054973b13dbeae78476606ab6080f40854ffbeb68061da391086

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9efb1a01e8fe83b0154188c5d1aaf5622962512` · SHA-256 `8b7d3d9e4844054973b13dbeae78476606ab6080f40854ffbeb68061da391086`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
import Mathlib.Init
import Lean.Meta.Tactic.Util
import Lean.SubExpr

/-! This file defines some functions for dealing with `SubExpr.GoalsLocation`. -/

namespace Lean.SubExpr.GoalsLocation
/-- The root expression of the position specified by the `GoalsLocation`. -/
def rootExpr : GoalsLocation → MetaM Expr
  | ⟨_, .hyp fvarId⟩        => fvarId.getType
  | ⟨_, .hypType fvarId _⟩  => fvarId.getType
  | ⟨_, .hypValue fvarId _⟩ => do return (← fvarId.getDecl).value
  | ⟨mvarId, .target _⟩     => mvarId.getType

/-- The `SubExpr.Pos` specified by the `GoalsLocation`. -/
def pos : GoalsLocation → Pos
  | ⟨_, .hyp _⟩          => .root
  | ⟨_, .hypType _ pos⟩  => pos
  | ⟨_, .hypValue _ pos⟩ => pos
  | ⟨_, .target pos⟩     => pos

/-- The hypothesis specified by the `GoalsLocation`. -/
def location : GoalsLocation → MetaM (Option Name)
  | ⟨_, .hyp fvarId⟩        => some <$> fvarId.getUserName
  | ⟨_, .hypType fvarId _⟩  => some <$> fvarId.getUserName
  | ⟨_, .hypValue fvarId _⟩ => some <$> fvarId.getUserName
  | ⟨_, .target _⟩          => return none

end Lean.SubExpr.GoalsLocation
```
