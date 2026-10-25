# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphDisplay.Variantbf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c1f7a13821dbf75900cbc3b51bb6b497811cf6e` · SHA-256 `bf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import ProofWidgets.Component.ForceGraphDisplay

public meta section

namespace ProofWidgets.GraphDisplay

open Lean in
local macro "#reexport" n:ident : command =>
  `(@[deprecated "Namespace moved to ForceGraphDisplay." (since := "2026-06-25")]
    abbrev $n := @$(mkIdent <| `ForceGraphDisplay ++ n.getId))

#reexport mkCircle
#reexport BoundingShape
#reexport Vertex
#reexport Edge
#reexport ForceCenterParams
#reexport ForceCollideParams
#reexport ForceLinkParams
#reexport ForceManyBodyParams
#reexport ForceXParams
#reexport ForceYParams
#reexport ForceRadialParams
#reexport ForceParams
#reexport Props

end GraphDisplay

@[deprecated ForceGraphDisplay (since := "2026-06-25")]
def GraphDisplay : Component GraphDisplay.Props := ForceGraphDisplay

end ProofWidgets
```
