# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Operation.Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f7d7277ac3fdee35361e3d0b0a07b0144bfa017` · SHA-256 `bf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Effect

/-! # Closed network operation registry -/

namespace URSM.Network

open Mathematics.Capability

inductive NetworkOperation
  | queryState
  | queryProject
  | queryDeclaration
  | queryOutcome
  | subscribe
  | requestDiagnostic
  | fetchObjectAuthorization
  | prepareUpload
  | registerStagedObject
  | refreshProject
  | buildProject
  | checkProject
  | testProject
  | extractProject
  | composeComposite
  | verifyComposite
  | compareBuilds
  | generateBitfield
  | requestTransport
  | cancelJob
  | prepareActivation
  | activateComposite
  | proposePatch
  | prepareRuntimeCandidate
  | requestRuntimeHandoff
  deriving DecidableEq, Repr

def NetworkOperation.requiredEffect : NetworkOperation → Effect
  | .queryState
  | .queryProject
  | .queryDeclaration
  | .queryOutcome
  | .subscribe
  | .requestDiagnostic => .observe
  | .fetchObjectAuthorization => .retain
  | .prepareUpload
  | .registerStagedObject
  | .extractProject => .retain
  | .composeComposite
  | .generateBitfield
  | .requestTransport
  | .proposePatch => .transform
  | .refreshProject
  | .buildProject
  | .checkProject
  | .testProject
  | .verifyComposite
  | .compareBuilds
  | .cancelJob
  | .prepareActivation
  | .activateComposite
  | .prepareRuntimeCandidate
  | .requestRuntimeHandoff => .execute

def NetworkOperation.isObservation : NetworkOperation → Bool
  | .queryState
  | .queryProject
  | .queryDeclaration
  | .queryOutcome
  | .subscribe
  | .requestDiagnostic => true
  | _ => false

@[simp] theorem query_state_requires_observe :
    NetworkOperation.queryState.requiredEffect = .observe :=
  rfl

@[simp] theorem activation_requires_execute :
    NetworkOperation.activateComposite.requiredEffect = .execute :=
  rfl

end URSM.Network
```
