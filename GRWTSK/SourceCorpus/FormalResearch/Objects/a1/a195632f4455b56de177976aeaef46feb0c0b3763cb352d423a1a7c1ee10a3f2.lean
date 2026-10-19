import Folder.CanonicalPath.OffCriticalDisplacement

/-!
# Folder.CanonicalPath.FixedPointTranscendency

Radiation role: research-boundary
BinaryMatrix spine: This module records fixed-point transcendency contracts.
Ontology: fixed_point_transcendency
Pivot role: fixed-point
Zero typology: trace-obstruction
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- Abstract heat-flow or Rodgers-Tao-style dynamical system. -/
structure HeatflowDynamics where
  label : String

/-- Abstract fixed spectral configuration. -/
structure FixedSpectralConfiguration where
  dynamics : HeatflowDynamics
  points : Type
  pointToSpectralPoint : points → SpectralPoint
  fixedUnderFlow : Prop
  fixedUnderFlow_certified : fixedUnderFlow
  sourceLabel : String

/-- Contract-level index/spectral trace identification. -/
structure FixedPointIndexSpectralIdentification where
  traceContract : TranscendentalTraceContract
  fixedConfig : FixedSpectralConfiguration
  indexTraceEqualsSpectralTrace : Prop
  indexTraceEqualsSpectralTrace_certified :
    indexTraceEqualsSpectralTrace
  sourceLabel : String

theorem fixed_config_fixed_under_flow_if_supplied
    (F : FixedSpectralConfiguration) :
    F.fixedUnderFlow :=
  F.fixedUnderFlow_certified

theorem fixed_point_index_trace_equals_spectral_trace_if_supplied
    (I : FixedPointIndexSpectralIdentification) :
    I.indexTraceEqualsSpectralTrace :=
  I.indexTraceEqualsSpectralTrace_certified

/--
The conditional fixed-point transcendency package.

This does not prove RH. It packages the exact assumptions needed for the
spectral-boundary criterion.
-/
structure FixedPointTranscendencyPackage where
  criticalLine : CriticalLine
  dynamics : HeatflowDynamics
  fixedConfig : FixedSpectralConfiguration
  traceIdentification : FixedPointIndexSpectralIdentification
  traceInvariant : TranscendentalTraceContract
  offCriticalObstruction :
    OffCriticalDisplacementObstruction criticalLine traceInvariant
  noOffCriticalCompatiblePoint : Prop
  noOffCriticalCompatiblePoint_certified :
    noOffCriticalCompatiblePoint
  sourceLabel : String

theorem fixed_point_no_offcritical_compatible_point_if_supplied
    (P : FixedPointTranscendencyPackage) :
    P.noOffCriticalCompatiblePoint :=
  P.noOffCriticalCompatiblePoint_certified

end CanonicalPath
end Folder
