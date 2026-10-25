# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadScope.Variant7446951ef9de73226f439a054503d895c943228cb8e2fe51ee5dd1048df01866

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52d26a8500e5da38606af89b9c818488f020991e` · SHA-256 `7446951ef9de73226f439a054503d895c943228cb8e2fe51ee5dd1048df01866`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Basic

public section

namespace Lean.Compiler.LCNF

abbrev Scope := FVarIdSet

class MonadScope (m : Type → Type) where
  getScope : m Scope
  withScope : (Scope → Scope) → m α → m α

export MonadScope (getScope withScope)

abbrev ScopeT (m : Type → Type) := ReaderT Scope m

instance [Monad m] : MonadScope (ScopeT m) where
  getScope  := read
  withScope := withReader

instance (m n) [MonadLift m n] [MonadFunctor m n] [MonadScope m] : MonadScope n where
  getScope    := liftM (getScope : m _)
  withScope f := monadMap (m := m) (withScope f)

def inScope [MonadScope m] [Monad m] (fvarId : FVarId) : m Bool :=
  return (← getScope).contains fvarId

@[inline] def withParams [MonadScope m] [Monad m] (ps : Array (Param pu)) (x : m α) : m α :=
  withScope (fun s => ps.foldl (init := s) fun s p => s.insert p.fvarId) x

@[inline] def withFVar [MonadScope m] [Monad m] (fvarId : FVarId) (x : m α) : m α :=
  withScope (fun s => s.insert fvarId) x

@[inline] def withNewScope [MonadScope m] [Monad m] (x : m α) : m α := do
  withScope (fun _ => {}) x

end Lean.Compiler.LCNF
```
