# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TuringModel.Variantd9a6afeb37356264bdfe68dcd047a608dc5a79f6f13141d2d2d08ba032561136

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bca5c2e55668d1b33e679c7fd7a7cd6f236228e` · SHA-256 `d9a6afeb37356264bdfe68dcd047a608dc5a79f6f13141d2d2d08ba032561136`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Oracle.Oracle

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure OracleTuringModel where
  stateName : String
  transitionSound : Prop

end Legacy
end Surface
```
