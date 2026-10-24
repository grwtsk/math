# Verification target: GRWTSK.Combinatorics.Sequences.ConditionalPartitionExposure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24401f5ffc50d7effa3969bf56c7fa08fedf77dd",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24401f5ffc50d7effa3969bf56c7fa08fedf77dd`.

Source path: `GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/ConditionalPartitionExposure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relabelPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/relabelpartition--b5329f355d7ae4b4389072b2.md) | 25 | `declaration-track:b5329f355d7ae4b4389072b2b2b02dc3943bd667d59969d9d6a635f4b2b43aa4` |
| 2 | `theorem` | [relabelPartition_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/relabelpartition-symm--4ccd79d9289fb742b0a97a30.md) | 35 | `result-track:4ccd79d9289fb742b0a97a30f078a17f82ff67bd3513bda98b2ec22262c9d7e2` |
| 3 | `def` | [relabelPartitionEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/relabelpartitionequiv--45b0606a8c70683477a2bd72.md) | 41 | `declaration-track:45b0606a8c70683477a2bd725cbec6a34ba721fa96423ff04c60046d700a484e` |
| 4 | `theorem` | [part_relabelPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/part-relabelpartition--f052bed0afe9e7c73ceb53c8.md) | 48 | `result-track:f052bed0afe9e7c73ceb53c8bb6ca6592effe71e41ceadbce31f1624cec29e0e` |
| 5 | `abbrev` | [PartFiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/partfiber--ad24bf7f52c428ae9d4ea7dd.md) | 59 | `declaration-track:ad24bf7f52c428ae9d4ea7dd5a8be86232d479a2f8831dc2b8d4c4bb443d9162` |
| 6 | `def` | [partFiberEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/partfiberequiv--914939d117285ec9c7870039.md) | 64 | `declaration-track:914939d117285ec9c787003992576c910bf0c6875004119b472519cab75df60b` |
| 7 | `theorem` | [partFiber_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/partfiber-card-eq--0c632c1b5191910f20766a8b.md) | 73 | `result-track:0c632c1b5191910f20766a8ba45c13f32a4f6dec400bbb61b47056923a83b634` |
| 8 | `abbrev` | [ConditionedPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditionedpartition--3737d51a882da8d8607b3552.md) | 81 | `declaration-track:3737d51a882da8d8607b35521fa7c470d178ae4445f9daf151919acf59c1e8f0` |
| 9 | `def` | [remainder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/remainder--1d838f873c47344428c53629.md) | 85 | `declaration-track:1d838f873c47344428c53629c9d74ac3888cb244f019247f89b0905994433ea8` |
| 10 | `def` | [remainderSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/remainderspace--909259e1d1ed507f7b2fd1be.md) | 89 | `declaration-track:909259e1d1ed507f7b2fd1be98c3fce05d2e2f3a25a392ab8d072b9739c047fe` |
| 11 | `theorem` | [remainder_mem_space](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/remainder-mem-space--4480414c146408c94bd616cb.md) | 92 | `result-track:4480414c146408c94bd616cbcebc37e1b9f6b2ae60325ea5d3c08d5bd03a56eb` |
| 12 | `theorem` | [conditionedPartition_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditionedpartition-nonempty--a23b6ba4c03d62025507c15d.md) | 102 | `result-track:a23b6ba4c03d62025507c15ddb7fb273acd917a199057611323a5936b9be6973` |
| 13 | `abbrev` | [RemainderFiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/remainderfiber--670bc3ced5d03387939cac7c.md) | 111 | `declaration-track:670bc3ced5d03387939cac7c9ae76b7499e65858032cca7d2f81c1fc4f816cde` |
| 14 | `def` | [remainderFiberEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/remainderfiberequiv--a6500b27738a6ef05433d413.md) | 116 | `declaration-track:a6500b27738a6ef05433d4132043c7ac7f76e1fc64273684dbef6e253c4b1859` |
| 15 | `theorem` | [remainderFiber_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/remainderfiber-card-eq--fd78cd590163e1006f84ec02.md) | 130 | `result-track:fd78cd590163e1006f84ec0260aa6bac96c6aa77a17f219e3e59503d19fe9a7f` |
| 16 | `theorem` | [conditioned_card_eq_fiber_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditioned-card-eq-fiber-mul--4ece53b7f098e3b3ed3e2ed3.md) | 139 | `result-track:4ece53b7f098e3b3ed3e2ed3988e650fcda678088cffd1c9f4b313b2f7b7275c` |
| 17 | `theorem` | [conditioned_event_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditioned-event-card-eq--ed12e964372ce4ca52aee204.md) | 162 | `result-track:ed12e964372ce4ca52aee204cbed4ed2bc514c8c80261950d787a60fbd15fa23` |
| 18 | `def` | [conditionalProbability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditionalprobability--e86f65402811dfb518665620.md) | 195 | `declaration-track:e86f65402811dfb51866562049d6c746312cfee3ac93cc17e2ae6c6d5b72df8e` |
| 19 | `theorem` | [conditional_event_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditional-event-probability--46b7e85084594a215e205a19.md) | 202 | `result-track:46b7e85084594a215e205a19649d6924220694578745a9e718c82f8294d871a4` |
| 20 | `def` | [conditionalProbabilityReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditionalprobabilityreal--341327f3d616dc7edf79dbe8.md) | 223 | `declaration-track:341327f3d616dc7edf79dbe8967bf1c321c1d1a0c04c1ac99812058b9b83b627` |
| 21 | `theorem` | [conditional_event_probability_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditional-event-probability-real--592e3aae8b72183fca4ce3da.md) | 228 | `result-track:592e3aae8b72183fca4ce3da1cf94f404bb7750a07c7d37efa8af46db4e9afbd` |
| 22 | `def` | [eventExposureEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/eventexposureequiv--187158d28783de848a00ff3e.md) | 244 | `declaration-track:187158d28783de848a00ff3ea6e47dd65aceaa0dc1af2cd1f8c4e3b0c94f3dc7` |
| 23 | `theorem` | [event_exposure_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/event-exposure-card--ed75fc3173b565836044fb52.md) | 256 | `result-track:ed75fc3173b565836044fb5206d35c6c46e22159c86e8da061a942859fc6831e` |
| 24 | `theorem` | [partition_exposure_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/partition-exposure-card--73c611021726341dfd22eff6.md) | 263 | `result-track:73c611021726341dfd22eff62cdec10fb9b837b4beb79af390d9b082087dc889` |
| 25 | `def` | [partitionProbabilityReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/partitionprobabilityreal--84c7a624455510996a56acdf.md) | 270 | `declaration-track:84c7a624455510996a56acdf41fb25c29eadf70491b34976b6cb52d051b62f4b` |
| 26 | `def` | [conditionedEventProbabilityReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/conditionedeventprobabilityreal--9233637cbc13dc63a5eb2e15.md) | 276 | `declaration-track:9233637cbc13dc63a5eb2e15f3faf82d90461299db39a8ff3c9e8e0b247c6d25` |
| 27 | `theorem` | [partition_event_le_of_conditional](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/declarations/partition-event-le-of-conditional--5da6af4314a797099037ecd1.md) | 284 | `result-track:5da6af4314a797099037ecd1c55683baaefc0ed6bf38a86241590f4638364cce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
