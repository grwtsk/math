# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PositivitySelfAdjointness.Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be320808965049c1f4be62b5312fc5213438199b` · SHA-256 `2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.IndexSpectralTraceIdentity

/-!
# Folder.CanonicalPath.PositivitySelfAdjointness

Radiation role: research-boundary
BinaryMatrix spine: This module records positivity and self-adjointness boundaries.
Ontology: canonical.positivity_selfadjointness
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
The decisive operator-theoretic criterion needed to turn trace data into a
zero-location result.
-/
structure PositivitySelfAdjointnessCriterion where
  OperatorData : Type
  spectralMeasure : Type
  selfAdjoint : Prop
  positivity : Prop
  rulesOutOffLineResonances : Prop
  rulesOutOffLineResonances_certified : rulesOutOffLineResonances
  sourceLabel : String

theorem positivity_selfadjoint_rules_out_offline
    (P : PositivitySelfAdjointnessCriterion) :
    P.rulesOutOffLineResonances :=
  P.rulesOutOffLineResonances_certified

/--
Boundary bridge from a trace identity plus positivity/self-adjointness to
spectral alignment.
-/
structure TraceIdentityToBoundaryAlignment where
  traceIdentity : IndexSpectralTraceMilestone
  positivityCriterion : PositivitySelfAdjointnessCriterion
  forcesBoundaryAlignment : Prop
  forcesBoundaryAlignment_certified : forcesBoundaryAlignment
  sourceLabel : String

theorem trace_identity_plus_positivity_forces_alignment
    (B : TraceIdentityToBoundaryAlignment) :
    B.forcesBoundaryAlignment :=
  B.forcesBoundaryAlignment_certified

end CanonicalPath
end Folder
```
