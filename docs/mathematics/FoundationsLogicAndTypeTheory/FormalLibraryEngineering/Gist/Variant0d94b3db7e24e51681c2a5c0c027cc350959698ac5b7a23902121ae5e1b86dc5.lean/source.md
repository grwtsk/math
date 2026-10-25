# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gist.Variant0d94b3db7e24e51681c2a5c0c027cc350959698ac5b7a23902121ae5e1b86dc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `398691d4a5813df141d057884c204148f8c77b57` · SHA-256 `0d94b3db7e24e51681c2a5c0c027cc350959698ac5b7a23902121ae5e1b86dc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Episode

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TimeAwareGist where
  sourceEpisode : MemoryVertex
  gistVertex : MemoryVertex
  resolvedTimestamp : Option String
  sourceIsEpisode : sourceEpisode.kind = MemoryKind.episode
  gistIsBridge : gistVertex.side = BoundarySide.bridge

def TimeAwareGist.validBridge (g : TimeAwareGist) : Prop :=
  g.gistVertex.kind = MemoryKind.gist ∧ g.gistVertex.side = BoundarySide.bridge

end Think.RadoProjectedModularHeatflow.MemoryCore
```
