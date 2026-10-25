# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classifier.Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c914f21120784ebce1c5fe186fb412b4887e7d6` · SHA-256 `af605c2bd74da2d590c65f3b7a095a5d89f5e1ea74c00f0a99df2525c1c15e75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicInputKind.Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PublicInputKind.Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b","mathematical_subject":"Foundations.Unclassified","original_sha256":"7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Gateway/formalization/GatewayProof/Classifier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import GatewayProof.Route
import GatewayProof.Config
import GatewayProof.ReverseLink
import GatewayProof.Boundary


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicInputKind.Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b

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
```
