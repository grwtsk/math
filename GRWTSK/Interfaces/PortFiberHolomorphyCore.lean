/-
Isolated integration target for issue #230.

This file is intentionally absent from `GRWTSK.lean`. It gives local reviewers one direct module
target while preserving the aggregate replay boundary until this slice passes direct checking.
-/
import GRWTSK.Topology.PortFiber.Basic
import GRWTSK.Topology.PortFiber.Path
import GRWTSK.Topology.PortFiber.Certified
import GRWTSK.Analysis.Complex.PortFiberHolomorphy
import GRWTSK.Topology.Algebra.PortFiberRing
import GRWTSK.Logic.SimultaneousProofArchitecture
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture

namespace GRWTSK.Interfaces.PortFiberHolomorphyCore

/-- Source version of this isolated interface. -/
def schemaVersion : String := "PortFiberHolomorphyCore/0.2"

/-- Source state remains distinct from kernel-checked state. -/
inductive VerificationState
  | sourceCommitted
  | kernelChecked
  deriving DecidableEq, Repr

/-- The repository cannot self-issue external replay evidence. -/
def currentState : VerificationState := .sourceCommitted

end GRWTSK.Interfaces.PortFiberHolomorphyCore
