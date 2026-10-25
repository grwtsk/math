# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.RouteFrontier.Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c532b6523df8f88ceef0fd9f28b25d4b956a945e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c532b6523df8f88ceef0fd9f28b25d4b956a945e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ProofStrategy.FrontierAntichain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.WitnessDischarge` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RemainderShape](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/declarations/remaindershape--7a55873f38bb524dbde3c18b.md) | 27 | `declaration-track:7a55873f38bb524dbde3c18bbd972458ec0c84f498b662c2881e3b33c524e0c7` |
| 2 | `def` | [classifyFrontier](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/declarations/classifyfrontier--59470a9cd22aa107b744867d.md) | 35 | `declaration-track:59470a9cd22aa107b744867d52f8a38b0c4eb3b8a232b8d2446cbbe5f5d41867` |
| 3 | `theorem` | [classifyFrontier_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/declarations/classifyfrontier-zero--a2a2b4c11cef649656804f6e.md) | 47 | `result-track:a2a2b4c11cef649656804f6e05e2dd3291703fb13ff4736864ec5cca29c16ac6` |
| 4 | `theorem` | [classifyFrontier_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/declarations/classifyfrontier-one--c33a72a218e1831c56eb7150.md) | 53 | `result-track:c33a72a218e1831c56eb7150e448a10fc55a017682e5cbb0a397bb14a703e746` |
| 5 | `structure` | [CertifiedRouteFrontier](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/declarations/certifiedroutefrontier--6252bef87cc4cd8be8f01e76.md) | 59 | `declaration-track:6252bef87cc4cd8be8f01e76e443cb80ea9aa9c95129645afaf07d55581421fb` |
| 6 | `theorem` | [completion_proves](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/declarations/completion-proves--3e42db5963fa65fcba0b9183.md) | 85 | `result-track:3e42db5963fa65fcba0b9183930e86275d930eddf71c617a82cb9914ea1c31d7` |
| 7 | `theorem` | [unresolved_not_discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/declarations/unresolved-not-discharged--7ef8b8f5036ee8b93d5b4fce.md) | 104 | `result-track:7ef8b8f5036ee8b93d5b4fce2cd0cd87fa7b6c4e469491eb0d51f24d5f466806` |
| 8 | `structure` | [LeastFrontierFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/declarations/leastfrontierfixedpoint--e2cd148983b7bc2a3015aa9d.md) | 123 | `declaration-track:e2cd148983b7bc2a3015aa9d3d8bb81d0478bfe45be661adc8f3b2a31b1fabca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
