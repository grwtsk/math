import Folder.Core.DualPivot

/-!
# Folder.Harmonic.AnalyticPivot

Radiation role: harmonic-control
BinaryMatrix spine: This module centers analytic fields that may later be sampled by BinaryMatrix or phase carriers.
Ontology: harmonic.analytic_pivot
Pivot role: spectral
Zero typology: harmonic
Contract boundary: definition
Composite stack role: field
-/

namespace Folder
namespace Harmonic

noncomputable def analyticEquilibrium : ℝ := Core.spectralPivot

def CenteredAroundHalf (ε x : ℝ) : Prop :=
  |x - analyticEquilibrium| ≤ ε

end Harmonic
end Folder
