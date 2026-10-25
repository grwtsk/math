# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolarizedSheaf.Variant90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf7c89ba7c8faf3a960881a014b214b030cf61ce` · SHA-256 `90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
