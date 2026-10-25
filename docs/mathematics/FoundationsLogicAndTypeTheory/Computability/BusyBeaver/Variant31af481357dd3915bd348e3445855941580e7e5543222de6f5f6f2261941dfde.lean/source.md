# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.BusyBeaver.Variant31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f585db2d0f51588a9b2bc44f3f9ebcf5e6863c70` · SHA-256 `31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Oracle.Halting

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure BusyBeaverDescriptor where
  haltingOracle : HaltingOracleDescriptor
  ordinaryComputable : Bool

theorem busyBeaver_not_marked_ordinary_computable
    (B : BusyBeaverDescriptor) :
    B.ordinaryComputable = false -> B.ordinaryComputable = false := by
  intro h
  exact h

end Legacy
end Surface
```
