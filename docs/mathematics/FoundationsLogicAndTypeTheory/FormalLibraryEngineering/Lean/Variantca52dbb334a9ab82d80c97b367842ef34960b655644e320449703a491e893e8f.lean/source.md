# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variantca52dbb334a9ab82d80c97b367842ef34960b655644e320449703a491e893e8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c74a8eb055e980720f96276ca9a729dd9a5bb68b` · SHA-256 `ca52dbb334a9ab82d80c97b367842ef34960b655644e320449703a491e893e8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Batteries.Recycling.MonadSatisfying.Basic
public import Batteries.Lean.LawfulMonad
public import Lean.Elab.Command
import all Init.System.ST

@[expose] public section

/-!
# Construct `MonadSatisfying` instances for the Lean monad stack.
-/

open Lean Elab Term Tactic Command

-- Note: as of nightly-2025-10-23, after https://github.com/leanprover/lean4/pull/10625
-- these instances need to be re-implemented.

-- instance : MonadSatisfying (EIO ε) := inferInstanceAs <| MonadSatisfying (EStateM _ _)
-- instance : MonadSatisfying BaseIO := inferInstanceAs <| MonadSatisfying (EIO _)
-- instance : MonadSatisfying IO := inferInstanceAs <| MonadSatisfying (EIO _)

-- instance : MonadSatisfying (EST ε σ) := inferInstanceAs <| MonadSatisfying (EStateM _ _)

-- instance : MonadSatisfying CoreM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ <| StateRefT' _ _ (EIO _))

-- instance : MonadSatisfying MetaM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ <| StateRefT' _ _ CoreM)

-- instance : MonadSatisfying TermElabM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ <| StateRefT' _ _ MetaM)

-- instance : MonadSatisfying TacticM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ $ StateRefT' _ _ TermElabM)

-- instance : MonadSatisfying CommandElabM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ $ StateRefT' _ _ (EIO _))
```
