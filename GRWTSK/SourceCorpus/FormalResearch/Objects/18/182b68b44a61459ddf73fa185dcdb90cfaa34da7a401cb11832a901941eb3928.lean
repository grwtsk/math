import Mathematics.Trajectory.Residual
import Mathematics.Oracle.Naming.TwistedRotationCohomology

/-! # Event-cycle and twisted-cohomology diagnostics -/

namespace Mathematics.Trajectory

structure EventDefects where
  cycleDefect : ℝ
  twistedClassDefect : ℝ
  cycleDefectNonnegative : 0 ≤ cycleDefect
  twistedClassDefectNonnegative : 0 ≤ twistedClassDefect

def EventDefects.zero : EventDefects where
  cycleDefect := 0
  twistedClassDefect := 0
  cycleDefectNonnegative := le_rfl
  twistedClassDefectNonnegative := le_rfl

end Mathematics.Trajectory
