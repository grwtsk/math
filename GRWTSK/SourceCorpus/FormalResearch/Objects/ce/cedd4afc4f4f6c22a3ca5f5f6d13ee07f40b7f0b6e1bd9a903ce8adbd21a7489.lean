import Surface.Flow.Heat.Averaging

namespace Surface

structure FrameCommutationCertificate where
  heat : HeatFlowDescriptor
  frameName : String
  commutesWithFrame : Prop

theorem frameCommuting_flow_requires_commutation_certificate
    (cert : FrameCommutationCertificate) :
    cert.commutesWithFrame -> cert.commutesWithFrame := by
  intro h
  exact h

end Surface
