import Folder.GrandChallenge.NavierStokes.FlowComplex

/-!
# Folder.GrandChallenge.NavierStokes.SmoothContinuation

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes continuation contracts.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure SmoothContinuation where
  flowComplex : FlowComplex
  continuationMapsExist : Prop
  continuationMapsExist_certified : continuationMapsExist
  preservesTrueNavierStokesNonlinearity : Prop
  preservesTrueNavierStokesNonlinearity_certified :
    preservesTrueNavierStokesNonlinearity
  compactnessOrRegularityControl : Prop
  compactnessOrRegularityControl_certified :
    compactnessOrRegularityControl
  sourceLabel : String

theorem ns_continuation_maps_exist_if_supplied
    (S : SmoothContinuation) :
    S.continuationMapsExist :=
  S.continuationMapsExist_certified

theorem ns_preserves_true_nonlinearity_if_supplied
    (S : SmoothContinuation) :
    S.preservesTrueNavierStokesNonlinearity :=
  S.preservesTrueNavierStokesNonlinearity_certified

end NavierStokes
end GrandChallenge
end Folder
