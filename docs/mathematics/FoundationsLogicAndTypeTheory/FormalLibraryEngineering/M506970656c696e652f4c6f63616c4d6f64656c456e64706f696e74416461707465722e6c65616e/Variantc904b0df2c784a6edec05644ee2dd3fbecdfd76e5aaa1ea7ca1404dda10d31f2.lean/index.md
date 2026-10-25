# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e.Variantc904b0df2c784a6edec05644ee2dd3fbecdfd76e5aaa1ea7ca1404dda10d31f2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantc904b0df2c784a6edec05644ee2dd3fbecdfd76e5aaa1ea7ca1404dda10d31f2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd67e8f6f689ab7a1ee26d2e8c5d8810f7082cad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantc904b0df2c784a6edec05644ee2dd3fbecdfd76e5aaa1ea7ca1404dda10d31f2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AdmissionStatus](declarations/admissionstatus--480611680471ef6350121795.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ClaimRecord](declarations/claimrecord--7a74e2246ee90c8b04cd1542.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [LocalModelRequestTag](declarations/localmodelrequesttag--b7315e044c91156e95069fb1.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [LocalModelResponseTag](declarations/localmodelresponsetag--65d3432f912ea45cebf90ea1.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [EndpointHintTag](declarations/endpointhinttag--a06eaae9993f2582aaab8361.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [CompactSummaryKind](declarations/compactsummarykind--0d3a535d655c336f045bf7d4.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [PipelineOwnedStage](declarations/pipelineownedstage--39c3fbbc5955a3c0e4587bd1.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [LocalModelClaim](declarations/localmodelclaim--57eee806e89840338a4f14b5.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [LocalModelClaim.toClaimRecord](declarations/localmodelclaim-toclaimrecord--28cf2ef7315bfc4370852e91.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [localModelAdapterClaim](declarations/localmodeladapterclaim--0f223b834f1edf050ae074c0.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [localModelDirectAuthorityOverclaim](declarations/localmodeldirectauthorityoverclaim--e41912be79842611d38671a4.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [endpointHintClaim](declarations/endpointhintclaim--b098c864c386257efa96a7e9.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [LocalModelCompactSummary](declarations/localmodelcompactsummary--f8caa1459301fce692dff40c.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [localModelCompactSummary](declarations/localmodelcompactsummary--9da22758b5a1d23bd0e9e99f.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [localModelRefusalSummary](declarations/localmodelrefusalsummary--ea0be0d895cd8e2d91156643.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [PromptPromotionTrainingSurface](declarations/promptpromotiontrainingsurface--006547a8266d3769cb27313f.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [PromptPromotionTrainingSurface.toClaimRecord](declarations/promptpromotiontrainingsurface-toclaimrecord--c640623a1b7f5216d5f8d464.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [thinkOfMathPromptPromotionTraining](declarations/thinkofmathpromptpromotiontraining--64b82e8ebe6dba4664de5118.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [local_model_adapter_has_no_authority](declarations/local-model-adapter-has-no-authority--6fb338259f94a163d7920c96.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [local_model_output_has_no_authority](declarations/local-model-output-has-no-authority--9b3c5a550f367a0d3e940a4b.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [local_model_direct_authority_claim_has_no_authority](declarations/local-model-direct-authority-claim-has-no-authority--93ebbf1b47ebffe3f4eea8c4.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [endpoint_hint_is_not_checked_theorem](declarations/endpoint-hint-is-not-checked-theorem--1620829856448e3cc2abca0d.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [local_model_endpoint_hint_is_not_endpoint_judgment](declarations/local-model-endpoint-hint-is-not-endpoint-judgment--3a31e4dfc30457b45476eb29.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [compact_summary_is_not_checked_theorem](declarations/compact-summary-is-not-checked-theorem--ac1b940f974ff2f1b2cc6572.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [local_model_compact_summary_is_not_checked_theorem](declarations/local-model-compact-summary-is-not-checked-theorem--b8cfd3d620403588fba28c00.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [local_model_refusal_summary_is_not_proof](declarations/local-model-refusal-summary-is-not-proof--17dd878257b65281ad21a808.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [prompt_promotion_training_is_not_theorem_authority](declarations/prompt-promotion-training-is-not-theorem-authority--ab73b0be68f894141c768d46.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [local_llm_adapter_weight_is_not_checked_theorem](declarations/local-llm-adapter-weight-is-not-checked-theorem--edc4f1d2ccd39082edee69ca.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [discovery_is_pipeline_owned](declarations/discovery-is-pipeline-owned--2a25d94d6b224d1799b8233c.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [compactification_is_pipeline_owned](declarations/compactification-is-pipeline-owned--5c3b35e13606d361bce68279.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [endpoint_classification_is_pipeline_owned](declarations/endpoint-classification-is-pipeline-owned--a378dbc3d3268a167fb66190.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
