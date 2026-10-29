import Surface.Legacy.Choice.NonMeasurable
import Surface.Legacy.BinaryLogicMatrix.Coverage

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical eliminator saying choice-dependent coverage follows from an
explicit choice foundation in the old Surface coverage scaffold.

What is not claimed:
This module does not install choice as an ambient axiom and does not prove
choice-independent coverage for choice-dependent objects.
-/

namespace Surface
namespace Legacy

theorem choiceCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.choice ≤ Γ.logicalFoundation ->
      ∀ f : ChoiceDependentObject,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.choice f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.choice f) h

end Legacy
end Surface
