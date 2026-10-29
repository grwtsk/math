import Surface.Flow.Heat.Semigroup

namespace Surface

structure CertifiedHeatTransport where
  flow : HeatFlowDescriptor
  certificate : HeatFlowTransportCertificate
  preservesDeclaredDomain : Prop

/--
Accessor for the transport-soundness field carried by the nested certificate.

This is not an analytic transport theorem and does not prove domain
preservation beyond the explicitly supplied certificate data.
-/
theorem CertifiedHeatTransport.transportSound_id
    (T : CertifiedHeatTransport) :
    T.certificate.transportSound -> T.certificate.transportSound := by
  intro h
  exact h

end Surface
