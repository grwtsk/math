# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Halting.Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a8d1157183a4b269a0e19d59406104ba753f1bc` · SHA-256 `728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Oracle.TuringModel

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure HaltingOracleDescriptor where
  oracle : Oracle String Bool
  relativeOnly : Prop

theorem haltingPredicate_marked_oracle_relative
    (H : HaltingOracleDescriptor) :
    H.relativeOnly -> H.relativeOnly := by
  intro h
  exact h

end Legacy
end Surface
```
