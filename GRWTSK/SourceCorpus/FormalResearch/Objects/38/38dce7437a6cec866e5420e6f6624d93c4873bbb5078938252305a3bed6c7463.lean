import Folder.CanonicalPath.Literature.Compendium

/-!
# Folder.CanonicalPath.Literature.PhaseI

Radiation role: research-boundary
BinaryMatrix spine: This module records Phase I literature guidance.
Ontology: canonical.literature_compendium
Pivot role: none
Zero typology: none
Contract boundary: external-witness
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath
namespace Literature

def phaseIStrategySummary : String :=
  phaseICluster.strategySummary

def phaseISummary : PhaseSummary := {
  cluster := phaseICluster
  lowInnovationRoute :=
    "Use perfect complexes, determinant of cohomology, and family index propagation."
  theoremTarget :=
    "Componentwise nonzero families K-index from a certified anchor."
  doesNotProve := [
    "BSD",
    "modularity",
    "pointwise global central L-value nonvanishing"
  ]
}

end Literature
end CanonicalPath
end Folder
