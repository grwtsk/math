# Complete source: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FixedPointTranscendency.Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d507e063d1d8fba56c6c71d18fe62c3347ae2f9` · SHA-256 `a195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
