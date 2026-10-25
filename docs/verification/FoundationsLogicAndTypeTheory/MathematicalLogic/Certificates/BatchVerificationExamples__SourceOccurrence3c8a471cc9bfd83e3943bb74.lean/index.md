# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.BatchVerificationExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1bfbfd9d839a9a9f37be77813845319318ea63a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1bfbfd9d839a9a9f37be77813845319318ea63a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.BatchVerification`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.DependencyRevisionExamples`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples__SourceOccurrence2db0d71fe8feed443122ddff.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withdrawnLedger](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/withdrawnledger--2d3a5e0530cc03874274e356.md) | 26 | `declaration-track:2d3a5e0530cc03874274e356f0129dc8817ba81773f380e869f83a96ac812a92` |
| 2 | `theorem` | [withdrawing_four_affected_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/withdrawing-four-affected-exact--dddb51750dc0378bf0ab4e11.md) | 29 | `result-track:dddb51750dc0378bf0ab4e11c14b328c470351968fb07353a98d03e35ce6fc2a` |
| 3 | `theorem` | [withdrawn_ledger_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/withdrawn-ledger-safe--25966c90c5f714fdc56bf09e.md) | 36 | `result-track:25966c90c5f714fdc56bf09e990fb1de96583c912cad03970cc8aaf579428ea1` |
| 4 | `theorem` | [withdrawn_verified_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/withdrawn-verified-empty--2f93a9c6c155d1fe00b746c4.md) | 39 | `result-track:2f93a9c6c155d1fe00b746c45d93ba542fb9a2ee21034e85dd8b420332d6677b` |
| 5 | `theorem` | [withdrawn_pending_all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/withdrawn-pending-all--6f2a100b72e6fccde1b8c336.md) | 45 | `result-track:6f2a100b72e6fccde1b8c33695f0e3cc0a7837f0652deb36d8a38c872b655840` |
| 6 | `def` | [currentFourCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/currentfourcertificate--beceb74c5b70ca165d51c195.md) | 52 | `declaration-track:beceb74c5b70ca165d51c1954f1a96679373d2655e7ed0f78945400d146977bc` |
| 7 | `def` | [currentFourRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/currentfourrecord--bb2012220b7660451d88e3d7.md) | 62 | `declaration-track:bb2012220b7660451d88e3d77ee4e8688d160e1288d6659bab551303246dc9c2` |
| 8 | `def` | [fourAdmission](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/fouradmission--bebae2ced78d2cfcc137fa5f.md) | 67 | `declaration-track:bebae2ced78d2cfcc137fa5fd6d15b9790d4631d06658ee45fd855eca2c8fb7d` |
| 9 | `def` | [readmittedLedger](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/readmittedledger--cbd5b13c774cdf851aab62b6.md) | 86 | `declaration-track:cbd5b13c774cdf851aab62b64519807b535bfdf2ca665836ec67801ce7c08434` |
| 10 | `theorem` | [readmitted_ledger_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/readmitted-ledger-safe--5c6958df172cdf0ac04d123b.md) | 89 | `result-track:5c6958df172cdf0ac04d123ba7bd893c8df4411bb5e3f5460a1ae4648f96e712` |
| 11 | `theorem` | [readmitted_statuses_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/readmitted-statuses-exact--0eef23e468ebd69274795289.md) | 92 | `result-track:0eef23e468ebd69274795289bf09c25fd357fbe0f314184f00c12d431f63aeb0` |
| 12 | `theorem` | [readmission_retains_history](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/readmission-retains-history--ff2311aa38cbd28eb5e55d6d.md) | 103 | `result-track:ff2311aa38cbd28eb5e55d6d65965c4d0da36368c72d7352285062ca542edd12` |
| 13 | `theorem` | [readmitted_current_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/readmitted-current-target--6209ac1171daa0540e9a0369.md) | 108 | `result-track:6209ac1171daa0540e9a0369019f7fe2ee433a766a60c2eca92a50e2ab2780c4` |
| 14 | `theorem` | [false_current_claim_not_admissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/false-current-claim-not-admissible--48a8b54ee3976bc975c2ac96.md) | 113 | `result-track:48a8b54ee3976bc975c2ac968661db043c76f0a7ec4fba0e2fa431b55df2f571` |
| 15 | `theorem` | [incomplete_singleton_prerequisite_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/declarations/incomplete-singleton-prerequisite-rejected--8194da78da98632b62373212.md) | 122 | `result-track:8194da78da98632b62373212d9380d561f077df49f704372bc00a1cf912c1a14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
