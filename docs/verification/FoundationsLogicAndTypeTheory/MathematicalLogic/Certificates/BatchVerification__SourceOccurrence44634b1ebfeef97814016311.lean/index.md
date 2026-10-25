# Verification target: GRWTSK.Logic.Certificates.BatchVerification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cc8d56e6b2b7eb7cc5e12ee72d6221c32ee3707",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Certificates/BatchVerification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cc8d56e6b2b7eb7cc5e12ee72d6221c32ee3707`.

Source path: `GRWTSK/Logic/Certificates/BatchVerification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Certificates/BatchVerification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.DependencyRevision`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertificateAdmission](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/certificateadmission--c327465cdbdfa17ae18a3543.md) | 42 | `declaration-track:c327465cdbdfa17ae18a354370a155aeace19258fb0efff4085c784963dec839` |
| 2 | `def` | [RevisionLedger.admit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/revisionledger-admit--4f7079efab96944e6dfcf37d.md) | 55 | `declaration-track:4f7079efab96944e6dfcf37dd625f3732c2ec356c13f18abf70723f385cb1d7e` |
| 3 | `theorem` | [admitted_certificate_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/admitted-certificate-target--e5f18d00906889f889127210.md) | 67 | `result-track:e5f18d00906889f88912721008eef8a7345be5c34d1623605e0702f6cedc4981` |
| 4 | `theorem` | [admission_preserves_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/admission-preserves-safe--346e6fa4ef60af6979c8f068.md) | 80 | `result-track:346e6fa4ef60af6979c8f06815965427d93e1c8f4fc82b0a2f8d1f1f145cc657` |
| 5 | `theorem` | [admission_source_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/admission-source-preserved--6cec6cf3b585a5999bc5e3c0.md) | 120 | `result-track:6cec6cf3b585a5999bc5e3c013a9c1751710068a644094196b073efafc7f2a68` |
| 6 | `theorem` | [admission_archive_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/admission-archive-append--03f326229b8a614e76b0ce33.md) | 124 | `result-track:03f326229b8a614e76b0ce33035d09f8d85ba3398a06c4f7b6197b6186ca3236` |
| 7 | `theorem` | [admission_archive_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/admission-archive-prefix--2ac2b404d974f4745e9c9e77.md) | 128 | `result-track:2ac2b404d974f4745e9c9e773cd92c0b74b5efe3a7357b9c1049fbf861189301` |
| 8 | `theorem` | [admission_effect_history_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/admission-effect-history-preserved--2aa074c46f5ff2c6dd0dfc60.md) | 134 | `result-track:2aa074c46f5ff2c6dd0dfc60194ffdcca3f9406de606a86a94846b738a2e391a` |
| 9 | `theorem` | [admission_issued_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/admission-issued-preserved--51404971759b79a08e4364a3.md) | 140 | `result-track:51404971759b79a08e4364a3a2be022a8dbab98de77f75ac4d3a174f039f06b5` |
| 10 | `theorem` | [admission_pending_accounted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/declarations/admission-pending-accounted--477caedcbb5ba413714a311e.md) | 145 | `result-track:477caedcbb5ba413714a311efbf9cc856877d6061ad3022136349ec53e4a2b46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
