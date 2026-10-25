# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e.Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51e40de9e0dde7fcffff8d5ddacea9a6cd36cdac` · SHA-256 `af57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f417574686f72697479426f756e646172792e6c65616e


/- source-tree-label: STL1|L|addr=11111110|role=proof_code_atom|slug=pipeline-localmodelendpointadapter|owner=canonical_owner|core=Pipeline/LocalModelEndpointAdapter.lean|leaf=M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.LocalModelEndpointAdapter

abbrev AdmissionStatus := Think.Codex.Foundation.StatusConstant
abbrev ClaimRecord := Think.Codex.Authority.ClaimRecord

/-- Requests the local model may shape before handing work to the pipeline. -/
inductive LocalModelRequestTag where
  | discover
  | compactify
  | classify
  | explain
  | patchPlan
  | requestWitness
deriving DecidableEq, Repr

/-- Responses the local model may emit without crossing an authority boundary. -/
inductive LocalModelResponseTag where
  | pipelineRequest
  | publicWitnessSummary
  | refusalBoundarySummary
  | patchPlan
deriving DecidableEq, Repr

/-- Endpoint families are hints into pipeline-owned classifiers, not judgments. -/
inductive EndpointHintTag where
  | authorityEndpoint
  | refusalEndpoint
  | authorityOrRefusalEndpoint
  | noEndpoint
deriving DecidableEq, Repr

/-- Compact summaries name finite receipt shapes only. -/
inductive CompactSummaryKind where
  | eml
  | bitmatrixStream
  | ledger
  | finiteReceipt
deriving DecidableEq, Repr

/-- Pipeline stages that the local model may request but does not own. -/
inductive PipelineOwnedStage where
  | discovery
  | compactification
  | endpointClassification
deriving DecidableEq, Repr

/--
The local model claim record: a finite adapter surface whose own status is
candidate-level unless it is explicitly a refused overclaim.
-/
structure LocalModelClaim where
  requestTag : LocalModelRequestTag
  responseTag : LocalModelResponseTag
  endpointHint : EndpointHintTag
  status : AdmissionStatus
  checkedProofImported : Bool
  externalHypothesesDischarged : Bool
  discoveryPipelineOwned : Bool
  compactificationPipelineOwned : Bool
  classificationPipelineOwned : Bool
  theoremExportPermissionRefused : Bool
deriving DecidableEq, Repr

def LocalModelClaim.toClaimRecord (claim : LocalModelClaim) : ClaimRecord :=
  { status := claim.status
    checkedProofImported := claim.checkedProofImported
    externalHypothesesDischarged := claim.externalHypothesesDischarged }

/-- The normal adapter surface is candidate material only. -/
def localModelAdapterClaim : LocalModelClaim :=
  { requestTag := .discover
    responseTag := .pipelineRequest
    endpointHint := .authorityOrRefusalEndpoint
    status := .candidate_generalization
    checkedProofImported := false
    externalHypothesesDischarged := false
    discoveryPipelineOwned := true
    compactificationPipelineOwned := true
    classificationPipelineOwned := true
    theoremExportPermissionRefused := true }

/-- Direct authority requests from the model are recorded as refused overclaims. -/
def localModelDirectAuthorityOverclaim : LocalModelClaim :=
  { requestTag := .classify
    responseTag := .refusalBoundarySummary
    endpointHint := .noEndpoint
    status := .refused
    checkedProofImported := false
    externalHypothesesDischarged := false
    discoveryPipelineOwned := true
    compactificationPipelineOwned := true
    classificationPipelineOwned := true
    theoremExportPermissionRefused := true }

def endpointHintClaim (hint : EndpointHintTag) : LocalModelClaim :=
  { localModelAdapterClaim with endpointHint := hint }

/-- Local compact summaries remain candidate summaries, not checked theorem records. -/
structure LocalModelCompactSummary where
  kind : CompactSummaryKind
  status : AdmissionStatus
  sourceDigestRecorded : Bool
  endpointDigestRecorded : Bool
  theoremExportPermissionRefused : Bool
  pipelineOwned : Bool
deriving DecidableEq, Repr

