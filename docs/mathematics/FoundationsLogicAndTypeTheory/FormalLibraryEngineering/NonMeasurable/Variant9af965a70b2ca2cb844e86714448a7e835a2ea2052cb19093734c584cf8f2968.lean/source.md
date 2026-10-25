# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonMeasurable.Variant9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69c1809a8358dbcc244f2ce03aa7eceb59a5e506` · SHA-256 `9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Choice.Vitali

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

inductive MeasurableSetStatus where
  | certified
  | notYetFormalized
  | choiceDependent
deriving DecidableEq, Repr

def vitali_nonmeasurable_status : MeasurableSetStatus :=
  MeasurableSetStatus.notYetFormalized

end Legacy
end Surface
```
