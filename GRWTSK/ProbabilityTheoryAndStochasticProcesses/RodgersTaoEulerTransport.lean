import Folder.DerivedSheaf.RodgersTaoEulerTransport

/-!
# Folder.Theorem.DerivedSheaf.RodgersTaoEulerTransport

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao derived transport facts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_transport
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem rodgers_tao_flow_realizes_derived_transport
    (T : Folder.DerivedSheaf.RodgersTaoDerivedTransport) :
    T.flowRealizesDerivedTransport :=
  Folder.DerivedSheaf.rodgers_tao_flow_realizes_derived_transport T

theorem rodgers_tao_transport_preserves_euler_characteristic
    (T : Folder.DerivedSheaf.RodgersTaoDerivedTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  Folder.DerivedSheaf.rodgers_tao_transport_preserves_euler_characteristic T

end DerivedSheaf
end Theorem
end Folder
