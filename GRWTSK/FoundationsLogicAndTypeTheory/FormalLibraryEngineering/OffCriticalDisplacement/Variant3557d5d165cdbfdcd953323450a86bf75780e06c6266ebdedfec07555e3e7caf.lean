import Folder.CanonicalPath.TranscendentalTrace

/-!
# Folder.CanonicalPath.OffCriticalDisplacement

Radiation role: research-boundary
BinaryMatrix spine: This module records off-critical displacement contracts.
Ontology: off_critical_displacement
Pivot role: fixed-point
Zero typology: trace-obstruction
Contract boundary: decisive-theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- Abstract critical line marker. -/
structure CriticalLine where
  label : String

/-- Abstract spectral point. -/
structure SpectralPoint where
  label : String

/-- A spectral point is off the critical line. -/
structure OffCritical (L : CriticalLine) (z : SpectralPoint) : Prop where
  witness : True

/-- A displacement of a spectral point. -/
structure SpectralDisplacement where
  source : SpectralPoint
  target : SpectralPoint
  label : String

/--
Contract-level obstruction: an off-critical displacement changes the trace.

This is the decisive theorem target.
-/
structure OffCriticalDisplacementObstruction
    (L : CriticalLine)
    (T : TranscendentalTraceContract) where
  changesTrace :
    ∀ z : SpectralPoint,
      OffCritical L z →
      Prop
  changesTrace_certified :
    ∀ z : SpectralPoint,
      (hz : OffCritical L z) →
      changesTrace z hz
  sourceLabel : String

/-- Field exposure only. -/
theorem offcritical_displacement_changes_trace_if_supplied
    {L : CriticalLine}
    {T : TranscendentalTraceContract}
    (O : OffCriticalDisplacementObstruction L T)
    (z : SpectralPoint)
    (hz : OffCritical L z) :
    O.changesTrace z hz :=
  O.changesTrace_certified z hz

end CanonicalPath
end Folder
