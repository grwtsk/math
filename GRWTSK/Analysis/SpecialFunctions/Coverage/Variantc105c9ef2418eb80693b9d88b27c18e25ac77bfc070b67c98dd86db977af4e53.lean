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
