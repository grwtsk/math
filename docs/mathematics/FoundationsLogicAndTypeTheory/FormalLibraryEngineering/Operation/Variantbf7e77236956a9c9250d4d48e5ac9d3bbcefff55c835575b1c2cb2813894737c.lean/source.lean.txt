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
