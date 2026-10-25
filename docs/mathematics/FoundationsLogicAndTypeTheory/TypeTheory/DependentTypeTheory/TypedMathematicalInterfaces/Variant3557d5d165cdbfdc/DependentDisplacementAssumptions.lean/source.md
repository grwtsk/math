# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedMathematicalInterfaces.Variant3557d5d165cdbfdc.DependentDisplacementAssumptions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24953d3f817dd19c10a70e25c48d6816f1cb2879` · SHA-256 `fdc0425acefc5945787b8fc25f31409560b29e08e7a2432b9796b08c223ad4e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
DependentDisplacementAssumptions — exact complete dependent data package
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3557d5d165cdbfdcd953323450a86bf75780e06c6266ebdedfec07555e3e7caf
Organized SHA-256: 0ce9dcb566f91d53c490c0935dc29564d5836693c315f99236a12417dbef8b6f
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole five-structure dependent assumption package plus exact conditional projection. CriticalLine and SpectralPoint contain labels; OffCritical contains only witness:True; displacement stores source/target labels. changesTrace is an independently supplied dependent Prop family and its proofs, with full L and T parameters retained. There is no equation or inequality comparing traces, no critical-line coordinate, and no relation linking a SpectralDisplacement to the predicate. Original declaration namespaces and import tokens are copied verbatim. The GRWTSK module path is editorial navigation; historical provider lookup and cross-variant coimport compatibility remain unelaborated. No provider alias, activation or stronger theorem is asserted. -/

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
```
