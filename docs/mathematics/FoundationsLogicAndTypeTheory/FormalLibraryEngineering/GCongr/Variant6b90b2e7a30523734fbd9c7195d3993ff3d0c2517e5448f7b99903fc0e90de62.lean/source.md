# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd389f9f33d892af5178c06c1364697a114660bb` · SHA-256 `6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Tactic.Widget.SelectPanelUtils
import Mathlib.Tactic.GCongr

/-! # GCongr widget

This file defines a `gcongr?` tactic that displays a widget panel allowing to generate
a `gcongr` call with holes specified by selecting subexpressions in the goal.
-/

open Lean Meta Server ProofWidgets

/-- Return the link text and inserted text above and below of the gcongr widget. -/
@[nolint unusedArguments]
def makeGCongrString (pos : Array Lean.SubExpr.GoalsLocation) (goalType : Expr)
    (_ : SelectInsertParams) : MetaM (String × String × Option (String.Pos × String.Pos)) := do
let subexprPos := getGoalLocations pos
unless goalType.isAppOf ``LE.le || goalType.isAppOf ``LT.lt || goalType.isAppOf `Int.ModEq do
  panic! "The goal must be a ≤ or < or ≡."
let mut goalTypeWithMetaVars := goalType
for pos in subexprPos do
  goalTypeWithMetaVars ← insertMetaVar goalTypeWithMetaVars pos

let side := if goalType.isAppOf `Int.ModEq then
              if subexprPos[0]!.toArray[0]! = 0 then 1 else 2
            else
              if subexprPos[0]!.toArray[0]! = 0 then 2 else 3
let sideExpr := goalTypeWithMetaVars.getAppArgs[side]!
let res := "gcongr " ++ (toString (← Meta.ppExpr sideExpr)).renameMetaVar
return (res, res, none)

/-- Rpc function for the gcongr widget. -/
@[server_rpc_method]
def GCongrSelectionPanel.rpc := mkSelectionPanelRPC makeGCongrString
  "Use shift-click to select sub-expressions in the goal that should become holes in gcongr."
  "GCongr 🔍"

/-- The gcongr widget. -/
@[widget_module]
def GCongrSelectionPanel : Component SelectInsertParams :=
  mk_rpc_widget% GCongrSelectionPanel.rpc

open scoped Json in
/-- Display a widget panel allowing to generate a `gcongr` call with holes specified by selecting
subexpressions in the goal. -/
elab stx:"gcongr?" : tactic => do
  let some replaceRange := (← getFileMap).rangeOfStx? stx | return
  Widget.savePanelWidgetInfo GCongrSelectionPanel.javascriptHash
    (pure <| json% { replaceRange: $(replaceRange) }) stx
```
