import Folder.Cellular.HeatQuantizedTorsion

/-!
# Folder.Theorem.Cellular.HeatQuantizedTorsion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.heat_quantized_torsion
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Cellular
namespace HeatQuantizedTorsion

theorem heatQuantizedShellTorsion_loop_eq_scan
    (T : Folder.Cellular.HeatQuantizedShellTorsion d k m)
    (p : Folder.Cellular.EdgePath d k x x) :
    Folder.Cellular.pathIntegral T.connection p =
      Folder.Cellular.pathIntegral T.scan.value p :=
  Folder.Cellular.heatQuantizedShellTorsion_loop_eq_scan T p

end HeatQuantizedTorsion
end Cellular
end Theorem
end Folder
