# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithGrindTacticM.Variant93d219242cb7aadab8fcc686b2863d3511de24524852ab0d8d3e00850a955944

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `112a99c84f6ade6a9f9f011d09dc9c333fa184fb` · SHA-256 `93d219242cb7aadab8fcc686b2863d3511de24524852ab0d8d3e00850a955944`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Elab.Command
namespace Lean.Elab.Command
open Meta

/--
Runs a `GrindTacticM` computation in a minimal context for validation.
-/
public def withGrindTacticM (k : Tactic.Grind.GrindTacticM α) : CommandElabM α := do
  liftTermElabM do
  let params ← Grind.mkDefaultParams {}
  let (ctx, state) ← Grind.GrindM.run (params := params) do
    let methods ← Grind.getMethods
    let grindCtx ← readThe Meta.Grind.Context
    let symCtx ← readThe Sym.Context
    let grindState ← get
    let symState ← getThe Sym.State
    let ctx := {
      elaborator := `registerSymSimp,
      ctx := grindCtx, sctx := symCtx, methods, params
    }
    return (ctx, { grindState, symState, goals := [] })
  let (a, _) ← Tactic.Grind.GrindTacticM.run k ctx state
  return a

end Lean.Elab.Command
```
