# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7278fa58d807bf4ef793fa9dbb1f519d4891e4bc` · SHA-256 `5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ProofWidgets.Component.Panel

namespace ProofWidgets

/-- Display the goal type using known `Expr` presenters. -/
@[widget_module]
def GoalTypePanel : Component PanelWidgetProps where
  javascript := include_str ".." / ".." / "build" / "js" / "goalTypePanel.js"

end ProofWidgets
```
