# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachabilityExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "361253f18227cf336465a11e73c680acd1da2176",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `361253f18227cf336465a11e73c680acd1da2176`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachability`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerificationExamples`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceCorrection](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/sourcecorrection--fd30bbc38ef4a2b1467701d5.md) | 29 | `declaration-track:fd30bbc38ef4a2b1467701d5753547c6a57a0283c63f96fc78003937f944ed0e` |
| 2 | `def` | [independentWithdrawal](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/independentwithdrawal--160efa12fc3510c81840ac9a.md) | 34 | `declaration-track:160efa12fc3510c81840ac9a8f1eae2e98c90b54bb8dd8291878bf98a4b1ec64` |
| 3 | `theorem` | [concrete_workflow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/concrete-workflow--7df04318ba2df61c3bd84a97.md) | 39 | `result-track:7df04318ba2df61c3bd84a978738d976a9571ad9111c1d47272da0352ce0b6cd` |
| 4 | `theorem` | [final_ledger_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/final-ledger-safe--aab2eb22d798ec90e8a51f88.md) | 46 | `result-track:aab2eb22d798ec90e8a51f88fd5a4646dc4d6b88dc1c8874e0bc24913711551d` |
| 5 | `theorem` | [original_issued_and_receipts_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/original-issued-and-receipts-preserved--c568dd2036783d59e658e49a.md) | 50 | `result-track:c568dd2036783d59e658e49a3f48cb00de81cde1e5601846c49014429bd79e5e` |
| 6 | `theorem` | [original_history_prefixes](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/original-history-prefixes--e339d67a4589f79b38bbbd17.md) | 57 | `result-track:e339d67a4589f79b38bbbd17971b2d9939feca7c5b979a55323608a4c026472d` |
| 7 | `theorem` | [final_archive_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/final-archive-exact--5c6bc20a6bbf556b327bfe14.md) | 64 | `result-track:5c6bc20a6bbf556b327bfe146053ccd3017faa8b5f9459f57297a714fa619d63` |
| 8 | `def` | [withdrawalRecord](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/withdrawalrecord--d00cd911b3332e943557572d.md) | 67 | `declaration-track:d00cd911b3332e943557572d8891b38739fd25a130ae93ebc9b75755955d7e95` |
| 9 | `theorem` | [final_correction_history_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/final-correction-history-exact--08b453d5dbfd8021f7cb32ac.md) | 74 | `result-track:08b453d5dbfd8021f7cb32ac384a46ade3de9e2085010cdd39d7e06ded3d8d19` |
| 10 | `theorem` | [final_correction_count](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/final-correction-count--82a5988bb9b0182ff9657af2.md) | 82 | `result-track:82a5988bb9b0182ff9657af2de9c00fea0b81b5c41301ffb97f941da19bbf23a` |
| 11 | `theorem` | [every_original_obligation_retained](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/every-original-obligation-retained--83fc17b99799e3ee45ee7f58.md) | 87 | `result-track:83fc17b99799e3ee45ee7f5862ad4f491aa5ddf1b6ecc7843f9a60951842ede5` |
| 12 | `theorem` | [workflow_returns_actual_target_four](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/workflow-returns-actual-target-four--9ab35c9e4c3f151f55c37058.md) | 93 | `result-track:9ab35c9e4c3f151f55c370586073f12ea6a81cdd020a3d3f22d67f27ebf052d2` |
| 13 | `def` | [forgedFinalLedger](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/forgedfinalledger--ad8d64b2c063ef055a62cb40.md) | 99 | `declaration-track:ad8d64b2c063ef055a62cb40e08658dbfd4b12e7fb404d44c84eb92b04055366` |
| 14 | `theorem` | [forged_status_accounting_plausible](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/forged-status-accounting-plausible--672e62e5c87a76ea85481548.md) | 105 | `result-track:672e62e5c87a76ea85481548a90f3685a9753d53fec9ce118a2383a27e867823` |
| 15 | `theorem` | [forged_final_not_reachable](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/declarations/forged-final-not-reachable--90f310176b61f831f23abbf5.md) | 116 | `result-track:90f310176b61f831f23abbf59ccb8ab33d2b9af43e15c879a791bd48823a0ba9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
