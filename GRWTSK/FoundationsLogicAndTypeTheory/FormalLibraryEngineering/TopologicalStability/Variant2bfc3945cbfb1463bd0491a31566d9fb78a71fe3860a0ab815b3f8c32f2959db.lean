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
