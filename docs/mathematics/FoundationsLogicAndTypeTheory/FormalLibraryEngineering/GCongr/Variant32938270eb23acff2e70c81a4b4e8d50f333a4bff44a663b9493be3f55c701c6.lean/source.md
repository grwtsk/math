# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variant32938270eb23acff2e70c81a4b4e8d50f333a4bff44a663b9493be3f55c701c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af02dae340b4fe422e5b3cfe021a2fbb6513d043` · SHA-256 `17dbcbdaebc8effdc07c627945a3105054a6734fb24831ac90a6f47f78bbe6c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MakeGCongrString.Variant7d6540014464a4ecc6d743fda0f8dfd2194f3b948c7802e911d78576f8ea140f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d6540014464a4ecc6d743fda0f8dfd2194f3b948c7802e911d78576f8ea140f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MakeGCongrString.Variant7d6540014464a4ecc6d743fda0f8dfd2194f3b948c7802e911d78576f8ea140f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7d6540014464a4ecc6d743fda0f8dfd2194f3b948c7802e911d78576f8ea140f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Widget/GCongr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
module

public import Mathlib.Tactic.Widget.SelectPanelUtils
public import ProofWidgets.Component.Basic
public import ProofWidgets.Component.OfRpcMethod
public meta import ProofWidgets.Component.Basic

/-! # GCongr widget

This file defines a `gcongr?` tactic that displays a widget panel allowing to generate
a `gcongr` call with holes specified by selecting subexpressions in the goal.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MakeGCongrString.Variant7d6540014464a4ecc6d743fda0f8dfd2194f3b948c7802e911d78576f8ea140f

public meta section

open Lean Meta Server ProofWidgets

/-- Return the link text and inserted text above and below of the gcongr widget. -/
@[nolint unusedArguments]
def makeGCongrString (pos : Array Lean.SubExpr.GoalsLocation) (goalType : Expr)
    (_ : SelectInsertParams) :
    MetaM (String × String × Option (String.Pos.Raw × String.Pos.Raw)) := do
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
  "GCongr 🔍️"

/-- The gcongr widget. -/
@[widget_module]
def GCongrSelectionPanel : Component SelectInsertParams :=
  mk_rpc_widget% GCongrSelectionPanel.rpc

open scoped Json in
/-- Display a widget panel allowing to generate a `gcongr` call with holes specified by selecting
subexpressions in the goal. -/
elab stx:"gcongr?" : tactic => do
  let some replaceRange := (← getFileMap).lspRangeOfStx? stx | return
  Widget.savePanelWidgetInfo GCongrSelectionPanel.javascriptHash
    (pure <| json% { replaceRange: $(replaceRange) }) stx
```
