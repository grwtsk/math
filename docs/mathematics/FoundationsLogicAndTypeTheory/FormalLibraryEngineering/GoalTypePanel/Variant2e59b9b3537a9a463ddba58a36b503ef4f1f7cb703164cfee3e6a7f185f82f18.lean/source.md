# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65ab81804f7a1cf1521ab40dd3ebc323f351cd40` · SHA-256 `2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import ProofWidgets.Component.Panel.Basic

public meta section

namespace ProofWidgets

/-- Display the goal type using known `Expr` presenters. -/
@[widget_module]
def GoalTypePanel : Component PanelWidgetProps where
  javascript := include_str ".." / ".." / ".." / "widget" / "js" / "goalTypePanel.js"

end ProofWidgets
```
