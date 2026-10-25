# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabM.Variant1664355fd7a398234a5fc8e79b20657b57c08e311c68a37c75c0b72af76f52c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `beffa131225b22c9aa46762474c587167f5b8a91` · SHA-256 `1664355fd7a398234a5fc8e79b20657b57c08e311c68a37c75c0b72af76f52c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Elab.Term.TermElabM

public section

open Lean Meta Elab Term

namespace Aesop.ElabM

structure Context where
  parsePriorities : Bool
  goal : MVarId

namespace Context

def forAdditionalRules (goal : MVarId) : Context where
  parsePriorities := true
  goal := goal

-- HACK: Some of the elaboration functions require that we pass in the current
-- goal. The goal is used exclusively to look up fvars in the lctx, so when
-- we operate outside a goal, we pass in a dummy mvar with empty lctx.
def forAdditionalGlobalRules : MetaM Context := do
  let mvarId := (← mkFreshExprMVarAt {} {} (.const ``True [])).mvarId!
  return .forAdditionalRules mvarId

def forErasing (goal : MVarId) : Context where
  parsePriorities := false
  goal := goal

-- HACK: See `forAdditionalGlobalRules`
def forGlobalErasing : MetaM Context := do
  let mvarId := (← mkFreshExprMVarAt {} {} (.const ``True [])).mvarId!
  return .forErasing mvarId

end ElabM.Context


abbrev ElabM := ReaderT ElabM.Context $ TermElabM

-- Generate specialized pure/bind implementations so we don't need to optimise
-- them on the fly at each use site.
instance : Monad ElabM :=
  { (inferInstance : Monad ElabM) with }

protected def ElabM.run (ctx : Context) (x : ElabM α) : TermElabM α := do
  ReaderT.run x ctx

def shouldParsePriorities : ElabM Bool :=
  return (← read).parsePriorities

def getGoal : ElabM MVarId :=
  return (← read).goal

end Aesop
```
