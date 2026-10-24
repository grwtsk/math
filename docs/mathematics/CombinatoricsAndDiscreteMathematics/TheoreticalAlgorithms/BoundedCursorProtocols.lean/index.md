# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedCursorProtocols

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a152bff76a8962ba9add250686db8fa792f9f19f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Phase](declarations/phase--d98bf9b9db7e3ebd3f6d1fae.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Cursor](declarations/cursor--01133537b7742cbcd5530e7d.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [start](declarations/start--a8a6653c74ed434227416529.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [terminal](declarations/terminal--241006b82f4b2759b85ae0a9.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [index](declarations/index--ff6afd0191dfa3d6a1178d77.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [advance](declarations/advance--d1c25f086c43b42a971817ee.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [budget](declarations/budget--59bb2772f23d3c87e46c6b05.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [cursorAt](declarations/cursorat--3c9c05eaa1d547d74fccea74.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [start_exact](declarations/start-exact--f33655e5e38d6bf127c80a9c.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [terminal_success](declarations/terminal-success--e454332381394f59a0b24572.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [terminal_failure](declarations/terminal-failure--71b386ac63756a48bf4372bd.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [terminal_absorbs](declarations/terminal-absorbs--526835a973964993a0685937.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [failure_absorbs](declarations/failure-absorbs--94893d6ef00e4b4571d64ffd.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [success_absorbs](declarations/success-absorbs--fb9266081e35e438f091f439.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [failed_step_exact](declarations/failed-step-exact--65b7d4b4c2043856dd6d9488.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [failed_step_preserves_counters](declarations/failed-step-preserves-counters--9a767a5f56e60004c04b75d6.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [at_terminal_iff](declarations/at-terminal-iff--c674e17de2fd92027686a616.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [at_live](declarations/at-live--0defd2d21a6a21785d78cdd0.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [at_counters_bounded](declarations/at-counters-bounded--fce1c57cb2c7b96d1c9c6caf.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [at_directory_index](declarations/at-directory-index--30f5cbb62153ca62573cded1.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [at_write_index](declarations/at-write-index--4feb5ef168bbc919ee721099.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [advance_at_success](declarations/advance-at-success--487eb2dc4e8844697e00dc1f.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [successfulSteps](declarations/successfulsteps--2ebeaf8a0dd44663adcd798c.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [successfulSteps_from_start](declarations/successfulsteps-from-start--2b0536988e8fe8891904f2d7.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [successfulSteps_first_terminal](declarations/successfulsteps-first-terminal--65830469d8ccdb51f4c4fe74.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [failed_prefix_absorbing](declarations/failed-prefix-absorbing--3249b61b03f8466549adc5ef.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [Operation](declarations/operation--41a1d3efdffdecb2b92046c3.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [operation](declarations/operation--8c8dc3b5190ed7e65b544977.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [program](declarations/program--7a81af07232ab1b4e5acb41b.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [program_length](declarations/program-length--2dfa244590f68e9d172ace1e.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [program_first](declarations/program-first--fc1078931d20ec77a901b9d2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [program_readback](declarations/program-readback--b56917e56b754504dab463b0.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [program_certificate](declarations/program-certificate--75e46adad638a652e11b2e84.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [Execution](declarations/execution--e77b35f3814661bdc4ed4e77.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [run](declarations/run--258ff9328f7e537e28f22cc5.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [execute](declarations/execute--7c0cfbcbaeced3158638c514.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [run_success_trace](declarations/run-success-trace--63939aeb5db2fc56875f2f02.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [run_failure_exact](declarations/run-failure-exact--67c05ebade930270a8302b15.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [run_trace_prefix](declarations/run-trace-prefix--b9533e2c637b194969f1d917.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [execute_success_trace](declarations/execute-success-trace--bb530c297a3650c75dfa2782.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [execute_success_mandatory_readback](declarations/execute-success-mandatory-readback--a05912971f2443db1313a5dc.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [execute_call_bound](declarations/execute-call-bound--6ce34848e3b7decd0d5896a1.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [Prepared](declarations/prepared--b0b9cfa863dff0b652df28b0.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [preflight](declarations/preflight--91b7d45631f6b0ccc37436ab.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [preflight_success_exact](declarations/preflight-success-exact--cb1543907911f5322304469f.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [preflight_success_directory_bound](declarations/preflight-success-directory-bound--5fe99b329b0d216b8c4fd6ac.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [preflight_success_iff](declarations/preflight-success-iff--12d38c17172179c0b9882447.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [preflight_excess_directories_before_writes](declarations/preflight-excess-directories-before-writes--e829480fc61d50e8c2cb4dd0.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [preflight_success_full_records](declarations/preflight-success-full-records--d7607b95a48cf1250582aec2.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [preflight_success_metadata_bounds](declarations/preflight-success-metadata-bounds--7bd99a7004d81653706049b3.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [preflight_success_write_records](declarations/preflight-success-write-records--1e219617b73029ac923b643b.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [preflight_success_actual_byte_bounds](declarations/preflight-success-actual-byte-bounds--35d75b75b1c4d5a8758f8adb.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [preflight_success_directory_closure](declarations/preflight-success-directory-closure--df35fecbe1d84b68578626c7.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `inductive` | [StageError](declarations/stageerror--0ae6823fb1c04d9a444a5a87.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [stage](declarations/stage--c65d1488b1078b0fcbc7b186.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [stage_preflight_failure_no_effect](declarations/stage-preflight-failure-no-effect--39b4c80fb22048c885d82c25.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [stage_excess_directories_no_effect](declarations/stage-excess-directories-no-effect--6cb9bec2f5180a5003cad44e.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [stage_success_preflight](declarations/stage-success-preflight--0e852be8f2c727d9f88e0fc1.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [stage_success_mandatory_gates](declarations/stage-success-mandatory-gates--5265c863185ab3c2141397b3.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [fixture_zero_output_protocol](declarations/fixture-zero-output-protocol--b7f60955340df325ac227395.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [fixture_interleaving_protocol](declarations/fixture-interleaving-protocol--723cd034cc4f0af5ceb10b0c.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [fixture_empty_host_success](declarations/fixture-empty-host-success--02023e2f9e937c71c94bd7ab.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fixture_readback_failure_blocks_certificate](declarations/fixture-readback-failure-blocks-certificate--e0bc74cc42ada4fe5fc11dd8.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
