import Mathematics.Oracle.Navigation

/-! # Public mathematical tool surface -/

namespace Mathematics.Oracle

universe u

inductive Tool
  | navigate
  | answer
  | explainResidue
  | proposeInvention
  | compare
  | traceProgression
  | compileBridge
  | compareTrajectories
  | explainPhase
  | detectSurgeryBoundary
  deriving DecidableEq, Repr

def Tool.publicName : Tool → String
  | .navigate => "math.navigate"
  | .answer => "math.answer"
  | .explainResidue => "math.explain_residue"
  | .proposeInvention => "math.propose_invention"
  | .compare => "math.compare"
  | .traceProgression => "math.trace_progression"
  | .compileBridge => "math.compile_bridge"
  | .compareTrajectories => "math.compare_trajectories"
  | .explainPhase => "math.explain_phase"
  | .detectSurgeryBoundary => "math.detect_surgery_boundary"

structure ToolResultEnvelope (Payload : Type u) where
  stateId : StableId
  inputDigest : Digest
  encoderProfile : Digest
  metricProfile : Digest
  conceptIndexVersion : Digest
  authority : NavigationAuthority
  diagnostics : List String
  payload : Payload

end Mathematics.Oracle
