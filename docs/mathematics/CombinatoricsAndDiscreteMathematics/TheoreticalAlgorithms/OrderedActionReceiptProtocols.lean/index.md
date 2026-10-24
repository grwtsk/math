# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedActionReceiptProtocols

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7c35868dce13b6bda59b4bae9bcaf2b083c0840`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Action](declarations/action--996a0c8a40c59962e652032a.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Operation](declarations/operation--335c96fedabd834881ebda94.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [initial](declarations/initial--d761fc5c270828d63ce916d4.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [program](declarations/program--1fb10b098a8810ec07543589.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [initial_length](declarations/initial-length--5a70225b805904d77b35bc52.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [program_length](declarations/program-length--00c80ef750f653b305941cf3.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [program_initial_order](declarations/program-initial-order--bfa497dac7c28cef068aa490.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [program_verify_raw](declarations/program-verify-raw--6e17b7bf58d35177e45f2927.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [program_retain_raw](declarations/program-retain-raw--35f6101df38928eaabbe41b9.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [program_publication_last](declarations/program-publication-last--614aa37028fd75b73d450a32.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [Event](declarations/event--dff863743760bea97db94997.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Execution](declarations/execution--256969218f66e6acdda47528.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Host](declarations/host--ebdf39b203ca9ff39e72a823.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [StepExecution](declarations/stepexecution--2be2abf9fed6ae0a852ea00b.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [runSteps](declarations/runsteps--8ca299264a7d9a633676bbbc.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [execute](declarations/execute--ec3c8c0a12c1b965fee59a34.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [runSteps_success_trace](declarations/runsteps-success-trace--1fe0c6d3b59c07de93fc12fa.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [runSteps_failure_exact](declarations/runsteps-failure-exact--aa6f81cb43c3671785b75908.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [execute_success_exact](declarations/execute-success-exact--0d4c27938422f77f3f5154e8.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [execute_success_trace](declarations/execute-success-trace--5f542873b55b33069cdc70d2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [execute_success_receipt_identity](declarations/execute-success-receipt-identity--fefb098813a4cee63f5dd1a4.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [execute_success_call_count](declarations/execute-success-call-count--842c7da52d43a1ec6a1ce39f.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [execute_step_error_stops](declarations/execute-step-error-stops--891500244a6a3c8dc5594044.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [execute_outputs_error_stops](declarations/execute-outputs-error-stops--626048e975ebb679b336d0bc.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [execute_receipt_error_exact](declarations/execute-receipt-error-exact--c1ce33e85b37bf9000635e08.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [acceptingHost](declarations/acceptinghost--dd3e1508afedee82e08a2b3e.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [runSteps_increment_nonvacuous](declarations/runsteps-increment-nonvacuous--6c3bd5736ca7154a56a52ca7.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [application_success_nonvacuous](declarations/application-success-nonvacuous--c73e7ce17ca9d171591ffc33.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [fixture_application_receipt_returned](declarations/fixture-application-receipt-returned--805d2a6002f1abfc03c645b8.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fixture_application_receipt_recorded](declarations/fixture-application-receipt-recorded--7837b3ff49beeba241d67ff0.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fixture_empty_raw_still_verifies_outputs](declarations/fixture-empty-raw-still-verifies-outputs--7502975a7a364e126bbd83af.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
