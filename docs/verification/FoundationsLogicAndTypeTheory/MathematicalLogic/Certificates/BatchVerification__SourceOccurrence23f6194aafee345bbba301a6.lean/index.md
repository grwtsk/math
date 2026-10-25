# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.BatchVerification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0078a4ad3f5d824fda6c199e31e300e78aedbc4d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0078a4ad3f5d824fda6c199e31e300e78aedbc4d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.DependencyRevision`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence22718498a8106883d8613c60.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertificateAdmission](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/certificateadmission--9238ce8a935abdcbb62eb626.md) | 42 | `declaration-track:9238ce8a935abdcbb62eb626ded93f1bdcde41e50996062975599ce1ac081e9a` |
| 2 | `def` | [RevisionLedger.admit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/revisionledger-admit--08fab8504e7448a9eedf2886.md) | 55 | `declaration-track:08fab8504e7448a9eedf2886221c59690137149179924fbc4c4c8d730886e15a` |
| 3 | `theorem` | [admitted_certificate_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/admitted-certificate-target--d34ab731fa99191749972ac5.md) | 67 | `result-track:d34ab731fa99191749972ac522cc1e7d4ba3189c5edcf82370bf2d9ba9535b34` |
| 4 | `theorem` | [admission_preserves_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/admission-preserves-safe--b3044ec5219f9dc92a415388.md) | 80 | `result-track:b3044ec5219f9dc92a415388cb99df86698285e2456e15935bcc3066398ddf44` |
| 5 | `theorem` | [admission_source_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/admission-source-preserved--a1cbbb144bea51ee87b4a914.md) | 120 | `result-track:a1cbbb144bea51ee87b4a914aba5bb57db2abd0337600155bcc0f5b4e6cc9e31` |
| 6 | `theorem` | [admission_archive_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/admission-archive-append--11b77d4c3c593754a2c7bd95.md) | 124 | `result-track:11b77d4c3c593754a2c7bd95ed90f3e1c90fb991cc8d68291f46c9751a6a8edc` |
| 7 | `theorem` | [admission_archive_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/admission-archive-prefix--445dde847843f729d028d338.md) | 128 | `result-track:445dde847843f729d028d3380c93c94b8bfe799ce1e492c6afd495daa23789c9` |
| 8 | `theorem` | [admission_effect_history_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/admission-effect-history-preserved--3a1ecd315470b514a1697f12.md) | 134 | `result-track:3a1ecd315470b514a1697f1227c40e0e6a55bd7414495188cc684999bb8c5443` |
| 9 | `theorem` | [admission_issued_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/admission-issued-preserved--fe58069dd52d823f2ce21715.md) | 140 | `result-track:fe58069dd52d823f2ce217157e8028a47f2b86683a5142092e5b4803cb60ff43` |
| 10 | `theorem` | [admission_pending_accounted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence23f6194aafee345bbba301a6.lean/declarations/admission-pending-accounted--3c61c83b994f85519bbe373e.md) | 145 | `result-track:3c61c83b994f85519bbe373e240d5f03250b28a7d661e4d73c23ff3a65b47fff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
