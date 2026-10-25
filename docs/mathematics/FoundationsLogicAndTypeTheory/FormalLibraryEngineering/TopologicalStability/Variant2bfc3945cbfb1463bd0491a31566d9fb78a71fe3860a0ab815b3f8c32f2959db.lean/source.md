# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologicalStability.Variant2bfc3945cbfb1463bd0491a31566d9fb78a71fe3860a0ab815b3f8c32f2959db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa3629e7438b695eb031bb66c75d4cc9318fcdc8` · SHA-256 `2bfc3945cbfb1463bd0491a31566d9fb78a71fe3860a0ab815b3f8c32f2959db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.InfiniteTime.LimitComputation

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure TopologicalStabilityDescriptor where
  modelName : String
  convergenceCertificateRequired : Prop

theorem topologicalStability_requires_convergence_certificate
    (T : TopologicalStabilityDescriptor) :
    T.convergenceCertificateRequired -> T.convergenceCertificateRequired := by
  intro h
  exact h

end Legacy
end Surface
```
