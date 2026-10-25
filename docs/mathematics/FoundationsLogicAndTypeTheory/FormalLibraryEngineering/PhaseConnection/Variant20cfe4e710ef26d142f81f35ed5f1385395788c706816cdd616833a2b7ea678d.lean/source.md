# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseConnection.Variant20cfe4e710ef26d142f81f35ed5f1385395788c706816cdd616833a2b7ea678d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc31af0e0f8cd924aa497785be1432656f2bcb04` · SHA-256 `20cfe4e710ef26d142f81f35ed5f1385395788c706816cdd616833a2b7ea678d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.PhaseConnection

/-!
# Folder.Theorem.Cellular.PhaseConnection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.phase_connection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Cellular
namespace PhaseConnection

theorem loopIntegral_coboundary_zero
    (f : Folder.Cellular.Cochain0 d k m)
    (p : Folder.Cellular.EdgePath d k x x) :
    Folder.Cellular.pathIntegral (Folder.Cellular.coboundary f) p = 0 :=
  Folder.Cellular.loopIntegral_coboundary_zero f p

theorem phaseConnection_loopIntegral_eq_scan
    (q : Folder.Cellular.Cochain0 d k m)
    (ω : Folder.Cellular.ScanTwist d k m)
    (p : Folder.Cellular.EdgePath d k x x) :
    Folder.Cellular.pathIntegral (Folder.Cellular.phaseConnection q ω) p =
      Folder.Cellular.pathIntegral ω.value p :=
  Folder.Cellular.phaseConnection_loopIntegral_eq_scan q ω p

end PhaseConnection
end Cellular
end Theorem
end Folder
```
