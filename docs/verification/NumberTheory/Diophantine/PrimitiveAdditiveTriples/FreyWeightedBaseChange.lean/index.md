# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBaseChange

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4efc276407b9116651191a1141894eb60702c42",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4efc276407b9116651191a1141894eb60702c42`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [openMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap--732d0ab97d03c3e5903e5626.md) | 27 | `declaration-track:732d0ab97d03c3e5903e562662fc01b7f0dfac678647451472e95e7374b64579` |
| 2 | `theorem` | [openMap_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-scalar--31a95da03a9d5fefd4e26376.md) | 32 | `result-track:31a95da03a9d5fefd4e263764cc9db564b050dfe489fe6d4820ad6d989f5c30a` |
| 3 | `theorem` | [openMap_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-x--5e134187dbb500dbb891c45d.md) | 36 | `result-track:5e134187dbb500dbb891c45d642cd5fa50cba555f068a3d3fd85d828cf0cd21b` |
| 4 | `theorem` | [openMap_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-y--82ad3b37850dcf4e6040cd6f.md) | 39 | `result-track:82ad3b37850dcf4e6040cd6f2c5b5e5670c0990ba00617f827efbfd55be0fe8b` |
| 5 | `theorem` | [openMap_invX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-invx--ed493f533b4c5fdec664849a.md) | 42 | `result-track:ed493f533b4c5fdec664849a06a63a34fe9e0067e6f46bbe6dd9bc834a2f725f` |
| 6 | `theorem` | [openMap_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-comp--44aaac7df58efb115994c14e.md) | 46 | `result-track:44aaac7df58efb115994c14e82790e40a65ecfbfa8b93718a99b5f05c2254888` |
| 7 | `theorem` | [openMap_id](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-id--bfabb7740c559e8e9b2c3f2f.md) | 53 | `result-track:bfabb7740c559e8e9b2c3f2fe5f209d6514000b15d63ee28b8e1dbdd367b0c11` |
| 8 | `theorem` | [openMap_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-smul--b0031e6db6778138abae65d8.md) | 60 | `result-track:b0031e6db6778138abae65d8dd95d2e66041450abf741648bfcf35208316ebd5` |
| 9 | `theorem` | [mapped_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/mapped-inverse--6233be7f2f95b26581fc24ed.md) | 67 | `result-track:6233be7f2f95b26581fc24edf14eede67ae8b069074416bf343f7191e3c4d901` |
| 10 | `theorem` | [openMap_pullback](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-pullback--872f3759b6734700ff119ea6.md) | 72 | `result-track:872f3759b6734700ff119ea6a1b352709fd8a3832a6775a20aa127d0f3b8fac6` |
| 11 | `theorem` | [openMap_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-lift--a0ce4550b0b3e2e3f359d5ed.md) | 81 | `result-track:a0ce4550b0b3e2e3f359d5edbe75de1e6b2ff5a24e63043b98ef43cda84ec6bf` |
| 12 | `theorem` | [openMap_mem_stage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/openmap-mem-stage--033faec02b64ee8cfc3537fa.md) | 91 | `result-track:033faec02b64ee8cfc3537fa055ec89320e2e3b131dacdc130d23bc66db682b7` |
| 13 | `def` | [stageMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap--3b99e71a9e12ebe5b995f6d7.md) | 112 | `declaration-track:3b99e71a9e12ebe5b995f6d76b647a6e2f6749ac37b9a7d4a8697edba52e9c87` |
| 14 | `theorem` | [stageMap_coe](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-coe--8ee593263a45a5e102bb2a4f.md) | 118 | `result-track:8ee593263a45a5e102bb2a4f86a4da6cf98bbfb800a56590baacbbcda385fd3b` |
| 15 | `theorem` | [stageMap_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-comp--5f7d679337fde6605acab1a7.md) | 121 | `result-track:5f7d679337fde6605acab1a7b5055026ae70e57bd3f16a1373619f82a7b564be` |
| 16 | `theorem` | [stageMap_id](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-id--1958692eed3cdcbc9a8b7dd4.md) | 127 | `result-track:1958692eed3cdcbc9a8b7dd4101fe65c5f73019fd4277e2e451c19c26cf3c03a` |
| 17 | `theorem` | [stageMap_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-lift--0d694447820f4eb2c916d930.md) | 133 | `result-track:0d694447820f4eb2c916d9309911b2881493bc36c4c3edc6e57e7db66cfa4d2e` |
| 18 | `theorem` | [stageMap_lift_symm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-lift-symm--601118ca671cef084279fb33.md) | 142 | `result-track:601118ca671cef084279fb33d979adb31fc5dfcc29d8395cbf1960d25580e15c` |
| 19 | `theorem` | [stageMap_basis](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-basis--e285f8ea72e5229438bf2931.md) | 155 | `result-track:e285f8ea72e5229438bf293189a70d48f536a68e82bd62aeb3a8f197e13c1003` |
| 20 | `theorem` | [stageMap_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-sum--386b4b1720f40770c6c631ee.md) | 162 | `result-track:386b4b1720f40770c6c631ee5908f8e4f352f2d61683e4d7b68d6c30947d02c5` |
| 21 | `theorem` | [stageMap_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-coordinates--e458e00f4df796e8725e52c9.md) | 169 | `result-track:e458e00f4df796e8725e52c939be107d73101f874192c33c75bbfd7d839ffb6c` |
| 22 | `theorem` | [stageMap_range_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-range-iff--6521087d6bba69e2dada37a8.md) | 179 | `result-track:6521087d6bba69e2dada37a8d79bfb6bcb01f91662bbdd9a2688fe56722ed714` |
| 23 | `theorem` | [stageMap_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/declarations/stagemap-injective--33f5160ddd8c779d49ade97b.md) | 199 | `result-track:33f5160ddd8c779d49ade97bfaa5c90e2d53620cc3124e9fd7244b66ff69295a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
