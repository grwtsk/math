import Folder.Research.RiemannHypothesisBoundary

/-!
# Folder.Theorem.Research.RiemannHypothesisBoundary

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the conditional GRH/RH research-boundary theorem as contract composition.
Ontology: proof.research.riemann_hypothesis_boundary
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace RiemannHypothesisBoundary

theorem conditional_grh_via_spectral_heat_contract
    (C : Folder.Research.RiemannHypothesisBoundary.GRHResearchContract) :
    Folder.Research.RiemannHypothesisBoundary.AllLFunctionZerosOnCriticalLine C :=
  Folder.Research.RiemannHypothesisBoundary.conditional_grh_via_spectral_heat_contract C

theorem grh_contract_has_analytic_continuation
    (C : Folder.Research.RiemannHypothesisBoundary.GRHResearchContract) :
    C.modularityBridge.hasseWeil.hasAnalyticContinuation :=
  Folder.Research.RiemannHypothesisBoundary.grh_contract_has_analytic_continuation C

theorem grh_contract_has_functional_equation
    (C : Folder.Research.RiemannHypothesisBoundary.GRHResearchContract) :
    C.modularityBridge.hasseWeil.hasFunctionalEquation :=
  Folder.Research.RiemannHypothesisBoundary.grh_contract_has_functional_equation C

end RiemannHypothesisBoundary
end Research
end Theorem
end Folder
