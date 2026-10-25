# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrM.Variantae22ed5f51a2a3b31dfef6ff9f244be27e27ed4468da2e1e86db8d79f68da60c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dad4520d652cc6897b4347f41637c7a2a96469ca` · SHA-256 `ae22ed5f51a2a3b31dfef6ff9f244be27e27ed4468da2e1e86db8d79f68da60c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/

import Mathlib.Tactic.Widget.SelectPanelUtils
import Mathlib.Tactic.CongrM
import Batteries.Lean.Position

/-! # CongrM widget

This file defines a `congrm?` tactic that displays a widget panel allowing to generate
a `congrm` call with holes specified by selecting subexpressions in the goal.
-/

open Lean Meta Server ProofWidgets


/-! # CongrM widget -/

/-- Return the link text and inserted text above and below of the congrm widget. -/
@[nolint unusedArguments]
def makeCongrMString (pos : Array Lean.SubExpr.GoalsLocation) (goalType : Expr)
    (_ : SelectInsertParams) : MetaM (String × String × Option (String.Pos × String.Pos)) := do
  let subexprPos := getGoalLocations pos
  unless goalType.isAppOf ``Eq || goalType.isAppOf ``Iff do
    throwError "The goal must be an equality or iff."
  let mut goalTypeWithMetaVars := goalType
  for pos in subexprPos do
    goalTypeWithMetaVars ← insertMetaVar goalTypeWithMetaVars pos

  let side := if subexprPos[0]!.toArray[0]! = 0 then 1 else 2
  let sideExpr := goalTypeWithMetaVars.getAppArgs[side]!
  let res := "congrm " ++ (toString (← Meta.ppExpr sideExpr)).renameMetaVar
  return (res, res, none)

/-- Rpc function for the congrm widget. -/
@[server_rpc_method]
def CongrMSelectionPanel.rpc := mkSelectionPanelRPC makeCongrMString
  "Use shift-click to select sub-expressions in the goal that should become holes in congrm."
  "CongrM 🔍"

/-- The congrm widget. -/
@[widget_module]
def CongrMSelectionPanel : Component SelectInsertParams :=
  mk_rpc_widget% CongrMSelectionPanel.rpc

open scoped Json in
/-- Display a widget panel allowing to generate a `congrm` call with holes specified by selecting
subexpressions in the goal. -/
elab stx:"congrm?" : tactic => do
  let some replaceRange := (← getFileMap).rangeOfStx? stx | return
  Widget.savePanelWidgetInfo CongrMSelectionPanel.javascriptHash
    (pure <| json% { replaceRange: $(replaceRange) }) stx
```
