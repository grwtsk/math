# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variant71da2851c564453e5aead7051d7abab9ad6e5ed22920fa983e882a55c30422cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18d24b2870cc5c886e70522fb469cf9f53aefe94` · SHA-256 `66fa0e0a28a950dfbdbbe6dcee138b515825cbb297b6eacb0b4e0b1061194cab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MakeGCongrString.Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MakeGCongrString.Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Widget/GCongr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MakeGCongrString.Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62

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
