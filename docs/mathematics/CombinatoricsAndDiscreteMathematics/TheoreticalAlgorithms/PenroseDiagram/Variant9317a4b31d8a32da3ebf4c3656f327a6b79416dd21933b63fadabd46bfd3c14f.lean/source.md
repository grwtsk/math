# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PenroseDiagram.Variant9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78a3b8ba86236329d58b3d9a844b2f69be9db8e7` · SHA-256 `9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
import ProofWidgets.Component.Basic
import ProofWidgets.Data.Html

namespace ProofWidgets
open Lean Server

structure PenroseDiagramProps where
  embeds : Array (String × Html)
  dsl    : String
  sty    : String
  sub    : String
  deriving Inhabited

#mkrpcenc PenroseDiagramProps

/-- Displays the given diagram using [Penrose](https://penrose.cs.cmu.edu/). The website contains
explanations of how to write domain (`dsl`), style (`sty`), and substance (`sub`) programs.

The diagram may also contain embedded HTML trees which are specified in `embeds`. Each embed is HTML
together with the name of an object `x` in the substance program which *must* be assigned
an `x.textBox : Rectangle` field in the style program. This rectangle will be replaced with the HTML
tree.

The following additional constants are prepended to the style program:
```penrose
theme {
  color foreground
  color tooltipBackground
  color tooltipForeground
  color tooltipBorder
}
```
and can be accessed as, for example, `theme.foreground` in the provided `sty` in order to match
the editor theme. -/
@[widget_module]
def PenroseDiagram : Component PenroseDiagramProps where
  javascript := include_str ".." / ".." / "build" / "js" / "penroseDisplay.js"

end ProofWidgets
````
