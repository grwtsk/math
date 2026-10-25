# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UniversalOracle.Variant4a1ba80f5adc1c1aab2f866bc801c83dfd115c2493f6a7c1321eeaf713eb9b4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cde512795ba4481547ae603498a26399728bce20` · SHA-256 `4a1ba80f5adc1c1aab2f866bc801c83dfd115c2493f6a7c1321eeaf713eb9b4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Oracle.RelativeComputation

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure UniversalOracleDescriptor where
  queryEncoding : String
  relativeOnly : Prop

end Legacy
end Surface
```
