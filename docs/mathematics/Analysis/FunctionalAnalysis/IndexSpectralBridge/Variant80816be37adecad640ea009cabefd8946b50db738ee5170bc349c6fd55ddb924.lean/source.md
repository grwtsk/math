# Complete source: GRWTSK.Analysis.FunctionalAnalysis.IndexSpectralBridge.Variant80816be37adecad640ea009cabefd8946b50db738ee5170bc349c6fd55ddb924

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1121f735ddeea90975e7f290dc871f7c5dbfa173` · SHA-256 `80816be37adecad640ea009cabefd8946b50db738ee5170bc349c6fd55ddb924`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.IndexSpectralBridge

/-!
# Folder.Theorem.RH.IndexSpectralBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports RH index/spectral bridge facts.
Ontology: proof.rh.index_spectral_bridge
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace IndexSpectralBridge

theorem index_spectral_bridge_from_trace_formula
    (data : Folder.RH.IndexSpectralComparisonData)
    (htrace : Folder.RH.ExplicitTraceFormulaStatement data.pairing) :
    Folder.RH.IndexSpectralBridgeCondition data :=
  Folder.RH.index_spectral_bridge_from_trace_formula data htrace

theorem index_spectral_bridge_has_operator
    (data : Folder.RH.IndexSpectralComparisonData) :
    ∃ O : Folder.RH.RHOperatorData, O = data.operator :=
  Folder.RH.index_spectral_bridge_has_operator data

theorem index_spectral_bridge_has_pairing
    (data : Folder.RH.IndexSpectralComparisonData) :
    ∃ pairing : Folder.RH.TracePairing, pairing = data.pairing :=
  Folder.RH.index_spectral_bridge_has_pairing data

end IndexSpectralBridge
end RH
end Theorem
end Folder
```
