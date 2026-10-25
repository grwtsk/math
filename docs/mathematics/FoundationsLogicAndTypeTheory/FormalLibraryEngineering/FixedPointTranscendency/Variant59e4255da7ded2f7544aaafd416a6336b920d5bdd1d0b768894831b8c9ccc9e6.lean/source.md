# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointTranscendency.Variant59e4255da7ded2f7544aaafd416a6336b920d5bdd1d0b768894831b8c9ccc9e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75c4ef7bef0ee9207e7d01c74eae51c50318905b` · SHA-256 `59e4255da7ded2f7544aaafd416a6336b920d5bdd1d0b768894831b8c9ccc9e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.FixedPointTranscendency

/-!
# Folder.Theorem.CanonicalPath.FixedPointTranscendency

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports fixed-point transcendency contract facts.
Ontology: proof.fixed_point_transcendency
Pivot role: fixed-point
Zero typology: trace-obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem transcendental_trace_has_period_interpretation_if_supplied
    (T : Folder.CanonicalPath.TranscendentalTraceContract) :
    T.periodInterpretation :=
  Folder.CanonicalPath.transcendental_trace_has_period_interpretation_if_supplied T

theorem transcendental_trace_transport_invariant_if_supplied
    (T : Folder.CanonicalPath.TranscendentalTraceContract) :
    T.invariantUnderAllowedTransport :=
  Folder.CanonicalPath.transcendental_trace_transport_invariant_if_supplied T

theorem offcritical_displacement_changes_trace_if_supplied
    {L : Folder.CanonicalPath.CriticalLine}
    {T : Folder.CanonicalPath.TranscendentalTraceContract}
    (O : Folder.CanonicalPath.OffCriticalDisplacementObstruction L T)
    (z : Folder.CanonicalPath.SpectralPoint)
    (hz : Folder.CanonicalPath.OffCritical L z) :
    O.changesTrace z hz :=
  Folder.CanonicalPath.offcritical_displacement_changes_trace_if_supplied O z hz

theorem fixed_config_fixed_under_flow_if_supplied
    (F : Folder.CanonicalPath.FixedSpectralConfiguration) :
    F.fixedUnderFlow :=
  Folder.CanonicalPath.fixed_config_fixed_under_flow_if_supplied F

theorem fixed_point_index_trace_equals_spectral_trace_if_supplied
    (I : Folder.CanonicalPath.FixedPointIndexSpectralIdentification) :
    I.indexTraceEqualsSpectralTrace :=
  Folder.CanonicalPath.fixed_point_index_trace_equals_spectral_trace_if_supplied I

theorem fixed_point_no_offcritical_compatible_point_if_supplied
    (P : Folder.CanonicalPath.FixedPointTranscendencyPackage) :
    P.noOffCriticalCompatiblePoint :=
  Folder.CanonicalPath.fixed_point_no_offcritical_compatible_point_if_supplied P

end CanonicalPath
end Theorem
end Folder
```
