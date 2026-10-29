import Surface.Legacy.Ricci.Topology

namespace Surface
namespace Legacy

inductive StabilityMode where
  | finiteTimeExtinction
  | eventualConstant
  | convergesToSoliton
  | convergesToConstantCurvature
  | recurrent
  | homologyStable
  | unknown
deriving DecidableEq, Repr

structure FlowConvergenceCertificate
    (trajectory : RicciFlowTrajectory)
    (metric : trajectory.model.metric) where
  convergenceSound : Prop

structure RicciSolitonCertificate where
  trajectory : RicciFlowTrajectory
  solitonMetric : trajectory.model.metric
  asymptoticMode : StabilityMode
  convergence : FlowConvergenceCertificate trajectory solitonMetric

end Legacy
end Surface
