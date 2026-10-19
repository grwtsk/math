import Surface.Legacy.InfiniteTime.Stability

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure InfiniteTimeLimitCertificate
    (M : InfiniteTimeComputationModel) where
  trajectory : Nat -> M.State
  limitExists : Prop

theorem infiniteTime_limit_requires_certificate
    {M : InfiniteTimeComputationModel}
    (cert : InfiniteTimeLimitCertificate M) :
    cert.limitExists -> cert.limitExists := by
  intro h
  exact h

end Legacy
end Surface
