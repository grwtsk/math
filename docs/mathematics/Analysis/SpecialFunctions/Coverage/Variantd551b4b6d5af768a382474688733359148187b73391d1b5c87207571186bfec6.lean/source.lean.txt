import Surface.Legacy.Ricci.Stability
import Surface.Legacy.BinaryLogicMatrix.Coverage

namespace Surface
namespace Legacy

theorem ricciCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.ricciFlow ≤ Γ.logicalFoundation ->
      ∀ f : RicciFlowRepresentableObject,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.ricciFlow f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.ricciFlow f) h

end Legacy
end Surface
