import GatewayProof.Route
import GatewayProof.Config
import GatewayProof.ReverseLink
import GatewayProof.Boundary

namespace GatewayProof
namespace Classifier

inductive PublicInputKind
| healthz
| readyz
| assistive
| reverseLinkControl
| knownWrongMethod
| relayRoute
| unknown
deriving Repr, DecidableEq

inductive PublicDecision
| directHealth
| directReady
| directAssistive
| reverseLinkControl
| methodNotAllowed
| relay
| refused
deriving Repr, DecidableEq

def classifyPublicInput : PublicInputKind -> PublicDecision
| .healthz => .directHealth
| .readyz => .directReady
| .assistive => .directAssistive
| .reverseLinkControl => .reverseLinkControl
| .knownWrongMethod => .methodNotAllowed
| .relayRoute => .relay
| .unknown => .refused

inductive ConfigDecision
| accepted
| refused
deriving Repr, DecidableEq

def classifyConfigValidity : Bool -> ConfigDecision
| true => .accepted
| false => .refused

inductive ReverseLinkDecision
| registered
| heartbeatAccepted
| requestQueued
| responseAccepted
| refused
deriving Repr, DecidableEq

def classifyReverseLinkRegistration : Bool -> Bool -> ReverseLinkDecision
| true, true => .registered
| _, _ => .refused

structure KernelPosture where
  pureModelDeclared : Bool
  runtimeAdapterChanged : Bool
  rustCorrespondenceClaimed : Bool
  hostedRuntimeProofClaimed : Bool
  proofRunnerReceiptClaimed : Bool
deriving Repr, DecidableEq

def firstKernelPosture : KernelPosture := {
  pureModelDeclared := true,
  runtimeAdapterChanged := false,
  rustCorrespondenceClaimed := false,
  hostedRuntimeProofClaimed := false,
  proofRunnerReceiptClaimed := false
}

theorem unknown_public_input_refuses :
    classifyPublicInput PublicInputKind.unknown = PublicDecision.refused := by
  rfl

theorem healthz_is_direct_health :
    classifyPublicInput PublicInputKind.healthz = PublicDecision.directHealth := by
  rfl

theorem relay_input_relays :
    classifyPublicInput PublicInputKind.relayRoute = PublicDecision.relay := by
  rfl

theorem invalid_config_refuses :
    classifyConfigValidity false = ConfigDecision.refused := by
  rfl

theorem valid_config_accepted :
    classifyConfigValidity true = ConfigDecision.accepted := by
  rfl

theorem reverse_link_registration_refuses_without_token_match :
    classifyReverseLinkRegistration false true = ReverseLinkDecision.refused := by
  rfl

theorem reverse_link_registration_refuses_without_client_id :
    classifyReverseLinkRegistration true false = ReverseLinkDecision.refused := by
  rfl

theorem reverse_link_registration_refuses_when_both_missing :
    classifyReverseLinkRegistration false false = ReverseLinkDecision.refused := by
  rfl

theorem reverse_link_registration_accepts_when_both_present :
    classifyReverseLinkRegistration true true = ReverseLinkDecision.registered := by
  rfl

theorem kernel_slice_does_not_change_runtime_adapter :
    firstKernelPosture.runtimeAdapterChanged = false := by
  rfl

theorem kernel_slice_does_not_claim_rust_correspondence :
    firstKernelPosture.rustCorrespondenceClaimed = false := by
  rfl

theorem kernel_slice_does_not_claim_hosted_runtime_proof :
    firstKernelPosture.hostedRuntimeProofClaimed = false := by
  rfl

theorem kernel_slice_does_not_claim_proof_runner_receipt :
    firstKernelPosture.proofRunnerReceiptClaimed = false := by
  rfl

end Classifier
end GatewayProof
