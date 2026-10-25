# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseM.Variant1363357eb12f4245c05cb3bb1c0e4bd0ea11df60a9ac2018fc280c0498e93f89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c51dc0619b99ac418bd140f6b51f24b800203322` · SHA-256 `1363357eb12f4245c05cb3bb1c0e4bd0ea11df60a9ac2018fc280c0498e93f89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Stats.Basic
public import Aesop.RulePattern.Cache

public section

set_option linter.missingDocs true

open Lean

namespace Aesop

/-- State of the `BaseM` monad. -/
structure BaseM.State where
  /-- The rule pattern cache. -/
  rulePatternCache : RulePatternCache
  /-- Stats collected during an Aesop call. -/
  stats : Stats
  deriving Inhabited

instance : EmptyCollection BaseM.State :=
  ⟨by refine' { .. } <;> exact ∅⟩

/-- Aesop's base monad. Contains no interesting data, only various caches and
stats. -/
abbrev BaseM := StateRefT BaseM.State MetaM

namespace BaseM

/-- Run a `BaseM` action. -/
protected def run (x : BaseM α) (stats : Stats := ∅) : MetaM (α × Stats) := do
  let (a, s) ← StateRefT'.run x { stats, rulePatternCache := ∅ }
  return (a, s.stats)

instance : MonadHashMapCacheAdapter Expr RulePatternCache.Entry BaseM where
  getCache := return (← get).rulePatternCache.map
  modifyCache f := modify λ s =>
    { s with rulePatternCache.map := f s.rulePatternCache.map }

instance : MonadStats BaseM where
  modifyGetStats f := modifyGet λ s =>
    let (a, stats) := f s.stats
    (a, { s with stats })
  getStats := return (← get).stats
  modifyStats f := modify λ s => { s with stats := f s.stats }

instance : MonadBacktrack Meta.SavedState BaseM where
  saveState := Meta.saveState
  restoreState := (·.restore)

end Aesop.BaseM
```
