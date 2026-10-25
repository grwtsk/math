# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosedTermCache.Variante1184350de6ef6ade1dc0f34d7320a4fc7445c5f9a7132d9ed7fc1f5518c38b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20b7acf5d684789ab52b81dda7def4b19568213c` · SHA-256 `e1184350de6ef6ade1dc0f34d7320a4fc7445c5f9a7132d9ed7fc1f5518c38b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Environment

public section

namespace Lean

structure ClosedTermCache where
  map        : PHashMap Expr Name := {}
  constNames : NameSet := {}
  -- used for `replay?` only
  revExprs   : List Expr := []
  deriving Inhabited

builtin_initialize closedTermCacheExt : EnvExtension ClosedTermCache ←
  registerEnvExtension (pure {}) (asyncMode := .sync)  -- compilation is non-parallel anyway
    (replay? := some fun oldState newState _ s =>
      let newExprs := newState.revExprs.take (newState.revExprs.length - oldState.revExprs.length)
      newExprs.foldl (init := s) fun s e =>
        let c := newState.map.find! e
        { s with map := s.map.insert e c, constNames := s.constNames.insert c, revExprs := e :: s.revExprs })

def cacheClosedTermName (env : Environment) (e : Expr) (n : Name) : Environment :=
  closedTermCacheExt.modifyState env fun s =>
    { s with map := s.map.insert e n, constNames := s.constNames.insert n, revExprs := e :: s.revExprs }

def getClosedTermName? (env : Environment) (e : Expr) : Option Name :=
  (closedTermCacheExt.getState env).map.find? e

def isClosedTermName (env : Environment) (n : Name) : Bool :=
  (closedTermCacheExt.getState env).constNames.contains n

end Lean
```
