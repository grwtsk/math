import Surface.Flow.Heat.Kernel

namespace Surface

structure HeatSemigroupCertificate where
  flow : HeatFlowDescriptor
  identityAtZero : Prop
  compositionLaw : Prop

theorem heatSemigroup_requires_identity_and_composition
    (cert : HeatSemigroupCertificate) :
    cert.identityAtZero ->
      cert.compositionLaw ->
        cert.identityAtZero ∧ cert.compositionLaw := by
  intro h0 hcomp
  exact ⟨h0, hcomp⟩

end Surface
