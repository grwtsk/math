# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TypedStagingRequestRefinement

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `812012af261f361c032291dfcec086f0d9e8ee66`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](declarations/context--5239d00ea11d19c2cf85c18b.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Rejected](declarations/rejected--37790c5802321dfe00a6a72f.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Request](declarations/request--777b0bc202938ae7cc100a05.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [lower](declarations/lower--eb212627675d53bab2e5b336.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [invoke](declarations/invoke--3c41ab3e6ecd48d6bbffd9a5.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lower_fresh](declarations/lower-fresh--88b7368133c8cda22ec1fb66.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lower_directory](declarations/lower-directory--20c52e4c19f6ec7a52051ba0.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lower_directory_rejected](declarations/lower-directory-rejected--46e09b5d564f0284ca684fe7.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lower_empty](declarations/lower-empty--3fe539dcf7f26474f69ca84a.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lower_copy](declarations/lower-copy--605e55d52b183d73e0f07401.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lower_write_rejected](declarations/lower-write-rejected--f9decf2d6f39737183175b2d.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lower_readback](declarations/lower-readback--0affc696a842205b2615fbad.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lower_certificate](declarations/lower-certificate--5830b2c554455a5b74a7afab.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lower_success_rejected](declarations/lower-success-rejected--c80018b65f6dfe88c341ad42.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lower_failed_rejected](declarations/lower-failed-rejected--137f1da7dbcab1a126c5f964.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lower_directory_iff](declarations/lower-directory-iff--6a6f47be517d3e19ae8a2cec.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lower_write_iff](declarations/lower-write-iff--f03404c31eebf4270392df9f.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [invoke_request_exact](declarations/invoke-request-exact--5d987ecaaee659963546e2a2.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [invoke_rejection_no_primitive](declarations/invoke-rejection-no-primitive--d2c9f43ecd7ec9510ebcff16.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [invoke_success_exact](declarations/invoke-success-exact--6a0caf8531b2690686acc8be.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [invoke_primitive_error_exact](declarations/invoke-primitive-error-exact--7aaa5042a1035dfa177f5ef9.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [execute](declarations/execute--3ace928501a996f6d03d28be.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [execute_success_order](declarations/execute-success-order--0011a4442ce0d8119797b7c8.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [execute_success_mandatory_gates](declarations/execute-success-mandatory-gates--ba1f7a4c985f87ac48b01c30.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [execute_error_prefix](declarations/execute-error-prefix--f0a977e9bdb58feee8e36d09.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [withPrepared](declarations/withprepared--c47b9ba69239d189cf2f5ce1.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [withPrepared_exact](declarations/withprepared-exact--f0a6743412bdd22d1f7d7257.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rejectionCode](declarations/rejectioncode--e6a71881d9fd938ee0249e14.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rejectionCode_index](declarations/rejectioncode-index--7c24d9a11215b24ffa2726d9.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rejectionCode_terminal](declarations/rejectioncode-terminal--747475b3fc4d1c1d6657a1fd.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [run_success_requests](declarations/run-success-requests--64bcb5eb8b511de26ba0c74d.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [execute_success_requests](declarations/execute-success-requests--90fe717adc2866204048336d.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [emptyContext](declarations/emptycontext--5477e141ae417c5f744392fe.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fixture_empty_concrete_staging](declarations/fixture-empty-concrete-staging--08c6a56a814237d6514ab9a3.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [fixture_invalid_directory_no_primitive](declarations/fixture-invalid-directory-no-primitive--a3b4d63eeaf62c147f820e30.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fixture_terminal_no_primitive](declarations/fixture-terminal-no-primitive--0d6b7802dc27fd6fa9fc78a6.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
