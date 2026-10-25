# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvSearch.Variant251d98d34defe187178cd0095be05e5df5f5c0c6192c62ecead242f72313373d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05a48f9cf5c5dcc3be6409dba861c2f01ba4784f` · SHA-256 `251d98d34defe187178cd0095be05e5df5f5c0c6192c62ecead242f72313373d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Shing Tak Lam. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shing Tak Lam, Daniel Selsam, Mario Carneiro
-/
module

public import Batteries.Tactic.Lint.Misc

namespace Lean

/--
Find constants in current environment that match find options and predicate.
-/
public meta def getMatchingConstants {m} [Monad m] [MonadEnv m]
    (p : ConstantInfo → m Bool)
    (includeImports := true)
    : m (Array ConstantInfo) := do
  let matches_ ←
    if includeImports then
      (← getEnv).constants.map₁.foldM (init := #[]) check
    else
      pure #[]
  (← getEnv).constants.map₂.foldlM (init := matches_) check
where
  /-- Check constant should be returned -/
  @[nolint unusedArguments]
  check matches_ (_name : Name) cinfo := do
    if ← p cinfo then
      pure $ matches_.push cinfo
    else
      pure matches_
```
