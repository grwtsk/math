import Mathematics.Trajectory.Carrier

/-! # Channel-separated trajectory residuals -/

namespace Mathematics.Trajectory

structure Residual where
  localResidual : ℝ
  coverageResidual : ℝ
  sparseSynthesisResidual : ℝ
  basisSpanResidual : ℝ
  eventCycleResidual : ℝ
  twistedCohomologyResidual : ℝ

def Residual.total (residual : Residual) : ℝ :=
  residual.localResidual +
  residual.coverageResidual +
  residual.sparseSynthesisResidual +
  residual.basisSpanResidual +
  residual.eventCycleResidual +
  residual.twistedCohomologyResidual

def Residual.Nonnegative (residual : Residual) : Prop :=
  0 ≤ residual.localResidual ∧
  0 ≤ residual.coverageResidual ∧
  0 ≤ residual.sparseSynthesisResidual ∧
  0 ≤ residual.basisSpanResidual ∧
  0 ≤ residual.eventCycleResidual ∧
  0 ≤ residual.twistedCohomologyResidual

end Mathematics.Trajectory
