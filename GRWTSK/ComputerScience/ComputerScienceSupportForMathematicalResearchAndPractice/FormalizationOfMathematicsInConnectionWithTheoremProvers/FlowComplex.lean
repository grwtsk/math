/-!
# Folder.GrandChallenge.NavierStokes.FlowComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes flow-complex scaffolding.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure InitialData where
  label : String

structure FlowComplex where
  initialData : InitialData
  localSolutionData : Type
  energyEstimateLabel : String
  nonlinearStructureLabel : String

end NavierStokes
end GrandChallenge
end Folder

