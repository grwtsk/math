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
