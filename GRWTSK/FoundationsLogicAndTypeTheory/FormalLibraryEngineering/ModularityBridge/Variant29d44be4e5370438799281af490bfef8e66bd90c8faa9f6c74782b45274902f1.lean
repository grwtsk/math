import Folder.Research.ArithmeticBoundary

/-!
# Folder.Research.ModularityBridge

Radiation role: research-boundary
BinaryMatrix spine: This module records an external modularity-to-Hasse-Weil bridge without proving modularity.
Ontology: research.rh.modularity_bridge
Pivot role: arithmetic
Zero typology: l-function
Contract boundary: contract
Composite stack role: research
-/

namespace Folder
namespace Research
namespace ModularityBridge

open Research.ArithmeticBoundary

structure ModularityToHasseWeilBridge where
  modularity : ModularityContract
  hasseWeil : HasseWeilContract
  analytic_from_modularity :
    modularity.associated → hasseWeil.hasAnalyticContinuation
  functional_from_modularity :
    modularity.associated → hasseWeil.hasFunctionalEquation

theorem hasse_weil_analytic_from_modularity
    (B : ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasAnalyticContinuation :=
  B.analytic_from_modularity h

theorem hasse_weil_functional_from_modularity
    (B : ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasFunctionalEquation :=
  B.functional_from_modularity h

end ModularityBridge
end Research
end Folder
