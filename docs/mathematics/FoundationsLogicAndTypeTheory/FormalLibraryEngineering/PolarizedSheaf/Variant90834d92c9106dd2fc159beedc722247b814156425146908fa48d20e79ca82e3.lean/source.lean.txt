import Mathematics.SemiLocalDefect.ResidueDeflection.Cocycle

/-!
# Discrete polarized sheaf transport

Amplitude and residue phase remain separate coordinates.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure PolarizedSection where
  amplitude : PositiveAmplitude
  phaseResidue : Residue3
  phaseSafe : phaseResidue.Safe

structure PolarizedTransport
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph) where
  amplitude :
    PositiveAmplitudeTransport graph
  phase : PhaseTransport cut
  transportDigest : CertificateDigest

def PolarizedSection.transport
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    (transport : PolarizedTransport cut)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (polarizedSection : PolarizedSection) :
    PolarizedSection where
  amplitude :=
    polarizedSection.amplitude.transport
      transport.amplitude path
  phaseResidue :=
    path.transportResidue
      transport.phase.phase
      polarizedSection.phaseResidue
  phaseSafe :=
    path.transportResidue_safe
      transport.phase.phase
      polarizedSection.phaseSafe

theorem PolarizedSection.transport_amplitude_positive
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    (transport : PolarizedTransport cut)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (polarizedSection : PolarizedSection) :
    0 <
      (polarizedSection.transport
        transport path).amplitude.value :=
  (polarizedSection.transport
    transport path).amplitude.positive

end Mathematics.SemiLocalDefect.ResidueDeflection
