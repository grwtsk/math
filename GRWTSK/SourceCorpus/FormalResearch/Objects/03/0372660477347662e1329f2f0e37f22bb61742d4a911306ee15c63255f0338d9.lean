import Folder.Research.ModularityBridge

/-!
# Folder.Theorem.Research.ModularityBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports modularity-to-Hasse-Weil contract exposures.
Ontology: proof.research.modularity_bridge
Pivot role: arithmetic
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace ModularityBridge

theorem hasse_weil_analytic_from_modularity
    (B : Folder.Research.ModularityBridge.ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasAnalyticContinuation :=
  Folder.Research.ModularityBridge.hasse_weil_analytic_from_modularity B h

theorem hasse_weil_functional_from_modularity
    (B : Folder.Research.ModularityBridge.ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasFunctionalEquation :=
  Folder.Research.ModularityBridge.hasse_weil_functional_from_modularity B h

end ModularityBridge
end Research
end Theorem
end Folder
