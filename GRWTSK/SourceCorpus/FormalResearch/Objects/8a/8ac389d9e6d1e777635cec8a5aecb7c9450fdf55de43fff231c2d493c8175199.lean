import Surface.Flow.Heat.ModularDecomposition

namespace Surface

structure SmoothingCertificate where
  heat : HeatFlowDescriptor
  smoothingClaim : Prop
  certificateSound : Prop

/--
Accessor for the explicit smoothing-certificate soundness field.

This is not an analytic smoothing theorem and does not construct a heat-kernel
regularization argument.
-/
theorem SmoothingCertificate.certificateSound_id
    (cert : SmoothingCertificate) :
    cert.certificateSound -> cert.certificateSound := by
  intro h
  exact h

end Surface