def localModelCompactSummary : LocalModelCompactSummary :=
  { kind := .finiteReceipt
    status := .candidate_generalization
    sourceDigestRecorded := true
    endpointDigestRecorded := true
    theoremExportPermissionRefused := true
    pipelineOwned := true }

/-- Refusal summaries are refused boundary records, not proof records. -/
def localModelRefusalSummary : LocalModelClaim :=
  { localModelDirectAuthorityOverclaim with responseTag := .refusalBoundarySummary }

/-- Prompt-promotion training records tune local guidance, not theorem authority. -/
structure PromptPromotionTrainingSurface where
  promptNormalized : Bool
  jepaExampleRecorded : Bool
  modeWeightsRecorded : Bool
  adapterWeightsRecorded : Bool
  mlxCorpusDeltaRecorded : Bool
  torsionGuidanceRecorded : Bool
  status : AdmissionStatus
  checkedProofImported : Bool
  externalHypothesesDischarged : Bool
deriving DecidableEq, Repr

def PromptPromotionTrainingSurface.toClaimRecord
    (surface : PromptPromotionTrainingSurface) : ClaimRecord :=
  { status := surface.status
    checkedProofImported := surface.checkedProofImported
    externalHypothesesDischarged := surface.externalHypothesesDischarged }

def thinkOfMathPromptPromotionTraining : PromptPromotionTrainingSurface :=
  { promptNormalized := true
    jepaExampleRecorded := true
    modeWeightsRecorded := true
    adapterWeightsRecorded := true
    mlxCorpusDeltaRecorded := true
    torsionGuidanceRecorded := true
    status := .candidate_generalization
    checkedProofImported := false
    externalHypothesesDischarged := false }

theorem local_model_adapter_has_no_authority :
    Not (Think.Codex.Authority.Authority localModelAdapterClaim.toClaimRecord) := by
  exact Think.Codex.Authority.candidate_generalization_has_no_authority false false

theorem local_model_output_has_no_authority :
    Not (Think.Codex.Authority.Authority localModelAdapterClaim.toClaimRecord) := by
  exact local_model_adapter_has_no_authority

theorem local_model_direct_authority_claim_has_no_authority :
    Not (Think.Codex.Authority.Authority
      localModelDirectAuthorityOverclaim.toClaimRecord) := by
  exact Think.Codex.Authority.refused_has_no_authority false false

theorem endpoint_hint_is_not_checked_theorem
    (hint : EndpointHintTag) :
    (endpointHintClaim hint).status ≠ .checked_theorem := by
  intro hStatus
  cases hStatus

theorem local_model_endpoint_hint_is_not_endpoint_judgment
    (hint : EndpointHintTag) :
    (endpointHintClaim hint).theoremExportPermissionRefused = true ∧
      (endpointHintClaim hint).status = .candidate_generalization := by
  exact ⟨rfl, rfl⟩

theorem compact_summary_is_not_checked_theorem :
    localModelCompactSummary.status ≠ .checked_theorem := by
  intro hStatus
  cases hStatus

theorem local_model_compact_summary_is_not_checked_theorem :
    localModelCompactSummary.status ≠ .checked_theorem := by
  exact compact_summary_is_not_checked_theorem

theorem local_model_refusal_summary_is_not_proof :
    Not (Think.Codex.Authority.Authority localModelRefusalSummary.toClaimRecord) := by
  exact Think.Codex.Authority.refused_has_no_authority false false

theorem prompt_promotion_training_is_not_theorem_authority :
    Not (Think.Codex.Authority.Authority
      thinkOfMathPromptPromotionTraining.toClaimRecord) := by
  exact Think.Codex.Authority.candidate_generalization_has_no_authority false false

theorem local_llm_adapter_weight_is_not_checked_theorem :
    thinkOfMathPromptPromotionTraining.status ≠ .checked_theorem := by
  intro hStatus
  cases hStatus

theorem discovery_is_pipeline_owned :
    localModelAdapterClaim.discoveryPipelineOwned = true := rfl

theorem compactification_is_pipeline_owned :
    localModelAdapterClaim.compactificationPipelineOwned = true := rfl

theorem endpoint_classification_is_pipeline_owned :
    localModelAdapterClaim.classificationPipelineOwned = true := rfl

end Think.Pipeline.LocalModelEndpointAdapter
```
