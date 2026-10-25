# Verification target: GRWTSK.Logic.Certificates.BatchVerificationExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2544bd030ba80642b72b2a64d05dfdfb1d51d77",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Certificates/BatchVerificationExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2544bd030ba80642b72b2a64d05dfdfb1d51d77`.

Source path: `GRWTSK/Logic/Certificates/BatchVerificationExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Certificates/BatchVerificationExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.BatchVerification`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevisionExamples`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples__SourceOccurrence6f77f1437de0b2aed58aaf9e.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withdrawnLedger](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/withdrawnledger--402876904401bf60ab34c83d.md) | 26 | `declaration-track:402876904401bf60ab34c83d027c21343ff053b4906e772c17d8799b3d1b6c1f` |
| 2 | `theorem` | [withdrawing_four_affected_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/withdrawing-four-affected-exact--fb26dbe6506459726e3452f5.md) | 29 | `result-track:fb26dbe6506459726e3452f549e97c0e503b8cc7e981f374babf61d3bea48183` |
| 3 | `theorem` | [withdrawn_ledger_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/withdrawn-ledger-safe--f048ea9f6b94475bb3b0eb26.md) | 36 | `result-track:f048ea9f6b94475bb3b0eb26c3aec0e9d77fe77fe689963b27d561a2fa6a3e27` |
| 4 | `theorem` | [withdrawn_verified_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/withdrawn-verified-empty--b2e19e9b80a69c84b8aa4179.md) | 39 | `result-track:b2e19e9b80a69c84b8aa41796476d8da046a7cf581aacbde2ac78b706d366cb2` |
| 5 | `theorem` | [withdrawn_pending_all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/withdrawn-pending-all--1fa9ba335d8617211a7bec0b.md) | 45 | `result-track:1fa9ba335d8617211a7bec0b4c34f9680fd763692ad9d55d5cab71c493187fbf` |
| 6 | `def` | [currentFourCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/currentfourcertificate--ee4952391bc7e439c243dd6b.md) | 52 | `declaration-track:ee4952391bc7e439c243dd6b7b9c9f02795aa2caeb7aa698a9cd4f74f499efd4` |
| 7 | `def` | [currentFourRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/currentfourrecord--f3d27dc560837a99ddc1c70d.md) | 62 | `declaration-track:f3d27dc560837a99ddc1c70dd5825690b83321209e4feabdea0cbf7c92d9fcf5` |
| 8 | `def` | [fourAdmission](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/fouradmission--ad3784f5f8f43b7dd35a921f.md) | 67 | `declaration-track:ad3784f5f8f43b7dd35a921fa23db7a5221837d747a907c7a24c1946206769e3` |
| 9 | `def` | [readmittedLedger](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/readmittedledger--41d9a26c6540a92bdfe30cfa.md) | 86 | `declaration-track:41d9a26c6540a92bdfe30cfacc0d41f15173c20e67d2faaa9ecdfaf6a133270a` |
| 10 | `theorem` | [readmitted_ledger_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/readmitted-ledger-safe--52503d7cdbe5fa94ee92a265.md) | 89 | `result-track:52503d7cdbe5fa94ee92a265f90ec605e1616cf7b6cb983eb0e7f6fa69dd9f63` |
| 11 | `theorem` | [readmitted_statuses_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/readmitted-statuses-exact--7aa3b37e922795a9ec2163d1.md) | 92 | `result-track:7aa3b37e922795a9ec2163d151206b5ca11317a3e209f451fc6488d4664ef533` |
| 12 | `theorem` | [readmission_retains_history](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/readmission-retains-history--e41563b0b3b7ef9e3c82ecf2.md) | 103 | `result-track:e41563b0b3b7ef9e3c82ecf27b6f02d63f233e903ef15d734d6b35c3402d4e7c` |
| 13 | `theorem` | [readmitted_current_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/readmitted-current-target--975f2d6cf363a3d77fde8bf0.md) | 108 | `result-track:975f2d6cf363a3d77fde8bf0421d78938bbfbb2a7229702adc7cf2ef431ff5ca` |
| 14 | `theorem` | [false_current_claim_not_admissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/false-current-claim-not-admissible--c67700b72e910af8820b6e93.md) | 113 | `result-track:c67700b72e910af8820b6e933ee29a514b803295e6fbd53985e18ae2d899cd99` |
| 15 | `theorem` | [incomplete_singleton_prerequisite_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/declarations/incomplete-singleton-prerequisite-rejected--1885406e623cf8a27c83162c.md) | 122 | `result-track:1885406e623cf8a27c83162c909398fd18fd5e8a2d44fdc40dc54c5761c2c65a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
