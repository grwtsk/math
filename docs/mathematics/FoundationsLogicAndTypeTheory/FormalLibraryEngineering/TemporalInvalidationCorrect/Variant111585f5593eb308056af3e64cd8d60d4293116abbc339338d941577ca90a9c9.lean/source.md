# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TemporalInvalidationCorrect.Variant111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ac7cd1f1a4d20f9cedd8f6cf9d754ab788f2223` · SHA-256 `111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.TemporalKG

set_option autoImplicit false

namespace Think.Validation.TemporalInvalidationCorrect

theorem invalidated_exactly_when_invalid_time_present
    (e : Think.RadoProjectedModularHeatflow.MemoryCore.TemporalEdge) :
    e.invalidated = true ↔ e.invalidAt?.isSome = true :=
  Think.RadoProjectedModularHeatflow.MemoryCore.invalidated_iff_has_invalid_time e

end Think.Validation.TemporalInvalidationCorrect
```
