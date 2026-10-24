# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedActionReceiptProtocols

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7c35868dce13b6bda59b4bae9bcaf2b083c0840",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7c35868dce13b6bda59b4bae9bcaf2b083c0840`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CollisionCheckedMapConstruction`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Action](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/action--996a0c8a40c59962e652032a.md) | 12 | `declaration-track:996a0c8a40c59962e652032a88d7d37bb62eddae04efbd3d4648ec07e95d88cd` |
| 2 | `structure` | [Operation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/operation--335c96fedabd834881ebda94.md) | 18 | `declaration-track:335c96fedabd834881ebda94cf15ad09b5c5fc9294a5a80136f68fadcabbcb03` |
| 3 | `def` | [initial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/initial--d761fc5c270828d63ce916d4.md) | 23 | `declaration-track:d761fc5c270828d63ce916d485bb4b609a5086c8cf6f76f1e10daae62af422b2` |
| 4 | `def` | [program](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/program--1fb10b098a8810ec07543589.md) | 28 | `declaration-track:1fb10b098a8810ec075435893dc5b41ee8c31eddc5e66668324389f60b864d9d` |
| 5 | `theorem` | [initial_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/initial-length--5a70225b805904d77b35bc52.md) | 32 | `result-track:5a70225b805904d77b35bc52e9f9d0f6e0dda238b0d7098baab46a0462ad4658` |
| 6 | `theorem` | [program_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/program-length--00c80ef750f653b305941cf3.md) | 34 | `result-track:00c80ef750f653b305941cf32bed84aec560cab630d3c4c413235fdd8923c83d` |
| 7 | `theorem` | [program_initial_order](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/program-initial-order--bfa497dac7c28cef068aa490.md) | 39 | `result-track:bfa497dac7c28cef068aa49035904eca991ceec0510186b07b20dbaddc65463b` |
| 8 | `theorem` | [program_verify_raw](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/program-verify-raw--6e17b7bf58d35177e45f2927.md) | 44 | `result-track:6e17b7bf58d35177e45f2927e630785d4d652ce4311e8a19bb2caf640aee84a0` |
| 9 | `theorem` | [program_retain_raw](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/program-retain-raw--35f6101df38928eaabbe41b9.md) | 49 | `result-track:35f6101df38928eaabbe41b96e9ac0099a40599948073fecd32f205032895e03` |
| 10 | `theorem` | [program_publication_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/program-publication-last--614aa37028fd75b73d450a32.md) | 57 | `result-track:614aa37028fd75b73d450a32aa7786375bf63570cbf21b88821af5cfc0d54cb7` |
| 11 | `inductive` | [Event](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/event--dff863743760bea97db94997.md) | 61 | `declaration-track:dff863743760bea97db94997dcc8606c74b71e53aaa5fa19f8af7cbac535b31c` |
| 12 | `structure` | [Execution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execution--256969218f66e6acdda47528.md) | 67 | `declaration-track:256969218f66e6acdda475288a968262f6b68eeb4ce13ace2b4db4e8805f94e1` |
| 13 | `structure` | [Host](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/host--ebdf39b203ca9ff39e72a823.md) | 72 | `declaration-track:ebdf39b203ca9ff39e72a823ff01824d4820da0e7f12a5fcafd6cd95d32bf00e` |
| 14 | `structure` | [StepExecution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/stepexecution--2be2abf9fed6ae0a852ea00b.md) | 77 | `declaration-track:2be2abf9fed6ae0a852ea00bf4e684eae7b71fb10c2ec2f8b313582bc64dd7be` |
| 15 | `def` | [runSteps](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/runsteps--8ca299264a7d9a633676bbbc.md) | 82 | `declaration-track:8ca299264a7d9a633676bbbcb596e1a3ff94a4034e065c91f5980e8797ef68f1` |
| 16 | `def` | [execute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execute--ec3c8c0a12c1b965fee59a34.md) | 89 | `declaration-track:ec3c8c0a12c1b965fee59a34899216c91efd5320c159ac6fe5d6d68086518208` |
| 17 | `theorem` | [runSteps_success_trace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/runsteps-success-trace--1fe0c6d3b59c07de93fc12fa.md) | 100 | `result-track:1fe0c6d3b59c07de93fc12fadc8b0a7115864b917a991e86bdd184aa102810e0` |
| 18 | `theorem` | [runSteps_failure_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/runsteps-failure-exact--aa6f81cb43c3671785b75908.md) | 113 | `result-track:aa6f81cb43c3671785b75908f0e746793c4397ab3dab49d97fa38eec70e2d5d8` |
| 19 | `theorem` | [execute_success_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execute-success-exact--0d4c27938422f77f3f5154e8.md) | 133 | `result-track:0d4c27938422f77f3f5154e8e4725edceb53e725931a5d51ec046ed858aa24da` |
| 20 | `theorem` | [execute_success_trace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execute-success-trace--5f542873b55b33069cdc70d2.md) | 156 | `result-track:5f542873b55b33069cdc70d24a492149b98e0a97f02648a9d2690714ee0e0d6b` |
| 21 | `theorem` | [execute_success_receipt_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execute-success-receipt-identity--fefb098813a4cee63f5dd1a4.md) | 165 | `result-track:fefb098813a4cee63f5dd1a4e68eeccf0ed0b7bc42ef6c0547b2037980cfb80a` |
| 22 | `theorem` | [execute_success_call_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execute-success-call-count--842c7da52d43a1ec6a1ce39f.md) | 172 | `result-track:842c7da52d43a1ec6a1ce39f43242e8624e8e10dfacc887ae54283d93be1b8be` |
| 23 | `theorem` | [execute_step_error_stops](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execute-step-error-stops--891500244a6a3c8dc5594044.md) | 179 | `result-track:891500244a6a3c8dc5594044146ebf8433a1d7a399231272517432340f26946e` |
| 24 | `theorem` | [execute_outputs_error_stops](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execute-outputs-error-stops--626048e975ebb679b336d0bc.md) | 186 | `result-track:626048e975ebb679b336d0bc4cfe821fb33c0e7f806db3de1781438143a8d90c` |
| 25 | `theorem` | [execute_receipt_error_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/execute-receipt-error-exact--c1ce33e85b37bf9000635e08.md) | 194 | `result-track:c1ce33e85b37bf9000635e087b71195461bcdc4b27796bdb781e520d5b9940f2` |
| 26 | `def` | [acceptingHost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/acceptinghost--dd3e1508afedee82e08a2b3e.md) | 203 | `declaration-track:dd3e1508afedee82e08a2b3eabb422f0856f158eec30a9c7b479e46560cb3364` |
| 27 | `theorem` | [runSteps_increment_nonvacuous](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/runsteps-increment-nonvacuous--6c3bd5736ca7154a56a52ca7.md) | 208 | `result-track:6c3bd5736ca7154a56a52ca71ff4bcbb3d036809d9983c7dd1a0abc2b7974c51` |
| 28 | `theorem` | [application_success_nonvacuous](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/application-success-nonvacuous--c73e7ce17ca9d171591ffc33.md) | 215 | `result-track:c73e7ce17ca9d171591ffc332719fcbadb057bae0c793ed740ec65b2dc544fd0` |
| 29 | `theorem` | [fixture_application_receipt_returned](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/fixture-application-receipt-returned--805d2a6002f1abfc03c645b8.md) | 220 | `result-track:805d2a6002f1abfc03c645b8292403ce2a144a626ede221e2e5ba0da4de84659` |
| 30 | `theorem` | [fixture_application_receipt_recorded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/fixture-application-receipt-recorded--7837b3ff49beeba241d67ff0.md) | 223 | `result-track:7837b3ff49beeba241d67ff0bb0eddf537994fbdff063afbc07e95c0e36c0f37` |
| 31 | `theorem` | [fixture_empty_raw_still_verifies_outputs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean/declarations/fixture-empty-raw-still-verifies-outputs--7502975a7a364e126bbd83af.md) | 226 | `result-track:7502975a7a364e126bbd83afa069cbbb07e297429305edba6fd3c5fb0faf2c89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
