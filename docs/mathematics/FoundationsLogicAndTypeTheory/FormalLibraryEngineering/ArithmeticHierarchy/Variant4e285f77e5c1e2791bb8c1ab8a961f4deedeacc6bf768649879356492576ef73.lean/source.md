# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticHierarchy.Variant4e285f77e5c1e2791bb8c1ab8a961f4deedeacc6bf768649879356492576ef73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea412249fa1c48c8dac5a85ad0608f4977f42ef7` · SHA-256 `4e285f77e5c1e2791bb8c1ab8a961f4deedeacc6bf768649879356492576ef73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Oracle.BusyBeaver

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure ArithmeticHierarchyDescriptor where
  level : Nat
  oracleRelative : Prop

theorem arithmeticHierarchy_descriptor_is_relative
    (A : ArithmeticHierarchyDescriptor) :
    A.oracleRelative -> A.oracleRelative := by
  intro h
  exact h

end Legacy
end Surface
```
