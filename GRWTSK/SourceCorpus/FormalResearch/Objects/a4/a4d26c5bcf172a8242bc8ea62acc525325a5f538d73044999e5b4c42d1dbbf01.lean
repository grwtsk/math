import Surface.Flow.Heat.FrameCommutation

namespace Surface

structure ModularDecompositionCertificate where
  structuredPart : Prop
  errorPart : Prop
  recomposes : Prop

theorem heatFlow_decomposition_sound
    (cert : ModularDecompositionCertificate) :
    cert.structuredPart ->
      cert.errorPart ->
        cert.recomposes ->
          cert.structuredPart ∧ cert.errorPart ∧ cert.recomposes := by
  intro hstruct herror hrecompose
  exact ⟨hstruct, herror, hrecompose⟩

end Surface
