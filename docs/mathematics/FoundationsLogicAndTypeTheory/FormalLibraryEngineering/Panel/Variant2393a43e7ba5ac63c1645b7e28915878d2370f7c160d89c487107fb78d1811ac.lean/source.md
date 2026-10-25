# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Panel.Variant2393a43e7ba5ac63c1645b7e28915878d2370f7c160d89c487107fb78d1811ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5587f76577504f00b0d317d1eb63f3370758204b` · SHA-256 `2393a43e7ba5ac63c1645b7e28915878d2370f7c160d89c487107fb78d1811ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
import ProofWidgets.Compat
import ProofWidgets.Component.Basic
import Lean.Elab.Tactic

namespace ProofWidgets
open Lean Elab Tactic

/-- In the infoview, an info block is a top-level collapsible block corresponding to a given
location in a Lean file (e.g. with the header `Basic.lean:12:34`).

A panel widget is a component which can appear as a panel in an info block in the infoview.
For example, a tactic state display. This type represents the props passed to a panel widget. Since
panel widgets can be stateful, giving them a Lean type is a bit tricky, so for now we keep it
opaque. The real TypeScript version is exported as `PanelWidgetProps` from `@leanprover/infoview`.

Note that to be a good citizen which doesn't mess up the infoview, a panel widget should be a block
element, and should provide some way to collapse it, for example by using `<details>` as the
top-level tag. -/
opaque PanelWidgetProps : Type

def processIdent (stx : Syntax) (nmStx : TSyntax `ident) : CoreM Unit := do
  let nm ← resolveGlobalConstNoOverloadWithInfo nmStx
  let const ← getConstInfo nm
  if ← (pure (!const.type.isAppOfArity' ``Component 1) <||>
        pure (!const.type.appArg!'.isConstOf ``PanelWidgetProps)) then
    let expType := Expr.app (mkConst ``Component) (mkConst ``PanelWidgetProps)
    logWarningAt nmStx
      m!"unexpected panel widget type, got{indentExpr const.type}\nbut expected{indentExpr expType}"
  if !Widget.userWidgetRegistry.contains (← getEnv) (nm ++ widgetDefPostfix) then
    logWarningAt nmStx
      m!"panel widget{indentExpr (mkConst nm)}\nwas not registered with `@[widget_module]`"
  savePanelWidgetInfo stx nm (pure .null)

/-- Display the selected panel widgets in the nested tactic script. For example,
assuming we have written a `GeometryDisplay` component,
```lean
by with_panel_widgets [GeometryDisplay]
  simp
  rfl
```
will show the geometry display alongside the usual tactic state throughout the proof.
-/
syntax (name := withPanelWidgetsTacticStx) "with_panel_widgets" "[" ident,+ "]" tacticSeq : tactic

@[tactic withPanelWidgetsTacticStx]
def withPanelWidgets : Tactic
  | stx@`(tactic| with_panel_widgets [ $nms,* ] $seq) => do
    liftM <| nms.getElems.forM (processIdent stx)
    evalTacticSeq seq
  | _ => throwUnsupportedSyntax

end ProofWidgets
````
