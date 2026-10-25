# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantb67041afe43d567d9858fe24b7a5958abc946cb756a0a6cb4347cff066171c8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3070982be0f7981abbd9a4ed2be073836462fc0b` · SHA-256 `b67041afe43d567d9858fe24b7a5958abc946cb756a0a6cb4347cff066171c8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Intro
public import Lean.Meta.Tactic.Assumption
public import Lean.Meta.Tactic.Contradiction
public import Lean.Meta.Tactic.Apply
public import Lean.Meta.Tactic.Revert
public import Lean.Meta.Tactic.Clear
public import Lean.Meta.Tactic.Assert
public import Lean.Meta.Tactic.Rewrite
public import Lean.Meta.Tactic.Generalize
public import Lean.Meta.Tactic.Replace
public import Lean.Meta.Tactic.Lets
public import Lean.Meta.Tactic.Induction
public import Lean.Meta.Tactic.Cases
public import Lean.Meta.Tactic.ElimInfo
public import Lean.Meta.Tactic.Delta
public import Lean.Meta.Tactic.Constructor
public import Lean.Meta.Tactic.Simp
public import Lean.Meta.Tactic.AuxLemma
public import Lean.Meta.Tactic.SplitIf
public import Lean.Meta.Tactic.Split
public import Lean.Meta.Tactic.TryThis
public import Lean.Meta.Tactic.Cleanup
public import Lean.Meta.Tactic.Unfold
public import Lean.Meta.Tactic.Rename
public import Lean.Meta.Tactic.AC
public import Lean.Meta.Tactic.Refl
public import Lean.Meta.Tactic.Congr
public import Lean.Meta.Tactic.Repeat
public import Lean.Meta.Tactic.NormCast
public import Lean.Meta.Tactic.IndependentOf
public import Lean.Meta.Tactic.Symm
public import Lean.Meta.Tactic.Backtrack
public import Lean.Meta.Tactic.SolveByElim
public import Lean.Meta.Tactic.FunInd
public import Lean.Meta.Tactic.Rfl
public import Lean.Meta.Tactic.Rewrites
public import Lean.Meta.Tactic.Grind
public import Lean.Meta.Tactic.Ext
public import Lean.Meta.Tactic.Try
public import Lean.Meta.Tactic.Cbv
public import Lean.Meta.Tactic.BVDecide
```
