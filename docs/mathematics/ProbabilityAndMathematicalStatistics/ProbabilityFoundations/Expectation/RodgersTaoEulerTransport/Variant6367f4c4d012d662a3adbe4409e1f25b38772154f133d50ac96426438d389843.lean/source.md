# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoEulerTransport.Variant6367f4c4d012d662a3adbe4409e1f25b38772154f133d50ac96426438d389843

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39d5ca382427c0ea1e6f0e74d819184175db4db0` · SHA-256 `6367f4c4d012d662a3adbe4409e1f25b38772154f133d50ac96426438d389843`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.RodgersTaoHeat
import Folder.DerivedSheaf.EulerTransport

/-!
# Folder.DerivedSheaf.RodgersTaoEulerTransport

Radiation role: research-boundary
BinaryMatrix spine: This module bridges external Rodgers-Tao heat data to derived transport contracts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_transport
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
A Rodgers-Tao flow interpreted as a derived transport between section
complexes.

This is a contract. It does not assert that the analytic Rodgers-Tao zero flow
automatically acts on section complexes.
-/
structure RodgersTaoDerivedTransport where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  sourceComplex : SectionComplex
  targetComplex : SectionComplex
  eulerTransport :
    EulerPreservingTransport sourceComplex targetComplex
  flowRealizesDerivedTransport : Prop
  flowRealizesDerivedTransport_certified : flowRealizesDerivedTransport
  sourceLabel : String

theorem rodgers_tao_flow_realizes_derived_transport
    (T : RodgersTaoDerivedTransport) :
    T.flowRealizesDerivedTransport :=
  T.flowRealizesDerivedTransport_certified

theorem rodgers_tao_transport_preserves_euler_characteristic
    (T : RodgersTaoDerivedTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  euler_preserving_transport_value_eq T.eulerTransport

end DerivedSheaf
end Folder
```
