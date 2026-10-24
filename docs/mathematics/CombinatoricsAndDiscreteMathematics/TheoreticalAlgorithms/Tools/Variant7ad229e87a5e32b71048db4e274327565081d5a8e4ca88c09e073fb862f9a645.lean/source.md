# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tools.Variant7ad229e87a5e32b71048db4e274327565081d5a8e4ca88c09e073fb862f9a645

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96cb64461073c94a20d7db4ee4e539c8483a2f93` · SHA-256 `7ad229e87a5e32b71048db4e274327565081d5a8e4ca88c09e073fb862f9a645`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
