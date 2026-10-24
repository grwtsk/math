# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TypedStagingRequestRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "812012af261f361c032291dfcec086f0d9e8ee66",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `812012af261f361c032291dfcec086f0d9e8ee66`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedCursorProtocols`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/context--5239d00ea11d19c2cf85c18b.md) | 12 | `declaration-track:5239d00ea11d19c2cf85c18b59cc1563a3cfea74c9725e1ebc3692c2bc676dab` |
| 2 | `inductive` | [Rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/rejected--37790c5802321dfe00a6a72f.md) | 21 | `declaration-track:37790c5802321dfe00a6a72f5177aad29c3eb823a419f4a67eabb440b6c00e3b` |
| 3 | `inductive` | [Request](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/request--777b0bc202938ae7cc100a05.md) | 25 | `declaration-track:777b0bc202938ae7cc100a05f924f6fdce68b091d7260ad2f59d0d3191927d2f` |
| 4 | `def` | [lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower--eb212627675d53bab2e5b336.md) | 34 | `declaration-track:eb212627675d53bab2e5b3363c44f725faeb63581596d8ad310b4d04cc6cb1b2` |
| 5 | `def` | [invoke](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/invoke--3c41ab3e6ecd48d6bbffd9a5.md) | 50 | `declaration-track:3c41ab3e6ecd48d6bbffd9a5039dd41cf75b105b612c0eea2b4336102a1c34a3` |
| 6 | `theorem` | [lower_fresh](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-fresh--88b7368133c8cda22ec1fb66.md) | 58 | `result-track:88b7368133c8cda22ec1fb6614c7734299243ab52d019d973288e4c79860a01e` |
| 7 | `theorem` | [lower_directory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-directory--20c52e4c19f6ec7a52051ba0.md) | 61 | `result-track:20c52e4c19f6ec7a52051ba0371fb9c2a5985dd58dad5f195f92c25ee5426ec7` |
| 8 | `theorem` | [lower_directory_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-directory-rejected--46e09b5d564f0284ca684fe7.md) | 66 | `result-track:46e09b5d564f0284ca684fe7313c2fab879c1c3eeefb7a2c5290c38d0835b7eb` |
| 9 | `theorem` | [lower_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-empty--3fe539dcf7f26474f69ca84a.md) | 70 | `result-track:3fe539dcf7f26474f69ca84a2df48bf6bba9a9f886152f3110f3ff0347a88868` |
| 10 | `theorem` | [lower_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-copy--605e55d52b183d73e0f07401.md) | 75 | `result-track:605e55d52b183d73e0f07401efc09f98f8af8cc1379d7a5c64a0ccc78c5bd05d` |
| 11 | `theorem` | [lower_write_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-write-rejected--f9decf2d6f39737183175b2d.md) | 82 | `result-track:f9decf2d6f39737183175b2d99def8b6d1d129205d0400699131a99e910fd167` |
| 12 | `theorem` | [lower_readback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-readback--0affc696a842205b2615fbad.md) | 86 | `result-track:0affc696a842205b2615fbad74db4a03b6daaad201553587a04d1cdc7b6fc325` |
| 13 | `theorem` | [lower_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-certificate--5830b2c554455a5b74a7afab.md) | 89 | `result-track:5830b2c554455a5b74a7afabaed9555c5eb1c924c41cdc7d82bbc229937379c3` |
| 14 | `theorem` | [lower_success_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-success-rejected--c80018b65f6dfe88c341ad42.md) | 93 | `result-track:c80018b65f6dfe88c341ad425d0a85c90ea54b0679bfa55cb6c63105f9897ab8` |
| 15 | `theorem` | [lower_failed_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-failed-rejected--137f1da7dbcab1a126c5f964.md) | 96 | `result-track:137f1da7dbcab1a126c5f964a0f4d20bfc72e407fb71913b91311d0f281da455` |
| 16 | `theorem` | [lower_directory_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-directory-iff--6a6f47be517d3e19ae8a2cec.md) | 99 | `result-track:6a6f47be517d3e19ae8a2cecf2535724ea7cf182874615163992c106f807df0e` |
| 17 | `theorem` | [lower_write_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/lower-write-iff--f03404c31eebf4270392df9f.md) | 106 | `result-track:f03404c31eebf4270392df9f4342286becae1d0d354c1273ce6884e178614eca` |
| 18 | `theorem` | [invoke_request_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/invoke-request-exact--5d987ecaaee659963546e2a2.md) | 128 | `result-track:5d987ecaaee659963546e2a2e99ed33c401074888b0efe41d59358b6d5d0f7b6` |
| 19 | `theorem` | [invoke_rejection_no_primitive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/invoke-rejection-no-primitive--d2c9f43ecd7ec9510ebcff16.md) | 135 | `result-track:d2c9f43ecd7ec9510ebcff166e5d5abac62dc1b4e51e0a96d8b35a59db4f19c7` |
| 20 | `theorem` | [invoke_success_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/invoke-success-exact--6a0caf8531b2690686acc8be.md) | 142 | `result-track:6a0caf8531b2690686acc8be99cd1cbb4a2065d0244561176e3605dbede39317` |
| 21 | `theorem` | [invoke_primitive_error_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/invoke-primitive-error-exact--7aaa5042a1035dfa177f5ef9.md) | 153 | `result-track:7aaa5042a1035dfa177f5ef958b3edf62e3fa2f99332d4d942ed69c8de5fc7d3` |
| 22 | `def` | [execute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/execute--3ace928501a996f6d03d28be.md) | 161 | `declaration-track:3ace928501a996f6d03d28becebbb4a2064d3f6754f679817de8829b6b05e11e` |
| 23 | `theorem` | [execute_success_order](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/execute-success-order--0011a4442ce0d8119797b7c8.md) | 168 | `result-track:0011a4442ce0d8119797b7c896fb9d90440e3ee964dc1a77c6965c0669e35d34` |
| 24 | `theorem` | [execute_success_mandatory_gates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/execute-success-mandatory-gates--ba1f7a4c985f87ac48b01c30.md) | 176 | `result-track:ba1f7a4c985f87ac48b01c30476213e092990075aebb3b47814565850d56dbcc` |
| 25 | `theorem` | [execute_error_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/execute-error-prefix--f0a977e9bdb58feee8e36d09.md) | 186 | `result-track:f0a977e9bdb58feee8e36d09c5551a617a7d7c9a4ea11a236bf269eb31576a91` |
| 26 | `def` | [withPrepared](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/withprepared--c47b9ba69239d189cf2f5ce1.md) | 198 | `declaration-track:c47b9ba69239d189cf2f5ce161addc6fa05158c4e279dc12fc9a8fdc9851f248` |
| 27 | `theorem` | [withPrepared_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/withprepared-exact--f0a6743412bdd22d1f7d7257.md) | 202 | `result-track:f0a6743412bdd22d1f7d7257445ac039efc6d0178a982a8b25257b1737806d7d` |
| 28 | `def` | [rejectionCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/rejectioncode--e6a71881d9fd938ee0249e14.md) | 213 | `declaration-track:e6a71881d9fd938ee0249e14b7205ffa9325497986b0b0cdf17bf1b2367ec080` |
| 29 | `theorem` | [rejectionCode_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/rejectioncode-index--7c24d9a11215b24ffa2726d9.md) | 217 | `result-track:7c24d9a11215b24ffa2726d98ae1baf7e9af65260daa72f9b5ea418981a5cb77` |
| 30 | `theorem` | [rejectionCode_terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/rejectioncode-terminal--747475b3fc4d1c1d6657a1fd.md) | 220 | `result-track:747475b3fc4d1c1d6657a1fd047b4ee93b14b39fc8164657238a88d68347a598` |
| 31 | `theorem` | [run_success_requests](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/run-success-requests--64bcb5eb8b511de26ba0c74d.md) | 223 | `result-track:64bcb5eb8b511de26ba0c74d41a8019b56de02b76a452f144286026b2b06a371` |
| 32 | `theorem` | [execute_success_requests](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/execute-success-requests--90fe717adc2866204048336d.md) | 244 | `result-track:90fe717adc2866204048336d5b9133f854e95536996dd258d30c1b9f403baa39` |
| 33 | `def` | [emptyContext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/emptycontext--5477e141ae417c5f744392fe.md) | 253 | `declaration-track:5477e141ae417c5f744392fe11c507f9cd073588b276679fcb4a8cefc9a34666` |
| 34 | `theorem` | [fixture_empty_concrete_staging](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/fixture-empty-concrete-staging--08c6a56a814237d6514ab9a3.md) | 255 | `result-track:08c6a56a814237d6514ab9a3c5ad8cd715f7b5abb144bb7aa7fbef0aba8052be` |
| 35 | `theorem` | [fixture_invalid_directory_no_primitive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/fixture-invalid-directory-no-primitive--a3b4d63eeaf62c147f820e30.md) | 258 | `result-track:a3b4d63eeaf62c147f820e30ceb93b533e2da995f42250a659f49f6247be9572` |
| 36 | `theorem` | [fixture_terminal_no_primitive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/declarations/fixture-terminal-no-primitive--0d6b7802dc27fd6fa9fc78a6.md) | 262 | `result-track:0d6b7802dc27fd6fa9fc78a67e9ac2e40d242d2865e2278a089de7d892080b75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
