# Complete source: GRWTSK.Analysis.SpecialFunctions.Coverage.Variantc105c9ef2418eb80693b9d88b27c18e25ac77bfc070b67c98dd86db977af4e53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e856c49c77980b9c0a4aaa338a16d8d96b4cac4a` · SHA-256 `c105c9ef2418eb80693b9d88b27c18e25ac77bfc070b67c98dd86db977af4e53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.InfiniteTime.TopologicalStability
import Surface.Legacy.BinaryLogicMatrix.Coverage

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical eliminator saying infinite-time coverage follows from an explicit
infinite-time foundation in the old Surface coverage scaffold.

What is not claimed:
This module does not prove infinite-time computation, limiting topology, or
stability as canonical Surface mathematics.
-/

namespace Surface
namespace Legacy

theorem infiniteTimeCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.infiniteTime ≤ Γ.logicalFoundation ->
      ∀ f : InfiniteTimeRepresentableFunction,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.infiniteTime f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.infiniteTime f) h

end Legacy
end Surface
```
